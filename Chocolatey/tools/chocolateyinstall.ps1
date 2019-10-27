
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'trove.exe'
$url        = ''
$url64      = ''

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  file         = $fileLocation

  softwareName  = 'humble-trove*'

  checksum      = '7b9d4be98e5ef8bb82bc144ca8e608e5068371adaae9e3909dc4e14ea82e0fc8'
  checksumType  = 'sha256' 
  validExitCodes= @(1)
}

Install-ChocolateyPackage @packageArgs










    








