# Bam bam

filter select-running {
    param($status)
    if ($_.Status -eq $status) {
        Write-Output -inputobject $_
    }
}

Get-Service | Select-Running -status Running

# Samma sak
Get-Service | Where-Object -FIlterScript {$_.Status -eq 'Running'}

