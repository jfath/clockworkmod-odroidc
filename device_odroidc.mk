$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/hardkernel/odroidc/odroidc-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/hardkernel/odroidc/overlay

LOCAL_PATH := device/hardkernel/odroidc
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
	$(LOCAL_KERNEL):kernel


PRODUCT_COPY_FILES_OVERRIDES += \
    root/fstab.goldfish \
    root/init.goldfish.rc \
    recovery/root/fstab.goldfish

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_odroidc
PRODUCT_DEVICE := odroidc

ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0 \
	ro.allow.mock.location=1 \
	ro.debuggable=1 \
	persist.sys.usb.config=mass_storage,adb \
	ro.kernel.android.checkjni=0 \
	ro.sf.lcd_density=160 \
	keyguard.no_require_sim=1 \
	mbx.timeout.enable=false \
	hwui.render_dirty_regions=false \
	persist.sys.ui.hw=true \
	persist.demo.hdmirotation=landscape \
	hw.nopm=true \
	hw.nobattery=true \
	hw.nophone=true \
	hw.novibrate=true \
	hw.nogps=true \
	hw.cameras=0 \
	hw.hasethernet=true \
	hw.hasusbcamera=true \
	hw.has.accelerometer=true \
	ro.ethernet.default_on=true \
	ro.config.low_ram=false \
	ro.screen.has.timeout=false \
	ro.screen.has.brightness=false \
	ro.screen.has.tvout=true \
	ro.platform.has.security=false \
	ro.platform.has.tts=false \
	ro.platform.has.touch=false \
	ro.platform.has.digitaudio=true \
	ro.platform.has.defaulttvfreq=false \
	ro.hw.ethernet.onboard=true \
	ro.platform.has.cvbsmode=false \
	ro.platform.hdmionly=true \
	ro.platform.has.cecmode=false \
	ro.platform.filter.modes=4k2k24hz,4k2k25hz,4k2k30hz,4k2ksmpte \
	ro.ui.cursor=surface \
	ro.sf.hwrotation=0 \
	sys.fb.bits=32 \
	gps.enable=false \
	mbx.3D_Bright.enable=false \
	gadget.nand.force_sync=true \
	ubootenv.var.outputmode= \
	ubootenv.var.480poutputx= \
	ubootenv.var.480poutputy= \
	ubootenv.var.480poutputwidth= \
	ubootenv.var.480poutputheight= \
	ubootenv.var.480ioutputx= \
	ubootenv.var.480ioutputy= \
	ubootenv.var.480ioutputwidth= \
	ubootenv.var.480ioutputheight= \
	ubootenv.var.576poutputx= \
	ubootenv.var.576poutputy= \
	ubootenv.var.576poutputwidth= \
	ubootenv.var.576poutputheight= \
	ubootenv.var.576ioutputx= \
	ubootenv.var.576ioutputy= \
	ubootenv.var.576ioutputwidth= \
	ubootenv.var.576ioutputheight= \
	ubootenv.var.720poutputx= \
	ubootenv.var.720poutputy= \
	ubootenv.var.720poutputwidth= \
	ubootenv.var.720poutputheight= \
	ubootenv.var.1080poutputx= \
	ubootenv.var.1080poutputy= \
	ubootenv.var.1080poutputwidth= \
	ubootenv.var.1080poutputheight= \
	ubootenv.var.1080ioutputx= \
	ubootenv.var.1080ioutputy= \
	ubootenv.var.1080ioutputwidth= \
	ubootenv.var.1080ioutputheight= \
	ubootenv.var.4k2k24hz_x= \
	ubootenv.var.4k2k24hz_y= \
	ubootenv.var.4k2k24hz_width= \
	ubootenv.var.4k2k24hz_height= \
	ubootenv.var.4k2k25hz_x= \
	ubootenv.var.4k2k25hz_y= \
	ubootenv.var.4k2k25hz_width= \
	ubootenv.var.4k2k25hz_height= \
	ubootenv.var.4k2k30hz_x= \
	ubootenv.var.4k2k30hz_y= \
	ubootenv.var.4k2k30hz_width= \
	ubootenv.var.4k2k30hz_height= \
	ubootenv.var.4k2ksmpte_x= \
	ubootenv.var.4k2ksmpte_y= \
	ubootenv.var.4k2ksmpte_width= \
	ubootenv.var.4k2ksmpte_height= \
	ubootenv.var.digitaudiooutput= \
	ubootenv.var.defaulttvfrequency= \
	ubootenv.var.has.accelerometer= \
	ubootenv.var.cecconfig= \
	ubootenv.var.cvbsmode= \
	ubootenv.var.hdmimode= \
	ubootenv.var.disp.fromleft= \
	dtv.standard=DVBS \
	ro.amlogic.no.preloadclass=1 \
	virtualsd.enable=true \
	sys.defaultStream.ismusic=true \
	ro.app.optimization=true \
	ro.platform.has.realoutputmode=true \
	ro.osd2.size=64x64 \
	ro.alarm.align=true \
	ro.permissions.settings=true \
	prop.sp.brightness=off \
	ro.quickboot.enable=false \
	config.enable_quickboot=true \
	ro.hdmi.spdif=true


