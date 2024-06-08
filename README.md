# x11_autoloader
Autoload environment variables for X11 pakcet forwarding via SSH.

# Why?
Well, if you login via SSH and with X11 packter forwarding, the X11 forwarding should work fine.
It wont work if you switch to different user on the system afterwards. You need to set environemnt variables
in that case. This script will set the environment variables automatically.

You need to run the Save script when you initially login into server.

And then you need to run the Load script after you switch the user.
