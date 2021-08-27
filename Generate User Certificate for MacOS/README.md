## 概述

对于需要客户端验证的场景，在Windows环境下，可以通过ADCS服务以及AD域策略实现Auto Enrollment 自动为用户注册客户端证书。但是如果用户环境里还有MacOS以及其他操作系统，并不能支持AD的自动颁发客户端证书的机制。所以这里提供了手动创建客户端证书的脚步，以及操作步骤，仅供参考。



## 代码下载 

Github 国内可能需要通过科学上网方式

[下载链接](https://github.com/gtitony/IT-Operation/tree/main/Generate%20User%20Certificate%20for%20MacOS)



## 操作步骤

1. 打开 **Certificate Authority**, 选择 **Certificate Template** -> **Manage** 

<img src="https://github.com/gtitony/IT-Operation/blob/5f16e98d7da87c14f2b269849b6bcb965eb5f230/Generate%20User%20Certificate%20for%20MacOS/images/1.png?raw=true" alt="01" style="zoom:50%;" />

2. 选择之前创建的 **Cerififace Template** - **User Certificate Auto Enrollment** -> **Duplicate Template**

<img src="https://github.com/gtitony/IT-Operation/blob/5f16e98d7da87c14f2b269849b6bcb965eb5f230/Generate%20User%20Certificate%20for%20MacOS/images/2.png?raw=true" alt="02" style="zoom:50%;" />

3. 修改 Template Name 为 **User Certificate For Mac**

<img src="https://github.com/gtitony/IT-Operation/blob/5f16e98d7da87c14f2b269849b6bcb965eb5f230/Generate%20User%20Certificate%20for%20MacOS/images/3.png?raw=true" alt="03" style="zoom:50%;" />

4. 选择 Subject Name 页面的设置 **Supply in the request**

<img src="https://github.com/gtitony/IT-Operation/blob/5f16e98d7da87c14f2b269849b6bcb965eb5f230/Generate%20User%20Certificate%20for%20MacOS/images/4.png?raw=true" alt="04" style="zoom:50%;" />

5. 回到 Certifiace Authority，选择 **New** -> **Certificate Template to Issue**

<img src="https://github.com/gtitony/IT-Operation/blob/5f16e98d7da87c14f2b269849b6bcb965eb5f230/Generate%20User%20Certificate%20for%20MacOS/images/5.png?raw=true" alt="05" style="zoom:50%;" />

6. 选择 **User Certificate For Mac**，点击 **OK**

<img src="https://github.com/gtitony/IT-Operation/blob/5f16e98d7da87c14f2b269849b6bcb965eb5f230/Generate%20User%20Certificate%20for%20MacOS/images/6.png?raw=true" alt="06" style="zoom:67%;" />

7. 修改** certrequest.inf** 文件，修改 **Subject 的用户名以及邮箱地址**

<img src="https://github.com/gtitony/IT-Operation/blob/5f16e98d7da87c14f2b269849b6bcb965eb5f230/Generate%20User%20Certificate%20for%20MacOS/images/7.png?raw=true" alt="07" style="zoom:50%;" />

8. 执行 **Generate_User_Certiface_for_Mac.cmd** 脚本 

<img src="https://github.com/gtitony/IT-Operation/blob/5f16e98d7da87c14f2b269849b6bcb965eb5f230/Generate%20User%20Certificate%20for%20MacOS/images/8.png?raw=true" alt="08" style="zoom: 50%;" />

9. 生成了用户名 - **user01.pfx** 的证书文件

![09](https://github.com/gtitony/IT-Operation/blob/5f16e98d7da87c14f2b269849b6bcb965eb5f230/Generate%20User%20Certificate%20for%20MacOS/images/9.png?raw=true)

10. 登录 MacOS，拷贝user01.pfx 到本地，双击执行该文件，选择钥匙串为 - **登陆**，点击 **添加**

<img src="https://github.com/gtitony/IT-Operation/blob/5f16e98d7da87c14f2b269849b6bcb965eb5f230/Generate%20User%20Certificate%20for%20MacOS/images/10.png?raw=true" alt="10" style="zoom:50%;" />

11. 输入密码 ，点击 **好**

<img src="https://github.com/gtitony/IT-Operation/blob/5f16e98d7da87c14f2b269849b6bcb965eb5f230/Generate%20User%20Certificate%20for%20MacOS/images/11.png?raw=true" alt="11" style="zoom:67%;" />

