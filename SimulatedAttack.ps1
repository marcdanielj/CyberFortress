# SimulatedAttack.ps1
Clear-Host
Write-Host "SECURITY ALERT: Simulated Attack Initiated" -ForegroundColor Red
New-Item -Path "C:\SecurityLogs" -ItemType Directory -Force
Start-Sleep -Seconds 1
$attempts = 1..5
foreach ($attempt in $attempts) {
    Write-Host "Attempt #${attempt}: Access Denied" -ForegroundColor Red
    Add-Content -Path "C:\SecurityLogs\AttackLog.txt" -Value "[$(Get-Date)] Simulated Brute Force Attempt #${attempt}: Denied"
    [Console]::Beep(1000, 300)
    Start-Sleep -Seconds 1
}
Write-Host "WARNING: System Integrity at Risk" -ForegroundColor Red
for ($i = 0; $i -lt 3; $i++) {
    Clear-Host
    Write-Host "WARNING: System Integrity at Risk" -ForegroundColor Red
    Start-Sleep -Milliseconds 300
    Clear-Host
    Start-Sleep -Milliseconds 300
}