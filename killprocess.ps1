# To run this, use the following in powershell:
# .\KillProcess.ps1 -Port {port number}

param(
    [Parameter(Mandatory=$true)]
    [int]$Port
)

$connection = Get-NetTCPConnection -LocalPort $Port | Where-Object { $_.State -eq 'Listen' }

if ($connection) {
    $process = Get-Process -Id $connection.OwningProcess
    $process | Stop-Process -Force
    Write-Output "Process running on port $Port has been stopped."
} else {
    Write-Output "No process is running on port $Port."
}