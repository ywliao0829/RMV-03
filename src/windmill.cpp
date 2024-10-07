#include "windmill.hpp"
#include <stdlib.h>
#include <time.h>

namespace WINDMILL
{
    WindMill::WindMill(double time)//风车参数初始化 
    {
        cnt = 0;
        //计数器初始化 
        direct = false;
        start_time = time;
        //设置传入的时间参数就是开始时间 
        A = 0.785;
        w = 1.884; 
        fai = 1.65;
        A0 = 1.305;  
        now_angle = 0.0;
        //角度初始化 
        std::srand((unsigned)std::time(NULL));
        //设置随机数种子 
        int x = rand() % 200 + 400;
        //随机赋值x从【400，600】 
        int y = rand() % 100 + 420;
        //随机赋值x从【420，520】 
        R_center = cv::Point2i(x, y);
        //创建坐标为整数的点对象 
    }

    void WindMill::drawR(cv::Mat &img, const cv::Point2i &center) //文字绘制函数
    {
        cv::putText(img, "R", cv::Point2i(center.x - 5, center.y + 5), cv::FONT_HERSHEY_COMPLEX, 0.7, cv::Scalar(0, 0, 255), 2);
        //文字绘制函数（输出图像，要绘制的文字内容（字符串），要绘制的位置（字符串左下角），字体（fontFace），大小比例（fontScale），颜色，线条粗细） 
    }

    void WindMill::drawHitFan(cv::Mat &img, const cv::Point2i &center, double angle)
    {
        cv::Point2i mid1 = calPoint(center, angle, 40);
        // 根据center点、角度、计算并返回一个点 
        cv::Point2i mid2 = calPoint(center, angle, 150);
        cv::Point2i mid3 = calPoint(center, angle, 190);
        cv::line(img, mid1, mid2, cv::Scalar(0, 0, 255), 8);
        cv::line(img, calPoint(mid2, angle + 90, 30), calPoint(mid2, angle - 90, 30), cv::Scalar(0, 0, 255), 8);
        cv::line(img, calPoint(mid3, angle + 90, 30), calPoint(mid3, angle - 90, 30), cv::Scalar(0, 0, 255), 8);
        cv::line(img, calPoint(mid2, angle + 90, 30), calPoint(mid3, angle + 90, 30), cv::Scalar(0, 0, 255), 8);
        cv::line(img, calPoint(mid2, angle - 90, 30), calPoint(mid3, angle - 90, 30), cv::Scalar(0, 0, 255), 8);
    }

    void WindMill::drawOtherFan(cv::Mat &img, const cv::Point2i &center, double angle)
    {
        cv::Point2i mid1 = calPoint(center, angle, 40);
        cv::Point2i mid2 = calPoint(center, angle, 150);
        cv::Point2i mid3 = calPoint(center, angle, 190);
        cv::Point2i mid4 = calPoint(center, angle, 200);
        cv::line(img, mid1, mid2, cv::Scalar(0, 0, 255), 8);
        cv::line(img, calPoint(mid1, angle + 90, 10), calPoint(mid1, angle - 90, 10), cv::Scalar(0, 0, 255), 3);
        cv::line(img, calPoint(mid2, angle + 90, 40), calPoint(mid1, angle + 90, 10), cv::Scalar(0, 0, 255), 3);
        cv::line(img, calPoint(mid2, angle + 90, 40), calPoint(mid4, angle + 90, 40), cv::Scalar(0, 0, 255), 3);
        cv::line(img, calPoint(mid4, angle + 90, 40), calPoint(mid4, angle - 90, 40), cv::Scalar(0, 0, 255), 3);
        cv::line(img, calPoint(mid4, angle - 90, 40), calPoint(mid2, angle - 90, 40), cv::Scalar(0, 0, 255), 3);
        cv::line(img, calPoint(mid2, angle - 90, 40), calPoint(mid1, angle - 90, 10), cv::Scalar(0, 0, 255), 3);
        cv::line(img, calPoint(mid2, angle + 90, 30), calPoint(mid2, angle - 90, 30), cv::Scalar(0, 0, 255), 3);
        cv::line(img, calPoint(mid3, angle + 90, 30), calPoint(mid3, angle - 90, 30), cv::Scalar(0, 0, 255), 3);
        cv::line(img, calPoint(mid2, angle + 90, 30), calPoint(mid3, angle + 90, 30), cv::Scalar(0, 0, 255), 3);
        cv::line(img, calPoint(mid2, angle - 90, 30), calPoint(mid3, angle - 90, 30), cv::Scalar(0, 0, 255), 3);
    }

    cv::Mat WindMill::getMat(double now_time)
    {
        cv::Mat windmill = cv::Mat(720, 1080, CV_8UC3, cv::Scalar(0, 0, 0));
        //创建名为windmill的空图像矩阵,图像高720，宽1080，8位无符号整数的三通道彩色图像，每个像素占3个字节（红绿蓝各1字节） ，用黑色初始化这个图像矩阵，
		//cv::Scalar 中的三个 0 分别对应 BGR（蓝色、绿色、红色）通道的值 
        cnt++;
        //counter++
        if (R_center.y > 460)
            direct = false;
        if (R_center.y < 260)
            direct = true;
        if (direct && cnt % 50 < 5)
        {
            R_center.y += 1;
            R_center.x += 1;
        }
        if (!direct && cnt % 50 < 5)
        {
            R_center.y -= 1;
            R_center.x -= 1;
        }
        //avoid hitting a wall
        unsigned seed = std::chrono::system_clock::now().time_since_epoch().count();
        std::default_random_engine gen(seed);
        std::normal_distribution<double> noise(0, 0.2);
        now_angle = SumAngle(0.0, start_time, now_time - start_time) + noise(gen);
        drawR(windmill, R_center);
        drawHitFan(windmill, R_center, now_angle);
        for (int i = 1; i < 5; i++)
        {
            drawOtherFan(windmill, R_center, now_angle + 72 * i);
        }

        return windmill;
    }
}
