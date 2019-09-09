# stop the script if controllers can't be re-enabled
$ErrorActionPreference = "Stop"

# you can't disable/enable devices without having administrator privileges, so we need to ask for them
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit }

foreach ($device in (Get-PnpDevice -FriendlyName 'HID-compliant game controller')) {
    # sometimes when the bug happens, the controller shows as enabled even though it's disabled
    # so just in case we disable it manually
    try {
        Disable-PnpDevice -InstanceId $device.InstanceId -Confirm:$false
    }
    # will throw an exception despite disabling the device properly so we just ignore it
    catch {

    }

    # enable all controllers again
    Enable-PnpDevice -InstanceId $device.InstanceId -Confirm:$false
}

Write-Output "Done."