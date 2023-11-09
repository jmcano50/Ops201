*Juan Miguel Cano*

November 08,2023



## Task 1: Print all active processes ordered by highest CPU time consumption

This command will display a table in the PowerShell console that shows the list of active processes ordered by the highest CPU time consumption. You can see the changes directly in the console output.

**PowerShell code:**

Get-Process | Sort-Object -Property CPU -Descending | Format-Table -AutoSize

- **Administrator Utility:** This command provides valuable information to the administrator. It allows them to monitor the system's resource usage, identifying processes that consume the most CPU time. This can help in identifying and potentially addressing performance issues.

- **Cyber Attacker Utility:** A cyber attacker might use this command to identify resource-intensive processes, which could be exploited for malicious purposes. Knowing which processes use the most CPU time may help them pinpoint potential targets.

## Task 2: Print all active processes ordered by the highest Process Identification Number (PID)

This command will display a table in the PowerShell console that lists all active processes ordered by their Process Identification Number (PID). You can see the changes directly in the console output.

**PowerShell code:**

Get-Process | Sort-Object -Property Id -Descending | Format-Table -AutoSize

- **Administrator Utility:** This command can be useful for administrators to view a list of active processes ordered by their PIDs. It provides information about process IDs and their associated applications, helping administrators track and manage processes.

- **Cyber Attacker Utility:** A cyber attacker might use this command to gain insight into the running processes and their PIDs. Knowing the PIDs can be useful for launching attacks that target specific processes or for gaining information about system structure.

## Task 3: Print the top five active processes ordered by highest Working Set (WS(K))

This command will display a table in the PowerShell console that lists the top five active processes with the highest Working Set (memory usage). You can see the changes directly in the console output.

**PowerShell code:**

Get-Process | Sort-Object -Property WorkingSet -Descending | Select-Object -First 5 | Format-Table -AutoSize

- **Administrator Utility:** This command helps administrators identify the top memory-consuming processes on the system. It's valuable for monitoring memory usage and addressing potential memory-related issues.
- **Cyber Attacker Utility:** A cyber attacker could use this command to identify memory-intensive processes, which might be potential targets for exploitation. It helps them understand the system's resource allocation and vulnerabilities.

## Task 4: Start a browser process and open a website
This task does not produce a direct change that you can see in the console. It starts a new instance of a web browser (e.g., Chrome) and opens a specific website, but the result is a separate browser window.

**PowerShell code:**

Start-Process -FilePath "chrome.exe" -ArgumentList "https://owasp.org/www-project-top-ten/"

- **Administrator Utility:** This command is typically initiated by the administrator to start a web browser and open a specific website. It serves a legitimate purpose, allowing the user to access web content.

- **Cyber Attacker Utility:** An attacker could use a similar command to launch a web browser and open a malicious website, potentially exploiting vulnerabilities in the browser or on the target website to compromise the system.

## Task 5: Start Notepad ten times using a for loop

This command starts ten instances of Notepad. You can observe the changes by looking at your taskbar, where you will see ten Notepad icons representing the newly launched instances. Additionally, you can switch between these Notepad instances to see the changes directly in the Notepad application.

**PowerShell code:**
for ($i = 1; $i -le 10; $i++) {
 Start-Process -FilePath "notepad.exe"
}

- **Administrator Utility:** This command is used by the administrator to start multiple instances of Notepad. It can be a legitimate action for various purposes, such as opening multiple text files simultaneously.

- **Cyber Attacker Utility:** A cyber attacker may use a similar loop to flood the system with multiple instances of a resource-intensive application, like Notepad, with the intention of causing system slowdown or resource exhaustion, potentially creating a denial of service (DoS) attack.

## Task 6: Close all instances of Notepad

This command will not display any visible changes in the console. Instead, it will terminate all running instances of Notepad, which you can verify by checking your taskbar or by attempting to open Notepad, which should no longer work.

**PowerShell code:**

Get-Process | Where-Object { $_.ProcessName -eq "notepad" } | ForEach-Object { Stop-Process -Id $_.Id }

- **Administrator Utility:** This command is useful for administrators to close all instances of Notepad. It's a legitimate way to manage running applications.

- **Cyber Attacker Utility:** An attacker might use a similar command to forcibly terminate processes, including those related to security tools or important applications. This could be part of an attack to disrupt or gain control of the system.

## Task 7: Kill a process by its Process Identification Number (PID)

This command does not display any visible changes in the console. It simply terminates the process with the specified PID. You would need to verify that the target process has indeed been terminated, possibly by using other commands or checking the absence of the process in the Task Manager.
For tasks that produce visible output in the console, you can directly observe the changes in the console window. For tasks that interact with other applications (e.g., starting a web browser or Notepad), you'll see the changes by observing those applications or their windows. For tasks that involve process termination (e.g., Task 6 and Task 7), you'll need to check the impact externally, such as verifying that the process has been terminated in the Task Manager or observing the absence of its associated application.

**PowerShell code:**
Stop-Process -Id <PID>

- **Administrator Utility:** This command is a legitimate way for administrators to terminate specific processes by providing the PID. It's essential for managing misbehaving or unwanted processes.

- **Cyber Attacker Utility:** An attacker could use this command to terminate critical processes, leading to system instability or vulnerabilities. Knowing the PID is crucial for targeted attacks, allowing the attacker to stop specific processes of interest.
In summary, many of the PowerShell commands can be used for legitimate system administration tasks, but they can also be leveraged by attackers for malicious purposes if they gain access to the system or its scripting capabilities. Administrators must use these commands responsibly, and security measures should be in place to prevent unauthorized access and misuse.

## Resources Used: https://chat.openai.com/share/56843914-73cf-4d27-a3fd-f73738ceb425