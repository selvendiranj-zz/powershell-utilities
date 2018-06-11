<# 
     .SYNOPSIS 
        This script helps in ejecting or closing the CD/DVD Drive 
    .DESCRIPTION 
        This script helps in ejecting or closing the CD/DVD Drive 
    .PARAMETER  Eject 
        Ejects the CD/DVD Drive 
    .PARAMETER  Close 
        Closes the CD/DVD Drive 
    .EXAMPLE 
        C:\PS>c:\Scripts\Set-CDDriveState -Eject 
         
        Ejects the CD Drive 
    .EXAMPLE 
        C:\PS>c:\Scripts\Set-CDDriveState -Close 
         
        Closes the CD Drive 
    .Notes 
        Author : Selvendiran Jayaraman 
        WebSite: http://webyouwe.com 
 
#> 

try { 

    $EjectStr = Read-Host "Please enter 1 for Eject 0 for Close"
    $Eject = switch ($EjectStr) { {$_ -eq 1 -or $_ -eq "True"} {$True} default {$false}}
    $Diskmaster = New-Object -ComObject IMAPI2.MsftDiscMaster2 
    $DiskRecorder = New-Object -ComObject IMAPI2.MsftDiscRecorder2 
    $DiskRecorder.InitializeDiscRecorder($DiskMaster) 
    
    if ($Eject) { 
        $DiskRecorder.EjectMedia() 
    }
    else { 
        $DiskRecorder.CloseTray() 
    } 
}
catch { 
    Write-Error "Failed to operate the disk. Details : $_" 
}
