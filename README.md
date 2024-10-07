# 任务完成_耗时点   
## 1.安装ceres库  
**安装ceres库之前一定要先安装eigen3库，否则编译会报错**   
安装版本：   
- eigen-3.3.7    
- ceres-1.14.0

**由于eigen3的默认安装途径通常为/usr/local/include/eigen3，这里选择修改CMakeLists.txt如下**  

![ODMt6g.png](https://ooo.0x0.ooo/2024/10/07/ODMt6g.png) 

**或者`sudo cp -r /usr/local/include/eigen3 /usr/include`把eigen3复制到本地调用目录/usr/include/eigen3才能正常运行**   
## 2.git上传文件到仓库   
第一次遇到如下报错   

![ODO5KD.png](https://ooo.0x0.ooo/2024/10/07/ODO5KD.png)   

解决方案很简单：生成一个自己的通用token即可，参考如下： 

【github开发人员在七夕搞事情：remote: Support for password authentication was removed on August 13, 2021. - CSDN App】   
<https://blog.csdn.net/weixin_41010198/article/details/119698015?type=blog&rId=119698015&refer=APP&source=2301_76440771> 

## 3.识别   
目标图像识别**一开始采用`cv::matchTemplate`即模板识别**。具体代码参考如下：

【15- OpenCV：模板匹配（cv::matchTemplate） - CSDN App】   
<https://blog.csdn.net/bigger_belief/article/details/135837105?type=blog&rId=135837105&refer=APP&source=2301_76440771>

**但**发现模板识别方法只能够拿着目标图像一块一块（目标图像的大小块）像素的去寻找与模板图像最相似的部分，这导致当被识别的图像如果不是完全与模板图像一致，而是会旋转，或作别的变换之后，几乎**无法准确识别**。   
于是在参考如下：

【C++opencv找圆心？看着一篇，一定有你要（边缘轮廓检测，拟合，凸包）找出相应的轮廓或者全部轮廓画外界圆轮廓并且标出轮廓中心 - CSDN App】   
<https://blog.csdn.net/qq_65356682/article/details/129858643?type=blog&rId=129858643&refer=APP&source=2301_76440771>  

【基于opencv计算目标图像的面积 - CSDN App】   
<https://blog.csdn.net/weixin_39539602/article/details/116001568?type=blog&rId=116001568&refer=APP&source=2301_76440771>  

并根据运算结果不断调试之后换成采用**轮廓提取、统计不同区域面积并找出与目标图像面积一致的区域、计算区域的质心** 来识别与目标图像面积一致的区域并标记中心（此处把中心当成质心来寻找）【已实现】，如果已经识别到目标图像，那么再从中识别出黑色部分，也就是锤头内边缘包围的那个黑色的矩形，就可以准确地获取锤头的中心位置【尚未实现】。   
## 4.拟合   
使用ceres库，具体参考如下：

【Ceres Solver解算已知函数模型参数 - CSDN App】   
<https://blog.csdn.net/qq_32867925/article/details/128820856?type=blog&rId=128820856&refer=APP&source=2301_76440771> 

并结合实际函数模型修改求解，但发现最终得到的结果常常是**求解的值还尚未收敛，就发现上一次迭代结果与下一次迭代结果完全一致，最终稳定至某一组显然不收敛的值**。【尚未解决】







