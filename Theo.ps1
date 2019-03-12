# Bam bam

filter select-running {
    param($status)
    if ($_.Status -eq $status) {
        Write-Output -inputobject $_
    }
}

Get-Service | Select-Running -status Running

# Samma sak
Get-Service | Where-Object -FilterScript {$_.Status -eq 'Running'}

