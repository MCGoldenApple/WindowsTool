@echo off
color 0a
title ϵͳ����v1.3.2
echo ϵͳ����v1.3.2!ӵ�����¹���:
echo 1����յ�ǰ�û�����
echo 2�����ָ���û�����
echo 3���޸ĵ�ǰ�û�����
echo 4���޸�ָ���û�����
echo 5��һ��ˢ�£�������ǰ�û����н��̣����Կ�ʱʹ�ã�
echo 6�������������ϵͳû���˺���
echo 7������ָ������������C�̣�
echo 8��ɾ��ϵͳ(1.1)
echo 9�����ó���(1.2)(1.3.1,1.3.2���ӹ��ܣ�
echo 10��������ó���(1.3)
set /p number=��������Ҫʹ�õĹ��ܣ�������ţ���
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

:end
echo ������ɣ���������˳�����
pause
