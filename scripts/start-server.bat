@echo off
:start
echo Starting Minecraft NeoForge Server...
title Minecraft NeoForge Server (Auto-Restart)

:: Call the official neoforge run script
call run.bat

echo.

echo Server stopped or crashed! Restarting in 10 seconds...
echo Press Ctrl+C to cancel the auto-restart loop.

timeout /t 10

goto start