# ds4windows-fix

Fix an annoying bug with DS4Windows where the controller disables itself with this one-click script

## [Full credit to the creators of DevManView (NirSoft, Nir Sofer)](https://www.nirsoft.net/utils/device_manager_view.html)

Without DevManView this script is impossible to run.

### Installation

1. Create a folder somewhere

2. [Download DevManView](https://www.nirsoft.net/utils/device_manager_view.html)

3. Place DevManView in the folder you've created

4. Place fix.bat in the folder you've created (alongside DevManView)

5. Make a shortcut to fix.bat

6. Run it whenever you encounter the bug

BOOM. ONE-CLICK FIX WHENEVER IT HAPPENS AGAIN.

### Final notes

```devmanview.exe /disable "HID-compliant game controller"``` may possibly be unnecessary, but it just makes sure the device is disabled when you run the script as sometimes it completely glitches out and shows up as "enabled" despite being disabled.
