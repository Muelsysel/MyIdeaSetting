@echo off
echo ========================================
echo   IDEA Settings Git Auto Push Script
echo ========================================

:: 1. 检查是否有文件变动
git add .

:: 2. 获取当前时间作为提交信息
set commit_msg=Backup IDEA Settings: %date% %time%

:: 3. 提交更改
git commit -m "%commit_msg%"

:: 4. 推送到远程仓库
echo.
echo Pushing to GitHub...
git push origin main

if %errorlevel% equ 0 (
    echo.
    echo [SUCCESS] Settings updated successfully!
) else (
    echo.
    echo [ERROR] Push failed. Please check your network or token.
)

echo ========================================
pause