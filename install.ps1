# Copia las skills de este repo a %USERPROFILE%\.claude\skills (usa -Force para sobrescribir)
param([switch]$Force)
$src = Join-Path $PSScriptRoot "skills"
$dest = Join-Path $HOME ".claude\skills"
New-Item -ItemType Directory -Force -Path $dest | Out-Null
Get-ChildItem $src -Directory | ForEach-Object {
  $target = Join-Path $dest $_.Name
  if ((Test-Path $target) -and -not $Force) { Write-Host "omitida (ya existe): $($_.Name)"; return }
  Copy-Item $_.FullName $dest -Recurse -Force
}
Write-Host "Listo -> $dest"
