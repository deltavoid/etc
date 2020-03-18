

%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit


VBoxManage.exe startvm "debian10-virtualbox" --type headless
