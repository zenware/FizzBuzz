@echo off
setlocal enabledelayedexpansion
for /l %%i in (1,1,100) do (
set /a mod3=%%i %% 3
set /a mod5=%%i %% 5
set print=
if !mod3!==0 set print=!print!Fizz
if !mod5!==0 set print=!print!Buzz
if "!print!"=="" set print=%%i
echo !print!
)
