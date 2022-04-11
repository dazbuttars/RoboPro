$oldPro = Read-Host 'Old Profile location [ENTER]'
$newPro = Read-Host 'New Profile location [ENTER]'

Robocopy $oldPro $newPro /E /r:5 /w:3 /xd "$oldPro\AppData" /xd "$oldPro\Local Settings"
Robocopy "$oldPro\AppData\Local\Google\Chrome" "$newPro\AppData\Local\Google\Chrome" /E /r:5 /w:3

$a = Read-Host 'Hit Enter to Exit'