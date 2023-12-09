@echo off
setlocal enabledelayedexpansion

for /F "skip=4 tokens=1,2 delims= " %%A in ('net user ^| findstr /v /c:"The command completed successfully."') do (
    set "username=%%A"
    net user !username! NewPassword123 /domain
)

echo All user passwords have been changed.
pause
