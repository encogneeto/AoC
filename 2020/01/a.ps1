$AoC_2020_01 = Get-Content .\input.txt

foreach ($Num1 in $AoC_2020_01) {
    foreach ($Num2 in $AoC_2020_01) {
        if([int]$Num1+[int]$Num2 -eq 2020){
            return [int]$Num1*[int]$Num2
        }
    }
}