cls

$services= @( "wuauserv", "WinDefend")


Foreach ($service in $services ) {

$update =Get-Service -Name $service

if ($update.Status -like "Stopped") {
    Write-Host "le service"$update.Name"est arreter"
    }
else {Write-Host "le service"$update.Name"est ok"}
}

