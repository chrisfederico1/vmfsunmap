function Start-UNMAP{

<#
	.SYNOPSIS
    Process SCSI UNMAP on VMware Datastore
    
	.DESCRIPTION
    This Function will process SCSI UNMAP on VMware Datastore via ESXCLI -V2. Remember to dot source.
	.Example
    Start-UNMAP -VMHost MyHost -DataStore myDataStore 
	.Example
    Start-UNMAP -VMHost MyHost -Datastore myDatastore -Verbose -WhatIf
	.Notes
	NAME: Start-UNMAP.ps1
    AUTHOR: Chris Federico  
	LASTEDIT: 01/03/2020
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
    # Add start-transact here
 Start-Transaction -path .\vmfsunmaplogging.txt
write-host "You selected host " $VMHost " with datastore " $Datastore -BackgroundColor Red



}

Process {


}

End {


}

}