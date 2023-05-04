


Clear-Host
Write-Host "Activar Antiausente Teams...`nScript creado por Carlos Ramirez" 
$WShell = New-Object -com "Wscript.Shell" 
Add-Type -AssemblyName System.Windows.Forms

$tiempo=60*3
$posx=0
$posy=0

while ($true) {
    $POSITION = [Windows.Forms.Cursor]::Position
    $posx=$POSITION.x
    $posy=$POSITION.y
    Start-Sleep -Seconds $tiempo
    $POSITION = [Windows.Forms.Cursor]::Position
    if( ($x -eq $POSITION.x) -and ($y -eq $POSITION.y)){
        $WShell.sendkeys("{SCROLLLOCK}") 
        Start-Sleep -Milliseconds 200   
        $WShell.sendkeys("{SCROLLLOCK}") 
    }
}