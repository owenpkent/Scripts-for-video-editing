Here's a breakdown of the script:

for %%f in (*.mp4) do (: This loops over all .mp4 files in the current directory.

for /f "tokens=1-6" %%a in ("%%~tf") do (: This retrieves the timestamp of the file. The %%~tf retrieves the timestamp of the file that %%f is referring to.

set "datestamp=%%~a" and set "timestamp=%%~b": These lines store the date and time of the file's timestamp into datestamp and timestamp variables respectively.

set "datestamp=!datestamp:/=-!": This replaces all / characters in the date with -.

set "timestamp=!timestamp::=-!" and set "timestamp=!timestamp:.=!": These lines replace all : and . characters in the time with -.

ren "%%f" "%%~nf-!datestamp!-!timestamp!%%~xf": This renames the file to its original name plus the date and time of creation.

%%~nf and %%~xf are used to extract the original file name and extension.

Note: This script assumes the system time and date format. If your system uses a different date and time format, you might need to adjust the "tokens" option and the way datestamp and timestamp are formatted. Please also remember that the script should be run with administrative privileges to ensure it can rename files.