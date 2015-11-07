#!/bin/bash
java -Xmx3G -Xms3G -XX:+UseG1GC -XX:MaxGCPauseMillis=150 -XX:PermSize=256m -jar forge-1.7.10-10.13.4.1541-1.7.10-universal.jar nogui
