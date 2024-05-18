$dir = "C:\backups"
if (-not (Test-Path $dir)) {
    New-Item -ItemType Directory -Path $dir
}