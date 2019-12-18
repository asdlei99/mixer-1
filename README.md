# mixer
my English is poor so 下面全是中文   
基于同一个多媒体框架的两个应用项目，分别是混合转码项目和RTMP转推项目，采用了分层开发，   
整个工程基于boost，ffmpeg ，只有一处获取CPU核数采用了系统API，理论上可跨平台。    
   
# 编译  
1.编译boost 1.7 或以上版本      输出到系统目录   
2.安装ffmpeg,以ubuntu:18.04 为例（其它系统对应变通） 
```  
 apt-get  install libavcodec57 libavformat57 libavutil55 libswresample2 libswscale4  libpostproc54  libavfilter6 
    libavcodec-dev libavformat-dev  libavutil-dev  libswresample-dev  libswscale-dev libavfilter-dev libpostproc-dev -y  
```  
3.make ver=debug 编译debug版本（也可以 release）并自动安装       

源码目录结构   
./media/                      //多媒体框架项目   
./mixerEngine/                //混合转码项目   
./import/                     //转推项目   
./ffmpeg/                     //ffmpeg插件项目  
./mixerTest/                  //混合转码测试项目  
./importTest/                 //转推测试项目  
./inc                         //头文件目录

lib输出 make自动拷贝到系统目录（/usr/local/lib）    
./lib/libmedia.so             
./lib/libmixerEngine.so       
./lib/libimport.so            

bin目录结构  
./bin/plugins/libffmpeg.so    //ffmpeg插件  
./bin/mixerTest               //混合转码测试程序  
./bin/importTest              //转推测试程序  
./bin/tempalte.json           //转码转码模板   
./bin/template/               //转码转码模板资源目录    
./bin/task.json               //转码任务    
./bin/task/                   //转码任务资源目录   

测试程序   
cd ./bin   
./mixerTestd ./template.json ./task.json    //转码测试，输出./out.mp4    
./importTestd [rtmp pull url] [rtmp push url] //转推测试     

# 运行时环境
1. 依赖boost的编译结果，同样放在系统目录。
2. 依赖安装的包:  
    libavcodec57 libavformat57 libavutil55 libswresample2 libswscale4  libpostproc54  libavfilter6
3. 依赖mixer的所有输出。其文件系统布局详见编译过程。 
4. 编译./third-party/ffSDK/src   
   ./third-party/ffSDK/src/configure --enable-shared   
   ./third-party/ffSDK/src/make   
   ./third-party/ffsdk/src/libavformat/libavformat.so.57 覆盖 /usr/local/lib/libavformat.so.57   
