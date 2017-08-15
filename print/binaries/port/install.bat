net stop spooler
del /Q /F /S "%systemroot%\System32\Spool\Printers\*.*"

COPY /Y mfilemon.dll C:\Windows\System32
COPY /Y mfilemonui.dll C:\Windows\System32

NET START SPOOLER

REGMON -D
REGMON -R

PAUSE
