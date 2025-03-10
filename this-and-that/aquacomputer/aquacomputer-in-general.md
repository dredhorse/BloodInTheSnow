# AquaComputer in general

[Aqua Computer](https://aquacomputer.de/) is a german company producing some quite interesting parts for custom water-cooling. 

{% hint style="info" %}
This is not a negative review of parts from AquaComputer, more a list of things I found out later on. Either because I couldn't read correctly or it wasn't that obvious.
{% endhint %}

## D5 Next pump

The D5 Next is a D5 waterpump with RGB, built-in temperature sensor and flow meter.

* RGB can be controlled via a temperature sensor or software
* The Internal flow meter is virtual, you need to block the flow and let the pump calibrate, after that you will have an approximate flow rate
* The Temperature sensor is connected to the metal pump casing

One annoying part about the pump is the missing documentation on which connector is which. Fan is described but the other 2 are guessing, or you know the connector layout beforehand.

![\(c\) AquaComputer](../../.gitbook/assets/d5_next_10.jpg)

> USB \| Fan or Flow \| RGBpx or aquabus
>
>             Sata Power

But the most annoying part is that the sata power connection is turned 180 degrees. So if you have an angled sata power connector the cable will go up \(the picture is upside down\). Which doesn't work btw because the sata power connector is recessed and there is the pump blocking the cable.

That doesn't really matter perhaps because you will use a sata power extension never-the-less to not have more than one sata power connection inside the mainboard compartment of your case, but make sure you have a straight connector.

Also if you want to connect the D5 next pump to an aquaero you need a "cable for vision" which is not included by default.

## cuplex kryos NEXT Vision

cuplex kryos NEXT Vision is a CPU cooler with a built-in display and if you go acryl cover rgb which can be controlled via the cooler temperature.

Two things need to be looked at here:

1. You need the same cable as for the D5 Next Pump to connect the cooler to the aquaero
2. Getting that cable into the cooler is tricky and not really documented. Also, space is really tight so you need to watch out to not break anything when you assemble it again.

![](../../.gitbook/assets/cuplexkryosissue.png)

## Flow sensor high flow

The Flow sensor high flow \(without USB\) does a good job of measuring the flow rate afaik. It can be connected to the aquaero IF you buy the not included cable. It doesn't work with anything else \(like a mainboard connector\).



