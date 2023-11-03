


Unsubscribe from PragerU?
You haven't opened any emails from this sender in the last month
UnsubscribeNo thanks
Conversations
27.34 GB of 100 GB used
Terms · Privacy · Program Policies
Last account activity: 2 days ago
Details
PowerShell 7.3.9
PS C:\Windows\System32> # Task 1: Output all events from the System event log that occurred in the last 24 hours to a file on your desktop named last_24.txt.
PS C:\Windows\System32> # We use Get-WinEvent to retrieve events from the System event log, filtering by time.
PS C:\Windows\System32> Get-WinEvent -LogName System -MaxEvents 1000 | Where-Object { $_.TimeCreated -ge (Get-Date).AddHours(-24) } | Out-File "$env:USERPROFILE\Desktop\last_24.txt"
PS C:\Windows\System32>
PS C:\Windows\System32> # Task 2: Output all "error" type events from the System event log to a file on your desktop named errors.txt.
PS C:\Windows\System32> # We filter events based on their LevelDisplayName property, selecting only "Error" events.
PS C:\Windows\System32> Get-WinEvent -LogName System -MaxEvents 1000 | Where-Object { $_.LevelDisplayName -eq "Error" } | Out-File "$env:USERPROFILE\Desktop\errors.txt"
PS C:\Windows\System32>
PS C:\Windows\System32> # Task 3: Print to the screen all events with ID of 16 from the System event log.
PS C:\Windows\System32> # We filter events based on their event ID (ID 16) and display the results in a table format.
PS C:\Windows\System32> Get-WinEvent -LogName System -MaxEvents 1000 | Where-Object { $_.Id -eq 16 } | Format-Table -AutoSize

   ProviderName: Microsoft-Windows-Kernel-General

TimeCreated           Id LevelDisplayName Message
-----------           -- ---------------- -------
11/2/2023 7:19:43 PM  16 Information     The access history in hive \??\C:\ProgramData\Microsoft\Windows\AppRepositor…
11/2/2023 7:18:24 PM  16 Information     The access history in hive \??\C:\ProgramData\Packages\Microsoft.WindowsTerm…
11/2/2023 10:45:14 AM 16 Information     The access history in hive \??\C:\Users\jcano\AppData\Local\Packages\Microso…
11/2/2023 10:45:14 AM 16 Information     The access history in hive \??\C:\Users\jcano\AppData\Local\Packages\Microso…
11/2/2023 10:45:14 AM 16 Information     The access history in hive \??\C:\Users\jcano\AppData\Local\Packages\Microso…
11/2/2023 9:49:43 AM  16 Information     The access history in hive \??\C:\Users\jcano\AppData\Local\Packages\Microso…
11/2/2023 2:51:30 AM  16 Information     The access history in hive \??\C:\Users\jcano\AppData\Local\Packages\91750D7…
11/2/2023 2:51:28 AM  16 Information     The access history in hive \??\C:\ProgramData\Microsoft\Windows\AppRepositor…
11/2/2023 2:50:54 AM  16 Information     The access history in hive \??\C:\ProgramData\Microsoft\Windows\AppRepositor…
11/2/2023 2:50:44 AM  16 Information     The access history in hive \??\C:\ProgramData\Microsoft\Windows\AppRepositor…
11/1/2023 6:27:11 PM  16 Information     The access history in hive \??\C:\Users\jcano\AppData\Local\Packages\Microso…
11/1/2023 4:08:15 PM  16 Information     The access history in hive \??\C:\Users\jcano\AppData\Local\Packages\microso…
11/1/2023 10:56:33 AM 16 Information     The access history in hive \??\C:\Users\jcano\AppData\Local\Packages\AD2F183…

PS C:\Windows\System32>
PS C:\Windows\System32> # Task 4: Print to the screen the most recent 20 entries from the System event log.
PS C:\Windows\System32> # We limit the number of retrieved events to the most recent 20 entries and display them in a table format.
PS C:\Windows\System32> Get-WinEvent -LogName System -MaxEvents 20 | Format-Table -AutoSize

   ProviderName: Microsoft-Windows-WindowsUpdateClient

TimeCreated          Id LevelDisplayName Message
-----------          -- ---------------- -------
11/2/2023 7:19:46 PM 19 Information     Installation Successful: Windows successfully installed the following update:…
11/2/2023 7:19:45 PM 43 Information     Installation Started: Windows has started installing the following update: 9M…

   ProviderName: Microsoft-Windows-Kernel-General

TimeCreated          Id LevelDisplayName Message
-----------          -- ---------------- -------
11/2/2023 7:19:43 PM 16 Information     The access history in hive \??\C:\ProgramData\Microsoft\Windows\AppRepository…

   ProviderName: Microsoft-Windows-WindowsUpdateClient

TimeCreated          Id LevelDisplayName Message
-----------          -- ---------------- -------
11/2/2023 7:19:24 PM 44 Information     Windows Update started downloading an update.

   ProviderName: Microsoft-Windows-Kernel-General

TimeCreated          Id LevelDisplayName Message
-----------          -- ---------------- -------
11/2/2023 7:18:24 PM 16 Information     The access history in hive \??\C:\ProgramData\Packages\Microsoft.WindowsTermi…

   ProviderName: Microsoft-Windows-Kernel-Power

TimeCreated           Id LevelDisplayName Message
-----------           -- ---------------- -------
11/2/2023 7:00:12 PM 566 Information     The system session has transitioned from 240 to 241.…
11/2/2023 7:00:12 PM 507 Information     The system is exiting Modern Standby …

   ProviderName: Netwtw10

TimeCreated            Id LevelDisplayName Message
-----------            -- ---------------- -------
11/2/2023 7:00:11 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 7:00:11 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 7:00:00 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 7:00:00 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 6:58:46 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 6:58:46 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 6:55:00 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 6:55:00 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 6:50:00 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 6:50:00 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 6:47:31 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 6:47:31 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 6:45:50 PM 7026 Information     7026 - Dump after return from D3 after cmd

PS C:\Windows\System32>
PS C:\Windows\System32> # Task 5: Print to the screen all sources of the 500 most recent entries in the System event log. Ensure that the full lines are displayed.
PS C:\Windows\System32> # We limit the number of retrieved events to 500 and display them in a table format, making sure the entire text is visible.
PS C:\Windows\System32> Get-WinEvent -LogName System -MaxEvents 500 | Format-Table -AutoSize

   ProviderName: Microsoft-Windows-WindowsUpdateClient

TimeCreated          Id LevelDisplayName Message
-----------          -- ---------------- -------
11/2/2023 7:19:46 PM 19 Information     Installation Successful: Windows successfully installed the following update:…
11/2/2023 7:19:45 PM 43 Information     Installation Started: Windows has started installing the following update: 9M…

   ProviderName: Microsoft-Windows-Kernel-General

TimeCreated          Id LevelDisplayName Message
-----------          -- ---------------- -------
11/2/2023 7:19:43 PM 16 Information     The access history in hive \??\C:\ProgramData\Microsoft\Windows\AppRepository…

   ProviderName: Microsoft-Windows-WindowsUpdateClient

TimeCreated          Id LevelDisplayName Message
-----------          -- ---------------- -------
11/2/2023 7:19:24 PM 44 Information     Windows Update started downloading an update.

   ProviderName: Microsoft-Windows-Kernel-General

TimeCreated          Id LevelDisplayName Message
-----------          -- ---------------- -------
11/2/2023 7:18:24 PM 16 Information     The access history in hive \??\C:\ProgramData\Packages\Microsoft.WindowsTermi…

   ProviderName: Microsoft-Windows-Kernel-Power

TimeCreated           Id LevelDisplayName Message
-----------           -- ---------------- -------
11/2/2023 7:00:12 PM 566 Information     The system session has transitioned from 240 to 241.…
11/2/2023 7:00:12 PM 507 Information     The system is exiting Modern Standby …

   ProviderName: Netwtw10

TimeCreated            Id LevelDisplayName Message
-----------            -- ---------------- -------
11/2/2023 7:00:11 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 7:00:11 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 7:00:00 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 7:00:00 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 6:58:46 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 6:58:46 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 6:55:00 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 6:55:00 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 6:50:00 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 6:50:00 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 6:47:31 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 6:47:31 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 6:45:50 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 6:45:50 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 6:45:00 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 6:45:00 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 6:40:34 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 6:40:34 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 6:40:29 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 6:40:29 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 6:40:00 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 6:40:00 PM 7025 Information     7025 - Dump after return from D3 before cmd

   ProviderName: Microsoft-Windows-Kernel-Power

TimeCreated           Id LevelDisplayName Message
-----------           -- ---------------- -------
11/2/2023 6:39:30 PM 566 Information     The system session has transitioned from 239 to 240.…
11/2/2023 6:39:30 PM 506 Information     The system is entering Modern Standby …
11/2/2023 6:39:30 PM 566 Information     The system session has transitioned from 238 to 239.…
11/2/2023 4:34:50 PM 566 Information     The system session has transitioned from 237 to 238.…
11/2/2023 4:34:50 PM 507 Information     The system is exiting Modern Standby …

   ProviderName: Netwtw10

TimeCreated            Id LevelDisplayName Message
-----------            -- ---------------- -------
11/2/2023 4:34:49 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 4:34:49 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 4:34:29 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 4:34:29 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 4:30:00 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 4:30:00 PM 7025 Information     7025 - Dump after return from D3 before cmd

   ProviderName: Microsoft-Windows-Kernel-Power

TimeCreated           Id LevelDisplayName Message
-----------           -- ---------------- -------
11/2/2023 4:26:13 PM 566 Information     The system session has transitioned from 236 to 237.…
11/2/2023 4:26:13 PM 506 Information     The system is entering Modern Standby …
11/2/2023 4:26:13 PM 566 Information     The system session has transitioned from 235 to 236.…

   ProviderName: Microsoft-Windows-DistributedCOM

TimeCreated             Id LevelDisplayName Message
-----------             -- ---------------- -------
11/2/2023 4:00:27 PM 10016 Warning         The application-specific permission settings do not grant Local Activation…

   ProviderName: Microsoft-Windows-Kernel-Power

TimeCreated           Id LevelDisplayName Message
-----------           -- ---------------- -------
11/2/2023 4:00:16 PM 566 Information     The system session has transitioned from 234 to 235.…
11/2/2023 4:00:16 PM 507 Information     The system is exiting Modern Standby …

   ProviderName: Netwtw10

TimeCreated            Id LevelDisplayName Message
-----------            -- ---------------- -------
11/2/2023 3:58:00 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 3:58:00 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 3:57:58 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 3:57:58 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 3:55:00 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 3:55:00 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 3:50:00 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 3:50:00 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 3:45:40 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 3:45:40 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 3:45:03 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 3:45:03 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 3:45:00 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 3:45:00 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 3:43:17 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 3:43:17 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 3:40:27 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 3:40:27 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 3:40:11 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 3:40:11 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 3:40:07 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 3:40:07 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 3:39:59 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 3:39:59 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 3:35:02 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 3:35:02 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 3:35:00 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 3:35:00 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 3:30:00 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 3:30:00 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 3:29:48 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 3:29:48 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 3:25:00 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 3:25:00 PM 7025 Information     7025 - Dump after return from D3 before cmd

   ProviderName: Microsoft-Windows-Kernel-Power

TimeCreated           Id LevelDisplayName Message
-----------           -- ---------------- -------
11/2/2023 3:24:36 PM 566 Information     The system session has transitioned from 233 to 234.…
11/2/2023 3:24:36 PM 506 Information     The system is entering Modern Standby …
11/2/2023 3:24:36 PM 566 Information     The system session has transitioned from 232 to 233.…

   ProviderName: Microsoft-Windows-WindowsUpdateClient

TimeCreated          Id LevelDisplayName Message
-----------          -- ---------------- -------
11/2/2023 2:32:55 PM 20 Error           Installation Failure: Windows failed to install the following update with err…
11/2/2023 2:32:55 PM 43 Information     Installation Started: Windows has started installing the following update: Ca…

   ProviderName: Microsoft-Windows-Kernel-Power

TimeCreated           Id LevelDisplayName Message
-----------           -- ---------------- -------
11/2/2023 1:41:34 PM 566 Information     The system session has transitioned from 230 to 232.…
11/2/2023 1:41:34 PM 507 Information     The system is exiting Modern Standby …
11/2/2023 1:41:08 PM 506 Information     The system is entering Modern Standby …
11/2/2023 1:41:08 PM 566 Information     The system session has transitioned from 229 to 230.…
11/2/2023 1:39:55 PM 566 Information     The system session has transitioned from 228 to 229.…
11/2/2023 1:39:55 PM 507 Information     The system is exiting Modern Standby …

   ProviderName: Netwtw10

TimeCreated            Id LevelDisplayName Message
-----------            -- ---------------- -------
11/2/2023 1:39:55 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 1:39:55 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 1:34:59 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 1:34:59 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 1:33:07 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 1:33:07 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 1:30:41 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 1:30:41 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 1:29:59 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 1:29:59 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 1:24:59 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 1:24:59 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 1:20:00 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 1:20:00 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 1:19:32 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 1:19:32 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 1:18:11 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 1:18:11 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 1:17:58 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 1:17:58 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 1:16:41 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 1:16:41 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 1:15:43 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 1:15:43 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 1:15:41 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 1:15:41 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 1:15:00 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 1:15:00 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 1:10:00 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 1:10:00 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 1:09:17 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 1:09:17 PM 7025 Information     7025 - Dump after return from D3 before cmd

   ProviderName: Microsoft-Windows-Kernel-Power

TimeCreated           Id LevelDisplayName Message
-----------           -- ---------------- -------
11/2/2023 1:09:02 PM 566 Information     The system session has transitioned from 227 to 228.…
11/2/2023 1:09:01 PM 506 Information     The system is entering Modern Standby …
11/2/2023 1:09:01 PM 566 Information     The system session has transitioned from 226 to 227.…

   ProviderName: Microsoft-Windows-Kernel-General

TimeCreated          Id LevelDisplayName Message
-----------          -- ---------------- -------
11/2/2023 1:06:42 PM  1 Information     The system time has changed to ‎2023‎-‎11‎-‎02T20:06:42.325143800Z from ‎2023…
11/2/2023 1:06:42 PM 24 Information     The time zone information was refreshed with exit reason 0. Current time zone…
11/2/2023 1:06:42 PM  1 Information     The system time has changed to ‎2023‎-‎11‎-‎02T20:06:42.293260400Z from ‎2023…
11/2/2023 1:06:42 PM 24 Information     The time zone information was refreshed with exit reason 0. Current time zone…

   ProviderName: Microsoft-Windows-Time-Service

TimeCreated          Id LevelDisplayName Message
-----------          -- ---------------- -------
11/2/2023 1:06:42 PM 35 Information     The time service is now synchronizing the system time with the time source ti…

   ProviderName: Microsoft-Windows-Kernel-General

TimeCreated          Id LevelDisplayName Message
-----------          -- ---------------- -------
11/2/2023 1:06:42 PM  1 Information     The system time has changed to ‎2023‎-‎11‎-‎02T20:06:42.263164900Z from ‎2023…
11/2/2023 1:06:42 PM 24 Information     The time zone information was refreshed with exit reason 0. Current time zone…

   ProviderName: Microsoft-Windows-Time-Service

TimeCreated          Id LevelDisplayName Message
-----------          -- ---------------- -------
11/2/2023 1:06:43 PM 37 Information     The time provider NtpClient is currently receiving valid time data from time.…

   ProviderName: Microsoft-Windows-Kernel-Power

TimeCreated            Id LevelDisplayName Message
-----------            -- ---------------- -------
11/2/2023 12:34:42 PM 566 Information     The system session has transitioned from 225 to 226.…
11/2/2023 12:34:42 PM 507 Information     The system is exiting Modern Standby …

   ProviderName: Netwtw10

TimeCreated             Id LevelDisplayName Message
-----------             -- ---------------- -------
11/2/2023 12:34:41 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 12:34:41 PM 7025 Information     7025 - Dump after return from D3 before cmd

   ProviderName: Service Control Manager

TimeCreated             Id LevelDisplayName Message
-----------             -- ---------------- -------
11/2/2023 12:32:02 PM 7011 Error           A timeout (30000 milliseconds) was reached while waiting for a transaction…

   ProviderName: Netwtw10

TimeCreated             Id LevelDisplayName Message
-----------             -- ---------------- -------
11/2/2023 12:30:01 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 12:30:01 PM 7025 Information     7025 - Dump after return from D3 before cmd

   ProviderName: Microsoft-Windows-Kernel-Power

TimeCreated            Id LevelDisplayName Message
-----------            -- ---------------- -------
11/2/2023 12:25:58 PM 566 Information     The system session has transitioned from 224 to 225.…
11/2/2023 12:25:58 PM 506 Information     The system is entering Modern Standby …
11/2/2023 12:25:58 PM 566 Information     The system session has transitioned from 223 to 224.…

   ProviderName: EventLog

TimeCreated             Id LevelDisplayName Message
-----------             -- ---------------- -------
11/2/2023 12:00:00 PM 6013 Information     The system uptime is 544259 seconds.

   ProviderName: Microsoft-Windows-Kernel-General

TimeCreated           Id LevelDisplayName Message
-----------           -- ---------------- -------
11/2/2023 10:45:14 AM 16 Information     The access history in hive \??\C:\Users\jcano\AppData\Local\Packages\Microso…
11/2/2023 10:45:14 AM 16 Information     The access history in hive \??\C:\Users\jcano\AppData\Local\Packages\Microso…
11/2/2023 10:45:14 AM 16 Information     The access history in hive \??\C:\Users\jcano\AppData\Local\Packages\Microso…

   ProviderName: Microsoft-Windows-WindowsUpdateClient

TimeCreated           Id LevelDisplayName Message
-----------           -- ---------------- -------
11/2/2023 10:40:29 AM 19 Information     Installation Successful: Windows successfully installed the following update…
11/2/2023 10:39:53 AM 43 Information     Installation Started: Windows has started installing the following update: P…

   ProviderName: Microsoft-Windows-UserModePowerService

TimeCreated           Id LevelDisplayName Message
-----------           -- ---------------- -------
11/2/2023 10:35:49 AM 12 Information     Process C:\Windows\System32\DriverStore\FileRepository\surfaceservicenulldri…

   ProviderName: camera

TimeCreated           Id LevelDisplayName Message
-----------           -- ---------------- -------
11/2/2023 10:35:49 AM  2 Information     Camera model OV5693 off.

   ProviderName: Service Control Manager

TimeCreated             Id LevelDisplayName Message
-----------             -- ---------------- -------
11/2/2023 10:35:36 AM 7045 Information     A service was installed in the system.…

   ProviderName: Microsoft-Windows-WindowsUpdateClient

TimeCreated           Id LevelDisplayName Message
-----------           -- ---------------- -------
11/2/2023 10:35:36 AM 19 Information     Installation Successful: Windows successfully installed the following update…
11/2/2023 10:35:22 AM 43 Information     Installation Started: Windows has started installing the following update: S…
11/2/2023 10:35:21 AM 44 Information     Windows Update started downloading an update.
11/2/2023 10:35:21 AM 44 Information     Windows Update started downloading an update.

   ProviderName: Microsoft-Windows-UserModePowerService

TimeCreated           Id LevelDisplayName Message
-----------           -- ---------------- -------
11/2/2023 10:24:15 AM 12 Information     Process C:\Windows\System32\DriverStore\FileRepository\surfaceservicenulldri…

   ProviderName: camera

TimeCreated           Id LevelDisplayName Message
-----------           -- ---------------- -------
11/2/2023 10:24:15 AM  1 Information     Camera model OV5693 on.

   ProviderName: Microsoft-Windows-UserModePowerService

TimeCreated           Id LevelDisplayName Message
-----------           -- ---------------- -------
11/2/2023 10:24:15 AM 12 Information     Process C:\Windows\System32\DriverStore\FileRepository\surfaceservicenulldri…
11/2/2023 10:23:57 AM 12 Information     Process C:\Windows\System32\DriverStore\FileRepository\surfaceservicenulldri…

   ProviderName: camera

TimeCreated           Id LevelDisplayName Message
-----------           -- ---------------- -------
11/2/2023 10:23:57 AM  2 Information     Camera model OV5693 off.

   ProviderName: Microsoft-Windows-UserModePowerService

TimeCreated           Id LevelDisplayName Message
-----------           -- ---------------- -------
11/2/2023 10:09:59 AM 12 Information     Process C:\Windows\System32\DriverStore\FileRepository\surfaceservicenulldri…

   ProviderName: camera

TimeCreated           Id LevelDisplayName Message
-----------           -- ---------------- -------
11/2/2023 10:09:58 AM  1 Information     Camera model OV5693 on.

   ProviderName: Microsoft-Windows-UserModePowerService

TimeCreated           Id LevelDisplayName Message
-----------           -- ---------------- -------
11/2/2023 10:09:58 AM 12 Information     Process C:\Windows\System32\DriverStore\FileRepository\surfaceservicenulldri…

   ProviderName: BTHUSB

TimeCreated          Id LevelDisplayName Message
-----------          -- ---------------- -------
11/2/2023 9:55:25 AM 18 Information     Windows cannot store Bluetooth authentication codes (link keys) on the local …

   ProviderName: camera

TimeCreated          Id LevelDisplayName Message
-----------          -- ---------------- -------
11/2/2023 9:50:14 AM  2 Information     Camera model OV5693 off.

   ProviderName: Microsoft-Windows-UserModePowerService

TimeCreated          Id LevelDisplayName Message
-----------          -- ---------------- -------
11/2/2023 9:50:14 AM 12 Information     Process C:\Windows\System32\DriverStore\FileRepository\surfaceservicenulldriv…

   ProviderName: Microsoft-Windows-Kernel-General

TimeCreated          Id LevelDisplayName Message
-----------          -- ---------------- -------
11/2/2023 9:49:43 AM 16 Information     The access history in hive \??\C:\Users\jcano\AppData\Local\Packages\Microsof…

   ProviderName: Microsoft-Windows-UserModePowerService

TimeCreated          Id LevelDisplayName Message
-----------          -- ---------------- -------
11/2/2023 9:45:24 AM 12 Information     Process C:\Windows\System32\DriverStore\FileRepository\surfaceservicenulldriv…

   ProviderName: camera

TimeCreated          Id LevelDisplayName Message
-----------          -- ---------------- -------
11/2/2023 9:45:23 AM  1 Information     Camera model OV5693 on.

   ProviderName: Microsoft-Windows-UserModePowerService

TimeCreated          Id LevelDisplayName Message
-----------          -- ---------------- -------
11/2/2023 9:45:23 AM 12 Information     Process C:\Windows\System32\DriverStore\FileRepository\surfaceservicenulldriv…
11/2/2023 9:44:20 AM 12 Information     Process C:\Windows\System32\DriverStore\FileRepository\surfaceservicenulldriv…

   ProviderName: camera

TimeCreated          Id LevelDisplayName Message
-----------          -- ---------------- -------
11/2/2023 9:44:20 AM  2 Information     Camera model OV5693 off.

   ProviderName: Microsoft-Windows-UserModePowerService

TimeCreated          Id LevelDisplayName Message
-----------          -- ---------------- -------
11/2/2023 9:06:30 AM 12 Information     Process C:\Windows\System32\DriverStore\FileRepository\surfaceservicenulldriv…

   ProviderName: camera

TimeCreated          Id LevelDisplayName Message
-----------          -- ---------------- -------
11/2/2023 9:06:30 AM  1 Information     Camera model OV5693 on.

   ProviderName: Microsoft-Windows-UserModePowerService

TimeCreated          Id LevelDisplayName Message
-----------          -- ---------------- -------
11/2/2023 9:06:29 AM 12 Information     Process C:\Windows\System32\DriverStore\FileRepository\surfaceservicenulldriv…
11/2/2023 8:50:47 AM 12 Information     Process C:\Windows\System32\DriverStore\FileRepository\surfaceservicenulldriv…

   ProviderName: camera

TimeCreated          Id LevelDisplayName Message
-----------          -- ---------------- -------
11/2/2023 8:50:47 AM  2 Information     Camera model OV5693 off.

   ProviderName: Microsoft-Windows-UserModePowerService

TimeCreated          Id LevelDisplayName Message
-----------          -- ---------------- -------
11/2/2023 8:50:31 AM 12 Information     Process C:\Windows\System32\DriverStore\FileRepository\surfaceservicenulldriv…

   ProviderName: camera

TimeCreated          Id LevelDisplayName Message
-----------          -- ---------------- -------
11/2/2023 8:50:31 AM  1 Information     Camera model OV5693 on.

   ProviderName: Microsoft-Windows-UserModePowerService

TimeCreated          Id LevelDisplayName Message
-----------          -- ---------------- -------
11/2/2023 8:50:31 AM 12 Information     Process C:\Windows\System32\DriverStore\FileRepository\surfaceservicenulldriv…

   ProviderName: camera

TimeCreated          Id LevelDisplayName Message
-----------          -- ---------------- -------
11/2/2023 8:50:29 AM  2 Information     Camera model OV5693 off.

   ProviderName: Microsoft-Windows-UserModePowerService

TimeCreated          Id LevelDisplayName Message
-----------          -- ---------------- -------
11/2/2023 8:50:29 AM 12 Information     Process C:\Windows\System32\DriverStore\FileRepository\surfaceservicenulldriv…
11/2/2023 8:50:26 AM 12 Information     Process C:\Windows\System32\DriverStore\FileRepository\surfaceservicenulldriv…

   ProviderName: camera

TimeCreated          Id LevelDisplayName Message
-----------          -- ---------------- -------
11/2/2023 8:50:25 AM  1 Information     Camera model OV5693 on.

   ProviderName: Microsoft-Windows-UserModePowerService

TimeCreated          Id LevelDisplayName Message
-----------          -- ---------------- -------
11/2/2023 8:50:25 AM 12 Information     Process C:\Windows\System32\DriverStore\FileRepository\surfaceservicenulldriv…

   ProviderName: camera

TimeCreated          Id LevelDisplayName Message
-----------          -- ---------------- -------
11/2/2023 8:50:24 AM  2 Information     Camera model OV5693 off.
11/2/2023 8:50:24 AM  1 Information     Camera model OV5693 on.

   ProviderName: Microsoft-Windows-UserModePowerService

TimeCreated          Id LevelDisplayName Message
-----------          -- ---------------- -------
11/2/2023 8:50:24 AM 12 Information     Process C:\Windows\System32\DriverStore\FileRepository\surfaceservicenulldriv…

   ProviderName: Microsoft-Windows-Kernel-Power

TimeCreated           Id LevelDisplayName Message
-----------           -- ---------------- -------
11/2/2023 8:49:47 AM 566 Information     The system session has transitioned from 221 to 223.…
11/2/2023 8:49:47 AM 507 Information     The system is exiting Modern Standby …
11/2/2023 8:43:27 AM 506 Information     The system is entering Modern Standby …
11/2/2023 8:43:27 AM 566 Information     The system session has transitioned from 220 to 221.…
11/2/2023 8:42:15 AM 566 Information     The system session has transitioned from 219 to 220.…
11/2/2023 8:42:15 AM 507 Information     The system is exiting Modern Standby …

   ProviderName: Netwtw10

TimeCreated            Id LevelDisplayName Message
-----------            -- ---------------- -------
11/2/2023 8:38:49 AM 6062 Warning         6062 - Lso was triggered
11/2/2023 8:38:48 AM 7021 Information     7021 - Connection telemetry fields and analysis usage
11/2/2023 8:38:46 AM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 8:38:46 AM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 8:37:46 AM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 8:37:46 AM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 8:33:25 AM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 8:33:25 AM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 8:32:26 AM 7021 Information     7021 - Connection telemetry fields and analysis usage
11/2/2023 8:32:25 AM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 8:32:25 AM 7025 Information     7025 - Dump after return from D3 before cmd

   ProviderName: camera

TimeCreated          Id LevelDisplayName Message
-----------          -- ---------------- -------
11/2/2023 8:31:29 AM  2 Information     Camera model OV7251 off.
11/2/2023 8:31:29 AM  1 Information     Camera model OV7251 on.
11/2/2023 8:31:29 AM  2 Information     Camera model OV8865 off.
11/2/2023 8:31:28 AM  1 Information     Camera model OV8865 on.
11/2/2023 8:31:28 AM  2 Information     Camera model OV5693 off.
11/2/2023 8:31:28 AM  1 Information     Camera model OV5693 on.

   ProviderName: Microsoft-Windows-Kernel-Power

TimeCreated           Id LevelDisplayName Message
-----------           -- ---------------- -------
11/2/2023 8:31:24 AM 566 Information     The system session has transitioned from 218 to 219.…
11/2/2023 8:31:24 AM 506 Information     The system is entering Modern Standby …
11/2/2023 8:31:24 AM 566 Information     The system session has transitioned from 217 to 218.…
11/2/2023 8:31:18 AM 566 Information     The system session has transitioned from 216 to 217.…
11/2/2023 8:31:18 AM 507 Information     The system is exiting Modern Standby …

   ProviderName: Microsoft-Windows-UserModePowerService

TimeCreated          Id LevelDisplayName Message
-----------          -- ---------------- -------
11/2/2023 8:31:18 AM 12 Information     Process C:\Windows\System32\DriverStore\FileRepository\surfaceservicenulldriv…
11/2/2023 8:31:18 AM 12 Information     Process C:\Windows\System32\DriverStore\FileRepository\surfaceservicenulldriv…

   ProviderName: Microsoft-Windows-Kernel-Power

TimeCreated           Id LevelDisplayName Message
-----------           -- ---------------- -------
11/2/2023 8:31:18 AM 172 Information     Connectivity state in standby: Connected, Reason: None

   ProviderName: Netwtw10

TimeCreated            Id LevelDisplayName Message
-----------            -- ---------------- -------
11/2/2023 8:31:18 AM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 8:31:18 AM 7025 Information     7025 - Dump after return from D3 before cmd

   ProviderName: Microsoft-Windows-Kernel-Power

TimeCreated           Id LevelDisplayName Message
-----------           -- ---------------- -------
11/2/2023 8:31:18 AM 105 Information     Power source change.
11/2/2023 8:29:16 AM 172 Information     Connectivity state in standby: Disconnected, Reason: Adaptive Connected Stan…

   ProviderName: Microsoft-Windows-DNS-Client

TimeCreated            Id LevelDisplayName Message
-----------            -- ---------------- -------
11/2/2023 8:29:13 AM 1014 Warning         Name resolution for the name wpad timed out after none of the configured DN…

   ProviderName: Microsoft-Windows-UserModePowerService

TimeCreated          Id LevelDisplayName Message
-----------          -- ---------------- -------
11/2/2023 8:29:11 AM 12 Information     Process C:\Windows\System32\DriverStore\FileRepository\surfaceservicenulldriv…

   ProviderName: Microsoft-Windows-Kernel-Power

TimeCreated           Id LevelDisplayName Message
-----------           -- ---------------- -------
11/2/2023 8:29:11 AM 566 Information     The system session has transitioned from 215 to 216.…

   ProviderName: Microsoft-Windows-UserModePowerService

TimeCreated          Id LevelDisplayName Message
-----------          -- ---------------- -------
11/2/2023 8:29:07 AM 12 Information     Process C:\Windows\System32\DriverStore\FileRepository\surfaceservicenulldriv…

   ProviderName: Microsoft-Windows-Kernel-Power

TimeCreated           Id LevelDisplayName Message
-----------           -- ---------------- -------
11/2/2023 8:29:06 AM 506 Information     The system is entering Modern Standby …
11/2/2023 8:29:06 AM 566 Information     The system session has transitioned from 214 to 215.…
11/2/2023 8:29:06 AM 507 Information     The system is exiting Modern Standby …
11/2/2023 8:29:05 AM 105 Information     Power source change.

   ProviderName: Microsoft-Windows-DistributedCOM

TimeCreated             Id LevelDisplayName Message
-----------             -- ---------------- -------
11/2/2023 6:24:53 AM 10010 Error           The server {283EDD52-69B2-473D-BEB6-2C0B4C01FD73} did not register with DC…

   ProviderName: Microsoft-Windows-Time-Service

TimeCreated           Id LevelDisplayName Message
-----------           -- ---------------- -------
11/2/2023 5:45:37 AM 158 Information     The time provider 'VMICTimeProvider' has indicated that the current hardware…
11/2/2023 5:28:33 AM 158 Information     The time provider 'VMICTimeProvider' has indicated that the current hardware…
11/2/2023 5:11:29 AM 158 Information     The time provider 'VMICTimeProvider' has indicated that the current hardware…
11/2/2023 4:54:25 AM 158 Information     The time provider 'VMICTimeProvider' has indicated that the current hardware…

   ProviderName: Netwtw10

TimeCreated            Id LevelDisplayName Message
-----------            -- ---------------- -------
11/2/2023 4:39:06 AM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 4:39:06 AM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 4:37:09 AM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 4:37:09 AM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 4:32:09 AM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 4:32:09 AM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 4:27:09 AM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 4:27:09 AM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 4:22:09 AM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 4:22:09 AM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 4:17:09 AM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 4:17:09 AM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 4:12:09 AM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 4:12:09 AM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 4:11:06 AM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 4:11:06 AM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 4:07:10 AM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 4:07:10 AM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 4:02:09 AM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 4:02:09 AM 7025 Information     7025 - Dump after return from D3 before cmd

   ProviderName: Microsoft-Windows-Kernel-Power

TimeCreated           Id LevelDisplayName Message
-----------           -- ---------------- -------
11/2/2023 4:00:52 AM 566 Information     The system session has transitioned from 213 to 214.…
11/2/2023 4:00:51 AM 506 Information     The system is entering Modern Standby …
11/2/2023 4:00:51 AM 566 Information     The system session has transitioned from 212 to 213.…
11/2/2023 4:00:51 AM 507 Information     The system is exiting Modern Standby …
11/2/2023 4:00:50 AM 566 Information     The system session has transitioned from 211 to 212.…

   ProviderName: Microsoft-Windows-Time-Service

TimeCreated           Id LevelDisplayName Message
-----------           -- ---------------- -------
11/2/2023 4:00:35 AM  37 Information     The time provider NtpClient is currently receiving valid time data from time…
11/2/2023 4:00:35 AM 158 Information     The time provider 'VMICTimeProvider' has indicated that the current hardware…

   ProviderName: Microsoft-Windows-Kernel-Power

TimeCreated           Id LevelDisplayName Message
-----------           -- ---------------- -------
11/2/2023 4:00:33 AM 506 Information     The system is entering Modern Standby …
11/2/2023 4:00:33 AM 566 Information     The system session has transitioned from 210 to 211.…
11/2/2023 4:00:33 AM 507 Information     The system is exiting Modern Standby …
11/2/2023 3:00:02 AM 566 Information     The system session has transitioned from 209 to 210.…
11/2/2023 3:00:02 AM 506 Information     The system is entering Modern Standby …
11/2/2023 3:00:02 AM 566 Information     The system session has transitioned from 208 to 209.…
11/2/2023 3:00:02 AM 507 Information     The system is exiting Modern Standby …

   ProviderName: Netwtw10

TimeCreated            Id LevelDisplayName Message
-----------            -- ---------------- -------
11/2/2023 3:00:02 AM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 3:00:02 AM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 2:59:30 AM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 2:59:30 AM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 2:59:14 AM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 2:59:14 AM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 2:59:04 AM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 2:59:04 AM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 2:57:09 AM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 2:57:09 AM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 2:55:16 AM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 2:55:16 AM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 2:55:06 AM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 2:55:06 AM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 2:55:00 AM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 2:55:00 AM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 2:54:56 AM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 2:54:56 AM 7025 Information     7025 - Dump after return from D3 before cmd

   ProviderName: Microsoft-Windows-DistributedCOM

TimeCreated             Id LevelDisplayName Message
-----------             -- ---------------- -------
11/2/2023 2:53:31 AM 10010 Error           The server {C53A4F16-787E-42A4-B304-29EFFB4BF597} did not register with DC…

   ProviderName: Netwtw10

TimeCreated            Id LevelDisplayName Message
-----------            -- ---------------- -------
11/2/2023 2:52:31 AM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 2:52:31 AM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 2:52:10 AM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 2:52:10 AM 7025 Information     7025 - Dump after return from D3 before cmd

   ProviderName: Microsoft-Windows-WindowsUpdateClient

TimeCreated          Id LevelDisplayName Message
-----------          -- ---------------- -------
11/2/2023 2:51:31 AM 19 Information     Installation Successful: Windows successfully installed the following update:…

   ProviderName: Microsoft-Windows-Kernel-General

TimeCreated          Id LevelDisplayName Message
-----------          -- ---------------- -------
11/2/2023 2:51:30 AM 16 Information     The access history in hive \??\C:\Users\jcano\AppData\Local\Packages\91750D7E…

   ProviderName: Microsoft-Windows-WindowsUpdateClient

TimeCreated          Id LevelDisplayName Message
-----------          -- ---------------- -------
11/2/2023 2:51:29 AM 43 Information     Installation Started: Windows has started installing the following update: 9W…

   ProviderName: Microsoft-Windows-Kernel-General

TimeCreated          Id LevelDisplayName Message
-----------          -- ---------------- -------
11/2/2023 2:51:28 AM 16 Information     The access history in hive \??\C:\ProgramData\Microsoft\Windows\AppRepository…
11/2/2023 2:50:54 AM 16 Information     The access history in hive \??\C:\ProgramData\Microsoft\Windows\AppRepository…

   ProviderName: Microsoft-Windows-WindowsUpdateClient

TimeCreated          Id LevelDisplayName Message
-----------          -- ---------------- -------
11/2/2023 2:50:49 AM 44 Information     Windows Update started downloading an update.
11/2/2023 2:50:45 AM 19 Information     Installation Successful: Windows successfully installed the following update:…

   ProviderName: Microsoft-Windows-Kernel-General

TimeCreated          Id LevelDisplayName Message
-----------          -- ---------------- -------
11/2/2023 2:50:44 AM 16 Information     The access history in hive \??\C:\ProgramData\Microsoft\Windows\AppRepository…

   ProviderName: Service Control Manager

TimeCreated            Id LevelDisplayName Message
-----------            -- ---------------- -------
11/2/2023 2:50:41 AM 7045 Information     A service was installed in the system.…
11/2/2023 2:50:41 AM 7040 Information     The start type of the Surface service was changed from auto start to disabl…

   ProviderName: Microsoft-Windows-WindowsUpdateClient

TimeCreated          Id LevelDisplayName Message
-----------          -- ---------------- -------
11/2/2023 2:50:41 AM 43 Information     Installation Started: Windows has started installing the following update: 9W…
11/2/2023 2:50:33 AM 44 Information     Windows Update started downloading an update.
11/2/2023 2:50:30 AM 44 Information     Windows Update started downloading an update.
11/2/2023 2:50:30 AM 44 Information     Windows Update started downloading an update.
11/2/2023 2:50:30 AM 44 Information     Windows Update started downloading an update.
11/2/2023 2:50:29 AM 44 Information     Windows Update started downloading an update.
11/2/2023 2:50:29 AM 44 Information     Windows Update started downloading an update.
11/2/2023 2:50:29 AM 44 Information     Windows Update started downloading an update.
11/2/2023 2:50:27 AM 44 Information     Windows Update started downloading an update.
11/2/2023 2:50:27 AM 44 Information     Windows Update started downloading an update.
11/2/2023 2:50:27 AM 44 Information     Windows Update started downloading an update.
11/2/2023 2:50:26 AM 44 Information     Windows Update started downloading an update.
11/2/2023 2:50:26 AM 44 Information     Windows Update started downloading an update.
11/2/2023 2:50:26 AM 44 Information     Windows Update started downloading an update.
11/2/2023 2:50:24 AM 44 Information     Windows Update started downloading an update.
11/2/2023 2:50:24 AM 44 Information     Windows Update started downloading an update.
11/2/2023 2:50:24 AM 44 Information     Windows Update started downloading an update.
11/2/2023 2:50:24 AM 44 Information     Windows Update started downloading an update.
11/2/2023 2:50:24 AM 44 Information     Windows Update started downloading an update.
11/2/2023 2:50:24 AM 44 Information     Windows Update started downloading an update.
11/2/2023 2:50:23 AM 44 Information     Windows Update started downloading an update.
11/2/2023 2:50:20 AM 44 Information     Windows Update started downloading an update.
11/2/2023 2:50:20 AM 44 Information     Windows Update started downloading an update.
11/2/2023 2:50:20 AM 44 Information     Windows Update started downloading an update.
11/2/2023 2:50:17 AM 44 Information     Windows Update started downloading an update.
11/2/2023 2:50:17 AM 44 Information     Windows Update started downloading an update.
11/2/2023 2:50:16 AM 44 Information     Windows Update started downloading an update.
11/2/2023 2:50:16 AM 44 Information     Windows Update started downloading an update.
11/2/2023 2:50:16 AM 44 Information     Windows Update started downloading an update.
11/2/2023 2:50:14 AM 44 Information     Windows Update started downloading an update.
11/2/2023 2:50:14 AM 44 Information     Windows Update started downloading an update.
11/2/2023 2:50:14 AM 44 Information     Windows Update started downloading an update.
11/2/2023 2:50:13 AM 44 Information     Windows Update started downloading an update.
11/2/2023 2:50:13 AM 44 Information     Windows Update started downloading an update.
11/2/2023 2:50:13 AM 44 Information     Windows Update started downloading an update.
11/2/2023 2:50:13 AM 44 Information     Windows Update started downloading an update.
11/2/2023 2:50:13 AM 44 Information     Windows Update started downloading an update.
11/2/2023 2:50:12 AM 44 Information     Windows Update started downloading an update.
11/2/2023 2:50:11 AM 44 Information     Windows Update started downloading an update.
11/2/2023 2:50:10 AM 44 Information     Windows Update started downloading an update.
11/2/2023 2:50:10 AM 44 Information     Windows Update started downloading an update.

   ProviderName: Netwtw10

TimeCreated            Id LevelDisplayName Message
-----------            -- ---------------- -------
11/2/2023 2:49:57 AM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 2:49:57 AM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 2:49:55 AM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 2:49:55 AM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 2:49:52 AM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 2:49:52 AM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 2:49:50 AM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 2:49:50 AM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 2:49:48 AM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 2:49:48 AM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 2:49:46 AM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 2:49:46 AM 7025 Information     7025 - Dump after return from D3 before cmd
11/2/2023 2:49:44 AM 7026 Information     7026 - Dump after return from D3 after cmd
11/2/2023 2:49:44 AM 7025 Information     7025 - Dump after return from D3 before cmd

   ProviderName: Microsoft-Windows-Kernel-Power

TimeCreated           Id LevelDisplayName Message
-----------           -- ---------------- -------
11/2/2023 2:49:00 AM 566 Information     The system session has transitioned from 207 to 208.…
11/2/2023 2:48:37 AM 506 Information     The system is entering Modern Standby …
11/2/2023 2:48:37 AM 566 Information     The system session has transitioned from 206 to 207.…
11/2/2023 2:48:37 AM 507 Information     The system is exiting Modern Standby …

   ProviderName: Microsoft-Windows-DistributedCOM

TimeCreated             Id LevelDisplayName Message
-----------             -- ---------------- -------
11/2/2023 2:18:21 AM 10010 Error           The server {283EDD52-69B2-473D-BEB6-2C0B4C01FD73} did not register with DC…
11/2/2023 1:30:10 AM 10010 Error           The server {08728914-3F57-4D52-9E31-49DAECA5A80A} did not register with DC…

   ProviderName: Service Control Manager

TimeCreated            Id LevelDisplayName Message
-----------            -- ---------------- -------
11/2/2023 1:25:46 AM 7045 Information     A service was installed in the system.…

   ProviderName: Microsoft-Windows-WindowsUpdateClient

TimeCreated          Id LevelDisplayName Message
-----------          -- ---------------- -------
11/2/2023 1:25:46 AM 19 Information     Installation Successful: Windows successfully installed the following update:…
11/2/2023 1:25:37 AM 43 Information     Installation Started: Windows has started installing the following update: Se…
11/2/2023 1:25:37 AM 44 Information     Windows Update started downloading an update.

   ProviderName: Microsoft-Windows-DistributedCOM

TimeCreated              Id LevelDisplayName Message
-----------              -- ---------------- -------
11/1/2023 10:35:49 PM 10010 Error           The server {338B40F9-9D68-4B53-A793-6B9AA0C5F63B} did not register with D…

   ProviderName: Service Control Manager

TimeCreated             Id LevelDisplayName Message
-----------             -- ---------------- -------
11/1/2023 10:34:42 PM 7045 Information     A service was installed in the system.…

   ProviderName: Microsoft-Windows-WindowsUpdateClient

TimeCreated           Id LevelDisplayName Message
-----------           -- ---------------- -------
11/1/2023 10:34:42 PM 19 Information     Installation Successful: Windows successfully installed the following update…
11/1/2023 10:34:30 PM 43 Information     Installation Started: Windows has started installing the following update: S…
11/1/2023 10:34:24 PM 44 Information     Windows Update started downloading an update.

   ProviderName: Microsoft-Windows-Kernel-Power

TimeCreated            Id LevelDisplayName Message
-----------            -- ---------------- -------
11/1/2023 10:33:49 PM 566 Information     The system session has transitioned from 205 to 206.…

   ProviderName: Microsoft-Windows-WindowsUpdateClient

TimeCreated           Id LevelDisplayName Message
-----------           -- ---------------- -------
11/1/2023 10:33:49 PM 20 Error           Installation Failure: Windows failed to install the following update with er…
11/1/2023 10:33:48 PM 43 Information     Installation Started: Windows has started installing the following update: C…

   ProviderName: Microsoft-Windows-Kernel-Power

TimeCreated            Id LevelDisplayName Message
-----------            -- ---------------- -------
11/1/2023 10:33:48 PM 506 Information     The system is entering Modern Standby …
11/1/2023 10:33:48 PM 566 Information     The system session has transitioned from 204 to 205.…
11/1/2023 10:33:48 PM 507 Information     The system is exiting Modern Standby …

   ProviderName: Microsoft-Windows-DistributedCOM

TimeCreated              Id LevelDisplayName Message
-----------              -- ---------------- -------
11/1/2023 10:18:20 PM 10010 Error           The server {283EDD52-69B2-473D-BEB6-2C0B4C01FD73} did not register with D…

   ProviderName: Netwtw10

TimeCreated            Id LevelDisplayName Message
-----------            -- ---------------- -------
11/1/2023 9:48:22 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/1/2023 9:48:22 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/1/2023 9:48:19 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/1/2023 9:48:19 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/1/2023 9:47:08 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/1/2023 9:47:08 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/1/2023 9:43:47 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/1/2023 9:43:47 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/1/2023 9:42:09 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/1/2023 9:42:09 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/1/2023 9:37:09 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/1/2023 9:37:09 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/1/2023 9:33:34 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/1/2023 9:33:34 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/1/2023 9:32:11 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/1/2023 9:32:11 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/1/2023 9:32:09 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/1/2023 9:32:09 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/1/2023 9:27:09 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/1/2023 9:27:09 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/1/2023 9:22:09 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/1/2023 9:22:09 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/1/2023 9:20:05 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/1/2023 9:20:05 PM 7025 Information     7025 - Dump after return from D3 before cmd

   ProviderName: Microsoft-Windows-Kernel-Power

TimeCreated           Id LevelDisplayName Message
-----------           -- ---------------- -------
11/1/2023 9:19:38 PM 566 Information     The system session has transitioned from 203 to 204.…

   ProviderName: Microsoft-Windows-Kernel-General

TimeCreated          Id LevelDisplayName Message
-----------          -- ---------------- -------
11/1/2023 9:18:52 PM  1 Information     The system time has changed to ‎2023‎-‎11‎-‎02T04:18:52.691869600Z from ‎2023…
11/1/2023 9:18:52 PM 24 Information     The time zone information was refreshed with exit reason 0. Current time zone…

   ProviderName: Microsoft-Windows-Time-Service

TimeCreated          Id LevelDisplayName Message
-----------          -- ---------------- -------
11/1/2023 9:18:52 PM 35 Information     The time service is now synchronizing the system time with the time source ti…
11/1/2023 9:18:36 PM 37 Information     The time provider NtpClient is currently receiving valid time data from time.…

   ProviderName: Microsoft-Windows-Kernel-Power

TimeCreated           Id LevelDisplayName Message
-----------           -- ---------------- -------
11/1/2023 9:18:36 PM 506 Information     The system is entering Modern Standby …
11/1/2023 9:18:36 PM 566 Information     The system session has transitioned from 202 to 203.…
11/1/2023 9:18:36 PM 507 Information     The system is exiting Modern Standby …

   ProviderName: Netwtw10

TimeCreated            Id LevelDisplayName Message
-----------            -- ---------------- -------
11/1/2023 9:12:09 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/1/2023 9:12:09 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/1/2023 9:07:09 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/1/2023 9:07:09 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/1/2023 9:02:09 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/1/2023 9:02:09 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/1/2023 9:00:58 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/1/2023 9:00:58 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/1/2023 9:00:12 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/1/2023 9:00:12 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/1/2023 8:58:55 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/1/2023 8:58:55 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/1/2023 8:57:09 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/1/2023 8:57:09 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/1/2023 8:55:13 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/1/2023 8:55:13 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/1/2023 8:54:47 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/1/2023 8:54:47 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/1/2023 8:52:09 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/1/2023 8:52:09 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/1/2023 8:47:08 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/1/2023 8:47:08 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/1/2023 8:46:17 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/1/2023 8:46:17 PM 7025 Information     7025 - Dump after return from D3 before cmd

   ProviderName: Microsoft-Windows-Kernel-Power

TimeCreated           Id LevelDisplayName Message
-----------           -- ---------------- -------
11/1/2023 8:44:19 PM 566 Information     The system session has transitioned from 201 to 202.…
11/1/2023 8:44:03 PM 506 Information     The system is entering Modern Standby …
11/1/2023 8:44:03 PM 566 Information     The system session has transitioned from 200 to 201.…
11/1/2023 8:44:03 PM 507 Information     The system is exiting Modern Standby …

   ProviderName: Microsoft-Windows-DistributedCOM

TimeCreated             Id LevelDisplayName Message
-----------             -- ---------------- -------
11/1/2023 6:29:12 PM 10010 Error           The server {283EDD52-69B2-473D-BEB6-2C0B4C01FD73} did not register with DC…

   ProviderName: Microsoft-Windows-Kernel-Processor-Power

TimeCreated          Id LevelDisplayName Message
-----------          -- ---------------- -------
11/1/2023 6:27:50 PM 37 Warning         The speed of processor 7 in group 0 is being limited by system firmware. The …

   ProviderName: Microsoft-Windows-Kernel-General

TimeCreated          Id LevelDisplayName Message
-----------          -- ---------------- -------
11/1/2023 6:27:11 PM 16 Information     The access history in hive \??\C:\Users\jcano\AppData\Local\Packages\Microsof…

   ProviderName: Netwtw10

TimeCreated            Id LevelDisplayName Message
-----------            -- ---------------- -------
11/1/2023 6:13:46 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/1/2023 6:13:46 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/1/2023 6:12:08 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/1/2023 6:12:08 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/1/2023 6:07:08 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/1/2023 6:07:08 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/1/2023 6:02:09 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/1/2023 6:02:09 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/1/2023 5:57:11 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/1/2023 5:57:11 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/1/2023 5:57:08 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/1/2023 5:57:08 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/1/2023 5:52:09 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/1/2023 5:52:09 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/1/2023 5:51:35 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/1/2023 5:51:35 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/1/2023 5:48:19 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/1/2023 5:48:19 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/1/2023 5:47:08 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/1/2023 5:47:08 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/1/2023 5:46:12 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/1/2023 5:46:12 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/1/2023 5:43:47 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/1/2023 5:43:47 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/1/2023 5:42:08 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/1/2023 5:42:08 PM 7025 Information     7025 - Dump after return from D3 before cmd

   ProviderName: Microsoft-Windows-Kernel-Power

TimeCreated           Id LevelDisplayName Message
-----------           -- ---------------- -------
11/1/2023 5:39:59 PM 566 Information     The system session has transitioned from 199 to 200.…
11/1/2023 5:30:53 PM 506 Information     The system is entering Modern Standby …
11/1/2023 5:30:53 PM 566 Information     The system session has transitioned from 198 to 199.…
11/1/2023 5:29:41 PM 566 Information     The system session has transitioned from 197 to 198.…
11/1/2023 5:29:41 PM 507 Information     The system is exiting Modern Standby …

   ProviderName: Netwtw10

TimeCreated            Id LevelDisplayName Message
-----------            -- ---------------- -------
11/1/2023 5:02:10 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/1/2023 5:02:10 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/1/2023 5:02:08 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/1/2023 5:02:08 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/1/2023 4:57:09 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/1/2023 4:57:09 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/1/2023 4:52:08 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/1/2023 4:52:08 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/1/2023 4:50:12 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/1/2023 4:50:12 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/1/2023 4:48:19 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/1/2023 4:48:19 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/1/2023 4:47:08 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/1/2023 4:47:08 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/1/2023 4:43:47 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/1/2023 4:43:47 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/1/2023 4:42:08 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/1/2023 4:42:08 PM 7025 Information     7025 - Dump after return from D3 before cmd
11/1/2023 4:37:08 PM 7026 Information     7026 - Dump after return from D3 after cmd
11/1/2023 4:37:08 PM 7025 Information     7025 - Dump after return from D3 before cmd

   ProviderName: Microsoft-Windows-Kernel-Power

TimeCreated           Id LevelDisplayName Message
-----------           -- ---------------- -------
11/1/2023 4:35:40 PM 566 Information     The system session has transitioned from 196 to 197.…
11/1/2023 4:35:40 PM 506 Information     The system is entering Modern Standby …
11/1/2023 4:35:40 PM 566 Information     The system session has transitioned from 195 to 196.…

   ProviderName: Microsoft-Windows-Kernel-General

TimeCreated          Id LevelDisplayName Message
-----------          -- ---------------- -------
11/1/2023 4:08:15 PM 16 Information     The access history in hive \??\C:\Users\jcano\AppData\Local\Packages\microsof…

PS C:\Windows\System32>