param($hw, $hwid, $sensor, $sensorid) (Get-WmiObject -Namespace Root\OpenHardwareMonitor -Class sensor | ?{$_.identifier -eq "/$hw/$hwid/$sensor/$sensorid"}).value