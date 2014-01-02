# Basic configuration to Git SSH Key

## Create SSH KEY

@@ create ssh key as per documentation, email must be same as used for register git account.  
$ ~/.ssh >> ssh-keygen -t rsa -C "your@email.com"  
Generating public/private rsa key pair.  
Enter file in which to save the key (/home/username/.ssh/id_rsa):  
Enter passphrase (empty for no passphrase):  
Enter same passphrase again:  
Your identification has been saved in /home/username/.ssh/id_rsa.  
Your public key has been saved in /home/username/.ssh/id_rsa.pub.  
The key fingerprint is: e1:e1:5b:f4:10:70:18:1d:75:63:92:ab:6a:75:ae:f2 your@email.com  
The key's randomart image is:  
+--[ RSA 2048]----+  
|        o=+oo.+  |  
|        .....+ . |  
|        o o  .   |  
|       o + o.    |  
|        S ...    |  
|         oo .    |  
|        .o o     |  
|        +   .    |  
|       . oE.     |  
+-----------------+  

@@ check files created  
$ ~/.ssh >> ls  
id_rsa  id_rsa.pub  

@@ copy content of id_rsa.pub and configure setting of create rsa key on github account.  
$ ~/.ssh >> cat id_rsa.pub  
ssh-rsa KDFJLSDJLFSJDLJFLKSJFKLSDJFLKSJLKDFJKLDJKLFJDSLKFJLKDJLFJSLDJFLSJDLFJLSDJFLDSJLFJSLDJFLDSJLFJLDSFJKLDSJFLDSJLFJLSDJFLSDJLFJDLFJLDKSJKLFSJKLDFJKDSJFLSKDFJLSKDJFLJDLKFJDSKLJFLSDJFKDSJLFJLSDKJFKDSSFKJSLDLDSJFKLDSJLFJSLDKJFLSDKJKLFDSLKFJSLDKFJSDKJFLKDJFLKDSLKFJSDKLFF your@email.com  

@@ check connection as per documentation.  
$ ~/.ssh >> ssh -T git@github.com  
Hi username! You've successfully authenticated, but GitHub does not provide shell access.  

@@ add ssh key to your configuation.(note if this will not work, try next command and try it again)  
$ ~/ >> ssh-add ~/.ssh/id_rsa  

$ ssh-agent -s  
$ eval 'ssh-agent.exe'  
$ exec ssh-agent bash  

@@ check if ssh key traced your $ ssh-add /path/to/ssk-key command successfully executed.  
$ ssh-add -l  

## Fundamentals toa access from ssh key  

Your path must be in format of git@github:username/projectname.git  
example :  
$ ~/ >> git remote add origin git@github.username/project.git  

@@ now you can push data using below command  
$ ~/ >> git push origin  
$ ~/ >> git push origin <branch>  
