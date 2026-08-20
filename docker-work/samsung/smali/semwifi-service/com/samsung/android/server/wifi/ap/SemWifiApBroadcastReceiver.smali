.class public Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;
.super Ljava/lang/Object;
.source "SemWifiApBroadcastReceiver.java"


# static fields
.field public static final ADVANCED_WIFI_SHARING_NOTI:Ljava/lang/String; = "com.samsung.intent.action.ADVANCED_WIFI_SHARING_NOTIFICATION"

.field public static final AP_STA_24GHZ_DISCONNECTED:Ljava/lang/String; = "com.samsung.actoin.24GHZ_AP_STA_DISCONNECTED"

.field public static final CHAMELEON_WIFIAP:Ljava/lang/String; = "com.samsung.sec.android.application.csc.chameleon_wifi"

.field private static final CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

.field private static final DATA_REACH:I = 0x1040f47

.field public static final DIALOG_HOTSPOT_24GHZ_AP_STA_DISCONNECT:I = 0x33

.field public static final DIALOG_HOTSPOT_NO_DATA:I = 0x1

.field public static final DIALOG_HOTSPOT_PROVISIONING_REQUEST:I = 0x6

.field public static final DIALOG_NAI_MISMATCH:I = 0x2

.field public static final DIALOG_TETHERING_DENIED:I = 0x3

.field public static final DIALOG_WIFI_AP_ENABLE_WARNING:I = 0x5

.field private static final DIALOG_WIFI_DISCONNECTED_HOTSPOT_USAGE_WARNING:I = 0x7

.field private static final DIALOG_WIFI_DISCONNECTED_RESTART_PROVISIONING:I = 0x35

.field public static final DIALOG_WIFI_ENABLE_WARNING:I = 0x4

.field public static final DIALOG_WIFI_P2P_ENABLE_WARNING:I = 0x32

.field static final INTENT_KEY_ICC_STATE:Ljava/lang/String; = "ss"

.field static final INTENT_VALUE_ICC_IMSI:Ljava/lang/String; = "IMSI"

.field private static final MAXAP_NOTI_ID:I = 0x1040f49

.field private static final PROVISION_HOTSPOT_ENABLE:Ljava/lang/String; = "provision_hotspot_enable"

.field private static final PROVISION_HOTSPOT_TRIGGER_ACTION:Ljava/lang/String; = "com.samsung.unifiedtp.PROVISION_HOTSPOT_TRIGGER_ACTION"

.field public static final SETTINGS_SOFT_RESET:Ljava/lang/String; = "com.samsung.intent.action.SETTINGS_SOFT_RESET"

.field private static final TAG:Ljava/lang/String; = "SemWifiApBroadcastReceiver"

.field public static final WIFIAP_MODEMNAI_MISSMATH:Ljava/lang/String; = "com.samsung.intent.action.MIP_ERROR"

.field public static final WIFIAP_PLUG_STATE_CHANGED:Ljava/lang/String; = "com.samsung.settings.wifi.PLUG_STATE_CHANGED"

.field public static final WIFIAP_PLUG_STATE_CHANGED_OPTION:Ljava/lang/String; = "wifiap_plug_state_changed_option"

.field public static final WIFIAP_TETHERING_DENIED:Ljava/lang/String; = "com.samsung.android.intent.action.TETHERING_DENIED"

.field public static final WIFIAP_TETHERING_FAILED:Ljava/lang/String; = "com.samsung.android.intent.action.TETHERING_FAILED"

.field public static final WIFIAP_WARNING_DIALOG:Ljava/lang/String; = "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

.field public static final WIFIAP_WARNING_DIALOG_TYPE:Ljava/lang/String; = "wifiap_warning_dialog_type"

.field static currentMccMnc:Ljava/lang/String; = null

.field private static isRegistered:Z = false

.field private static final lowBatteryThreshold:I = 0xf

.field private static mBaseTxBytes:J = 0x0L

.field private static mIsPlugged:Z = false

.field public static mWifiApStateWithLOHS:I


# instance fields
.field private DEFAULT_TIMEOUT_MOBILEAP:I

.field private bIsFirstCall:Z

.field private bUseMobileData:Z

.field private mAmountMobileRxBytes:J

.field private mAmountMobileTxBytes:J

.field private mAmountTimeOfMobileData:J

.field private mBaseRxBytes:J

.field private mContext:Landroid/content/Context;

.field private final mCscReceiver:Landroid/content/BroadcastReceiver;

.field private mDomRoamMaxUser:I

.field private final mFilter:Landroid/content/IntentFilter;

.field private mGsmMaxUser:I

.field private mIntRoamMaxUser:I

.field private mMaxApNotificationManager:Landroid/app/NotificationManager;

.field private mMaxClientNum:I

.field private mMaxUser:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mProvisionAppReceiver:Landroid/content/BroadcastReceiver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSoftResetReceiver:Landroid/content/BroadcastReceiver;

.field private mStartTimeOfMobileData:J

.field private mTelephonyManagerForHotspot:Landroid/telephony/TelephonyManager;

.field private mTelephonyPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mTempMobileRxBytes:J

.field private mTempMobileTxBytes:J

.field private mTetheredData:I

.field private final mTetheringProvisionApp:Ljava/lang/String;

.field private mTimeOfStartMobileAp:J

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private misTablet:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetDEFAULT_TIMEOUT_MOBILEAP(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->DEFAULT_TIMEOUT_MOBILEAP:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbIsFirstCall(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->bIsFirstCall:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbUseMobileData(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->bUseMobileData:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAmountMobileRxBytes(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mAmountMobileRxBytes:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmAmountMobileTxBytes(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mAmountMobileTxBytes:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmAmountTimeOfMobileData(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mAmountTimeOfMobileData:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmBaseRxBytes(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mBaseRxBytes:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxClientNum(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mMaxClientNum:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStartTimeOfMobileData(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mStartTimeOfMobileData:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmTelephonyManagerForHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)Landroid/telephony/TelephonyManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mTelephonyManagerForHotspot:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTelephonyPhoneStateListener(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)Landroid/telephony/PhoneStateListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mTelephonyPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTempMobileRxBytes(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mTempMobileRxBytes:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmTempMobileTxBytes(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mTempMobileTxBytes:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmTimeOfStartMobileAp(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mTimeOfStartMobileAp:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputbIsFirstCall(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->bIsFirstCall:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputbUseMobileData(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->bUseMobileData:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAmountMobileRxBytes(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mAmountMobileRxBytes:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAmountMobileTxBytes(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mAmountMobileTxBytes:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAmountTimeOfMobileData(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mAmountTimeOfMobileData:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBaseRxBytes(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mBaseRxBytes:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMaxClientNum(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mMaxClientNum:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStartTimeOfMobileData(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mStartTimeOfMobileData:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTelephonyManagerForHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;Landroid/telephony/TelephonyManager;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mTelephonyManagerForHotspot:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTelephonyPhoneStateListener(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;Landroid/telephony/PhoneStateListener;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mTelephonyPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTempMobileRxBytes(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mTempMobileRxBytes:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTempMobileTxBytes(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mTempMobileTxBytes:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTimeOfStartMobileAp(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mTimeOfStartMobileAp:J

    return-void
.end method

.method static bridge synthetic -$$Nest$mcallSecBigdataApi(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->callSecBigdataApi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearMaxApNotification(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->clearMaxApNotification()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mconvertBytesToMegaByte(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;J)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->convertBytesToMegaByte(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mconvertBytesToMegaByteForLogging(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;J)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->convertBytesToMegaByteForLogging(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mconvertMinute(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;J)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->convertMinute(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcreateMaxApNotification(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->createMaxApNotification()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misProvisioningNeeded(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;Landroid/content/Context;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misWifiSharingEnabled(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;Landroid/content/Context;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->isWifiSharingEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mresetParameterForHotspotLogging(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->resetParameterForHotspotLogging()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetChameleonConfig(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->setChameleonConfig(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowHotspotErrorDialog(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;Landroid/content/Context;ILandroid/content/Intent;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartWifiApSettings(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->startWifiApSettings(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetCONFIGOPBRANDINGFORMOBILEAP()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmBaseTxBytes()J
    .registers 2

    sget-wide v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mBaseTxBytes:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$sfputmBaseTxBytes(J)V
    .registers 2

    sput-wide p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mBaseTxBytes:J

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 88
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApCust;->getInstance()Lcom/samsung/android/wifi/SemWifiApCust;

    sget-object v0, Lcom/samsung/android/wifi/SemWifiApCust;->mMHSCustomer:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 107
    sput-wide v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mBaseTxBytes:J

    const-string v0, ""

    .line 128
    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->currentMccMnc:Ljava/lang/String;

    const/16 v0, 0xb

    .line 136
    sput v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mWifiApStateWithLOHS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
    .registers 6

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 77
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Setting_ConfigMobileHotspotProvisionApp"

    .line 78
    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mTetheringProvisionApp:Ljava/lang/String;

    .line 103
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    .line 104
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mMaxApNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    .line 105
    iput v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mMaxClientNum:I

    .line 115
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mTelephonyManagerForHotspot:Landroid/telephony/TelephonyManager;

    .line 116
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mTelephonyPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 117
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->bUseMobileData:Z

    .line 118
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->bIsFirstCall:Z

    .line 119
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->misTablet:Z

    .line 120
    iput v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mTetheredData:I

    .line 121
    sget v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->MAX_CLIENT:I

    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mMaxUser:I

    const/4 v0, 0x1

    .line 122
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mGsmMaxUser:I

    const/16 v2, 0xa

    .line 123
    iput v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mDomRoamMaxUser:I

    .line 124
    iput v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mIntRoamMaxUser:I

    .line 131
    iput v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->DEFAULT_TIMEOUT_MOBILEAP:I

    .line 316
    new-instance v2, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$1;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mProvisionAppReceiver:Landroid/content/BroadcastReceiver;

    .line 327
    new-instance v2, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$2;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mCscReceiver:Landroid/content/BroadcastReceiver;

    .line 336
    new-instance v2, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$3;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mSoftResetReceiver:Landroid/content/BroadcastReceiver;

    .line 365
    new-instance v2, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 140
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 141
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 142
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mFilter:Landroid/content/IntentFilter;

    const-string p2, "com.samsung.intent.action.MIP_ERROR"

    .line 143
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "com.samsung.android.intent.action.TETHERING_DENIED"

    .line 144
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "com.samsung.android.intent.action.TETHERING_FAILED"

    .line 145
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "com.samsung.actoin.24GHZ_AP_STA_DISCONNECTED"

    .line 146
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 148
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "com.nttdocomo.intent.action.SHOW_WPSDIALOG"

    .line 149
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "com.samsung.intent.action.ADVANCED_WIFI_SHARING_NOTIFICATION"

    .line 150
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.SIM_STATE_CHANGED"

    .line 151
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "com.samsung.android.net.wifi.WIFI_AP_STA_STATE_CHANGED"

    .line 152
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.BATTERY_CHANGED"

    .line 153
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "com.samsung.android.net.wifi.MAXAP_NOTI"

    .line 154
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 155
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "ro.build.characteristics"

    .line 159
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a8

    const-string p2, "tablet"

    .line 160
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a8

    move v1, v0

    :cond_a8
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->misTablet:Z

    const-string p0, "SemWifiApBroadcastReceiver"

    const-string p1, " SemWifiApBroadcastReceiver intialized"

    .line 161
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private callSecBigdataApi(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bigdata logging "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiApBroadcastReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    const-string v0, "sem_wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/wifi/SemWifiManager;

    .line 781
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/wifi/SemWifiManager;->reportMHSBigData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private clearMaxApNotification()V
    .registers 3

    .line 760
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mMaxApNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_10

    .line 761
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mMaxApNotificationManager:Landroid/app/NotificationManager;

    .line 762
    :cond_10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mMaxApNotificationManager:Landroid/app/NotificationManager;

    const v0, 0x1040f49

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private convertBytesToMegaByte(J)Ljava/lang/String;
    .registers 12

    const-wide/32 v0, 0x100000

    .line 800
    div-long/2addr p1, v0

    const/16 p0, 0x1f4

    int-to-long v0, p0

    cmp-long v0, p1, v0

    const-string v1, "MB"

    if-ltz v0, :cond_22

    .line 804
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "over"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_22
    long-to-double p1, p1

    int-to-double v2, p0

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v4, v2

    cmpl-double v0, p1, v4

    const-string v6, "~"

    if-ltz v0, :cond_46

    .line 806
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_46
    const-wide v7, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v7, v2

    cmpl-double p0, p1, v7

    if-ltz p0, :cond_66

    .line 808
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_66
    const-wide v4, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v4, v2

    cmpl-double p0, p1, v4

    if-ltz p0, :cond_86

    .line 810
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_86
    const-wide v7, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v7, v2

    cmpl-double p0, p1, v7

    if-ltz p0, :cond_a6

    .line 812
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a6
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v2

    cmpl-double p0, p1, v4

    if-ltz p0, :cond_c3

    .line 814
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c3
    const-wide v7, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v7, v2

    cmpl-double p0, p1, v7

    if-ltz p0, :cond_e3

    .line 816
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e3
    const-wide v4, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v4, v2

    cmpl-double p0, p1, v4

    if-ltz p0, :cond_103

    .line 818
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_103
    const-wide v7, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v7, v2

    cmpl-double p0, p1, v7

    if-ltz p0, :cond_123

    .line 820
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_123
    const-wide v4, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v2, v4

    cmpl-double p0, p1, v2

    if-ltz p0, :cond_143

    .line 822
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 823
    :cond_143
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "0~"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private convertBytesToMegaByteForLogging(J)Ljava/lang/String;
    .registers 5

    const-wide/32 v0, 0x100000

    .line 827
    div-long/2addr p1, v0

    .line 829
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private convertMinute(J)Ljava/lang/String;
    .registers 7

    const-wide/16 v0, 0x78

    cmp-long p0, p1, v0

    const-wide/16 v0, 0x3c

    if-ltz p0, :cond_1b

    .line 836
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "hour"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1b
    const-wide/16 v2, 0x64

    cmp-long p0, p1, v2

    if-ltz p0, :cond_24

    const-string p0, "100~120"

    return-object p0

    :cond_24
    const-wide/16 v2, 0x50

    cmp-long p0, p1, v2

    if-ltz p0, :cond_2d

    const-string p0, "80~100"

    return-object p0

    :cond_2d
    cmp-long p0, p1, v0

    if-ltz p0, :cond_34

    const-string p0, "60~80"

    return-object p0

    :cond_34
    const-wide/16 v0, 0x28

    cmp-long p0, p1, v0

    if-ltz p0, :cond_3d

    const-string p0, "40~60"

    return-object p0

    :cond_3d
    const-wide/16 v0, 0x14

    cmp-long p0, p1, v0

    if-ltz p0, :cond_46

    const-string p0, "20~40"

    return-object p0

    :cond_46
    const-string p0, "0~20"

    return-object p0
.end method

.method private createMaxApNotification()V
    .registers 13

    .line 731
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mMaxApNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_10

    .line 732
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mMaxApNotificationManager:Landroid/app/NotificationManager;

    :cond_10
    const v0, 0x108008a

    .line 734
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040f49

    .line 735
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x1040f48

    .line 736
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 739
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 740
    new-instance v6, Landroid/app/NotificationChannel;

    const/4 v7, 0x4

    const-string v8, "wifiap_maxclient_notification"

    invoke-direct {v6, v8, v3, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 741
    new-instance v7, Landroid/content/Intent;

    const-string v9, "com.samsung.android.net.wifi.MAXAP_NOTI"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 742
    iget-object v9, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/high16 v11, 0x2000000

    invoke-static {v9, v10, v7, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 744
    iget-object v9, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mMaxApNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v9, v6}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 745
    new-instance v6, Landroid/app/Notification$Builder;

    iget-object v9, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v6, v9, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 746
    invoke-virtual {v6, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 747
    invoke-virtual {v8, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 748
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 749
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 750
    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 751
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 752
    invoke-virtual {v3, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 753
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 754
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 756
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mMaxApNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private isProvisioningNeeded(Landroid/content/Context;)Z
    .registers 4

    .line 703
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mTetheringProvisionApp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 706
    :cond_a
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->isWifiSharingEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 707
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->isWifiConnected(Landroid/content/Context;)Z

    move-result p1

    const-string v0, "SemWifiApBroadcastReceiver"

    if-eqz p1, :cond_1e

    const-string p0, "Wifi is connected so skip provisioning for Wifi Sharing"

    .line 708
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1e
    const-string p1, "Wifi is not connected so dont skip provisioning for Wifi Sharing"

    .line 711
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_23
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mTetheringProvisionApp:Ljava/lang/String;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 715
    array-length p0, p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_30

    const/4 v1, 0x1

    :cond_30
    return v1
.end method

.method private isProvisioningRequiredAfterWifiDisconnect()Z
    .registers 3

    .line 936
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mTetheringProvisionApp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 937
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " provisioning app is not set in CSCfeature, operator:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemWifiApBroadcastReceiver"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 940
    :cond_22
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mTetheringProvisionApp:Ljava/lang/String;

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 941
    array-length p0, p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_2f

    const/4 v1, 0x1

    :cond_2f
    return v1
.end method

.method private isWifiConnected(Landroid/content/Context;)Z
    .registers 3

    const-string p0, "connectivity"

    .line 719
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 720
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_10

    return v0

    .line 723
    :cond_10
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-nez p0, :cond_17

    return v0

    :cond_17
    const/4 p1, 0x1

    .line 727
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    return p0
.end method

.method private isWifiSharingEnabled(Landroid/content/Context;)Z
    .registers 6

    const-string p0, "wifi_ap_wifi_sharing"

    const-string v0, "SemWifiApBroadcastReceiver"

    const/4 v1, 0x0

    .line 232
    :try_start_5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_16

    const-string p0, "Returning true"

    .line 233
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 235
    :cond_16
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_3b

    const-string p0, "Returning false"

    .line 236
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_5 .. :try_end_25} :catch_26

    return v1

    :catch_26
    move-exception p0

    .line 240
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in getting provider value"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    return v1
.end method

.method public static readSalesCode()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    :try_start_2
    const-string v1, "ro.csc.sales_code"

    .line 769
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 770
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "ril.sales_code"

    .line 771
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_14} :catch_14

    :catch_14
    :cond_14
    return-object v0
.end method

.method private resetParameterForHotspotLogging()V
    .registers 5

    const/4 v0, 0x0

    .line 785
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mTelephonyPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const-wide/16 v1, 0x0

    .line 786
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mAmountMobileTxBytes:J

    .line 787
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mAmountMobileRxBytes:J

    .line 790
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mAmountTimeOfMobileData:J

    .line 791
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mTempMobileTxBytes:J

    .line 792
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mTempMobileRxBytes:J

    const/4 v3, 0x0

    .line 793
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->bIsFirstCall:Z

    .line 794
    sput-wide v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mBaseTxBytes:J

    .line 795
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mBaseRxBytes:J

    .line 796
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mTelephonyManagerForHotspot:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method private setChameleonConfig(Landroid/content/Intent;)V
    .registers 7

    const/4 v0, 0x2

    .line 186
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mTetheredData:I

    const-string v0, "chameleon_wifi_tetheredData"

    .line 187
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chameleon_wifi_ssid"

    .line 191
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 192
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApConfigStore()Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    move-result-object v1

    const-string v2, "SemWifiApBroadcastReceiver"

    if-eqz p1, :cond_42

    .line 194
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onReceive] CHAMELEON Tethering.SSID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v3

    .line 196
    new-instance v4, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v4, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    .line 197
    invoke-virtual {v4, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 198
    invoke-virtual {v4}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v3

    .line 199
    invoke-virtual {v1, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->setApConfiguration(Landroid/net/wifi/SoftApConfiguration;)V

    :cond_42
    if-eqz v0, :cond_60

    .line 202
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mTetheredData:I

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onReceive] CHAMELEON mTetheredData : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mTetheredData:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    const-string v0, "1"

    .line 206
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mGsmMaxUser:I

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onReceive] mGsmMaxUser : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mGsmMaxUser:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "8"

    .line 210
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mDomRoamMaxUser:I

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onReceive] mDomRoamMaxUser : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mDomRoamMaxUser:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mIntRoamMaxUser:I

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onReceive] mIntRoamMaxUser : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mIntRoamMaxUser:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setValue] mTetheredData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mTetheredData:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxUser = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mMaxUser:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mGsmMaxUser = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mGsmMaxUser:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDomRoamMaxUser = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mDomRoamMaxUser:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIntRoamMaxUser = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mIntRoamMaxUser:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 222
    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mTetheredData:I

    const-string v2, "chameleon_tethereddata"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 223
    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mMaxUser:I

    const-string v2, "chameleon_maxuser"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 224
    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mGsmMaxUser:I

    const-string v2, "chameleon_gsmmaxuser"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 225
    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mDomRoamMaxUser:I

    const-string v2, "chameleon_domroammaxuser"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 226
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mIntRoamMaxUser:I

    const-string v1, "chameleon_introammaxuser"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p0, "chameleon_ssid"

    .line 227
    invoke-static {v0, p0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V
    .registers 14

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[showHotspotErrorDialog] DialogType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiApBroadcastReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    const-string v2, "sem_wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    const-string v2, "extra_type"

    const/4 v3, -0x1

    .line 256
    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "req_type"

    .line 257
    invoke-virtual {p3, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    if-eqz v0, :cond_f4

    .line 259
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    move-result v3

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/16 v8, 0xd

    const/16 v9, 0xc

    if-ne p2, v7, :cond_62

    if-nez p3, :cond_57

    const/4 v0, 0x1

    if-ne v4, v0, :cond_57

    .line 263
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportWifiSharing()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 264
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->isWifiSharingEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_57

    return-void

    :cond_57
    if-eq v3, v9, :cond_c3

    if-eq v3, v8, :cond_c3

    add-int p0, v4, p3

    if-eq p0, v6, :cond_c3

    if-eq v4, v7, :cond_c3

    return-void

    :cond_62
    const/4 v7, 0x5

    if-ne p2, v7, :cond_6a

    if-eq v3, v9, :cond_69

    if-ne v3, v8, :cond_c3

    :cond_69
    return-void

    :cond_6a
    const/16 v7, 0x32

    if-ne p2, v7, :cond_8c

    .line 274
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportWifiSharing()Z

    move-result v7

    if-eqz v7, :cond_8c

    .line 275
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->isWifiSharingEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_8c

    if-eq v3, v9, :cond_c3

    if-eq v3, v8, :cond_c3

    const-string p0, "Wifi AP is not enabled"

    .line 278
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8c
    const/16 p0, 0x33

    if-ne p2, p0, :cond_9a

    if-eq v3, v9, :cond_c3

    if-eq v3, v8, :cond_c3

    const-string p0, "Wifi AP is not enabled during DIALOG_HOTSPOT_24GHZ_AP_STA_DISCONNECT"

    .line 284
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9a
    const/4 p0, 0x0

    const/4 v7, 0x0

    if-ne p2, v6, :cond_a7

    const-string v3, "Tethering Denied"

    .line 288
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-virtual {v0, v7, p0}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    goto :goto_c3

    :cond_a7
    if-eq v3, v9, :cond_ac

    if-eq v3, v8, :cond_ac

    return-void

    .line 295
    :cond_ac
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Mobile AP is disabled by [showHotspotErrorDialog] : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {v0, v7, p0}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    :cond_c3
    :goto_c3
    const-string p0, "statusbar"

    .line 300
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/StatusBarManager;

    if-eqz p0, :cond_d0

    .line 302
    invoke-virtual {p0}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 304
    :cond_d0
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings"

    const-string v1, "com.samsung.android.settings.wifi.mobileap.WifiApWarning"

    .line 305
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 307
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    .line 308
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "wifiap_warning_dialog_type"

    .line 309
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 310
    invoke-virtual {p0, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 311
    invoke-virtual {p0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 312
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_f4
    return-void
.end method

.method private startWifiApSettings(Landroid/content/Context;)V
    .registers 3

    .line 247
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.settings.WIFI_AP_SETTINGS"

    .line 248
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10800000

    .line 249
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 250
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public checkProvisioningAfterWifiDisconnected()V
    .registers 5

    .line 917
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    const-string v1, "sem_wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    .line 918
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->isProvisioningRequiredAfterWifiDisconnect()Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 920
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportWifiSharing()Z

    move-result v1

    const/16 v2, 0xd

    const/4 v3, 0x1

    if-eqz v1, :cond_53

    .line 921
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getProvisionSuccess()I

    move-result v1

    if-eq v1, v3, :cond_53

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 922
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    move-result v1

    if-ne v1, v2, :cond_53

    .line 923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "check Start provisioning as wifi disconnected ,wifisharing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->isWifiSharingEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiApBroadcastReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    const/16 v1, 0x35

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->startWifiApWarning(Landroid/content/Context;I)V

    goto :goto_7f

    .line 925
    :cond_53
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportWifiSharing()Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 926
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getProvisionSuccess()I

    move-result v0

    if-ne v0, v3, :cond_7f

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 927
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    move-result v0

    if-ne v0, v2, :cond_7f

    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const-string v1, "VZW"

    .line 928
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 929
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->startWifiApWarning(Landroid/content/Context;I)V

    :cond_7f
    :goto_7f
    return-void
.end method

.method clearWifiScanListNotification(Landroid/content/Context;)V
    .registers 4

    .line 909
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_e

    const-string v0, "notification"

    .line 910
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    .line 912
    :cond_e
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 p1, 0x0

    const v0, 0x1040f35

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    const-string p0, "SemWifiApBroadcastReceiver"

    const-string p1, "clearWifiScanListNotification"

    .line 913
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method showWifiScanListNotification(Landroid/content/Context;Ljava/lang/String;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 852
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v9, 0x1040f35

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 858
    new-instance v11, Landroid/app/NotificationChannel;

    const-string v12, "wifi_sharing_channel"

    const/4 v1, 0x4

    invoke-direct {v11, v12, v10, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 860
    invoke-virtual {v11, v10}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    const/4 v13, 0x1

    .line 861
    invoke-virtual {v11, v13}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const/high16 v1, -0x10000

    .line 864
    invoke-virtual {v11, v1}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 865
    invoke-virtual {v11, v13}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 867
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v14, "com.android.settings"

    const-string v15, "com.android.settings.wifi.WifiSettings"

    .line 868
    invoke-virtual {v3, v14, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v6, 0x14000000

    .line 869
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 871
    sget-object v16, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v2, 0x0

    const/high16 v4, 0x2000000

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move v9, v6

    move-object/from16 v6, v16

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 872
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.intent.action.ADVANCED_WIFI_SHARING_NOTIFICATION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 873
    invoke-virtual {v2, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "NOTIFICATION_TASK"

    const/4 v4, 0x0

    .line 874
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v3, 0x2000000

    .line 876
    invoke-static {v7, v4, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 877
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 878
    invoke-virtual {v5, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 879
    invoke-virtual {v5, v14, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 880
    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 881
    invoke-static {v7, v4, v5, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 882
    new-instance v5, Landroid/app/Notification$Builder;

    invoke-direct {v5, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const-wide/16 v14, 0x0

    .line 883
    invoke-virtual {v5, v14, v15}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 884
    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 885
    invoke-virtual {v4, v13}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    const v6, 0x106001c

    .line 886
    invoke-virtual {v7, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 887
    invoke-virtual {v4, v13}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string v6, "status"

    .line 888
    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    const v6, 0x108008a

    .line 890
    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 891
    invoke-virtual {v4, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 892
    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 893
    invoke-virtual {v4, v12}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v9, 0x2

    .line 894
    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 895
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/high16 v10, 0x1040000

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v6, v9, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 896
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v9, 0x1040278

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v6, v4, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 897
    invoke-virtual {v3, v8}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v2

    const-wide/16 v3, 0x4e20

    .line 898
    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 899
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 900
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v1, :cond_f1

    const-string v1, "notification"

    .line 901
    invoke-virtual {v7, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    .line 903
    :cond_f1
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v11}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 904
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const v4, 0x1040f35

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    const-string v0, "SemWifiApBroadcastReceiver"

    const-string v1, "showWifiScanListNotification"

    .line 905
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startTracking()V
    .registers 14

    .line 165
    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->isRegistered:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return-void

    .line 166
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 167
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const-string v1, "SPRINT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 168
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mCscReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "com.samsung.sec.android.application.csc.chameleon_wifi"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v4, "android.permission.OVERRIDE_WIFI_CONFIG"

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 170
    :cond_2b
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mSoftResetReceiver:Landroid/content/BroadcastReceiver;

    new-instance v9, Landroid/content/IntentFilter;

    const-string v0, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-direct {v9, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v10, "com.sec.android.settings.permission.SOFT_RESET"

    invoke-virtual/range {v7 .. v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 171
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mProvisionAppReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.unifiedtp.PROVISION_HOTSPOT_TRIGGER_ACTION"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v3, "com.samsung.unifiedtp.permission.PROVISION_HOTSPOT_TRIGGER"

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 174
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const/16 v1, 0x4b0

    const-string v2, "CscFeature_Wifi_ConfigMobileApDefaultTimeOut"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->DEFAULT_TIMEOUT_MOBILEAP:I

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " SemWifiApBroadcastReceiver startTracking misTablet"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->misTablet:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemWifiApBroadcastReceiver"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method startWifiApWarning(Landroid/content/Context;I)V
    .registers 5

    const-string p0, "statusbar"

    .line 945
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/StatusBarManager;

    if-eqz p0, :cond_d

    .line 947
    invoke-virtual {p0}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 949
    :cond_d
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings"

    const-string v1, "com.samsung.android.settings.wifi.mobileap.WifiApWarning"

    .line 950
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 952
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    .line 953
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "wifiap_warning_dialog_type"

    .line 954
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 955
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public stopTracking()V
    .registers 3

    const/4 v0, 0x0

    .line 179
    sput-boolean v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->isRegistered:Z

    const-string v0, "SemWifiApBroadcastReceiver"

    const-string v1, " SemWifiApBroadcastReceiver stopTracking"

    .line 180
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 182
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mProvisionAppReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
