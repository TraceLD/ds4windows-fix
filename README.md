# ds4windows-fix

**This is a simple Batchfile script and doesn't require PowerShell. PowerShell is only required for the automated installer. Feel free to install the fix manually.**

Fix an annoying bug with DS4Windows where the controller disables itself with this one-click script

Full credit to the creators of [DevManView (NirSoft, Nir Sofer).](https://www.nirsoft.net/utils/device_manager_view.html) Without DevManView this script is impossible to run.

## Automated Installation

*Disclaimer: This installer requires PowerShell. Regular version of the fix makes use of only Batchfile.*

1. Download `inst.ps1` and `installer.bat` from [here](https://github.com/TraceLD/ds4windows-fix/releases/tag/final).

2. Make sure they are both in the same folder (folder can't contain spaces in it's name, e.g. `inst inst` won't work). I recommend placing them on the desktop (you can remove both `inst.ps1` and `installer.bat` after the installation process is complete).

3. Run `installer.bat` as administrator. The script will fail if you don't run it as administrator.

4. The script will download DevManView and the fix to `Program Files\ds4windows-fix` and create a shortcut to the fix on the desktop called `fix`. Feel free to rename the shortcut.

5. Run the fix via the shortcut whenever you encounter the DS4Windows bug.

## Manual Installation

1. Create a folder somewhere

2. [Download DevManView](https://www.nirsoft.net/utils/device_manager_view.html)

3. Place DevManView in the folder you've created

4. Place fix.bat (you can find it in the repository) in the folder you've created (alongside DevManView)

5. Make a shortcut to fix.bat

5. Run the fix via the shortcut whenever you encounter the DS4Windows bug.
