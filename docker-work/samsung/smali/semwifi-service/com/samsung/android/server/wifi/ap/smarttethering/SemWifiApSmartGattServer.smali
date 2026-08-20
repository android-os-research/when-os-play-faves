.class public Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;
.super Ljava/lang/Object;
.source "SemWifiApSmartGattServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$ClientVer;,
        Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;,
        Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final ADD_DELAY_CMD:I = 0xb

.field private static final BLE_PACKET_SIZE_LIMIT_FOR_DEVICE_NAME:I = 0x22

.field private static final COMMAND_ENABLE_HOTSPOT:I = 0x2

.field public static final CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

.field private static final DISPLAY_JOINED_NEW_FAMILYID_TOAST:I = 0x5

.field private static final DISPLAY_NO_UPDATE_FAMILYID_TOAST:I = 0x4

.field private static final DISPLAY_WIFI_PROFILE_SHARED_TOAST:I = 0xd

.field private static final MHSDBG:Z

.field private static final NOTIFY_CHECK_STATUS_HOTSPOT:I = 0xc

.field private static final NOTIFY_FAILED_PROVISIONING:I = 0xb

.field private static final SEND_NOTIFICATION:I = 0x8

.field private static final SMART_TETHERING_D2D_WIFIMAC:Ljava/lang/String; = "smart_tethering_d2d_Wifimac"

.field private static final SPF_SupportMobileApWPA3:Z = true

.field private static final START_HOTSPOT_ENABLED_TIMEOUT_WITHOUT_CLIENT:I = 0x9

.field private static final START_HOTSPOT_ENABLED_TIME_WITHOUT_CLIENT:I = 0xea60

.field private static final START_HOTSPOT_ENABLING_TIME:I = 0xea60

.field private static final START_HOTSPOT_ENABLING_TIMEOUT:I = 0x1

.field private static final START_RESTART_HOTSPOT_TO_CHANGE_CHANNEL:I = 0xa

.field private static final STORE_BONDED_ADDRESS:I = 0x6

.field private static final TAG:Ljava/lang/String; = "SemWifiApSmartGattServer"

.field private static final TRY_TO_GET_AES:I = 0xc

.field private static final TRY_TO_GET_AES_KEY_RETRY_TIMEOUT:I = 0x3a98

.field private static final WAIT_ACCEPT_INVITATION:I = 0x7

.field private static final WIFIAP_WARNING_CLASS:Ljava/lang/String; = "com.samsung.android.settings.wifi.mobileap.WifiApWarning"

.field private static final WIFIAP_WARNING_DIALOG:Ljava/lang/String; = "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

.field private static final WIFIAP_WARNING_DIALOG_TYPE:Ljava/lang/String; = "wifiap_warning_dialog_type"

.field private static final WIFIAP_WARNING_STOP_DIALOG:Ljava/lang/String; = "com.samsung.android.settings.wifi.mobileap.wifiapwarning.finish"

.field private static final mTetheringProvisionApp:Ljava/lang/String;

.field private static mWifiApSmartGattServerIntentFilter:Landroid/content/IntentFilter;


# instance fields
.field private connected_num_sta:I

.field private isAutoHotspotServerSet:Z

.field private isJDMDevice:Z

.field private isMHSEnabledSmartly:Z

.field private isMHSEnabledViaIntent:Z

.field private isNeededSecurityWpa2:Z

.field private isResetWifiSharingForDualBandSmartly:Z

.field private isWaitingForAcceptStatus:Z

.field private isWaitingForMHSStatus:Z

.field private isWifiDisableDueToHotspot:Z

.field private m5GChannelMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mAuthDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

.field private mBleWorkThread:Landroid/os/HandlerThread;

.field private mBluetoothIsOn:Z

.field private mBluetoothManager:Landroid/bluetooth/BluetoothManager;

.field private mBondingAddress:Ljava/lang/String;

.field private mChangeSecurity:Z

.field mClientConnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$ClientVer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFamilyID:Ljava/lang/String;

.field public mGattServer:Landroid/bluetooth/BluetoothGattServer;

.field private mGattServerCallback:Landroid/bluetooth/BluetoothGattServerCallback;

.field public mGattService:Landroid/bluetooth/BluetoothGattService;

.field private mGetBandFromClient:I

.field private mGetOWESecurityFromClient:I

.field private mGetSecurityFromClient:I

.field private mGetWifiProfileShare:I

.field private mGuid:Ljava/lang/String;

.field private mIsNotClientConnected:Z

.field private mLimitCount:I

.field private mLocalLog:Landroid/util/LocalLog;

.field private mPassword:Ljava/lang/String;

.field private mPenditIntent:Landroid/content/Intent;

.field private mProvisionApp:[Ljava/lang/String;

.field private mSSID:Ljava/lang/String;

.field mSemSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

.field private mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field mSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

.field private mTempSynchronized:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUserType:I

.field private mUsertype:I

.field private mVersion:I

.field private mWifiApSmartGattServerBroadcastReceiver:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;

.field private mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

.field private mWifiAwareManager:Landroid/net/wifi/aware/WifiAwareManager;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;


# direct methods
.method static bridge synthetic -$$Nest$fgetconnected_num_sta(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->connected_num_sta:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisAutoHotspotServerSet(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->isAutoHotspotServerSet:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisJDMDevice(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->isJDMDevice:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisMHSEnabledSmartly(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->isMHSEnabledSmartly:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisMHSEnabledViaIntent(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->isMHSEnabledViaIntent:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisNeededSecurityWpa2(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->isNeededSecurityWpa2:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisResetWifiSharingForDualBandSmartly(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->isResetWifiSharingForDualBandSmartly:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisWaitingForAcceptStatus(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->isWaitingForAcceptStatus:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisWaitingForMHSStatus(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->isWaitingForMHSStatus:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetm5GChannelMap(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->m5GChannelMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothIsOn(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mBluetoothIsOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBondingAddress(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mBondingAddress:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmChangeSecurity(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mChangeSecurity:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFamilyID(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mFamilyID:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGetBandFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGetBandFromClient:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmGetOWESecurityFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGetOWESecurityFromClient:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmGetSecurityFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGetSecurityFromClient:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmGetWifiProfileShare(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGetWifiProfileShare:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmGuid(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGuid:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsNotClientConnected(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mIsNotClientConnected:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLimitCount(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mLimitCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mLocalLog:Landroid/util/LocalLog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPassword(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mPassword:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPenditIntent(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/content/Intent;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mPenditIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSSID(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSSID:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemWifiManager(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/wifi/SemWifiManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserType(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mUserType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUsertype(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mUsertype:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVersion(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mVersion:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputconnected_num_sta(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->connected_num_sta:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisMHSEnabledSmartly(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->isMHSEnabledSmartly:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisMHSEnabledViaIntent(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->isMHSEnabledViaIntent:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisNeededSecurityWpa2(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->isNeededSecurityWpa2:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisResetWifiSharingForDualBandSmartly(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->isResetWifiSharingForDualBandSmartly:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisWaitingForAcceptStatus(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->isWaitingForAcceptStatus:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisWaitingForMHSStatus(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->isWaitingForMHSStatus:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBluetoothIsOn(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mBluetoothIsOn:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBondingAddress(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mBondingAddress:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmChangeSecurity(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mChangeSecurity:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFamilyID(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mFamilyID:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmGetBandFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGetBandFromClient:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmGetOWESecurityFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGetOWESecurityFromClient:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmGetSecurityFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGetSecurityFromClient:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmGetWifiProfileShare(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGetWifiProfileShare:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmGuid(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGuid:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsNotClientConnected(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mIsNotClientConnected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLimitCount(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mLimitCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPassword(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mPassword:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPenditIntent(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Landroid/content/Intent;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mPenditIntent:Landroid/content/Intent;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSSID(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSSID:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUserType(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mUserType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUsertype(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mUsertype:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVersion(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mVersion:I

    return-void
.end method

.method static bridge synthetic -$$Nest$misWifiConnected(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->isWifiConnected()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misWifihasInternet(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->isWifihasInternet()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mnotifyConnectedDevices(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Ljava/util/UUID;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->notifyConnectedDevices(Ljava/util/UUID;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpreProvisioning(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->preProvisioning()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetMHSDBG()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->MHSDBG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 93
    sget-boolean v0, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    sput-boolean v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->MHSDBG:Z

    .line 165
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApCust;->getInstance()Lcom/samsung/android/wifi/SemWifiApCust;

    sget-object v0, Lcom/samsung/android/wifi/SemWifiApCust;->mMHSCustomer:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    .line 166
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_ConfigMobileHotspotProvisionApp"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mTetheringProvisionApp:Ljava/lang/String;

    .line 202
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mWifiApSmartGattServerIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.net.wifi.WIFI_AP_STA_STATE_CHANGED"

    .line 203
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mWifiApSmartGattServerIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mWifiApSmartGattServerIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.bluetooth.adapter.action.BLE_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mWifiApSmartGattServerIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mWifiApSmartGattServerIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mWifiApSmartGattServerIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.server.wifi.softap.smarttethering.AcceptPopUp"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 210
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mWifiApSmartGattServerIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 211
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mWifiApSmartGattServerIntentFilter:Landroid/content/IntentFilter;

    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Landroid/util/LocalLog;)V
    .registers 7

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGattService:Landroid/bluetooth/BluetoothGattService;

    .line 103
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mAuthDevices:Ljava/util/HashMap;

    .line 104
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mClientConnections:Ljava/util/HashMap;

    .line 105
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mTempSynchronized:Ljava/util/Set;

    .line 110
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    .line 111
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mBleWorkThread:Landroid/os/HandlerThread;

    const/4 v1, 0x2

    .line 135
    iput v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mLimitCount:I

    const/4 v1, 0x0

    .line 138
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mBluetoothIsOn:Z

    .line 140
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->isMHSEnabledSmartly:Z

    .line 141
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->isResetWifiSharingForDualBandSmartly:Z

    .line 142
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->isMHSEnabledViaIntent:Z

    .line 143
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->isWifiDisableDueToHotspot:Z

    .line 152
    iput v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGetBandFromClient:I

    .line 153
    iput v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->connected_num_sta:I

    .line 154
    iput v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGetSecurityFromClient:I

    .line 155
    iput v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGetOWESecurityFromClient:I

    .line 156
    iput v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGetWifiProfileShare:I

    .line 157
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mChangeSecurity:Z

    .line 161
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSemSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 162
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mWifiAwareManager:Landroid/net/wifi/aware/WifiAwareManager;

    .line 164
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v0, 0x1

    .line 169
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->isJDMDevice:Z

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->m5GChannelMap:Ljava/util/HashMap;

    .line 1060
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGattServerCallback:Landroid/bluetooth/BluetoothGattServerCallback;

    .line 173
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mContext:Landroid/content/Context;

    .line 174
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 175
    iput-object p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 176
    new-instance p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;

    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mWifiApSmartGattServerBroadcastReceiver:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;

    .line 177
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mContext:Landroid/content/Context;

    const-string p2, "sem_wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 178
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isFactoryBinary()Z

    move-result p1

    if-nez p1, :cond_81

    .line 179
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mWifiApSmartGattServerBroadcastReceiver:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;

    sget-object p3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mWifiApSmartGattServerIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_88

    :cond_81
    const-string p1, "SemWifiApSmartGattServer"

    const-string p2, "This devices\'s binary is a factory binary"

    .line 181
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :goto_88
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSemSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 184
    iput-object p4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mLocalLog:Landroid/util/LocalLog;

    .line 185
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->m5GChannelMap:Ljava/util/HashMap;

    const/16 p2, 0x143c

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 p3, 0x24

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->m5GChannelMap:Ljava/util/HashMap;

    const/16 p2, 0x1450

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 p3, 0x28

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->m5GChannelMap:Ljava/util/HashMap;

    const/16 p2, 0x1464

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 p3, 0x2c

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->m5GChannelMap:Ljava/util/HashMap;

    const/16 p2, 0x1478

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 p3, 0x30

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->m5GChannelMap:Ljava/util/HashMap;

    const/16 p2, 0x148c

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 p3, 0x34

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->m5GChannelMap:Ljava/util/HashMap;

    const/16 p2, 0x14a0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 p3, 0x38

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->m5GChannelMap:Ljava/util/HashMap;

    const/16 p2, 0x14b4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 p3, 0x3c

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->m5GChannelMap:Ljava/util/HashMap;

    const/16 p2, 0x14c8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 p3, 0x40

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->m5GChannelMap:Ljava/util/HashMap;

    const/16 p2, 0x1658

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 p3, 0x90

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->m5GChannelMap:Ljava/util/HashMap;

    const/16 p2, 0x1671

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 p3, 0x95

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->m5GChannelMap:Ljava/util/HashMap;

    const/16 p2, 0x1685

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 p3, 0x99

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->m5GChannelMap:Ljava/util/HashMap;

    const/16 p2, 0x1699

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 p3, 0x9d

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->m5GChannelMap:Ljava/util/HashMap;

    const/16 p2, 0x16ad

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 p3, 0xa1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->m5GChannelMap:Ljava/util/HashMap;

    const/16 p1, 0x16c1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p2, 0xa5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initGattServer(Z)Z
    .registers 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 943
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGattService:Landroid/bluetooth/BluetoothGattService;

    const/4 v3, 0x0

    const-string v4, "SemWifiApSmartGattServer"

    const/4 v5, 0x1

    if-nez v2, :cond_d7

    const-string v2, "Creating autoHotspot GattService"

    .line 944
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mLocalLog:Landroid/util/LocalLog;

    const-string v6, "SemWifiApSmartGattServer:\tCreating autoHotspot GattService"

    invoke-virtual {v2, v6}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 946
    new-instance v2, Landroid/bluetooth/BluetoothGattService;

    sget-object v6, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->SERVICE_UUID:Ljava/util/UUID;

    invoke-direct {v2, v6, v3}, Landroid/bluetooth/BluetoothGattService;-><init>(Ljava/util/UUID;I)V

    iput-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGattService:Landroid/bluetooth/BluetoothGattService;

    .line 949
    new-instance v2, Landroid/bluetooth/BluetoothGattCharacteristic;

    sget-object v6, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_AUTH_STATUS:Ljava/util/UUID;

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v5}, Landroid/bluetooth/BluetoothGattCharacteristic;-><init>(Ljava/util/UUID;II)V

    .line 954
    new-instance v6, Landroid/bluetooth/BluetoothGattCharacteristic;

    sget-object v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_MHS_STATUS_UUID:Ljava/util/UUID;

    invoke-direct {v6, v8, v7, v5}, Landroid/bluetooth/BluetoothGattCharacteristic;-><init>(Ljava/util/UUID;II)V

    .line 959
    new-instance v8, Landroid/bluetooth/BluetoothGattCharacteristic;

    sget-object v9, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_MHS_BOND_STATUS:Ljava/util/UUID;

    invoke-direct {v8, v9, v7, v5}, Landroid/bluetooth/BluetoothGattCharacteristic;-><init>(Ljava/util/UUID;II)V

    .line 964
    new-instance v9, Landroid/bluetooth/BluetoothGattCharacteristic;

    sget-object v10, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_ENCRYPTED_AUTH_ID:Ljava/util/UUID;

    const/16 v11, 0xa

    const/16 v12, 0x11

    invoke-direct {v9, v10, v11, v12}, Landroid/bluetooth/BluetoothGattCharacteristic;-><init>(Ljava/util/UUID;II)V

    .line 970
    new-instance v10, Landroid/bluetooth/BluetoothGattCharacteristic;

    sget-object v13, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_MHS_VER_UPDATE:Ljava/util/UUID;

    invoke-direct {v10, v13, v11, v12}, Landroid/bluetooth/BluetoothGattCharacteristic;-><init>(Ljava/util/UUID;II)V

    .line 976
    new-instance v13, Landroid/bluetooth/BluetoothGattCharacteristic;

    sget-object v14, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_MHS_SIDE_GET_TIME:Ljava/util/UUID;

    invoke-direct {v13, v14, v7, v5}, Landroid/bluetooth/BluetoothGattCharacteristic;-><init>(Ljava/util/UUID;II)V

    .line 982
    new-instance v14, Landroid/bluetooth/BluetoothGattCharacteristic;

    sget-object v15, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_GET_WIFI_CONNECTION_DETAILS:Ljava/util/UUID;

    invoke-direct {v14, v15, v7, v5}, Landroid/bluetooth/BluetoothGattCharacteristic;-><init>(Ljava/util/UUID;II)V

    .line 988
    new-instance v15, Landroid/bluetooth/BluetoothGattCharacteristic;

    sget-object v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_GET_WIFI_CONNECTION_PASSWORD_DETAILS:Ljava/util/UUID;

    invoke-direct {v15, v3, v7, v5}, Landroid/bluetooth/BluetoothGattCharacteristic;-><init>(Ljava/util/UUID;II)V

    .line 994
    new-instance v3, Landroid/bluetooth/BluetoothGattCharacteristic;

    sget-object v11, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_NOTIFY_MHS_ENABLED:Ljava/util/UUID;

    const/16 v5, 0x1a

    invoke-direct {v3, v11, v5, v12}, Landroid/bluetooth/BluetoothGattCharacteristic;-><init>(Ljava/util/UUID;II)V

    .line 999
    iget-object v11, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGattService:Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v11, v2}, Landroid/bluetooth/BluetoothGattService;->addCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 1000
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGattService:Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v2, v6}, Landroid/bluetooth/BluetoothGattService;->addCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 1001
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGattService:Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v2, v9}, Landroid/bluetooth/BluetoothGattService;->addCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 1002
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGattService:Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v2, v8}, Landroid/bluetooth/BluetoothGattService;->addCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 1003
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGattService:Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGattService;->addCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 1004
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGattService:Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v2, v10}, Landroid/bluetooth/BluetoothGattService;->addCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 1005
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGattService:Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v2, v13}, Landroid/bluetooth/BluetoothGattService;->addCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 1006
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isWifiProfileShareAHSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 1007
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGattService:Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v2, v14}, Landroid/bluetooth/BluetoothGattService;->addCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 1008
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGattService:Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v2, v15}, Landroid/bluetooth/BluetoothGattService;->addCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 1014
    :cond_a4
    new-instance v2, Landroid/bluetooth/BluetoothGattCharacteristic;

    sget-object v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_CLIENT_MAC:Ljava/util/UUID;

    const/4 v6, 0x1

    invoke-direct {v2, v3, v7, v6}, Landroid/bluetooth/BluetoothGattCharacteristic;-><init>(Ljava/util/UUID;II)V

    .line 1019
    new-instance v3, Landroid/bluetooth/BluetoothGattCharacteristic;

    sget-object v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_D2D_CLIENT_BOND_STATUS:Ljava/util/UUID;

    invoke-direct {v3, v8, v7, v6}, Landroid/bluetooth/BluetoothGattCharacteristic;-><init>(Ljava/util/UUID;II)V

    .line 1025
    new-instance v6, Landroid/bluetooth/BluetoothGattCharacteristic;

    sget-object v7, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_FAMILY_ID:Ljava/util/UUID;

    const/16 v8, 0xa

    invoke-direct {v6, v7, v8, v12}, Landroid/bluetooth/BluetoothGattCharacteristic;-><init>(Ljava/util/UUID;II)V

    .line 1031
    new-instance v7, Landroid/bluetooth/BluetoothGattCharacteristic;

    sget-object v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_NOTIFY_ACCEPT_INVITATION:Ljava/util/UUID;

    invoke-direct {v7, v8, v5, v12}, Landroid/bluetooth/BluetoothGattCharacteristic;-><init>(Ljava/util/UUID;II)V

    .line 1035
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGattService:Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v5, v2}, Landroid/bluetooth/BluetoothGattService;->addCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 1036
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGattService:Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v2, v6}, Landroid/bluetooth/BluetoothGattService;->addCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 1037
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGattService:Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGattService;->addCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 1038
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGattService:Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v2, v7}, Landroid/bluetooth/BluetoothGattService;->addCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 1040
    :cond_d7
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    if-eqz v2, :cond_120

    .line 1041
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGattService:Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGattServer;->addService(Landroid/bluetooth/BluetoothGattService;)Z

    move-result v2

    if-eqz v2, :cond_113

    if-eqz v1, :cond_e8

    const/4 v3, 0x1

    .line 1044
    iput-boolean v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->isAutoHotspotServerSet:Z

    .line 1046
    :cond_e8
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mLocalLog:Landroid/util/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SemWifiApSmartGattServer:\tGattServer Added Custom Server to GattServer hook : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added Custom Server to GattServer hook : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11f

    .line 1049
    :cond_113
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mLocalLog:Landroid/util/LocalLog;

    const-string v1, "SemWifiApSmartGattServer:\t failed to add GattServer Custom Server to GattServer"

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    const-string v0, "failed to add Custom Server to GattServer"

    .line 1050
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_11f
    return v2

    .line 1054
    :cond_120
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mLocalLog:Landroid/util/LocalLog;

    const-string v1, "SemWifiApSmartGattServer:\tmGattServer is null in initGattServer"

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    const-string v0, "GattServer is null in initGattServer"

    .line 1055
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private isNanEnabled()Z
    .registers 3

    .line 1877
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi.aware"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1878
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mContext:Landroid/content/Context;

    const-string v1, "wifiaware"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mWifiAwareManager:Landroid/net/wifi/aware/WifiAwareManager;

    .line 1879
    :cond_1a
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mWifiAwareManager:Landroid/net/wifi/aware/WifiAwareManager;

    const/4 v1, 0x0

    if-nez v0, :cond_20

    return v1

    .line 1881
    :cond_20
    invoke-virtual {v0}, Landroid/net/wifi/aware/WifiAwareManager;->isDeviceAttached()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mWifiAwareManager:Landroid/net/wifi/aware/WifiAwareManager;

    invoke-virtual {p0}, Landroid/net/wifi/aware/WifiAwareManager;->isPreEnabled()Z

    move-result p0

    if-nez p0, :cond_2f

    const/4 v1, 0x1

    :cond_2f
    return v1
.end method

.method private isProvisioningCheck()Z
    .registers 2

    const-string p0, "vendor.wifiap.provisioning.disable"

    .line 1870
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x0

    return p0

    :cond_10
    const/4 p0, 0x1

    return p0
.end method

.method private isSmartViewEnabled()Z
    .registers 5

    .line 1897
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 1898
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v0

    .line 1899
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSemSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isP2pConnected()Z

    move-result p0

    .line 1900
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSmartViewEnabled:p2pstatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemWifiApSmartGattServer"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_42

    .line 1901
    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_42

    .line 1902
    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayStatus;->getConnectedState()I

    move-result v0

    if-nez v0, :cond_42

    if-eqz p0, :cond_42

    const-string p0, "isSmartViewEnabled:true"

    .line 1903
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_42
    const-string p0, "isSmartViewEnabled:false"

    .line 1906
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private isWifiConnected()Z
    .registers 2

    .line 1995
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_16

    const/4 v0, 0x1

    .line 1997
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    .line 1998
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method private isWifihasInternet()Z
    .registers 8

    .line 2005
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2007
    :try_start_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 2008
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_59

    const-string v3, "SemWifiApSmartGattServer"

    const/4 v4, 0x0

    if-nez v2, :cond_1d

    :try_start_17
    const-string p0, "isWifihasInternet,activeNetwork is null"

    .line 2010
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    .line 2013
    :cond_1d
    invoke-virtual {p0, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-eqz p0, :cond_50

    const/4 v2, 0x1

    .line 2015
    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v5

    const/16 v6, 0xc

    .line 2016
    invoke-virtual {p0, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz v5, :cond_33

    if-eqz p0, :cond_33

    move v4, v2

    .line 2018
    :cond_33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isWifihasInternet,NetworkCapabilities, isWifi:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",internet:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    :cond_50
    const-string p0, "isWifihasInternet,NetworkCapabilities is null"

    .line 2020
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catchall {:try_start_17 .. :try_end_55} :catchall_59

    .line 2024
    :goto_55
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_59
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2025
    throw p0
.end method

.method private isWirelessDexEnabled()Z
    .registers 4

    .line 1885
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mContext:Landroid/content/Context;

    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 1886
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object p0

    const-string v0, "SemWifiApSmartGattServer"

    if-eqz p0, :cond_26

    .line 1887
    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_26

    .line 1888
    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplayStatus;->getConnectedState()I

    move-result p0

    if-ne p0, v2, :cond_26

    const-string p0, "isWirelessDexEnabled:true"

    .line 1889
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_26
    const-string p0, "isWirelessDexEnabled:false"

    .line 1892
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private notifyConnectedDevices(Ljava/util/UUID;I)V
    .registers 12

    .line 1823
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mAuthDevices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_87

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1824
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    if-eqz v2, :cond_a

    sget-object v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGattServer;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 1825
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    sget-object v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->SERVICE_UUID:Ljava/util/UUID;

    .line 1826
    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGattServer;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    .line 1827
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [B

    const/4 v5, 0x1

    const/16 v6, 0xb

    const/4 v7, 0x0

    if-ne p2, v6, :cond_41

    aput-byte v6, v4, v7

    aput-byte v6, v4, v5

    goto :goto_5a

    :cond_41
    const/16 v6, 0xc

    if-ne p2, v6, :cond_4a

    aput-byte v6, v4, v7

    aput-byte v6, v4, v5

    goto :goto_5a

    :cond_4a
    const/16 v6, 0xa

    .line 1836
    invoke-virtual {v3, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 1837
    invoke-virtual {v3, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v4, v5

    .line 1839
    :goto_5a
    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    const-string v3, "SemWifiApSmartGattServer"

    const-string v4, "notifyConnectedDevices"

    .line 1840
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mLocalLog:Landroid/util/LocalLog;

    const-string v5, "SemWifiApSmartGattServer:\tnotifyConnectedDevices"

    invoke-virtual {v4, v5}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1842
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    if-eqz v4, :cond_81

    .line 1844
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v3, v1, v2, v7}, Landroid/bluetooth/BluetoothGattServer;->notifyCharacteristicChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    goto :goto_a

    :cond_81
    const-string v1, "BluetoothAdapter is null"

    .line 1847
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_87
    return-void
.end method

.method private preProvisioning()Z
    .registers 8

    .line 1914
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "SemWifiApSmartGattServer"

    if-eqz v0, :cond_25

    .line 1915
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSessionDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->isNeededToShowWifiApDatalimitReachedDialog()Z

    move-result v0

    if-eqz v0, :cond_25

    const-string p0, " Global limit is reached"

    .line 1916
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1920
    :cond_25
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Wifi_EnableWarningPopup4DataBatteryUsage"

    .line 1921
    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    const-string p0, " Low battery: failed"

    .line 1922
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1925
    :cond_37
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->isSmartViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_4a

    const-string v0, " SMARTVIEW_enabled: failed"

    .line 1926
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mLocalLog:Landroid/util/LocalLog;

    const-string v0, "SemWifiApSmartGattServer:\tSMARTVIEW_enabled: failed"

    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return v1

    .line 1930
    :cond_4a
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSemSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_5f

    const-string v0, " isP2pConnected: failed"

    .line 1931
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mLocalLog:Landroid/util/LocalLog;

    const-string v0, "SemWifiApSmartGattServer:\tisP2pConnected: failed"

    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return v1

    .line 1935
    :cond_5f
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->isNanEnabled()Z

    move-result v0

    if-eqz v0, :cond_72

    const-string v0, " isNanEnabled: failed"

    .line 1936
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mLocalLog:Landroid/util/LocalLog;

    const-string v0, "SemWifiApSmartGattServer:\tisNanEnabled: failed"

    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return v1

    .line 1940
    :cond_72
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->isWirelessDexEnabled()Z

    move-result v0

    if-eqz v0, :cond_85

    const-string v0, " WirelessDex: failed"

    .line 1941
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mLocalLog:Landroid/util/LocalLog;

    const-string v0, "SemWifiApSmartGattServer:\t WirelessDex: failed"

    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return v1

    .line 1945
    :cond_85
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->isProvisioningNeeded()Z

    move-result v0

    if-eqz v0, :cond_98

    const-string v0, " ProvisioningNeeded "

    .line 1946
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mLocalLog:Landroid/util/LocalLog;

    const-string v0, "SemWifiApSmartGattServer:\tProvisioningNeeded "

    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return v1

    .line 1950
    :cond_98
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiSharingSupported()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_cc

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiSharingLiteSupported()Z

    move-result v0

    if-nez v0, :cond_cc

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiSharingEnabled()Z

    move-result v0

    if-eqz v0, :cond_cc

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mContext:Landroid/content/Context;

    .line 1951
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "wifi_ap_first_time_wifi_sharing_dialog"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_cc

    const-string v0, " show wifisharing fist popup"

    .line 1952
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mLocalLog:Landroid/util/LocalLog;

    const-string v0, "SemWifiApSmartGattServer:\tshow wifisharing fist popup"

    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return v1

    .line 1956
    :cond_cc
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1957
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v4

    .line 1958
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 1959
    sget-object v5, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const-string v6, "VZW"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_109

    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 1960
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    move-result v5

    const/16 v6, 0xb

    if-ne v5, v6, :cond_109

    if-eqz v4, :cond_109

    const-string v4, "us"

    .line 1961
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_109

    const-string v0, "vzw roaming popup"

    .line 1962
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mLocalLog:Landroid/util/LocalLog;

    const-string v0, "SemWifiApSmartGattServer:\tvzw roaming popup"

    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return v1

    :cond_109
    return v3
.end method


# virtual methods
.method public factoryReset()V
    .registers 10

    const-string v0, "SemWifiApSmartGattServer"

    const-string v1, "network reset settings "

    .line 1971
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1974
    :try_start_b
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mContext:Landroid/content/Context;

    const-string v3, "smart_tethering_d2d_Wifimac"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1975
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    if-eqz v2, :cond_21

    .line 1976
    invoke-virtual {v2, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->putD2DFamilyID(Ljava/lang/String;)V

    .line 1977
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    const-wide/16 v5, -0x1

    invoke-virtual {v2, v5, v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->putHashbasedonD2DFamilyid(J)V

    .line 1979
    :cond_21
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.samsung.android.server.wifi.softap.smarttethering.d2dfamilyid"

    .line 1980
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1981
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1982
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->getInstance()Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;

    move-result-object v2

    .line 1983
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1984
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "MM-dd HH:mm:ss.SSS"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v6, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " reset NetWork reset\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1985
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "smartApWhiteList_migration_q_os_to_r"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1986
    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->resetWhitelist()V

    .line 1987
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "bonded_device_mhsside"

    invoke-static {p0, v2, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_7f
    .catchall {:try_start_b .. :try_end_7f} :catchall_83

    .line 1989
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_83
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1990
    throw p0
.end method

.method public getIsAutoHotspotServerSet()Z
    .registers 1

    .line 222
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->isAutoHotspotServerSet:Z

    return p0
.end method

.method public handleBootCompleted()V
    .registers 3

    .line 215
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SemWifiApSmartGattServerHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mBleWorkThread:Landroid/os/HandlerThread;

    .line 216
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 217
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mBleWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    .line 218
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "bonded_device_mhsside"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public isMHSEnabledSmart()Z
    .registers 1

    .line 900
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->isMHSEnabledSmartly:Z

    return p0
.end method

.method isProvisioningNeeded()Z
    .registers 5

    .line 1854
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->isProvisioningCheck()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1855
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10700f5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mProvisionApp:[Ljava/lang/String;

    .line 1856
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const-string v2, "ATT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x2

    if-nez v2, :cond_3a

    const-string v2, "VZW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "TMO"

    .line 1857
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "NEWCO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    :cond_3a
    const-string v0, "net.tethering.noprovisioning"

    .line 1858
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_59

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mProvisionApp:[Ljava/lang/String;

    if-eqz v0, :cond_59

    array-length v0, v0

    if-eq v0, v3, :cond_4a

    goto :goto_59

    .line 1863
    :cond_4a
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mTetheringProvisionApp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_53

    return v1

    .line 1866
    :cond_53
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mProvisionApp:[Ljava/lang/String;

    array-length p0, p0

    if-ne p0, v3, :cond_59

    const/4 v1, 0x1

    :cond_59
    :goto_59
    return v1
.end method

.method public notifyFromSettings(I)V
    .registers 3

    .line 1813
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->isAutoHotspotServerSet:Z

    if-eqz v0, :cond_17

    const/16 v0, 0xb

    if-ne p1, v0, :cond_e

    .line 1815
    sget-object p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_NOTIFY_MHS_ENABLED:Ljava/util/UUID;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->notifyConnectedDevices(Ljava/util/UUID;I)V

    goto :goto_17

    :cond_e
    const/16 v0, 0xc

    if-ne p1, v0, :cond_17

    .line 1817
    sget-object p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_NOTIFY_MHS_ENABLED:Ljava/util/UUID;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->notifyConnectedDevices(Ljava/util/UUID;I)V

    :cond_17
    :goto_17
    return-void
.end method

.method public removeGattServer()V
    .registers 6

    .line 924
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mTempSynchronized:Ljava/util/Set;

    monitor-enter v0

    :try_start_3
    const-string v1, "SemWifiApSmartGattServer"

    const-string v2, "trying to close mGattServer and remove mGattService"

    .line 925
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mLocalLog:Landroid/util/LocalLog;

    const-string v2, "SemWifiApSmartGattServer:\ttrying to close mGattServer and remove mGattService"

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 927
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    if-eqz v1, :cond_62

    .line 928
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGattService:Landroid/bluetooth/BluetoothGattService;

    if-eqz v2, :cond_4c

    .line 929
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattServer;->removeService(Landroid/bluetooth/BluetoothGattService;)Z

    move-result v1

    const/4 v2, 0x0

    .line 930
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->isAutoHotspotServerSet:Z

    const-string v2, "SemWifiApSmartGattServer"

    .line 931
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove mGattService:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mLocalLog:Landroid/util/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SemWifiApSmartGattServer:\tmGattService removed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 934
    :cond_4c
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattServer;->close()V

    const-string v1, "SemWifiApSmartGattServer"

    const-string v2, "close mGattServer:"

    .line 935
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mLocalLog:Landroid/util/LocalLog;

    const-string v2, "SemWifiApSmartGattServer:\tmGattServer closed:"

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 937
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    .line 939
    :cond_62
    monitor-exit v0

    return-void

    :catchall_64
    move-exception p0

    monitor-exit v0
    :try_end_66
    .catchall {:try_start_3 .. :try_end_66} :catchall_64

    throw p0
.end method

.method public setGattServer(Z)Z
    .registers 7

    .line 904
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mTempSynchronized:Ljava/util/Set;

    monitor-enter v0

    .line 905
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    if-nez v1, :cond_6a

    const-string v1, "SemWifiApSmartGattServer"

    const-string v2, "mGattServer is null"

    .line 906
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothManager;

    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 908
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGattServerCallback:Landroid/bluetooth/BluetoothGattServerCallback;

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothManager;->openGattServer(Landroid/content/Context;Landroid/bluetooth/BluetoothGattServerCallback;I)Landroid/bluetooth/BluetoothGattServer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    if-eqz v1, :cond_59

    const-string v1, "SemWifiApSmartGattServer"

    .line 910
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calling initGattServer hook : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mLocalLog:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SemWifiApSmartGattServer:\tcalling initGattServer hook : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 912
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->initGattServer(Z)Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_59
    const-string p1, "SemWifiApSmartGattServer"

    const-string v1, "failed to set GattServer in  initGattServer"

    .line 914
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mLocalLog:Landroid/util/LocalLog;

    const-string p1, "SemWifiApSmartGattServer:\tfailed to set GattServer in  initGattServer"

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 916
    monitor-exit v0

    return p0

    :cond_6a
    const/4 p0, 0x1

    .line 919
    monitor-exit v0

    return p0

    :catchall_6d
    move-exception p0

    .line 920
    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_3 .. :try_end_6f} :catchall_6d

    throw p0
.end method
