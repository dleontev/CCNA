$fileContent = Get-Content -Path ".\VOL1.md"

$newContent = foreach ($line in $fileContent) {
    if ($line -match "^\* \[Chapter") {
        # Extract the commands file path
        $commandsFilePath = $line -split '\| ' | ForEach-Object { $_ -match 'Commands]\((.*)\)' } | ForEach-Object { if ($_){ $Matches[1] } }
        $commandsFilePath = $commandsFilePath -replace '/CCNA-Chapter-Summaries/', '' # Remove the unwanted part
        $commandsFilePath = ".\$commandsFilePath"

        # Check if the file exists
        if (!(Test-Path $commandsFilePath)) {
            Write-Host "Commands file not found: $commandsFilePath [NO]"
			$index = $line.IndexOf("|[Commands]")
			$line = $line.Substring(0, $index)
        } else {
            Write-Host "Commands file found: $commandsFilePath [YES]"
        }
    }
    $line
}

$newContent | Set-Content -Path ".\VOL1_updated.md" # Write to a new file