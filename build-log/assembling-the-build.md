# Thinking about the Build

So let's start trying to figure out how all the parts fit together.

## Radiators and Fans

I started with figuring out in which mode to use the fans and how to mount the radiators. My take on this atm is:

* Bottom: Pull to get fresh air in
* Side: Pull to get fresh air and have hopefully some movement of air in the drive cages [\(see the Case Review\)](../this-and-that/lianli-o11-dynamics-xl-review/airflow-in-the-lianli-o11-dynamics-xl.md)
* Top: Push to get the heat out
* Back: Push to get the heat out

There is one major drawback with this setup if you do RGB fans... most fans only have RGB to the front. Some of them look quite ok like the ones I use, and some are even better like the Corsair iCUE QL120 RGB but those are neither fans for radiators nor are they supported in a decent way with farbwerk360. The static pressure might not be that big of an issue as the fans I have atm are not that great either but the limitation with the farbwerk360 is. So if you go full corsair you might take a look into the above-mentioned fans too.

The other problem is the size of the case and the number of fans and radiators. 

Is the Dynamic XL a "large" case? Kinda.

Does it fit 3 x 360 Radiators? Kinda.

Honestly, it is a TIGHT fit with not a lot of room. If you want to get a clean build use only 2 x 360 Radiators or move the side radiator into the side compartment because space is tight. I didn't regret using the XSPC radiator at the bottom, it compensates the mounting frame height. So you might want to remove that if you have a higher radiator.

![](../.gitbook/assets/atightfit.png)

On the pictures, it might not look that tight but there are no tubes in there yet.

![](../.gitbook/assets/somegreaseneeded.png)

## Tubing

I went with 16/10 soft tubes because I was told they don't kink so easily. I don't think they are too beefy for this build but they did cause some issues.

![](../.gitbook/assets/tubeinginplace.png)

The main problem I had was to incorporate the flow sensor and a drain valve.  I couldn't get a valve in white and I also didn't want to have it in the main compartment. So I wanted to have it split after the flow sensor and go into the side compartment. That is quite full though.

![](../.gitbook/assets/flowsensor.png)

![](../.gitbook/assets/drainwithlotsofspace.png)

Also because of the tight fit of radiators, fans, and fittings I ended up using a lot of 45 degree angled fittings. 90 degrees wouldn't have helped and some people recommend to avoid them.

![](../.gitbook/assets/somebends.png)

## Monitoring and Control

In theory, the motherboard should be able to control the water-cooling system. It has custom fan curves and it might be possible to use a different temperature sensors than the CPU one to control them. I didn't check because I wanted to go a different way.

Afaik Corsair Commander and the other products going along with it can be configured in Windows AND keep their settings during reboot into OSX. I didn't check this either.

During my search for knowledge, I came upon the products from Aquacomputer which offer quite some flexibility, still no direct OSX support. 

### OSX and Windows

I can configure the products from Aquacomputer in Windows. As long as Windows is running the Aquasuite software can control all components and retrieve more information from the OS, like CPU internal temperature. So when I run Windows I have a lot more control.

When I run OSX the components will work with the internal programming and the sensors which are available to them without the software. So we will see how this works out in the end.

It is also possible with VMware Fusion to run Windows 10 inside a VM in macOS and pass the usb devices directly to the VM. I tested this briefly and while it does work it comes with the issue that I would need to sync the configuration from the DualBoot Windows aka The7Dwarfs to the Windows inside the VM. This is more complicated as it sounds in times of DropBox etc because AquaSuite is running as a Service on Bootup.

### Temperatures

The aquaero will consume the temperature values and will control the speed of the components based on it.

#### Coolant Temperature:

The D5 Next Pump directly provides the temperature of the cooling liquid and also offers a way to virtually define a throughput measurement. In my case, the flow sensor will give us the throughput measure directly. 

#### CPU Temperature:

The cuplex kryos next vision has a temperature sensor build in and will be used to transfer temperature information of the CPU to the aquero. As the sensor is on the cooler itself I will need to get the delta between the internal CPU sensor and the cooler sensor. We will see how that works.

#### Air Temperature:

There are several temperature sensors included \(even with the motherboard\). 

The motherboard will get a temperature sensor that will be attached to one of the radiators and one which will be attached in the area of the hard drives. This should allow hopefully some monitoring of temperatures via the motherboard in OSX. We will see.

{% hint style="info" %}
It does not work. You even have issues with finding the additonal temperatures in HWInfo etc under Windows. BIOS will show all values fine.
{% endhint %}

The aquaero will get an additional temperature sensor for the hard drives and one for the outside air. Perhaps one more sensor inside the case for additional measurement if the need arises.

### Pump and Fan Speed

Pump and Fan Speed will be controlled based on coolant temperature and outside temperature.

I aim for a max pump speed which is still not noticeable and for a medium during normal operation. 

Fans should start with the bottom and top fans spinning and ramping up, then side and back kicking in.

This should give a good amount of cooling with low noise.  

### Laser Show

Oh well... all the RGB Stuff. Unfortunately, the farbwerk360 can not be controlled directly via the aquaero. And under OSX the USB option is not possible. So I will use some independent temperature sensors to control the light.

![](../.gitbook/assets/whiteandred.png)

The light theme of the build will be slowly pulsing white with some red put into it. The red becomes more dominant as the temperature rises.

![](../.gitbook/assets/redandwhite.png)

#### Mainboard and GPU

Mainboard and GPU will be controlled via the BIOS. I aim for a white glow, slowly pulsing. Let's wait and see. I need to take a look if I will be able to change the light effects via cpu temperature, in which case I will add some red I guess.

#### CPU Cooler

The CPU Cooler can be controlled via USB or by temperature. I need to see what is possible... pulsing red would be nice, the hotter the faster.

#### Front and Reservoir

The front and reservoir rgb will be connected via adapters and will be controlled via the farbwerk360.

#### Light Strip

I added a light strip behind the bottom radiator which can be connected directly to the farbwerk360.

#### Fans

The corsair fans will be connected with the splitty4 to the farbwerk360. Only 3 can be put on one output of the farbwerk360. That is the reason why I have 2 farbwerk360. We will see how good I can synchronize them without the help of a USB connection.

## Storage

Most of the decision for storage is easy.

A\) It needs to be supported by OSX

B\) Because it is a Hackintosh you want to make a full bootable copy of the OSX disk, so you need 2 devices of the same size.

C\) I already have a quite good setup in my other Hackintosh which I "copied" over.

I went for 2 M2 PCIe devices to host OSX and Windows 10, a normal SSD in the size of the M2 device for OSX, a 250GB SDD for usage with encryption to hold business data and a 2 TB hybrid Seagate Firecuda in 2,5" form factor.

During the initial installation, I found out that the 2,5 Formfactor Firecuda can't keep up with the IOPS which are generated from the system during random access of several apps. So I did bite the bullet and bought an additional SSD from Crucial with 2 TB. While I wanted to use the Firecuda as mass storage and backup I will be using it for backup only now. For this, the performance is even overkill. 

Important to note is that if you want to use 6 storage devices in total together with M2 you need to use PCIe based M2 devices with this motherboard, otherwise you can only attach 3 SATA devices.

I'm fine as M2M will be a  Samsung EVO PRO \(which is only supported with OSX with the latest firmware patches\) and M2A will be an ADATA XPG SX8200 Pro.

macOS Backup and FileVault will be Samsung EVO 850 which I already had.

I screwed in the additional mounting material for the M2 cards, inserted the storage, and put the motherboard included coolers on top.

The 2,5" SSDs and the Firecuda I mounted into the removable drive cages and inserted them carefully into the drive bays. Worked like a charm.

Boot Order will be the OSX Disk first which will then boot OpenCore which will detect also the Windows 10 install and allow booting into it. So no dual boot on one device.

Also, the backup disk of OSX will be fully bootable by itself, which allows you to have an older version of the bootloader available when you want to upgrade.

The additional benefit of having 3 independent boot devices is that all can be independently booted from via the bios.

Installation order will be Windows10 first to get the system up and running, to check that everything is ok and to configure the Aquacomputer components. After that OSX is being installed.

