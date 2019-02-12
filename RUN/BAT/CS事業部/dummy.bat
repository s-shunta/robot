@echo off

for /f "usebackq tokens=*" %%i in (`dir "C:\Users\rpa-icon1.TN-JAPAN\OneDrive - T-NET JAPAN Co., Ltd\ˆË—Šî•ñˆê——\ˆ—_ˆË—Šî•ñˆê——.csv" /x`) do @set RESULT=%%i

echo %RESULT%
