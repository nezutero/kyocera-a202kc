#!/usr/bin/env sh

echo "=== Kyocera DIGNO Keitai 4 Restore Script ==="
echo "This script re-enables all disabled bloatware apps."
echo ""

if ! adb devices | grep -q "device$"; then
    echo "ERROR: No ADB device found. Connect your phone and enable USB Debugging."
    exit 1
fi

echo "Connected device found. Starting restore..."
echo ""

echo "[1/3] Restoring RECOMMENDED apps..."
adb shell pm enable-user --user 0 com.mobisystems.office.kyocera
adb shell pm enable-user --user 0 jp.co.optim.orukysr00
adb shell pm enable-user --user 0 jp.softbank.mb.apud.manager
adb shell pm enable-user --user 0 jp.softbank.mb.apud.framework
adb shell pm enable-user --user 0 jp.softbank.mb.parentalcontrols
adb shell pm enable-user --user 0 jp.softbank.mb.ichinaviclt
adb shell pm enable-user --user 0 jp.softbank.mb.bizlock
adb shell pm enable-user --user 0 jp.co.nttdocomo.ichannel

echo "[2/3] Restoring SAFE apps..."
adb shell pm enable-user --user 0 com.nttdocomo.android.anshinnumbercheckdfp
adb shell pm enable-user --user 0 jp.kyocera.weather
adb shell pm enable-user --user 0 com.kyocera.calculator2
adb shell pm enable-user --user 0 jp.kyocera.customizekey
adb shell pm enable-user --user 0 jp.kyocera.lifesettings
adb shell pm enable-user --user 0 com.tobila.tobilaphone.mobile.feature
adb shell pm enable-user --user 0 com.android.email
adb shell pm enable-user --user 0 jp.kyocera.fakeIncoming
adb shell pm enable-user --user 0 jp.kyocera.wallpaperpicker
adb shell pm enable-user --user 0 jp.kyocera.memo
adb shell pm enable-user --user 0 jp.kyocera.readout
adb shell pm enable-user --user 0 jp.kyocera.batterycare
adb shell pm enable-user --user 0 jp.softbank.mb.bizbrowser
adb shell pm enable-user --user 0 jp.kyocera.browser.menu
adb shell pm enable-user --user 0 jp.kyocera.vbookmark
adb shell pm enable-user --user 0 jp.softbank.mb.passwordmanager
adb shell pm enable-user --user 0 jp.kyocera.camera
adb shell pm enable-user --user 0 com.redbend.dmClient
adb shell pm enable-user --user 0 jp.softbank.mb.dmb
adb shell pm enable-user --user 0 jp.softbank.mb.datamigration
adb shell pm enable-user --user 0 jp.softbank.mb.addressbookdelivery
adb shell pm enable-user --user 0 jp.softbank.mb.addressbooksync.nfp
adb shell pm enable-user --user 0 jp.kyocera.kc_soundrecorder
adb shell pm enable-user --user 0 jp.kyocera.supportmdm
adb shell pm enable-user --user 0 jp.kyocera.kc_fmradio
adb shell pm enable-user --user 0 jp.kyocera.fpmail
adb shell pm enable-user --user 0 jp.kyocera.charactercheck
adb shell pm enable-user --user 0 jp.co.bbss.android.sagiwall_softbank_nfp
adb shell pm enable-user --user 0 jp.co.softbank.wispr.nfp
adb shell pm enable-user --user 0 com.nttdocomo.android.areamail
adb shell pm enable-user --user 0 jp.co.omronsoft.android.decoemojimanager_docomo

echo "[3/3] Restoring UNKNOWN apps..."
adb shell pm enable-user --user 0 jp.softbank.tether.entitlementNFp
adb shell pm enable-user --user 0 jp.kyocera.sugumoji
adb shell pm enable-user --user 0 jp.kyocera.sub.kitting
adb shell pm enable-user --user 0 jp.kyocera.restrictdata
adb shell pm enable-user --user 0 jp.kyocera.providers.settings
adb shell pm enable-user --user 0 jp.kyocera.providers.memo
adb shell pm enable-user --user 0 jp.kyocera.pairFunction
adb shell pm enable-user --user 0 jp.kyocera.outdoorwatcher
adb shell pm enable-user --user 0 jp.kyocera.oemsetupwizard
adb shell pm enable-user --user 0 jp.kyocera.kitting
adb shell pm enable-user --user 0 jp.kyocera.kerr
adb shell pm enable-user --user 0 jp.kyocera.kcsimapp
adb shell pm enable-user --user 0 jp.kyocera.kcPhoneSettings
adb shell pm enable-user --user 0 jp.kyocera.kcmushroom
adb shell pm enable-user --user 0 jp.kyocera.kclightsservice
adb shell pm enable-user --user 0 jp.kyocera.fpemojiprovider
adb shell pm enable-user --user 0 jp.kyocera.exlogcollectservice
adb shell pm enable-user --user 0 jp.kyocera.devicecontrol
adb shell pm enable-user --user 0 jp.kyocera.datamigration
adb shell pm enable-user --user 0 jp.kyocera.corp.manager
adb shell pm enable-user --user 0 jp.kyocera.ClockWatcher
adb shell pm enable-user --user 0 jp.kyocera.akscd
adb shell pm enable-user --user 0 com.kyocera.telephony
adb shell pm enable-user --user 0 com.kyocera.calendar.localaccount
adb shell pm enable-user --user 0 com.clomo.android.mdm.anm10
adb shell pm enable-user --user 0 com.mcafee.vsm_android_dcm
adb shell pm enable-user --user 0 com.nextfp.android.util.sublcd
adb shell pm enable-user --user 0 com.nttdocomo.android.accountwipe
adb shell pm enable-user --user 0 com.nttdocomo.android.afphome
adb shell pm enable-user --user 0 com.nttdocomo.android.messagedl
adb shell pm enable-user --user 0 com.nttdocomo.android.sdcardbackup
adb shell pm enable-user --user 0 com.skyhookwireless.provider
adb shell pm enable-user --user 0 jp.co.nttdocomo.lcsappsub
adb shell pm enable-user --user 0 jp.kyocera.docomo.initialsettings
adb shell pm enable-user --user 0 jp.kyocera.functionrestriction
adb shell pm enable-user --user 0 jp.kyocera.ky42c.manual
adb shell pm enable-user --user 0 jp.kyocera.quicksettings
adb shell pm enable-user --user 0 jp.kyocera.start.setupwizard
adb shell pm enable-user --user 0 jp.kyocera.sysupdater
adb shell pm enable-user --user 0 jp.kyocera.wpsdk

echo ""
echo "[GOOD] Restore complete!"
echo ""
echo "All apps have been re-enabled and your phone should be back to normal."
echo "You may need to restart your phone for all changes to take effect."
echo ""
