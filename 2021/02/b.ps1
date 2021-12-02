$AocInput = Get-Content .\input.txt

$D = 0
$H = 0
$A = 0

foreach ($Line in $AocInput) {
    $Command    = ($Line -split(" "))[0]
    $Steps      = ($Line -split(" "))[1]
    switch ($Command) {
        'down'      {$A += $Steps }
        'up'        {$A -= $Steps }
        'forward'   {
            $H += $Steps
            $D += ($A*$Steps) 
        }
        Default {return "ABORT - ERROR IN INPUT"}
    }
}

$D*$H