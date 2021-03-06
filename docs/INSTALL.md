# Installing the Module

## Install from the PowerShell Gallery

The LatestUpdate module is published to the PowerShell Gallery and can be found here: [LatestUpdate](https://www.powershellgallery.com/packages/LatestUpdate/). The module can be installed from the gallery with:

```powershell
Install-Module -Name LatestUpdate
Import-Module -Name LatestUpdate
```

### Updating the Module

If you have installed a previous version of the module from the gallery, you can install the latest update with the `-Force` parameter:

```powershell
Install-Module -Name LatestUpdate -Force
```

## Manual Installation from the Repository

The module can be downloaded from the [GitHub source repository](https://github.com/aaronparker/LatestUpdate) and includes the module in the `LatestUpdate` folder. The folder needs to be installed into one of your PowerShell Module Paths. To see the full list of available PowerShell Module paths, use `$env:PSModulePath.split(';')` in a PowerShell console.

Common PowerShell module paths include:

* Current User: `%USERPROFILE%\Documents\WindowsPowerShell\Modules\`
* All Users: `%ProgramFiles%\WindowsPowerShell\Modules\`
* OneDrive: `$env:OneDrive\Documents\WindowsPowerShell\Modules\`

To install from the repository

1. Download the `master branch` to your workstation.
2. Copy the contents of the LatestUpdate folder onto your workstation into the desired PowerShell Module path.
3. Open a Powershell console with the Run as Administrator option.
4. Run `Set-ExecutionPolicy` using the parameter `RemoteSigned` or `Bypass`.

Once installation is complete, you can validate that the module exists by running `Get-Module -ListAvailable LatestUpdate`. To use the module, load it with:

```powershell
Import-Module LatestUpdate
```

## Using the Module

To use the module, we follow 3 tasks:

1. Get the latest update with Get-LatestUpdate
2. Download the update/s with Save-LatestUpdate
3. Optionally import the update/s into an MDT deployment share