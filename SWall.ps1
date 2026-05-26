Clear-Host
Write-Host "==================================================" -ForegroundColor Cyan
Write-Host "    SCREENWALL DEFENDING SYSTEM ACTIVATED!        " -ForegroundColor Cyan
Write-Host "==================================================" -ForegroundColor Cyan
Write-Host ""

# 1. AI Shield (Block Windows Recall)
$RegistryPath = "HKCU:\Software\Policies\Microsoft\Windows\WindowsAI"
if (!(Test-Path $RegistryPath)) {New-Item -Path $RegistryPath -Item-Type Directory -Force | Out-Null}
New-ItemProperty -Path $RegistryPath -Name "DisableAIDataAnalysis" -Value 1 -Type DWORD -Force | Out-Null
Write-Host "[+] AI Screen Capture Analysis Blocked & Secured!." -ForegroundColor Green

# 2. Disable Telemetry
$TelemetryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection"
if (!(Test-Path $TelemetryPath)) {New-Item -Path $TelemetryPath -ItemType Directory -Force | Out-Null}
New-ItemProperty -Path $TelemetryPath -Name "AllowTelemetry" -Value 0 -Type DWORD -Force | Out-Null
Write-Host "[+] System Telemetry Data Leakage Blocked!." -ForegroundColor Green

# 3. Terminate Background Tracking Services
Stop-Service -Name "DiagTrack" -Force -ErrorAction SilentlyContinue
Set-Service -Name "DiagTrack" -StartupType Disabled -ErrorAction SilentlyContinue
Write-Host "[+] Data Collection & Telemetry Services Terminated!." -ForegroundColor Green

Write-Host ""

# 4. Closing Panel
Write-Host "==================================================" -ForegroundColor Cyan
Write-Host "    SCREENWALL SHIELD SUCCSESSFULLY BUILT!        " -ForegroundColor Cyan
Write-Host "==================================================" -ForegroundColor Cyan
Write-Host "                           //developed by staund\\" -ForegroundColor DarkGray