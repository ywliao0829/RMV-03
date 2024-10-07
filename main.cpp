#include "windmill.hpp"
#include "ceres/ceres.h"
#include "glog/logging.h"
//#include <fstream>
using ceres::AutoDiffCostFunction;
using ceres::CostFunction;
using ceres::Problem;
using ceres::Solve;
using ceres::Solver;
//y=A0+A*cos(w*t+fai)
using namespace std;
using namespace cv;
const int kNumObservations= 5;
//clang-format off
double Data[]={
	1728198138790,1.096,
	1728198138811,1.368,
	1728198138829,0.851,
	1728198138853,0.831,
	1728198138873,1.543
};
//添加lossfunction
//ceres::LossFunction*loss_function=nullptr;
//switch(loss_function_type){//根据选择的核函数type
//case LossFunctionType::TRIVIAL:
//	loss_function=new ceres::TrivialLoss();
//	break;
//case LossFunctionType::SOFT_L1:
//	loss_function=new ceres::SoftLOneLoss(loss_function_scale);
//	break;
//case LossFunctionType::CAUCHY:
//	loss_function=new ceres::CauchyLoss(loss_function_scale);
//	break;
//	}

//(1)构建代价函数
//clang-format on
//y=A0+A*cos(w*t+fai)=1.305+0.785*cos(1.884*t+0.24)
struct CostFunc_para_curve{
	CostFunc_para_curve(double t,double y):t_(t),y_(y){}
	template<typename T>
	bool operator()(const T* const A0,const T* const A,const T* const w0,const T* const fai,T* residual) const {
	residual[0]=y_-A0[0]-A[0]*cos(w0[0]*t_+fai[0])/*+1.305+0.785*cos(1.884*t_+0.24)*/;//函数
	return true;
	}
private:
	const double t_;
	const double y_;
};
struct F1{
	template<typename T>
	bool operator()(const T* const A0,T* residual) const {
	residual[0]=A0[0]-T(1.305)/*+1.305+0.785*cos(1.884*t_+0.24)*/;//函数
	return true;
	}
};
struct F2{
	template<typename T>
	bool operator()(const T* const A,T* residual) const {
	residual[0]=A[0]-T(0.785)/*+1.305+0.785*cos(1.884*t_+0.24)*/;//函数
	return true;
	}
};
struct F3{
	template<typename T>
	bool operator()(const T* const w0,T* residual) const {
	residual[0]=w0[0]-T(1.884)/*+1.305+0.785*cos(1.884*t_+0.24)*/;//函数
	return true;
	}
};
struct F4{
	template<typename T>
	bool operator()(const T* const fai,T* residual) const {
	residual[0]=fai[0]-T(0.24)/*+1.305+0.785*cos(1.884*t_+0.24)*/;//函数
	return true;
	}
};
int main()
{
    std::chrono::milliseconds t = std::chrono::duration_cast<std::chrono::milliseconds>(std::chrono::system_clock::now().time_since_epoch());
    WINDMILL::WindMill wm(t.count());

    cv::Mat src;
    int count=0;
    const double pi=acos(-1.0);
    double x=0,y=0;//generate test_data
  //ofstream outf;//generate test_data
  //outf.open("/home/yanwei/第二次任务喵/task/test_data.txt");//generate test_data
    while (1)
   {
        t = std::chrono::duration_cast<std::chrono::milliseconds>(std::chrono::system_clock::now().time_since_epoch());
        src = wm.getMat((double)t.count()/1000);
    
        
        //==========================ä»£ç åº========================//
        
	auto t1 = std::chrono::steady_clock::now();//generate test_data
	count++;
	imshow("windmill", src);
	Mat temp1,temp2;
	std::chrono::duration<double> t_sum=std::chrono::seconds(0);
	double true_A0=1.305,true_A = 0.785,true_w0 = 1.884,true_fai = 0.24; 
	double initial_A0 = 2.305,initial_A=1.785,initial_w0=2.884,initial_fai=1.24;
	double A0,A,w0,fai;
	for(int i=0;i<10;i++){
	//START_TIME
	auto start = std::chrono::steady_clock::now();
	
	Mat dst=src.clone();
	temp1=imread("/home/yanwei/第二次任务喵/task/image/R.png");
	temp2=imread("/home/yanwei/第二次任务喵/task/image/target.png");
//	imshow("template1",temp1);
//	imshow("template2",temp2);

	//转灰度
	Mat src_clone=src.clone();
	Mat blur,gray,dstImg,temp2_gray,temp2_dst,temp1_gray,temp1_dst,gray_0,temp2_gray0;
	GaussianBlur(temp1,blur,Size(5,5),0,0);
	cvtColor(blur,temp1_gray,COLOR_BGR2GRAY);
	GaussianBlur(temp2,blur,Size(5,5),0,0);
	cvtColor(blur,temp2_gray,COLOR_BGR2GRAY);
	GaussianBlur(src,blur,Size(5,5),0,0);
	cvtColor(blur,gray,COLOR_BGR2GRAY);
	
	//二值化处理
	threshold(gray,gray,0,255,cv::THRESH_BINARY | cv::THRESH_OTSU);
	threshold(temp1_gray,temp1_gray,0,255,cv::THRESH_BINARY | cv::THRESH_OTSU);
	threshold(temp2_gray,temp2_gray,0,255,cv::THRESH_BINARY | cv::THRESH_OTSU);
	
//	waitKey(0);
//	imshow("threshold",gray);
//	imshow("temp1_threshold",temp1_gray);
//	imshow("temp2_threshold",temp2_gray);

	//形态学操作，开操作，去掉小的对象，闭操作，连接里面的洞（开闭操作要先获得结构元素）
	Mat kernel = getStructuringElement(MORPH_RECT,Size(3,3),Point(-1,-1));//Point(-1,-1)是中心点，这里是2*2位置
	morphologyEx(gray,dstImg,MORPH_CLOSE,kernel,Point(-1,-1),2);
//	namedWindow("CLose Result",cv::WINDOW_NORMAL);//CV_WINDOW_NORMAL 使得鼠标可以控制显示窗口的大小
//	imshow("CLose Result",dstImg);
	
//	kernel = getStructuringElement(MORPH_RECT,Size(3,3),Point(-1,-1));
//	morphologyEx(temp1_gray,temp1_dst,MORPH_OPEN,kernel,Point(-1,-1),2);
//	namedWindow("CLose temp1",cv::WINDOW_NORMAL);
//	imshow("CLose temp1",temp1_dst);
	
	kernel = getStructuringElement(MORPH_RECT,Size(3,3),Point(-1,-1));
	morphologyEx(temp2_gray,temp2_dst,MORPH_OPEN,kernel,Point(-1,-1),2);
//	namedWindow("CLose temp2",cv::WINDOW_NORMAL);
//	imshow("CLose temp2",temp2_dst);
	
//	kernel = getStructuringElement(MORPH_RECT,Size(3,3),Point(-1,-1));
//	morphologyEx(dstImg,dstImg,MORPH_OPEN,kernel,Point(-1,-1),2);
//	namedWindow("Open Result",cv::WINDOW_NORMAL);
//	imshow("Open Result",dstImg);

	//轮廓发现
	vector<vector<Point>> contours1,contours2,contours3;
	vector<Vec4i> her1,her2,her3;
	
	findContours(gray,contours1,her1,RETR_TREE,CHAIN_APPROX_SIMPLE);
	findContours(temp2_gray,contours2,her2,RETR_TREE,CHAIN_APPROX_SIMPLE);
	findContours(temp1_gray,contours3,her3,RETR_TREE,CHAIN_APPROX_SIMPLE);

	//计算target、R面积
	Mat Draw_img1,Draw_img2,Draw_img3,Draw_img4,Draw_img5;
	Draw_img1.create(temp2.size(),temp2.type());
	Draw_img1=Scalar(255,255,255);
	Draw_img2.create(gray.size(),gray.type());
	Draw_img2=Scalar(255,255,255);
	Draw_img3.create(temp1.size(),temp1.type());
	Draw_img3=Scalar(255,255,255);
	
	double target_Area=0.0;
	double R_Area=0.0;
	double gray_sumArea=0.0;
	double gray_Area[contours1.size()]={0.0};
	
	int i_target,i_R;
	
	for(int i=0;i>=0;i=her2[i][0]){
		if(fabs(contourArea(contours2[i]))>10){ //过滤小轮廓，防止干扰
			Scalar color(rand() &255,rand() &255,rand() &255);
			drawContours(Draw_img1,contours2,i,color,FILLED,8,her2);
			target_Area+=fabs(contourArea(contours2[i]));
		}
	}
	for(int i=0;i>=0;i=her3[i][0]){
		if(fabs(contourArea(contours3[i]))>10){ //过滤小轮廓，防止干扰
			Scalar color(255,0+i,0);
			drawContours(Draw_img3,contours3,i,color,FILLED,8,her3);
			R_Area+=fabs(contourArea(contours3[i]));
//			cout<<"R_Area ="<<R_Area<<endl;
		}
	}
	for(int i=0;i>=0;i=her1[i][0]){
		if(fabs(contourArea(contours1[i]))>10){ //过滤小轮廓，防止干扰
			Scalar color(255,0+i,0);
			drawContours(Draw_img2,contours1,i,color,FILLED,8,her1);
			gray_Area[i]=fabs(contourArea(contours1[i]));
//			cout<<"gray_Area["<<i<<"]="<<gray_Area[i]<<endl;
			if(fabs(gray_Area[i]-target_Area)<200) i_target=i;//找出和target.png面积最相近的轮廓，并记录
			if(fabs(gray_Area[i]-R_Area)<100) i_R=i;//找出和R.png面积最相近的轮廓，并记录
			gray_sumArea+=gray_Area[i];
		}
	}
	
	int nRow1=temp2.rows,nRow2=gray.rows,nRow3=temp1.rows;
	int nCol1=temp2.cols,nCol2=gray.cols,nCol3=temp1.cols;
//	cout<<"target_Area = "<<target_Area<<endl;
//	waitKey(0);
//	cout<<"Image_Area = "<<(nRow1*nCol1)<<endl;
//	cout<<"R_Area = "<<R_Area<<endl;
//	cout<<"Rimage_Area = "<<(nRow3*nCol3)<<endl;
//	cout<<"gray_Area[i_target] = "<<gray_Area[i_target]<<endl;
//	cout<<"gray_Area[i_R] = "<<gray_Area[i_R]<<endl;
//	cout<<"gray_sumArea = "<<gray_sumArea<<endl;
//	cout<<"grayimage_Area = "<<(nRow2*nCol2)<<endl;
//	imshow("Draw_target",Draw_img1);
//	imshow("Draw_gray",Draw_img2);
//	imshow("Draw_R",Draw_img3);
//	waitKey(0);
	//获取target、R轮廓重心点
	Moments M1,M2;
	M1=moments(contours1[i_target]);
	M2=moments(contours1[i_R]);
	double cX1=double(M1.m10/M1.m00);
	double cY1=double(M1.m01/M1.m00);
	double cX2=double(M2.m10/M2.m00);
	double cY2=double(M2.m01/M2.m00);
	//Mat resultImage=Mat::zeros(gray.size(),CV_8UC3);
//	RNG rng(12345);
	Point pRadius1,pRadius2;
//	drawContours(gray,contours1,i_target,Scalar(rng.uniform(0,255),rng.uniform(0,255)),-1);
//	drawContours(gray,contours1,i_R,Scalar(rng.uniform(0,255),rng.uniform(0,255)),-1);

				//根据重心 绘制
				pRadius1=Point(cX1,cY1);
				pRadius2=Point(cX2,cY2);
				circle(gray,pRadius1,5,Scalar(255,0,0),5);
				circle(gray,pRadius2,5,Scalar(255,0,0),5);
	
//	Mat graycanny1;
//	resize(gray,graycanny1,Size(1080,720));
//	imshow("resultImage",graycanny1);
	//imshow("resultImage",resultImage);
	//在原图上绘制圆心
	circle(src_clone,pRadius1,5,Scalar(255,0,0),5);
	circle(src_clone,pRadius2,5,Scalar(255,0,0),5);
//	cout<<"target质心坐标:"<<cX1<<" "<<cY1<<endl;
//	cout<<"R质心坐标:"<<cX2<<" "<<cY2<<endl;
	
	Mat graycanny2;
	resize(src_clone,graycanny2,Size(1080,720));
	imshow("src_clone",graycanny2);
	//waitKey(0);
	
	
	//GET_Test_data
	//GET_TIME
	auto t2 = std::chrono::steady_clock::now();       //generate test_data
	std::chrono::duration<double> duration12=(t2-t1); //generate test_data
	int k=0;
	
	if(x!=0&&y!=0){	
		if(k>10){k=k%10;}
		Data[k]=t.count();
		k++;
		Data[k]=sqrt(pow((x-cX1),2)+pow((y-cY1),2))/duration12.count();
	}
	//	outf<<t.count()<<" "<<sqrt(pow((x-cX1),2)+pow((y-cY1),2))/duration12.count()<<endl; 
	//}                                                  //generate test_data
	
	
	
	
	
	//ceres-solver
		 //ceres::LossFunction *loss_function=new ceres::CauchyLoss(0.1);
		//double true_f=true_A0+true_A*cos(true_w0*t_now+true_fai);
		//double f=A0+A*cos(w0*t_now+fai);
		A0 = initial_A0,A=initial_A,w0=initial_w0,fai=initial_fai;
		do{
		
		Problem problem;
		//(2)利用代价函数构建优化问题
		for(int i=0;i<kNumObservations;i++){
		        problem.AddResidualBlock(
			//5个参数
			new AutoDiffCostFunction<CostFunc_para_curve,1,1,1,1,1>(
				new CostFunc_para_curve(Data[2*i],Data[2*i+1])),
			new ceres::CauchyLoss(0.5),
			&A0,
			&A,
			&w0,
			&fai);//四个参数
			problem.AddResidualBlock(
			//5个参数
			new AutoDiffCostFunction<F1,1,1>(
				new F1),
			new ceres::CauchyLoss(0.5),
			&A0);
			problem.AddResidualBlock(
			new AutoDiffCostFunction<F2,1,1>(
				new F2),
			new ceres::CauchyLoss(0.5),
			&A);
			problem.AddResidualBlock(
			new AutoDiffCostFunction<F3,1,1>(
				new F3),
			new ceres::CauchyLoss(0.5),
			&w0);
			problem.AddResidualBlock(
			new AutoDiffCostFunction<F4,1,1>(new F4),new ceres::CauchyLoss(0.5),&fai);
		}	
		Solver::Options options;
		options.max_num_iterations=20;
		options.linear_solver_type=ceres::DENSE_QR;
		options.minimizer_progress_to_stdout=true;
		Solver::Summary summary;
		//(3)利用solver解算参数
		Solve(options,&problem,&summary);
		cout<<summary.BriefReport()<<endl;
		cout<<"Initial A0:"<<initial_A0<<",A:"<<initial_A<<",w0:"<<initial_w0<<",fai:"<<initial_fai<<endl;
		cout<<"Final   A0:"<<A0<<",A:"<<A<<",w0:"<<w0<<",fai:"<<fai<<endl;
		system("pause");
		initial_A0=A0,initial_A=A,initial_w0=w0,initial_fai=fai;
		}while(((fabs(A0-1.305)>1.305*0.05)&&(fabs(A-0.785)>0.785*0.05)&&(fabs(w0-1.884)>1.884*0.05)&&(initial_A0!=A0)&&(initial_A!=A)&&(initial_w0!=w0)));
		/*&&(initial_A0!=A0)&&(initial_A!=A)&&(initial_w0!=w0)*/
		//END_TIME
		auto end = std::chrono::steady_clock::now();
		//calculate_duration
		std::chrono::duration<double> duration=(end-start);
		cout<<"第"<<i<<"次：time_used = "<<duration.count()<<" seconds"<<endl;
		t_sum=t_sum+duration;	
	}
	cout<<"第"<<count<<"帧"<<endl;	
    	cout<<"用时 = "<<t_sum.count()/10.0<<" seconds "<<endl;
//   	cout<<"v = "<<A0;
//  	if(A>0) cout<<"+"<<A;
//  	else if(A<0) cout<<A;
//  	else;
//    	cout<<"cos("<<w0<<"t";
//    	if(fai>0)cout<<"+"<<fai<<")"<<endl;
//    	else if(fai<0)cout<<fai<<")"<<endl;
//    	else cout<<")"<<endl;
//    	//waitKey(0);
//    	//x=cX1,y=cY1;     //generate test_data
    	//waitKey(50);
	if(count==50) waitKey(0);
        //=======================================================//
        
        waitKey(1);
    }
    //outf.close();//generate test_data
}
