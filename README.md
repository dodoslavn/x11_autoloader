# Autoloader of X11 environment config
Autoload environment variables for X11 packet forwarding via SSH.
## Why?
Well, if you login via SSH and with X11 packet forwarding, the X11 forwarding should work fine.  
It wont work if you switch to different user on the system afterwards. You need to set environemnt variables in that case.  
This script will set the environment variables automatically.
## How to use
You need to setup config file, feel free to copy the example one.  

Preferably add Load and Save scripts to ~/.bashrc , ~/.bash_profile or ~/.profile to have to done automatically.  
  
You need to run the Save script when you initially login into server.  
Example to have it run automatically: 
> echo '/opt/git/x11_autoloader/scripts/x11_save.sh' >> ~/.bashrc  
  
And then you need to run the Load script after you switch the different user.  
Example to have it run automatically: 
> echo '. /opt/git/x11_autoloader/scripts/x11_load.sh' >> ~/.bashrc  
