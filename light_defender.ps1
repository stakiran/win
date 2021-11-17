
# Disables
# ========

Set-MpPreference -DisableBehaviorMonitoring $True
Set-MpPreference -DisableCatchupFullScan $True
Set-MpPreference -DisableCatchupQuickScan $True
# This values are changed by control schedtasks's "\Microsoft\Windows\Windows Defender *" tasks.
Set-MpPreference -DisableRealtimeMonitoring $True
Set-MpPreference -DisableScanningNetworkFiles $True

# Realtimes
# =========

# 0:every 1:sun... 7:sat 8:never
Set-MpPreference -ScanScheduleDay 7
Set-MpPreference -RemediationScheduleDay 8
Set-MpPreference -ScanScheduleTime "03:33:33"
Set-MpPreference -ScanScheduleQuickScanTime "01:11:11"
Set-MpPreference -ScanOnlyIfIdleEnabled $True
# 1:quick 2:full
Set-MpPreference -ScanParameters 1
# NTFS / 0:both, 1:incoming 2:outgoing
Set-MpPreference -RealTimeScanDirection 2
