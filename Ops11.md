November 6, 2023

# Ops Challenge - Automated Endpoint Configuration

**Tasks**

Your script should perform the following:

•	Enable File and Printer Sharing

•	Set-NetFirewallRule -DisplayGroup "File And 
Printer Sharing" -Enabled True
 
•	Allow ICMP traffic

•	netsh advfirewall firewall add rule name="Allow incoming ping requests IPv4" dir=in action=allow protocol=icmpv4
 
•	Enable Remote management

•	reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f
 
•	Remove bloatware

•	iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/debloat'))
 
 
•	Enable Hyper-V

•	Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All
 
•	Disable SMBv1, an insecure protocol

•	Set-SmbServerConfiguration -EnableSMB1Protocol $false -Force
 
Test and validate that your script achieves the desired outcome for each listed objective. Put screenshots and discussion of your testing into a Google Doc.

•	Did your script enable File and Printer Sharing?

•	I ran the code.

•	What did you do to test before/after?

•	File and printer sharing were on
 
•	Did your script allow ICMP traffic? Nothing Changed because the Firewall rule already exists.

•	What did you do to test before/after?
 
•	Did your script enable Remote management? 

•	The command stated, “The operation completed successfully

•	What did you do to test before/after?
 
Did your script remove bloatware?

•	Yes

•	What did you do to test before/after? I checked the above screen before and after, and it remained off 

•	Did your script enable Hyper-V?

•	Yes Photo below with SMB1v

•	What did you do to test before/after? Restarted the VM.
 
•	Did your script disable SMBv1? 

•	Yes it was disable

•	What did you do to test before/after? 
 
## Resources used:
https://github.com/superswan/Powershell-SysAdmin
https://chat.openai.com/share/1a85c834-172b-4fd1-aa5d-a1fcb60f3982
https://chat.openai.com/share/fd2f6df7-b1ae-421a-90bb-af47be91380b
https://chat.openai.com/share/a2b3021c-65cf-4914-90d0-7bf573f0b134

All listed students worked together on this Ops Challenge

Juan Miguel Cano	

Jasmine Pressley

Festus Oguhebe

Scotty Jokon

Nico Watson