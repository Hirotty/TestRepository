Param(
    # カレントディレクトリのパス
    [parameter(mandatory=$true)][String]$strCurrentDirectory
)
[String]$strJsonFile = "DummyFileIni.json"

$strCurrentDirectory = $strCurrentDirectory + "\" + $strJsonFile
$conf = Get-Content $strCurrentDirectory -Encoding UTF8 -Raw | ConvertFrom-Json

