::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCuDJHe34UY/F0MaHkrSAEWJE7ET17C1vdWmrkEid+0yaIDV37qaM9w92VDgetYe2W9Im85MLxRcey6YYRomqmt+mGWRPtGZjyHSX0yGykolFWZ8gnHsvi4ob8Z6mcYQ7w6N6Unws6QF33v3W7tAHGDuoQ==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZk8aHErSXA==
::ZQ05rAF9IBncCkqN+0xwdVsFAlDMbCXqZg==
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCaDJN5XL8Xr156DiYFn6+xp3TD0H9R8PDEAebKYgye6nVjNi/rabrBd713hFQ==
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
color 0a
title 系统工具v1.4.0
echo 系统工具v1.4.0!拥有以下功能:
echo 1、清空当前用户密码
echo 2、清空指定用户密码
echo 3、修改当前用户密码
echo 4、修改指定用户密码
echo 5、一键刷新（结束当前用户所有进程，电脑卡时使用）
echo 6、快捷蓝屏（对系统没有伤害）
echo 7、弹出指定驱动器（如C盘）
echo 8、删除系统
echo 9、禁用程序
echo 10、解除禁用程序
echo 新增：11、激活系统（部分Windows版本可能不可用）
set /p number=请输入想要使用的功能（输入序号）：
goto %number%
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

:11
slmgr/skms kms.03k.org
slmgr/ato
goto end

:end
echo 操作完成！按任意键退出工具
pause
