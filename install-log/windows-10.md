# Windows 10

## Pre-Install

I configured the Bios based on the [Bios Configuration Guide.](bios-configuration-guide.md)

## Installing

I always start by installing Windows 10.

That allows me to check if all components work and a lot of software only works in Windows 10 which is required to configure the system like the RGB settings of the mainboard, ram, graphics card, and of course AquaSuite.

I created the bootable USB install stick with [Rufus](https://rufus.ie/), another option would be [Unetbootin](https://unetbootin.github.io/) .

Most other options like in a macOS terminal don't work anymore as the latest version of Windows 10 has files that are too big to copy, which can lead to errors that will pop up directly after selecting the install disk during the Windows Install Dialogue.

Normally I also disconnect all drives which are not needed by Windows but in this case, that is problematic as both boot media are M.2.

Luckily the Samsung 970 EVO Plus drive is around 500GB while the ADATA XPG SX8200 Pro is 512GB which makes it easy to figure out which drive is which.

So I booted into the USB drive and started installing Windows 10 onto the ADATA XPG SX8200 Pro M.2. Nothing special to it.

After you have installed Windows 10 there is not a lot to do.

## Post Install

### Taking care of Time Drift

Dual-booting Windows 10 and macOS will cause your time to drift. This is caused by the different time standards that are being used in both OS.

You can disable this behavior by configuring Windows correctly \(of course 😀 \). [If you need pics or it didn't happen.](http://www.applegazette.com/mac/fix-windows-and-macos-showing-different-times-dual-booting/)

* Disable “Set Time automatically” in Time & Language
* Edit Registry with Regedit 
* HKEY\_LOCAL\_MACHINE\System\CurrentControlSet\Control\TimeZoneInformation
* Create dword 32 bit RealTimeIsUniversal with value 1

### Bluetooth

If you want to have the Bluetooth of the MQUPIN fenvi T919 Wireless working you need to install a driver \(the wifi part works out of the box\) [http://en.fenvi.com/en/download\_zx.php](http://en.fenvi.com/en/download_zx.php) 

### WiFi

I disabled the Intel Onboard WiFi in the Bios and the MQUPIN fenvi T919 Wireless works out of the box.

### Software Install

After that, I started all the needed software to configure the system, mainly RGB stuff, but also AquaSuite.

Also, I installed the tools from the different Drive Vendors, Samsung, Seagate, and Adata to check if the drives needed a firmware update.

## DON'T

partition any other drive.

You need to partition drives in macOS first before. Then you boot into Windows, delete the partition you would like Windows to use, and then create a new simple Volume out of the free space.

