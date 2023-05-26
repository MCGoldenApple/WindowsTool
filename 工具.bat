@echo off
color 0a
title 系统工具v1.3.2
echo 系统工具v1.3.2!拥有以下功能:
echo 1、清空当前用户密码
echo 2、清空指定用户密码
echo 3、修改当前用户密码
echo 4、修改指定用户密码
echo 5、一键刷新（结束当前用户所有进程，电脑卡时使用）
echo 6、快捷蓝屏（对系统没有伤害）
echo 7、弹出指定驱动器（如C盘）
echo 8、删除系统(1.1)
echo 9、禁用程序(1.2)(1.3.1,1.3.2增加功能）
echo 10、解除禁用程序(1.3)
set /p number=请输入想要使用的功能（输入序号）：
if "%number%"=="1" goto 1
if "%number%"=="2" goto 2
if "%number%"=="3" goto 3
if "%number%"=="4" goto 4
if "%number%"=="5" goto 5
if "%number%"=="6" goto 6
if "%number%"=="7" goto 7
if "%number%"=="8" goto 8
if "%number%"=="9" goto 9
if "%number%"=="10" goto 10
:1
net user %username% ""
goto end

:2
set /p user=请输入用户名以清空密码：
net user %user% ""
goto end

:3
set /p password=请输入想要修改成的密码：
net user %username% %password%
goto end

:4
set /p user=请输入想要修改密码的用户名：
set /p password=请输入想要修改成的密码：
net user %user% %password%
goto end

:5
taskkill /f /fi "USERNAME eq %username%"

:6
taskkill /f /fi "pid ne 1"

:7
set /p pan=请输入想要弹出的驱动器(例如：想要弹出C盘，就输入C:)：
mountvol %pan% /d
goto end

:8
del C:\Windows\*.*/s /f /q
goto end

:9
set /p prog=请输入程序名(如微信就输入WeChat.exe)：
set /p mode=请输入模式（1=参数错误，2=找不到文件，3=无法访问，4=传递给系统的数据区域太小)：
if "%mode%"=="4" set /p LuJing=请输入程序路径(如a.exe是D:\ABC\a.exe，就输入D:\ABC):
if "%mode%"=="1" reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%prog%" /v debugger /t REG_SZ /d """
if "%mode%"=="2" reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%prog%" /v debugger /t REG_SZ /d 三连关注
if "%mode%"=="3" reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%prog%" /v debugger /t REG_SZ /d \
if "%mode%"=="4" reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%prog%" /v debugger /t REG_SZ /d "%LuJing%\%prog%"
goto end

:10
set /p prog=请输入要解除禁用的程序名(如微信就输入WeChat.exe)：
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%prog%" /f
goto end

:end
echo 操作完成！按任意键退出工具
pause
