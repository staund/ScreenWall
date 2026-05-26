# ScreenWall (v1.0)

* A lightweight, minimal PowerShell  anti-tracking script designed to enhance local system privacy on Windows. ScreenWall automates the modification of security-centric registry keys and background processes to prevent unwanted OS data collection.

## Features.
* "AIShield;" Restricts unwanted local AI screen capture and analysis modules.
* "Telemetry Blocker;" Modifies host data collection registry policies to minimize data leakage.
* "Service Terminator;" Forcefully stops and disables background user-behavior tracking services ('DiagTrack').

  ## How to start?.
  * Download this project as a 'ZIP file' from GitHub and extract(unzip) it to your Desktop.
  * Open the extracted folder, right-click on "Run_ScreenWall.bat" and select "Run as Administrator
  That's it. The launcher will automatically handle the system paths, bypass the restriction policies safely, and activate your ScreenWall shield.

  ## How to verify it works?.
* To verify that ScreenWall worked succsessfully, open PowerShell(Administrator) and run these commands one by one:

1.*Check AI Data Analysis Status:
  Get-ItemProperty -Path "HKCU:\Software\Policies\Microsoft\Windows\WindowsAI" -Name "DisableAIDataAnalysis" -ErrorAction SilentlyContinue
  
>Expected Results:Expected Results: 'DisableAIDataAnalysis' value must be 1(Blocked)

2.*Check System Telemetry Status:
Get-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" -Name "AllowTelemetry" -ErrorAction SilentlyContinue

>Expected Results:'AllowTelemetry' value must return 0(Disabled)

3.*Check Telemetry Service & Startup Status:
Get-Service DiagTrack | Select-Object Name, Status, StartType

>Expected Results: 'Status' Should be "Stopped" 'StartType' must "Disable"

//developed by staund.\\\
