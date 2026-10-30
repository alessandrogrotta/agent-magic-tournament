$decks = @('Tidus, Yuna''s Guardian', 'Scriv, the Obligator', 'Leonardo, the Balance', 'Betor, Ancestor''s Voice')
$chosen = $decks | Get-Random -Count 2
Write-Output $chosen[0]
Write-Output $chosen[1]