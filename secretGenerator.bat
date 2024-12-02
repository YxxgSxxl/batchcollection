# This script generates a random 64-character secret and copies it to the clipboard.
# The secret consists of uppercase letters, lowercase letters, and digits.
#
# Usage:
# - Run the script to generate a new secret.
# - The generated secret will be displayed in the console and copied to the clipboard.
#
# Note:
# - Ensure that the script has permission to access the clipboard.
# - The script uses the `clip` command to copy the secret to the clipboard, which is available on Windows.
#
# All credits goes to the original author of this script.
# Source: https://github.com/YxxgSxxl/batchcollection
@echo off
setlocal EnableDelayedExpansion

cls
color 05

set "charset=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
set "secret="

for /L %%i in (1,1,64) do (
    set /A "index=!random! %% 62"
    for %%j in (!index!) do set "secret=!secret!!charset:~%%j,1!"
)

echo !secret! | clip
echo Here is your secret: !secret!
echo(
echo (in the clipboard, you can CTRL+V it meow :3)
echo(
echo(
endlocal
pause