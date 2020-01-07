function Start-UNMAP{

<#
	.SYNOPSIS
    Process SCSI UNMAP on VMware Datastore
    
	.DESCRIPTION
    This Function will process SCSI UNMAP on VMware Datastore via ESXCLI -V2. Remember to dot source. Note USE host that has access
    Datastore.
	.Example
    Start-UNMAP -VMHost MyHost -DataStore myDataStore 
	.Example
    Start-UNMAP -VMHost MyHost -Datastore myDatastore -Verbose -WhatIf
	.Notes
	NAME: Start-UNMAP.ps1
    AUTHOR: Chris Federico  
	LASTEDIT: 01/07/2020
	VERSION: 1.0
	KEYWORDS: VMware, vSphere, ESXi, SCSI, VAAI, UNMAP
   
 #>
    
# Parameters
    [CmdletBinding()]
    param
    (
        [Parameter(Mandatory=$true)]
        [string]$VMHost,

        [Parameter(Mandatory=$true)]
        [string]$Datastore
       
    )

Begin{
    # Clear Screen
    Clear-host

    # Add start-transact here
    Start-Transaction -path .\vmfsunmaplogging.txt

    # Give user information about which server and datastore they choose
    write-host "You selected host " $VMHost " with datastore " $Datastore -BackgroundColor Red

    # Ask user if they would like to continue
    $reply = Read-host "Would you like to Proceed ?[y/n]"
    if ($reply -match "[nN]")
    {
	exit 
    }

# Verification of Host and Datastore
write-host "INFO: Verifying Host"

try {

    $EsxiHost = get-vmhost $VMHost
}

catch{

    Write-Output "An Error Occured: " "" $error[0] ""
}

write-host "INFO: Verifiying Datastore"


try {

    $DataStoreName = get-datastore $Datastore
}
}

Process {





}

End {


    # Stop Logging
    Stop-Transcript

}

}