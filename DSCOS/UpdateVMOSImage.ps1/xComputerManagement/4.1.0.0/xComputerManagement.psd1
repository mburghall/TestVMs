@{
# Version number of this module.
moduleVersion = '4.1.0.0'

# ID used to uniquely identify this module
GUID = 'B5004952-489E-43EA-999C-F16A25355B89'

# Author of this module
Author = 'Microsoft Corporation'

# Company or vendor of this module
CompanyName = 'Microsoft Corporation'

# Copyright statement for this module
Copyright = '(c) 2017 Microsoft Corporation. All rights reserved.'

# Description of the functionality provided by this module
Description = 'The xComputerManagement module is originally part of the Windows PowerShell Desired State Configuration (DSC) Resource Kit. This version has been modified for use in Azure. This module contains the xComputer and xDisk resources. These DSC Resources allow you to perform computer management tasks, like joining a domain or initializing disks.

All of the resources in the DSC Resource Kit are provided AS IS, and are not supported through any Microsoft standard support program or service.'

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '4.0'

# Minimum version of the common language runtime (CLR) required by this module
CLRVersion = '4.0'

# Functions to export from this module
FunctionsToExport = '*'

# Cmdlets to export from this module
CmdletsToExport = '*'

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = @('DesiredStateConfiguration', 'DSC', 'DSCResourceKit', 'DSCResource')

        # A URL to the license for this module.
        LicenseUri = 'https://github.com/PowerShell/xComputerManagement/blob/master/LICENSE'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/PowerShell/xComputerManagement'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        ReleaseNotes = '- xScheduledTask:
  - Update existing Scheduled Task using SetScheduleTask
    instead of UnRegister/Register - See [Issue 134](https://github.com/PowerShell/xComputerManagement/issues/134).
- Fix master branch AppVeyor badge link URL in README.MD - See [Issue 140](https://github.com/PowerShell/xComputerManagement/issues/140).
- Fix deletion of scheduled task with unknown or empty task trigger.
  Get-TargetResource returns an empty ScheduleType string if the task
  trigger is empty or unknown - See [Issue
  137](https://github.com/PowerShell/xComputerManagement/issues/137).
- Added dependency information for xScheduledTask to README.MD.

'

    } # End of PSData hashtable

} # End of PrivateData hashtable
}











