## 概述

对于需要客户端验证的场景，在Windows环境下，可以通过ADCS服务以及AD域策略实现Auto Enrollment 自动为用户注册客户端证书。但是如果用户环境里还有MacOS以及其他操作系统并不能支持AD的自动颁发客户端证书的机制。



## 操作步骤

1. 打开 **Certificate Authority**, 选择 **Certificate Template** -> **Manage** 

![01](https://github.com/gtitony/IT-Operation/blob/bcf6182cd4f732174f5e30a26ec984781207e5ec/Generate%20User%20Certificate%20for%20MacOS/images/1.png)

2. 选择之前创建的 **Cerififace Template** - **User Certificate Auto Enrollment** -> **Duplicate Template**

![02](https://github.com/gtitony/IT-Operation/blob/bcf6182cd4f732174f5e30a26ec984781207e5ec/Generate%20User%20Certificate%20for%20MacOS/images/2.png)

3. 修改 Template Name 为 **User Certificate For Mac**

![03](https://github.com/gtitony/IT-Operation/blob/bcf6182cd4f732174f5e30a26ec984781207e5ec/Generate%20User%20Certificate%20for%20MacOS/images/3.png)

4. 选择 Subject Name 页面的设置 **Supply in the request**

![04](https://github.com/gtitony/IT-Operation/blob/bcf6182cd4f732174f5e30a26ec984781207e5ec/Generate%20User%20Certificate%20for%20MacOS/images/4.png)

5. 回到 Certifiace Authority，选择 **New** -> **Certificate Template to Issue**

![05](https://github.com/gtitony/IT-Operation/blob/bcf6182cd4f732174f5e30a26ec984781207e5ec/Generate%20User%20Certificate%20for%20MacOS/images/5.png)

6. 选择 **User Certificate For Mac**，点击 **OK**

![06](https://github.com/gtitony/IT-Operation/blob/bcf6182cd4f732174f5e30a26ec984781207e5ec/Generate%20User%20Certificate%20for%20MacOS/images/6.png)

7. 修改** certrequest.inf** 文件，修改 **Subject 的用户名以及邮箱地址**

![07](https://github.com/gtitony/IT-Operation/blob/0e61881e34d7d4dc22799e879a8e889359c1dad6/Generate%20User%20Certificate%20for%20MacOS/images/7.png)

8. 执行 **Generate_User_Certiface_for_Mac.cmd** 脚本 

![08](https://github.com/gtitony/IT-Operation/blob/0e61881e34d7d4dc22799e879a8e889359c1dad6/Generate%20User%20Certificate%20for%20MacOS/images/8.png)

9. 生成了用户名 - **user01.pfx** 的证书文件

![09](https://github.com/gtitony/IT-Operation/blob/0e61881e34d7d4dc22799e879a8e889359c1dad6/Generate%20User%20Certificate%20for%20MacOS/images/9.png)

10. 登录 MacOS，拷贝user01.pfx 到本地，双击执行该文件，选择钥匙串为 - **登陆**，点击 **添加**

![10](https://github.com/gtitony/IT-Operation/blob/5f16e98d7da87c14f2b269849b6bcb965eb5f230/Generate%20User%20Certificate%20for%20MacOS/images/10.png)

11. 输入密码 ，点击 **好**

![11](https://github.com/gtitony/IT-Operation/blob/5f16e98d7da87c14f2b269849b6bcb965eb5f230/Generate%20User%20Certificate%20for%20MacOS/images/11.png)

