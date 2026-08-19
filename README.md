# Motorola Edge 30 Ultra Dolby Atmos (Moto Dax)

This repository provides a natively-compiled Motorola Dolby Atmos (Moto Dax) implementation for Android Custom ROMs. It integrates the Dolby hardware services, applications, and SELinux policies directly into the AOSP build system, removing the need for Magisk.

## Credits & Acknowledgements
**Massive thanks and all credits to [reiryuki](https://github.com/reiryuki)** for the original Magisk module.
Reiryuki did the agonizing work of extracting the blobs from the Motorola Edge 30 Ultra, fixing the library dependencies, and getting the UI fully functional for modern Android versions (Android 14/15/16). 
This repository simply repackages their brilliant work into a standard `Android.bp` format for native ROM compilation.

* Original Dolby Module: https://github.com/reiryuki/Moto-Edge-30-Ultra-Dolby-Atmos-Magisk-Module
* Original Moto Core Module: https://github.com/reiryuki/Moto-Core-Magisk-Module

## Integration Instructions
1. Clone this repository to `vendor/motorola/dolby`
2. Inherit the configuration in your `device.mk`:
   ```makefile
   $(call inherit-product, vendor/motorola/dolby/dolby.mk)
   ```
3. Remove any conflicting stock Dolby services from your device tree (e.g., `vendor.dolby.hardware.dms@1.0-service`, `dms360`).
4. Add the `dap` library and effect to your device's `audio_effects.xml`:
   **Under `<libraries>`:**
   ```xml
   <library name="dap" path="libswdap.so"/>
   ```
   **Under `<effects>`:**
   ```xml
   <effect name="dap" library="dap" uuid="9d4921da-8225-4f29-aefa-39537a04bcaa"/>
   ```
