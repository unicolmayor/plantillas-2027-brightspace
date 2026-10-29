$ErrorActionPreference = "Stop"

$version = "3.6.0"
$architecture = [System.Runtime.InteropServices.RuntimeInformation]::OSArchitecture

switch ($architecture) {
    "X64" {
        $asset = "engram_${version}_windows_amd64.zip"
        $expectedHash = "22650375af19d1e46ffe1f376314c12c20370dfd19045fbc649a95991706a102"
    }
    "Arm64" {
        $asset = "engram_${version}_windows_arm64.zip"
        $expectedHash = "5a990f889bb1fb1b72bf1127216cc9f2f0bba7faa37c030a36329f8e8a51586d"
    }
    default {
        throw "Arquitectura de Windows no compatible con Engram: $architecture"
    }
}

$projectRoot = Split-Path -Parent $PSScriptRoot
$installDirectory = Join-Path $projectRoot ".tools\engram"
$temporaryDirectory = Join-Path ([System.IO.Path]::GetTempPath()) ([System.Guid]::NewGuid().ToString())
$archivePath = Join-Path $temporaryDirectory $asset
$extractDirectory = Join-Path $temporaryDirectory "extract"
$downloadUrl = "https://github.com/Gentleman-Programming/engram/releases/download/v${version}/${asset}"

New-Item -ItemType Directory -Path $temporaryDirectory | Out-Null

try {
    Invoke-WebRequest -Uri $downloadUrl -OutFile $archivePath
    $actualHash = (Get-FileHash -Path $archivePath -Algorithm SHA256).Hash.ToLowerInvariant()
    if ($actualHash -ne $expectedHash) {
        throw "La verificacion SHA-256 de $asset no coincide. Se cancelo la instalacion."
    }

    Expand-Archive -Path $archivePath -DestinationPath $extractDirectory
    $binary = Get-ChildItem -Path $extractDirectory -Filter "engram.exe" -File -Recurse |
        Select-Object -First 1
    if ($null -eq $binary) {
        throw "El archivo oficial no contiene engram.exe."
    }

    New-Item -ItemType Directory -Path $installDirectory -Force | Out-Null
    Copy-Item -Path $binary.FullName -Destination (Join-Path $installDirectory "engram.exe") -Force
}
finally {
    Remove-Item -Path $temporaryDirectory -Recurse -Force
}

& (Join-Path $installDirectory "engram.exe") version
if ($LASTEXITCODE -ne 0) {
    throw "Engram se instalo, pero el comando de verificacion fallo."
}
