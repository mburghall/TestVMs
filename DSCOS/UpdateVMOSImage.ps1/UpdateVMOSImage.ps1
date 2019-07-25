configuration UpdateVMOSImage
{

    param
   (
        [Parameter(Mandatory)]
        [String]$domainName,

		[Parameter(Mandatory)] 
        [string]$machineName,

		[Parameter(Mandatory)]
        [String]$group,

        [Parameter(Mandatory)]
        [System.Management.Automation.PSCredential]$adminCreds,

        [Int]$RetryCount=20,
        [Int]$RetryIntervalSec=30
	)
	
	Import-DscResource -ModuleName 'PSDesiredStateConfiguration'
	Import-DscResource -ModuleName 'xComputerManagement' -ModuleVersion 4.1.0.0
	[System.Management.Automation.PSCredential ]$domainCreds = New-Object System.Management.Automation.PSCredential ("${domainName}\$($adminCreds.userName)", $Admincreds.password)
    
	Node localhost
    {
		xComputer JoinDomain {
			Name = $machineName
			DomainName  = $domainName
			Credential = $domainCreds
		}
		
		Group AddADUserToLocalAdminGroup {
			GroupName='Administrators'
			Ensure= 'Present'
			MembersToInclude= "$domainName\$group"
			Credential = $domainCreds
			PsDscRunAsCredential = $domainCreds
			DependsOn = "[xComputer]JoinDomain"
		}
	}
}