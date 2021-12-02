$AoC_2020_02 = Get-Content .\input.txt
$Valid = 0

foreach ($Line in $AoC_2020_02) {
    $MinMax = ($Line -split(" "))[0]
    $Min    = ($MinMax -split ("-"))[0]
    $Max    = ($MinMax -split ("-"))[1]
    $Char   = (($Line -split(" "))[1])
    $Char   = ($Char  -split(":"))[0]
    $Pw     = ($Line -split(" "))[2]

$CharCount = 0
$Pw.tochararray()|Foreach-Object{if($_ -eq $Char){$CharCount++}}
if(($CharCount -ge $Min) -and  ($CharCount -le $Max)){$Valid++}
}

$Valid