# ScreenWall (v1.0)

A lightweight, minimal PowerShell  anti-tracking script designed to enhance local system privacy on Windows. ScreenWall automates the modification of security-centric registry keys and background processes to prevent unwanted OS data collection.

## Features.
* "AIShield;" Restricts unwanted local AI screen capture and analysis modules.
* "Telemetry Blocker;" Modifies host data collection registry policies to minimize data leakage.
* "Service Terminator;" Forcefully stops and disables background user-behavior tracking services ('DiagTrack').

  #How to start?
  >Download this project as a 'ZIP file' from GitHub and extract(unzip) it to your Desktop.
  >Open the extracted folder, right-click on "Run_ScreenWall.bat" and select "Run as Administrator
  That's it. The launcher will automatically handle the system paths, bypass the restriction policies safely, and activate your ScreenWall shield.

  #How to verify it works?
To verify that ScreenWall worked succsessfully, open PowerShell, paste this single command, and press Enter:

Get-Service DiagTrack | Select-Object Name, Status; (Get-ItemProperty "HKCU:\Software\Policies|Microsoft\Windows\WindowsAI").DisableAIDataAnalysis; (Get-ItemProperty "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection").AllowTelemetry

#Author
developed by staund.
