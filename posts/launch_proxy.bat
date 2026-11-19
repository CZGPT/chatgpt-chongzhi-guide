@echo off
setlocal EnableExtensions
REM ============================================================
REM launch_proxy.bat
REM 在 Windows 上带着本地代理启动 Google Antigravity，
REM 用于处理客户端访问 oauth2.googleapis.com/token 超时
REM （网页已走代理、桌面客户端未走代理）的情况。
REM
REM 配套说明见同目录 antigravity-region-fix.md。
REM
REM 使用前请先彻底退出 Antigravity（包括托盘图标），再运行本脚本。
REM 用了本脚本后，请不要再直接双击原来的 Antigravity.exe。
REM
REM 必须自行修改的两处：
REM   1) PROXY_URL 的端口和协议（不要照抄 7890；以你自己的代理工具
REM      「本地混合端口」为准，例如有的环境是 7890，有的不是）
REM   2) ANTIGRAVITY_EXE 的实际安装路径
REM      （可右键快捷方式 -> 属性 -> 「目标」查看）
REM
REM 安全与用法说明：
REM   - 只用 setlocal 设置本次启动的临时环境变量，不用 setx，
REM     不会写入用户或系统的持久环境变量。
REM   - 不要在本文件里填写代理用户名、密码或其他凭证，
REM     也不要把凭证写进 PROXY_URL。
REM   - 若安装路径含空格，请保留下方引号，不要删掉。
REM   - HTTP_PROXY、HTTPS_PROXY 与 --proxy-server 使用同一 PROXY_URL，
REM     保证环境变量和启动参数指向同一代理。
REM   - NO_PROXY=localhost,127.0.0.1，避免访问本机服务时也被转发；
REM     这些变量只随本次 start 启动的进程生效。
REM ============================================================

REM ---- 请修改：本地代理地址（协议 / 主机 / 端口以你的代理工具为准）----
set "PROXY_URL=http://127.0.0.1:7890"

REM ---- 请修改：Antigravity.exe 的实际路径（默认仅为常见安装位置示例）----
set "ANTIGRAVITY_EXE=%LOCALAPPDATA%\Programs\Antigravity\Antigravity.exe"

if not exist "%ANTIGRAVITY_EXE%" (
    echo [错误] 找不到 Antigravity.exe
    echo 当前路径: "%ANTIGRAVITY_EXE%"
    echo 请用记事本打开本脚本，把 ANTIGRAVITY_EXE 改成实际安装路径后重试。
    pause
    exit /b 1
)

set "HTTP_PROXY=%PROXY_URL%"
set "HTTPS_PROXY=%PROXY_URL%"
set "NO_PROXY=localhost,127.0.0.1"

start "" "%ANTIGRAVITY_EXE%" --proxy-server=%PROXY_URL%

endlocal
