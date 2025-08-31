# Lancer d'un coup les deux linters
Write-Host "==> PSScriptAnalyzer" -ForegroundColor Cyan
Install-Module PSScriptAnalyzer -Scope CurrentUser -Force
Invoke-ScriptAnalyzer -Path ./src, ./runbooks -Recurse -Settings ./PSScriptAnalyzerSettings.psd1 -ReportSummary

Write-Host "==> markdownlint" -ForegroundColor Cyan
npm list -g markdownlint-cli --depth=0 2>$null | Out-Null
if ($LASTEXITCODE -ne 0) { npm install -g markdownlint-cli }
markdownlint "**/*.md" --config .markdownlint.json
