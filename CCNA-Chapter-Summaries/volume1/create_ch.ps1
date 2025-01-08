# Run: powershell -ExecutionPolicy Bypass -File .\create_ch.ps1
# Create chapters 1 to 29 if they don't exist
1..29 | ForEach-Object {
  $chapterDir = "chapter{0:D2}" -f $_
  if (!(Test-Path $chapterDir)) {
    New-Item -Path $chapterDir -ItemType Directory | Out-Null
    Write-Host "Created directory '$chapterDir'"
  }

  # Create keyterms and summary files if they don't exist
  $keytermsFile = Join-Path $chapterDir "$chapterDir-keyterms.md"
  $summaryFile = Join-Path $chapterDir "$chapterDir-summary.md"

  New-Item -Path $keytermsFile -ItemType File -Force | Out-Null
  New-Item -Path $summaryFile -ItemType File -Force | Out-Null
}