@javac -cp "h2-1.4.196.jar -tcpPort 9094" org.h2.tools.Console %*
@if errorlevel 1 pause