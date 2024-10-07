#安装ceres库#   
安装ceres库之前一定要先安装eigen3库，否则编译会报错   
安装版本：   
·eigen-3.3.7    
·ceres-1.14.0    
由于eigen3的默认安装途径通常为/usr/local/include/eigen3，这里选择修改CMakeLists.txt如下       
![ODMt6g.png](https://ooo.0x0.ooo/2024/10/07/ODMt6g.png)
或者sudo cp -r /usr/local/include/eigen3 /usr/include把eigen3复制到本地调用目录/usr/include/eigen3才能正常运行




