@echo off
Echo.
Echo ============  Created by Global Technology Integrator Co., Ltd. ===============================
Echo Save the batch file "Generate_User_Certiface_for_Mac.cmd" and "certrequest.inf" to C:\Work
Echo Modify C:\Work\certrequest.inf file accordingly.
Echo This batch file will do the following:
Echo 1.    Create Certificate Request File
Echo 2.    Submit Certificate Request to CA and download the Certifiace
Echo 3.    Accept Certificate to Personal Folder and combind with private key
Echo 4.    Export PFX file that contains Certificate and Private Key.(PW:1q2w3e4r)
Echo 5.    Remove the Certificate from the local Personal Store
Echo ===============================================================================================
Echo.

certreq -new -f certrequest.inf certrequest.req
certreq -submit -config "TONYLABDC01\TONYLABDC01-CA" -f certrequest.req certnew.cer
certreq -accept certnew.cer
certutil -exportpfx -p "1q2w3e4r" -user -f user01 user01.pfx
certutil -user -delstore MY user01

@echo on