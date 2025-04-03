# FortressDefense.ps1
Clear-Host
Write-Host "Initializing CyberFortress Defense Protocol..." -ForegroundColor Yellow
Start-Sleep -Seconds 1
Write-Host "Securing System: Disabling Vulnerable Accounts" -ForegroundColor Yellow
Disable-LocalUser -Name "Guest" -ErrorAction SilentlyContinue
Add-Content -Path "C:\SecurityLogs\DefenseLog.txt" -Value "[$(Get-Date)] Guest Account Disabled"
Write-Host "Securing System: Activating Firewall" -ForegroundColor Yellow
Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled True
Add-Content -Path "C:\SecurityLogs\DefenseLog.txt" -Value "[$(Get-Date)] Firewall Activated"
Start-Sleep -Seconds 2
Clear-Host
Write-Host "SECURITY RESTORED" -ForegroundColor Green
Write-Host "System Hardened Successfully" -ForegroundColor Green
[Console]::Beep(500, 200); [Console]::Beep(700, 200)
for ($i = 0; $i -lt 3; $i++) {
    Clear-Host
    Write-Host "SECURITY RESTORED" -ForegroundColor Green
    Start-Sleep -Milliseconds 400
    Clear-Host
    Start-Sleep -Milliseconds 400
}
Get-Content -Path "C:\SecurityLogs\DefenseLog.txt"