# Thinking about the Build

So let's start trying to figure out how all the parts fit together.

## Radiators and Fans

I started with figuring out in which mode to use the fans and how to mount the radiators. My take on this atm is:

* Bottom: Pull to get fresh air in
* Side: Pull to get fresh air and have hopefully some movement of air in the drive cages [\(see the Case Review\)](../this-and-that/lianli-o11-dynamics-xl-review/airflow-in-the-lianli-o11-dynamics-xl.md)
* Top: Push to get the heat out
* Back: Push to get the heat out

There is one major drawback with this setup if you do RGB fans... most fans only have RGB to the front. Some of them look quite ok like the ones I use, and some are even better like the Corsair iCUE QL120 RGB but those are neither fans for radiators nor are they supported in a decent way with farbwerk360. The static pressure might not be that big issue as the fans I have atm are not that great either but the limitation with the farbwerk360 is. So if you go full corsair you might take a look into the above mentioned fans too.

The other problem is the size of the case and the amount of fans and radiators. 

Is the Dynmaic XL a "large" case? Kinda.

Does it fit 3 x 360 Radiators? Kinda.

Honestly, it is a TIGHT fit with not a lot of room. If you want to get a clean build use only 2 x 360 Radiators or move the side radiator into the side compartment, because space is tight. I didn't regret using the XSPC radiator at the bottom, it compensates the mounting frame height. So you might want to remove that if you have a higher radiator.

On the pictures it might doesn't look that tight but there are no tubes in there yet.

## Tubing

I went with 16/10 soft tubes because I was told the don't bend to easy. I don't think they are too beefy for this build but they did cause some issues.

The main problem I had was to incorporate the flow sensor and a drain valve.  I couldn't get a valve in white and I also didn't want to have it in the main compartment. So I wanted to have it split after the flow sensor and go into the side compartment. That is quite full though.

Also because of the tight fit of radiators, fans and fittings I ended up using a lot of 45 angled fittings. 90 degrees wouldn't have helped and some people suggest to avoid them.

## Monitoring and Control

In theory the motherboard should be able to control the watercooling system. It has custom fan curves and it might be possible to use different temperatur sensors than the cpu one to control them. I didn't check because I wanted to go a different way.

Afaik Corsair Commander and the other products going a long with it can be configured in Windows AND keep their settings during reboot into OSX. I didn't check this either.

During my search for knowledge I came upon the procuts from Aquacomputer which offer quite some flexibility, still no direkt OSX support. 

### Temperature

The aquaero will control the temperature and speed of the system. 

#### Water Temperature:

The D5 Next Pump directly provides the temperature of the cooling liquid and also offers a way to virtually define a throughput measurement. In my case the flow sensor will give us throughput measure directly. 

#### CPU Temperature:

The cuplex kryos next vision has a temperature sensor build in and will be used to transfer temperature information of the CPU to the aquero

#### Air Temperature:

There are several temperature sensors included \(even with the motherboard\). 

The motherboard will get a temperature sensor which will be attached to one of the radiators and one which will be attached in the area of the harddrives. This should allow hopefully some monitoring of temperatures via the motherboard in OSX. We will see.

The aquaero will get an additional temperature sensor for the harddrives and one for the outside air. Perhaps one more sensor inside the case for additional measurement if the need arises.



