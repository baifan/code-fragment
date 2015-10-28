@echo off
:: 设置UTF-8
chcp 65001

echo -------------------------------------------------------
echo.
:: 需要替换的文件名称
set /p fileName= Enter File Name  :
echo -------------------------------------------------------
echo.
:: 需要替换的字符串
set /p oldString= Enter Old String:
echo -------------------------------------------------------
echo.
:: 新的字符串
set /p newString= Enter Old String:
echo -------------------------------------------------------
echo.
echo File Name :%fileName%
echo Old String:%oldString%
echo New String:%newString%
echo ---------------------------------------------

pause
:: 查找当前文件夹以及子目录下的所有符合文件名称的文件内容
for /f "delims=" %%i in ('dir /s/b %fileName%') do ( 
    for /f "delims=" %%a in ('findstr /n .* %%i') do (
        set str=%%a
        :: 开启变量延迟
        setlocal enabledelayedexpansion
        :: 删除findstr的行号
        set str=!str:*:=!
        
        if "!str!"=="" (
            :: 如果是空行，直接输出
            echo.>>"%%~fi"_tmp.tmp
        ) else ( 
            :: 替换内容
          set "str=!str:%oldString%=%newString%!"
          echo !str!>>"%%~fi"_tmp.tmp
        )
        :: 关闭变量延迟
        endlocal

    )
    move "%%~fi"_tmp.tmp "%%~fi"
    echo %%~fi
)
pause
exit