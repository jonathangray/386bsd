@echo off
if '%1'=='+' goto noinit
echo + >_temp_.dob
echo # >_temp_.dow
echo /* This file was automatically generated by Ghostscript (gsconfig.bat). */ >_temp_.dh
echo /* */ >_temp_.dop
echo /* */ >_temp_.dps
echo + >_temp_.dlb
echo @echo off >_temp_.bat
goto top
:noinit
shift
:top
if '%1'=='' goto done
if '%1'=='+' goto nofin
type %1 >>_temp_.bat
shift
goto top
:done
command /c _temp_.bat
sort <_temp_.dob | uniq >obj.tr
sort <_temp_.dow | uniq >objw.tr
if exist gconfig.h erase gconfig.h
rename _temp_.dh gconfig.h
sort <_temp_.dop | uniq >>gconfig.h
if exist lib.tr erase lib.tr
rename _temp_.dlb lib.tr
sort <_temp_.dps | uniq >>gconfig.h
erase _temp_.d*
erase _temp_.bat
:nofin
