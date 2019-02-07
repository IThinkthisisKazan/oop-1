@echo off
:: ��� ������� ������� ���� �������� bat-����� ���� � ����������� ���������

:: � ���������� PROGRAM ������� ���� � ���������
set PROGRAM="%~1"

:: ���� � ����� � ��������� ������� ���������
set OUT="%TEMP%\out.txt"

:: ��������� ��� �� ������ �����
%PROGRAM% < Boris.txt > %OUT% || goto err
:: ���������� ���������� ����� � ������� ��������� � ������
:: ���� ��� �� �����, ��������� �� ������ err
fc %OUT% Boris-out.txt || goto err

:: ��������� ��� �� ���������� ����
%PROGRAM% < HarryPotter.txt > %OUT% || goto err
fc %OUT% HarryPotter-out.txt || goto err

:: ��������� ������ ���
%PROGRAM% < Empty.txt > %OUT% || goto err
fc %OUT% Empty-out.txt || goto err

echo All tests passed
exit /B 0

:err
echo Program testing failed
exit /B 1
