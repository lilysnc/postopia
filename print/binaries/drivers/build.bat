SET PATH=%PATH%;"C:\Program Files (x86)\Windows Kits\10\bin\x86"

del *.cat
inf2cat /driver:. /os:7_X64,6_3_X64
Signtool sign /v /s PrivateCertStore /n lilysnc.com(Test) /t http://timestamp.verisign.com/scripts/timstamp.dll timsprint.cat
pause
