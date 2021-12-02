$AocInput = Get-Content .\input.txt

$D = 0
$H = 0

foreach ($Line in $AocInput) {
    $Command    = ($Line -split(" "))[0]
    $Steps      = ($Line -split(" "))[1]
    switch ($Command) {
        'forward'   {$H += $Steps }
        'down'      {$D += $Steps }
        'up'        {$D -= $Steps }
        Default {return "ABORT - ERROR IN INPUT"}
    }
}

$D*$H