param(
    [Parameter(Mandatory = $false)]
    [string]$CompilerPath = "AtlusScriptCompiler.exe"
)

$ErrorActionPreference = "Stop"
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$modRoot   = Split-Path -Parent $scriptDir
$inFlow    = Join-Path $scriptDir "PLAYERAI.flow"
$outBf     = Join-Path $modRoot "P5REssentials\CPK\BASE.CPK\BATTLE\SCRIPT\PLAYERAI.BF"

New-Item -ItemType Directory -Force -Path (Split-Path -Parent $outBf) | Out-Null

Write-Host "Compiling $inFlow -> $outBf (V3BE / P5R / P5R_EFIGS)..."
& $CompilerPath -In $inFlow -Out $outBf -Compile -OutFormat V3BE -Library P5R -Encoding P5R_EFIGS
if ($LASTEXITCODE -ne 0) {
    throw "AtlusScriptCompiler exited with code $LASTEXITCODE"
}
Write-Host "Done! Output size: $((Get-Item $outBf).Length) bytes"
