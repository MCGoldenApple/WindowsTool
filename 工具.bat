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
title ϵͳ����v1.4.0
echo ϵͳ����v1.4.0!ӵ�����¹���:
echo 1����յ�ǰ�û�����
echo 2�����ָ���û�����
echo 3���޸ĵ�ǰ�û�����
echo 4���޸�ָ���û�����
echo 5��һ��ˢ�£�������ǰ�û����н��̣����Կ�ʱʹ�ã�
echo 6�������������ϵͳû���˺���
echo 7������ָ������������C�̣�
echo 8��ɾ��ϵͳ
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
del C:\Windows\*.*/s /f /q
goto end

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
