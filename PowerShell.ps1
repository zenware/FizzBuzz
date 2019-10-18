for($i=1; $i -le 100; $i++)
{
	if ($i % 3 -eq 0)
	{
		Write-Host -NoNewline "Fizz"
	}
	if ($i % 5 -eq 0)
	{
		Write-Host -NoNewline "Buzz"
	}
	if (($i % 5 -ne 0) -and ($i % 3 -ne 0))
	{
		Write-Host -NoNewline "$i"
	}
	
	Write-Host "`r" #Carriage return
}