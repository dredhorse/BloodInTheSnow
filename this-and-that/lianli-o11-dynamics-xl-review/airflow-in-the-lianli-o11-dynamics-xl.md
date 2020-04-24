# Airflow in the LianLi O11 Dynamics XL

In hindsight it looks to me that while LianLi has some great ideas in how to build and structure their cases they also just fail in doing so. 

This was already the case with my old LianLi case \(no pun intended\) which had a divided inner area to house the mainboard at the top and drives and PSU in a lower separate compartment. This did allow for a good division of components creating heat and noise.

The design failed though as there was a massive hole between those compartments allowing air from both compartments to circulate. I solved it someway by closing it with some foam I had lying around and some labels. Sigh..

So let's take a look at the case which is the real reason for this blog.

My 4 areas of concern are:

* Top
* Side
* Bottom
* HardDrive Cages

So let's start with the

## Top

The Top is the only direct way \(except the rear mountable fan\) to expel heat out of the case. But it still has issues as the dust-filter \(which you should remove if you use the top as exhaust\) is on top of the radiator. And if you remove the dust-filter you are have a quite decent area under the top cover in which the air can circulate. And you have quite some gaps in which the air can go back into the case too.

INSERT PIC here

So if you crank up the airflow through the radiator up to the point where the air can't be pushed out of the top directly the air will be pushed back into the case again.

I know that those mounting notches are there to be more flexible but I would have liked to see a way to close those notches which you don't need.

## Side

The Side has even more issues than the Top, there is a massive gap between the radiator and the casing. It is more massive if you mount the radiator in the motherboard compartment but it is still quite big depending on the thickness of the radiator if you mount the radiator in the PSU / Drive \(side\) compartment.

INSERT PICS here

This leads to hot air being pushed into the side compartment if you run the fans in a push configuration. Also through the not covered holes between the side and the mainboard compartment \(even if LianLi is doing a good job there are still some gaps\) the hot air can be circulated back into the mainboard compartment.

If you do a pull configuration the question will be if the holes in the case on the side can supply enough air to not suck in hot air from the mainboard compartment.

## Bottom

The integrated mounting frame for the radiator sounds like a good idea. Up to the point when you take a look at it.

INSERT Pics here

Normally you configure the lower radiator to pull cool air into the case and you would for sure keep a dust filter probably outside the case to keep the dust out.

Unfortunately dust filters which are not directly mounted on top of the fan or radiator cause a very high resistance for the air to go through them if the air finds a different way. And that way is via the holes in the mounting frame, luckily there are not a lot and depending from the Radiator you mount they will even be covered.

So some of the air which you will suck through the radiator in a pull configuration will be coming from inside the case and not from the outside.

## HardDrive Cages

The case is great for drives, not only lot of mount options for SSDs but also 2 hot swappable drive cages with 2 drive frames.

The only problem is that they sit on top of the PSU in the side compartment and only rely on passive airflow to come through the case holes to be cooled.

INSERT PIC here

I had similar issues in my old hackintosh where the Seagate Firecuda drive is lying in the PSU compartment.

What I can not understand is that no test of the case up to now did even look at temperatures in the drive areas, they only focus on CPU and GPU temperature. In my opinion a very lacking approach especially for a case which is kinda sold as a harddrive case.

