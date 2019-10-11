#!/bin/bash

#https://code.visualstudio.com/docs/remote/troubleshooting#_installing-a-supported-ssh-server



ssh-keygen -t rsa -b 4096

#on linux
#    ssh-copy-id your-user-name-on-host@host-fqdn-or-ip-goes-here


# on windows (replace the args in the first command)
#     SET REMOTEHOST=your-user-name-on-host@host-fqdn-or-ip-goes-here

#     scp %USERPROFILE%\.ssh\id_rsa.pub %REMOTEHOST%:~/tmp.pub
#     ssh %REMOTEHOST% "mkdir -p ~/.ssh && chmod 700 ~/.ssh && cat ~/tmp.pub >> ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys && rm -f ~/tmp.pub"
