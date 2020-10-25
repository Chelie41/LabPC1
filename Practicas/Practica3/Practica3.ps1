function Order-ActiveProcess{
    Get-Process | Where-Object {$_.SI -gt 0} | Sort-Object Id
    }

    $salida=0
    Write-Host "Mostrando los procesos activos"
    while ($salida -eq 0){
    Order-ActiveProcess
        $salida = Read-Host -Prompt "Desea verlos de nuevo? 1-No 0-Si"
    }
    Write-Host "Saliendo..."