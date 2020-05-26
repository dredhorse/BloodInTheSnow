# Unable to Update Cities:Skylines in macOS Catalina

This is something which caused me some pain, especially as Steam Support can only post link to there FAQ as it seems.

But after trying my best Sherlock Holmes impression I got it solved.

![https://www.planet-wissen.de/kultur/literatur/sherlock\_holmes\_ein\_literarisches\_phaenomen/index.html](../.gitbook/assets/sherlock-holmes-museum-102__v-gseapremiumxl.jpg)

## The Problem

Installing Cities:Skyline went fine and I could even start it, but it kept complaining about an update it wanted to do and a Disk Write Error.

```text
2020-05-14 10:36:47] [AppID 255710] Update canceled: Failed to write patch state file (Disk write failure) "/Volumes/The7Dwarfs/Games/steamapps/workshop/downloads/state_255710_255710_851382354.patch"
```

I looked around the internet and tried Steam Support, which weren't helpful at all as they kept on quoting their troubleshooting FAQ and insisted it must be a hardware issue or something which could only be solved by a technician on my part.

Well of course there was an issue on my side, but  other games installed fine. I even tried another new drive, I tried it on the boot device and I did any other thing I could think off.

But it looks like troubleshooting their product ends at supplying links to a FAQ if you use steam support instead of really solving the issue, and the issue is partly their issue.

## The hunt for the culprit

So I started hunting for more information. A disk write error can be caused by a lot of things especially if it is so un-descriptive.

I checked if the virus scan was the culprit or if perhaps the source \(not existing files\) was the issue.. nope.

I figured out that 255710 is the ID code for Cities:Skylines and I also figured out that [851382354](https://steamcommunity.com/sharedfiles/filedetails/?id=851382354) is an asset from the workshop. 

I deleted the cache etc and found now another file having issues, from asset 856897755, I asked the developer if he perhaps uses strange symbols and the declined. I even unpacked the CRP file to take a look on my side if there is an issue. Nothing.

So I went the route to figure out if there was really an issue of the filesystem.

In macOS you can see which processes are accessing the filesystem with [opensnoop](https://ss64.com/osx/opensnoop.html).

```text
sudo opensnoop -ve -p STEAM PID
```

Will print out any errors caused by a program while accessing files.

So I let this run and tried updating again.

```text
2020 May 26 10:31:11   501   1866 steam_osx    2047   0 /Volumes/The7Dwarfs/Games/steamapps/workshop/downloads/state_255710_255710_851382354.patch
2020 May 26 10:31:12   501   1866 steam_osx     -1  24 /Volumes/The7Dwarfs/Games/steamapps/workshop/downloads/state_255710_255710_851381906.patch
```

-1 is an error and 24 is the description of that error. Let's take a [look ](http://www2.hs-fulda.de/~klingebiel/c-stdlib/sys.errno.h.htm)at it:

```text
#define	EMFILE	24	/* Too many open files			*/
```

Well, that is a lot more information just like Disk Write Error isn't it?

So should I talk to steam support now and let them fix their program?

Well, I will give them a link to this webpage because I doubt it will be handled correctly. 

And I will also put a link in all of the threads I started so other people can solve the mystery.

![https://www.pinterest.com/pin/359936195212852897/](../.gitbook/assets/itselementary.jpg)

## The solution

Now the next search started, after figuring out that steam opens to many files during it's update process how to change it.

{% hint style="info" %}
BTW: I have LOT's of assets included in Cities:Skylines so I guess this is not a common issue.
{% endhint %}



