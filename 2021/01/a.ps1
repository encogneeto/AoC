$AdventInput1 = Get-Content .\input.txt
$Answer = 0
for ($i = 0; $i -lt $AdventInput1.Count; $i++) {
    if( ([int]$AdventInput1[$i]) -lt ([int]$AdventInput1[$i+1]) ){$Answer=$Answer+1}
}
return $Answer