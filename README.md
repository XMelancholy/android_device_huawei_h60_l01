# Android_device_huawei_h60_l01

Getting Started :

		curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
		chmod 755 ~/bin/repo
		mkdir cm-11
		cd cm-11
		repo init -u git://github.com/CyanogenMod/android.git -b cm-11.0
		repo sync

		mkdir -p device/huawei/h60_l01
		git clone https://github.com/XMelancholy/android_device_huawei_h60_l01.git -b cm-11 device/huawei/h60_l01

Now connect your phone which have runing CM11 :

		cd device/huawei/h60_l01
		./extract-files.sh

		cd ../../..
		mkdir -p kernel/huawei
		git clone https://github.com/XMelancholy/android_kernel_huawei_h60 -b cm-11 kernel/huawei/h60


Patch android source code :

		cd device/huawei/h60_l01/patches
		./applypatch.sh


Our step is optional!!! Use only if you going to sync CM 11 source code daily, than simple revert each patch before you sync CM 11 source code :

		cd device/huawei/h60_l01/patches
		./un-patch.sh
		cd ../../../..
		repo forall -p -c 'git checkout -f'
		repo sync
		./applypatch.sh
		cd ../../../..


Download CM prebuilts : 

		./vendor/cm/get-prebuilts

You are ready to build :

		source build/envsetup.sh
		lunch cm_h60_l01-userdebug
		make otapackage

ENJOY!
