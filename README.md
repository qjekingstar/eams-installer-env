Eams-Installer-Env
=============
这个项目是eamsInstaller(https://github.com/qjekingstar/eamsInstaller)的Demo环境

###用法:
  [安装izpack 5.0 下载](http://dist.codehaus.org/izpack/releases/5.0.0-beta11/izpack-dist-5.0.0-beta11-installer.jar)

###目录说明:

    ---install
      |
      |---lib       #打包安装程序需要的依赖包
      |
      |---sql
      |  |
      |  |---h2     #h2数据库使用的数据库脚本
      |  |
      |  |---oracle #oracle数据库使用的数据库脚本
      |     
      |---legal     #licence文本资源
      |
      |---server    #tomcat的zip包，tomcat.zip中根路径下必须包含tomcat目录,tomcat的webapps目录最好为空目录
      |
      |---webapp    #发布war包的目录
     
