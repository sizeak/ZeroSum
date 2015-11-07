@ECHO OFF

:: When setting the memory below make sure to include the amount of ram letter. M = MB, G = GB. Don't use 1GB for example, it's 1G ::

:: This is 64-bit memory ::
set memsixtyfour=3G

:: This is 32-bit memory - maximum 1.2G ish::
set memthirtytwo=1G

:: Don't edit past this point ::

if $SYSTEM_os_arch==x86 (
  echo OS is 32
  set mem=%memthirtytwo%
) else (
  echo OS is 64
  set mem=%memsixtyfour%
)
java -Xmx%mem% -Xms%mem% -XX:+UseG1GC -XX:MaxGCPauseMillis=150 -XX:PermSize=256m -jar forge-1.7.10-10.13.4.1541-1.7.10-universal.jar nogui
PAUSE
