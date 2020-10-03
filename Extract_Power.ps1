function Extract-AllRAR {
    param (
        [Parameter()]
        $destination
    )

    $winrar = "C:\Program Files\WinRAR\winrar.exe"
    $rars = Get-ChildItem *.rar -Recurse


    if ($destination) {

        if (-not (Test-Path $destination)) {

            New-Item -Type Directory $destination | Out-Null
    
        }    

        $rars | ForEach-Object {

            . $winrar x $_.FullName * "$destination\"

        }

    } else {

        $rars | ForEach-Object {

            . $winrar x $_.fullname * "$($_.Directory)\"

        }

    }

}