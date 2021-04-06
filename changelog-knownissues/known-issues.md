# Known Issues

And as always the ugly head of the medusa of bugs raises its head

{% hint style="danger" %}
There should be a better sentence than this.
{% endhint %}

## General Issues \(GI\)

1. Stream Deck keeps on pulsing after the computer is shutdown. It is connected to a USB Hub like most of my other devices. That hub is powered but the power is cut off when the computer shuts down via a master / slave extension cord. Looks like USB is still powered.
2. CSM needs to be disabled in the BIOS, otherwise you can't boot as the Liquid Devil Bios doesn't support it. This is now really an annoyance as I don't have a backup bios anymore.

## macOS Issues \(MI\)

1. Getting a Crash in macOS with Sleep Mode: Sleep Wake failure in EFIFailure code:: 0xffffffff 0x0000001f
2. I don't have 2 sliders in the Energy Saver, only the one for the Display, this is related to: [https://www.tonymacx86.com/threads/computer-sleep-slider-bar-missing.222369/](https://www.tonymacx86.com/threads/computer-sleep-slider-bar-missing.222369/) Problem though is that you can't change that so easily in Catalina anymore.
3. 


## Windows Issues \(WI\)

1. Aquasuite forgets names of Sensors, strangely only from the farbwerk360 and it is iterating between both of them.
2. StreamDeck doesn't show icons after putting Windows to sleep, might be related to GI 1 and GI 2
3. 


### Fixed

1. The RGB led's inside the CPU cooler doesn't work, it is only flashing rapidly in green very light if at all. Looks like I will need to replace the vision module. I will do that later as atm the led's are not that important and it will require draining of the system as the notch to release the module is obstructed by the fittings.
2. BIOS boot issues. Talking to Gigabyte support now as it is really getting problematic. One time it boots directly through, the next time I need to reboot 1 - 6 times, the next time it takes 1 hour to get it successfull to boot 😞. I already removed the GPU \(luckily I don't have hardtubing\) and swapped the memory. No changes. Unfortunatley the Aorus Z390 Master isn't available anymore so I ordered a new Aorus Z390 Pro as I doubt I will get a replacement from Gigabyte. 

   I replaced the motherboard and the boot issues are gone, should have done it earlier. I could even got a replacement from Amazon \(Gigabyte doesn't handle the replacement in the first 2 years at it seems\), but a\) the board isn't available from Amazon anymore \(so they offere money back\) and b\) the board isn't available anymore really as stated\). So I should have tackled that issue directly I guess and don't hope for a Bios to fix it. BTW: This was a are revision 1.0 motherboard.

3. 
