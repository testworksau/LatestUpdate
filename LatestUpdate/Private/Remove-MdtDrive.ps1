Function Remove-MdtDrive {
    <#
    .SYNOPSIS
        Removes a persistent PS drive mapped to an MDT share.

    .NOTES
        Author: Aaron Parker
        Twitter: @stealthpuppy

    .PARAMETER Drive
        A PS drive mapped to an MDT deployment share to remove.
    #>
    [CmdletBinding(SupportsShouldProcess = $True)]
    Param (
        [Parameter(Mandatory = $True, Position = 0, ValueFromPipeline = $True)]
        [String] $Drive
    )
    If ($pscmdlet.ShouldProcess("MDT drive: $($Drive)", "Removing")) {
        $MdtDrive = Get-MDTPersistentDrive | Where-Object { $_.Name -eq $Drive }
        Remove-MDTPersistentDrive -Name $MdtDrive.Name
    }
}
