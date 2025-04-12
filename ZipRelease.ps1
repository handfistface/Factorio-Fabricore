param (
    [string]$newVersion = "0.0"
)

$tempDirectory = "temp"

$fabricoreDir = "$tempDirectory/fabri-core"
Copy-Item "./fabri-core" $fabricoreDir -Recurse -Force
Remove-Item "$fabricoreDir/.vscode" -Recurse

$outputFile = "./Releases/fabri-core-${newVersion}.zip"
Compress-Archive -Path $fabricoreDir -DestinationPath $outputFile

Remove-Item $tempDirectory -Force -Recurse