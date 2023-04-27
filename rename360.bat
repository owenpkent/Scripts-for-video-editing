@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

for %%f in (*.360) do (
    for /f "tokens=1-6" %%a in ("%%~tf") do (
        set "datestamp=%%~a"
        set "timestamp=%%~b"
    )

    set "datestamp=!datestamp:/=-!"
    set "timestamp=!timestamp::=-!"
    set "timestamp=!timestamp:.=!"

    ren "%%f" "%%~nf !datestamp!-!timestamp!%%~xf"
)
