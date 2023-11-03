# Task 1: Output all events from the System event log that occurred in the last 24 hours to a file on your desktop named last_24.txt.
Get-WinEvent -LogName System -MaxEvents 1000 | Where-Object { $_.TimeCreated -ge (Get-Date).AddHours(-24) } | Out-File "$env:USERPROFILE\Desktop\last_24.txt"

# Task 2: Output all "error" type events from the System event log to a file on your desktop named errors.txt.
Get-WinEvent -LogName System -MaxEvents 1000 | Where-Object { $_.LevelDisplayName -eq "Error" } | Out-File "$env:USERPROFILE\Desktop\errors.txt"

# Task 3: Print to the screen all events with ID of 16 from the System event log.
Get-WinEvent -LogName System -MaxEvents 1000 | Where-Object { $_.Id -eq 16 } | Format-Table -AutoSize

# Task 4: Print to the screen the most recent 20 entries from the System event log.
Get-WinEvent -LogName System -MaxEvents 20 | Format-Table -AutoSize

# Task 5: Print to the screen all sources of the 500 most recent entries in the System event log. Ensure that the full lines are displayed.
Get-WinEvent -LogName System -MaxEvents 500 | Format-Table -AutoSize

# Results: https://github.com/jmcano50/ops_challenges/blob/main/Ops9.bat