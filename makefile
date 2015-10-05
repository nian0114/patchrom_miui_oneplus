#
# Makefile for I9300
#

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := MIUI_m0.zip

# All apps from original ZIP, but has smali files chanded
local-modified-apps := Bluetooth

local-modified-jars :=

# All apks from MIUI
local-miui-removed-apps := 

local-miui-modified-apps := DeskClock MiuiHome MiuiKeyguard miuisystem MiuiSystemUI Music SecurityCenter Settings TeleService ThemeManager Updater

local-phone-apps := Bluetooth HTMLViewer KeyChain NfcNci PacProcessor \
        UserDictionaryProvider WAPPushManager PicoTts Stk CertInstaller

local-phone-priv-apps := BackupRestoreConfirmation DefaultContainerService FusedLocation \
        ExternalStorageProvider InputDevices OneTimeInitializer ProxyHandler SharedStorageBackup \
        Shell Tag VpnDialogs 

local-density := XXHDPI

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-zip-misc
local-after-zip:= 

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
local-zip-misc:
	cp -rf other/boot.img $(ZIP_DIR)/boot.img
	rm -rf $(ZIP_DIR)/fonts
	cp -rf other/system $(ZIP_DIR)/
	cp -rf ../miui_other/system $(ZIP_DIR)/
	@echo goodbye! miui prebuilt binaries!
	cp -rf stockrom/system/bin/app_process $(ZIP_DIR)/system/bin/app_process
	rm -rf $(ZIP_DIR)/system/bin/debuggerd_vendor
	cp -rf stockrom/system/bin/debuggerd $(ZIP_DIR)/system/bin/debuggerd
	rm -rf $(ZIP_DIR)/system/bin/dexopt_vendor
	cp -rf stockrom/system/bin/dexopt $(ZIP_DIR)/system/bin/dexopt
