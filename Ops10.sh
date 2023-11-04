# Task 1: Print all active processes ordered by highest CPU time consumption
Get-Process | Sort-Object -Property CPU -Descending | Format-Table -AutoSize

# Task 2: Print all active processes ordered by highest Process Identification Number (PID)
Get-Process | Sort-Object -Property Id -Descending | Format-Table -AutoSize

# Task 3: Print the top five active processes ordered by highest Working Set (WS(K))
Get-Process | Sort-Object -Property WorkingSet -Descending | Select-Object -First 5 | Format-Table -AutoSize

# Task 4: Start a browser process and open a website
Start-Process -FilePath "chrome.exe" -ArgumentList "https://owasp.org/www-project-top-ten/"

# Task 5: Start Notepad ten times using a for loop
for ($i = 1; $i -le 10; $i++) {
    Start-Process -FilePath "notepad.exe"
}

# Task 6: Close all instances of Notepad
Get-Process | Where-Object { $_.ProcessName -eq "notepad" } | ForEach-Object { Stop-Process -Id $_.Id }

# Task 7: Kill a process by its Process Identification Number (PID)
# Replace <PID> with the actual PID of the process you want to terminate
Stop-Process -Id <PID>

Resources Used: 
https://learn.microsoft.com/en-us/powershell/scripting/samples/managing-processes-with-process-cmdlets?view=powershell-7.3
https://owasp.org/www-project-top-ten/
I worked with Chat-GPT with a prompt for each question to get a better understanding of each question and provide the most accurate answers.

OpenAI. (2023). ChatGPT (September 25 Version) [Large language model].