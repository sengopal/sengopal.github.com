title=Mac Android Emulator slow without HAX
date=2015-10-08
tags=android
slug=mac-android-emulator-slow-failure-hax
summary=After installing the Mac ADT bundle, starting the AVD with a new device was very slow and with the error message
category=Android
author=Senthilkumar Gopal
type=post
status=published
~~~~~~

After installing the Mac ADT bundle, starting the AVD with a new device was very slow and with the error message.

> emulator: Failed to open the hax module HAX is not working and emulator runs in emulation mode
    
Thanks to this [stackoverflow](http://stackoverflow.com/questions/10761696/running-the-new-intel-emulator-for-android) post, this can be resolved.

1. Install the IntelHAXM from the [Intel](http://software.intel.com/en-us/articles/intel-hardware-accelerated-execution-manager/) site.
2. If you are using 10.9 (Mavericks), install the hotfix as well from the [Intel](http://software.intel.com/en-us/articles/intel-hardware-accelerated-execution-manager/) site.
3. Install the Intel x86Emulator Accelerator in Android SDK Manager (under Extras) if not installed yet.
4. Remember to check the "Use Host GPU", once the setup is completed to actually use the GPU.	
5. Restart Eclipse (optional) and you should be able to see now the message 

> HAX is working and emulator runs in fast virt mode
