$UserFolder = $env:USERPROFILE
$SafeDiscordCore = "module.exports = require('./core.asar');"
$SafeDiscordModules = "module.exports = require('./discord_modules.node');"

$DiscordVer = Read-Host -Prompt 'Please enter your Discord Version'

Write-Host "Checking discord_desktop_core"
$DiscordCore = Get-Content -Path $UserFolder\AppData\Roaming\Discord\$DiscordVer\modules\discord_desktop_core\index.js
if ($SafeDiscordCore -eq $DiscordCore) {
	'File Does NOT appear to be modified'
	} Else {
	'File appears to be modified consider reinstalling Discord'
	}



Write-Host "Checking discord_modules"
$DiscordModules = Get-Content -Path $UserFolder\AppData\Roaming\Discord\$DiscordVer\modules\discord_modules\index.js

if ($SafeDiscordModules -eq $DiscordModules) {
	'File Does NOT appear to be modified'
	} Else {
	'File appears to be modified consider reinstalling Discord'
	}
	
	
Write-Host "Discord desktop core JS file has '$DiscordCore' as its contents" 
Write-Host "Discord modules JS File has '$DiscordModules' as its contents" 

Write-Host "Script has finished"

