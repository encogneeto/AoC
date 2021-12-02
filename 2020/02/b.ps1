$AoC_2020_02 = Get-Content .\input.txt
$Valid = 0

foreach ($Line in $AoC_2020_02) {
    $MinMax = ($Line -split(" "))[0]
    [int]$Min    = ($MinMax -split ("-"))[0]
    [int]$Max    = ($MinMax -split ("-"))[1]
    $Char   = (($Line -split(" "))[1])
    $Char   = ($Char  -split(":"))[0]
    $Pw     = ($Line -split(" "))[2]

    $PwArray = $Pw.tochararray()
    if (($PwArray[$Min-1] -eq $Char) -xor ($PwArray[$Max-1] -eq $Char) ) {$Valid++}
}

$Valid