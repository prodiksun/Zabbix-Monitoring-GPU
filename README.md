# Zabbix-Monitoring-GPU

Необходима запущенная программа Open Hardware Monitor в системе.
https://openhardwaremonitor.org/

В zabbix_agentd.conf
UserParameter=system.sensor[*],powershell.exe C:\OpenHardwareMonitor\system-sensor.ps1 $1 $2 $3 $4

Получение всех датчиков: 
(Get-WmiObject -Namespace Root\OpenHardwareMonitor -Class sensor ) | ft Identifier,name,SensorType,Value

![image](https://user-images.githubusercontent.com/47965173/207834990-4d2d312a-aaf9-462c-ab74-b12ca46c7bbe.png)
