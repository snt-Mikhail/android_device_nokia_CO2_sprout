# Device Tree for Nokia 5.1 (CO2_sprout)

[Building](#building)

[Notes](#notes)

[Credits](#credits)

## Device
The Nokia 5.1 (nicknamed _"Core2"_, codenamed _"CO2\_sprout"_ but shortened to _"CO2"_) is a low-end smartphone from Nokia.

It was released in May 2018.

Basic   | Spec Sheet
-------:|:-------------------------
OS	    | Android 10	
CPU     | Octa-core (4x2.0 GHz Cortex-A53 & 4x1.2 GHz Cortex-A53)
Chipset | Mediatek MT6755S Helio P18
GPU     | Mali-T860MP2
Memory  | 2GB RAM, 3GB RAM
Storage | 16GB, 32GB
Battery | Non-removable Li-Ion 3000 mAh battery
Resolution | 1080 x 2160 pixels, 18:9 ratio (~439 ppi density)
Camera (Rear)  | 16 MP
Camera (Front)  | 8 MP

<p align="center">
  <img src="https://fdn2.gsmarena.com/vv/pics/nokia/nokia-51-0.jpg" alt="nokia-5.1"/>
</p>

## Building



TODO

## Notes

In my testing, we need the phone to be unencrypted to boot custom kernels on stock. Custom ROMs are untested due to none existing yet for CO2.

To get the phone to not forceencrypt, you need to flash [Universal DM-Verity, ForceEncrypt, Disk Quota Disabler](https://zackptg5.com/downloads/archive/Disable_Dm-Verity_ForceEncrypt_11.02.2020.zip) & wipe data in TWRP.

## Credits

[SebaUbuntu](https://github.com/SebaUbuntu) for [twrpdtgen](https://github.com/twrpdtgen/twrpdtgen)

[belkaliz](https://github.com/belkaliz), [yesimxev](https://github.com/yesimxev) for their previous attempts to get TWRP & custom kernels on CO2 & ES2

[zackptg5](https://forum.xda-developers.com/m/zackptg5.6037748/) for [Universal DM-Verity, ForceEncrypt, Disk Quota Disabler](https://forum.xda-developers.com/t/deprecated-universal-dm-verity-forceencrypt-disk-quota-disabler-11-2-2020.3817389/#post-77091359)