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
解决方案很简单：生成一个自己的通用token即可，参考<https://blog.csdn.net/weixin_41010198/article/details/119698015?type=blog&rId=119698015&refer=APP&source=2301_76440771>






