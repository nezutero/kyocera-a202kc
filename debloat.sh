# https://garahowiki.com/debloating_apps

#!/usr/bin/env sh

echo "=== Kyocera DIGNO Keitai 4 Debloater ==="
echo "This script disables (not uninstalls) bloatware apps."
echo "You can re-enable any app later if needed."
echo ""

if ! adb devices | grep -q "device$"; then
    echo "ERROR: No ADB device found. Connect your phone and enable USB Debugging."
    exit 1
fi

echo "Connected device found. Starting debloat..."
echo ""

echo "[1/3] Disabling RECOMMENDED apps..."
adb shell pm disable-user --user 0 com.mobisystems.office.kyocera  # OfficeSuite
adb shell pm disable-user --user 0 jp.co.optim.orukysr00  # Remote Support
adb shell pm disable-user --user 0 jp.softbank.mb.apud.manager  # APUDManager
adb shell pm disable-user --user 0 jp.softbank.mb.apud.framework  # APUDFramework
adb shell pm disable-user --user 0 jp.softbank.mb.parentalcontrols  # Safety Filter
adb shell pm disable-user --user 0 jp.softbank.mb.ichinaviclt  # Position Navigation Link
adb shell pm disable-user --user 0 jp.softbank.mb.bizlock  # Secure Remote Lock for Business
adb shell pm disable-user --user 0 jp.co.nttdocomo.ichannel  # iChannelecho "[2/3] Disabling SAFE apps..."
# Safe to remove - SoftBank/Docomo bloatware
adb shell pm disable-user --user 0 com.nttdocomo.android.anshinnumbercheckdfp  # Anshin Number Check
adb shell pm disable-user --user 0 jp.kyocera.weather  # Weather
# adb shell pm disable-user --user 0 com.kyocera.calculator2  # Calculator
adb shell pm disable-user --user 0 jp.kyocera.customizekey  # Customize Key
adb shell pm disable-user --user 0 jp.kyocera.lifesettings  # Auto Manner
adb shell pm disable-user --user 0 com.tobila.tobilaphone.mobile.feature  # Block Unwanted Calls
adb shell pm disable-user --user 0 com.android.email  # PC Mail
adb shell pm disable-user --user 0 jp.kyocera.fakeIncoming  # Fake Call
adb shell pm disable-user --user 0 jp.kyocera.wallpaperpicker  # KCWallpaperPick
adb shell pm disable-user --user 0 jp.kyocera.memo  # Notepad
adb shell pm disable-user --user 0 jp.kyocera.readout  # Readout
adb shell pm disable-user --user 0 jp.kyocera.batterycare  # Battery Care Mode
adb shell pm disable-user --user 0 jp.softbank.mb.bizbrowser  # BizBrowser
adb shell pm disable-user --user 0 jp.kyocera.browser.menu  # Browser
adb shell pm disable-user --user 0 jp.kyocera.vbookmark  # vBookmark
adb shell pm disable-user --user 0 jp.softbank.mb.passwordmanager  # Password Manager
# adb shell pm disable-user --user 0 jp.kyocera.camera  # Camera
adb shell pm disable-user --user 0 com.redbend.dmClient  # Software Update
adb shell pm disable-user --user 0 jp.softbank.mb.dmb  # Disaster Message Board
adb shell pm disable-user --user 0 jp.softbank.mb.datamigration  # Easy Data Transfer
adb shell pm disable-user --user 0 jp.softbank.mb.addressbookdelivery  # AddressBook Delivery
adb shell pm disable-user --user 0 jp.softbank.mb.addressbooksync.nfp  # Shared AddressBook
# adb shell pm disable-user --user 0 jp.kyocera.kc_soundrecorder  # Sound Recorder
adb shell pm disable-user --user 0 jp.kyocera.supportmdm  # Support MDM
adb shell pm disable-user --user 0 jp.kyocera.kc_fmradio  # FM Radio
adb shell pm disable-user --user 0 jp.kyocera.fpmail  # Mail
adb shell pm disable-user --user 0 jp.kyocera.charactercheck  # Character Check
adb shell pm disable-user --user 0 jp.co.bbss.android.sagiwall_softbank_nfp  # SagiWall Firewall
# adb shell pm disable-user --user 0 jp.co.softbank.wispr.nfp  # Wi-Fi Spot Settings
adb shell pm disable-user --user 0 com.nttdocomo.android.areamail  # Emergency Alert Service
adb shell pm disable-user --user 0 jp.co.omronsoft.android.decoemojimanager_docomo  # Deco Emoji Manager

# UNKNOWN (Proceed with caution)
echo "[3/3] Skipping UNKNOWN apps (low risk)..."
# adb shell pm disable-user --user 0 jp.softbank.tether.entitlementNFp  # Tethering Option
# adb shell pm disable-user --user 0 jp.kyocera.sugumoji  # Write Now
# adb shell pm disable-user --user 0 jp.kyocera.sub.kitting  # Sub Kitting
# adb shell pm disable-user --user 0 jp.kyocera.restrictdata  # Restrict Data
# adb shell pm disable-user --user 0 jp.kyocera.providers.settings  # Providers Settings
# adb shell pm disable-user --user 0 jp.kyocera.providers.memo  # Providers Memo
# adb shell pm disable-user --user 0 jp.kyocera.pairFunction  # Pair Function
# adb shell pm disable-user --user 0 jp.kyocera.outdoorwatcher  # Outdoor Watcher
# adb shell pm disable-user --user 0 jp.kyocera.oemsetupwizard  # OEM Setup Wizard
# adb shell pm disable-user --user 0 jp.kyocera.kitting  # Kitting
# adb shell pm disable-user --user 0 jp.kyocera.kerr  # KERR
# adb shell pm disable-user --user 0 jp.kyocera.kcsimapp  # KC SIM App
# adb shell pm disable-user --user 0 jp.kyocera.kcPhoneSettings  # KC Phone Settings
# adb shell pm disable-user --user 0 jp.kyocera.kcmushroom  # KcMushroom
# adb shell pm disable-user --user 0 jp.kyocera.kclightsservice  # KC Lights Service
# adb shell pm disable-user --user 0 jp.kyocera.fpemojiprovider  # FP Emoji Provider
# adb shell pm disable-user --user 0 jp.kyocera.exlogcollectservice  # Exlog Collect Service
# adb shell pm disable-user --user 0 jp.kyocera.devicecontrol  # Device Control
# adb shell pm disable-user --user 0 jp.kyocera.datamigration  # Data Migration
# adb shell pm disable-user --user 0 jp.kyocera.corp.manager  # Corp Manager
# adb shell pm disable-user --user 0 jp.kyocera.ClockWatcher  # Clock Watcher
# adb shell pm disable-user --user 0 jp.kyocera.akscd  # AKSCD
# adb shell pm disable-user --user 0 com.kyocera.telephony  # Kyocera Telephony
# adb shell pm disable-user --user 0 com.kyocera.calendar.localaccount  # Calendar Local Account
# adb shell pm disable-user --user 0 com.clomo.android.mdm.anm10  # CLOMO MDM
# adb shell pm disable-user --user 0 com.mcafee.vsm_android_dcm  # McAfee VSM
# adb shell pm disable-user --user 0 com.nextfp.android.util.sublcd  # SubLCD Util
# adb shell pm disable-user --user 0 com.nttdocomo.android.accountwipe  # Account Wipe
# adb shell pm disable-user --user 0 com.nttdocomo.android.afphome  # AFP Home
# adb shell pm disable-user --user 0 com.nttdocomo.android.messagedl  # Message DL
# adb shell pm disable-user --user 0 com.nttdocomo.android.sdcardbackup  # SD Card Backup
# adb shell pm disable-user --user 0 com.skyhookwireless.provider  # Skyhook Wireless
# adb shell pm disable-user --user 0 jp.co.nttdocomo.lcsappsub  # Docomo Location Info
# adb shell pm disable-user --user 0 jp.kyocera.docomo.initialsettings  # Initial Settings
# adb shell pm disable-user --user 0 jp.kyocera.functionrestriction  # Function Restriction
# adb shell pm disable-user --user 0 jp.kyocera.ky42c.manual  # KY-42C Manual
# adb shell pm disable-user --user 0 jp.kyocera.quicksettings  # Quick Settings
# adb shell pm disable-user --user 0 jp.kyocera.start.setupwizard  # Setup Wizard
# adb shell pm disable-user --user 0 jp.kyocera.sysupdater  # Sys Updater
# adb shell pm disable-user --user 0 jp.kyocera.wpsdk  # WP SDK

echo ""
echo "[GOOD] Debloat complete!"
echo ""
echo "WARNING: DO NOT disable the following apps - they are UNSAFE:"
echo "  • jp.co.omronsoft.iwnnime.ml (iWmm IME - Keyboard)"
echo "  • jp.kyocera.afphome (Standby Screen)"
echo "  • jp.kyocera.afp2ndlauncher (AFP 2nd Launcher)"
echo "  • com.kyocera.apnsetting (APN Settings)"
echo "  • jp.kyocera.settings.nfp (Settings App)"
echo ""
echo "To re-enable a disabled app, use:"
echo "  adb shell pm enable-user --user 0 <package_name>"
echo ""
