.class public Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;
.super Ljava/lang/Object;
.source "SemWifiApSmartGattClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;,
        Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;,
        Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;,
        Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;
    }
.end annotation


# static fields
.field private static final ACTION_LOGOUT_ACCOUNTS_COMPLETE:Ljava/lang/String; = "com.samsung.account.SAMSUNGACCOUNT_SIGNOUT_COMPLETED"

.field private static final CONFIG_OP_BRANDING:Ljava/lang/String;

.field private static final CONNECTION_DELAY_SEC:I = 0x1388

.field private static final CONNECT_WIFI_PROFILE_SHARE:I = 0x1b

.field private static final DISCONNECT_GATT:I = 0xc

.field private static final DISCONNECT_HOTSPOT:I = 0xe

.field private static final DISPLAY_CHECK_HOPSPOT_STATUS:I = 0x1d

.field private static final DISPLAY_FAILED_HOTSPOT_PROVISIONG:I = 0x1c

.field private static final GATT_CONNECTION_TIMEOUT:I = 0xafc8

.field private static final GATT_TRANSACTION_TIMEOUT:I = 0xea60

.field private static final GENERATE_CONNECT_WIFI:I = 0xb

.field private static final LAUNCH_WIFI_PROFILE_SHARE:I = 0x1a

.field private static final MHSDBG:Z

.field private static final PARTIAL_SCAN_FAILURE:I = 0x15

.field private static final RETRY_READ_BOND_STATUS:I = 0x1e

.field private static final SERVICE_DISCOVERY_TIMEOUT:I = 0x2710

.field private static final START_FULL_SCAN:I = 0x17

.field private static final START_PARTIAL_SCAN:I = 0x14

.field private static final STOP_PARTIAL_SCAN:I = 0x16

.field private static final ST_AUTH_FAILED:I = -0x3

.field private static final ST_BONDING_FAILURE:I = -0xa

.field private static final ST_BONDING_GOINGON:I = -0x5

.field private static final ST_BOND_FAILED:I = -0x2

.field private static final ST_CLIENT_NOT_SUPPORT_OWE:I = -0xf

.field private static final ST_CLIENT_NOT_SUPPORT_WPA3:I = -0xe

.field private static final ST_CONNECTION_ALREADY_EXIST:I = -0x4

.field private static final ST_DEVICE_NOT_FOUND:I = -0x1

.field private static final ST_GATT_CONNECTING:I = 0x1

.field private static final ST_GATT_FAILURE:I = -0x7

.field private static final ST_MHS_ENABLING_FAILURE:I = -0x8

.field private static final ST_MHS_GATT_CLIENT_TIMEOUT:I = -0xc

.field private static final ST_MHS_GATT_SERVICE_NOT_FOUND:I = -0xd

.field private static final ST_MHS_USERNAME_FAILED:I = -0x9

.field private static final ST_MHS_WIFI_CONNECTION_TIMEOUT:I = -0xb

.field private static final ST_WIFI_CONNECTED:I = 0x3

.field private static final ST_WIFI_CONNECTING:I = 0x2

.field private static final ST_WIFI_DISCONNECTED:I = 0x0

.field private static TAG:Ljava/lang/String; = "SemWifiApSmartGattClient"

.field private static final TRY_TO_GET_AES:I = 0x18

.field private static final TRY_TO_RECONNECT_AUTOHOTSPOT:I = 0x19

.field private static final UPDATE_CONNECTION_FAILURES:I = 0x12

.field private static final UPDATE_CONNECTION_FAILURES_TIMER:I = 0x1388

.field private static final WAIT_FOR_MTU_CALLBACK:I = 0x13

.field private static final WIFIAP_WARNING_CLASS:Ljava/lang/String; = "com.samsung.android.settings.wifi.mobileap.WifiApWarning"

.field private static final WIFIAP_WARNING_DIALOG:Ljava/lang/String; = "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

.field private static final WIFIAP_WARNING_DIALOG_TYPE:Ljava/lang/String; = "wifiap_warning_dialog_type"

.field private static final WIFIAP_WARNING_STOP_DIALOG:Ljava/lang/String; = "com.samsung.android.settings.wifi.mobileap.wifiapwarning.finish"

.field private static mWifiApSmartGattClientIntentFilter:Landroid/content/IntentFilter;


# instance fields
.field private MHS_CONNECTION_TIMEOUT:I

.field private isBondingGoingon:Z

.field private isClientAcceptedWifiProfileSharing:Z

.field private isWifiProfileShareEnabled:Z

.field private mAAHFirstTimeConnectionDialog:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAESKey:Ljava/lang/String;

.field private mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

.field private mBleWorkThread:Landroid/os/HandlerThread;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBluetoothGattService:Landroid/bluetooth/BluetoothGattService;

.field private mBluetoothIsOn:Z

.field private mChacteristicRetryCount:I

.field private mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

.field private final mContext:Landroid/content/Context;

.field private mDelayStartFrom:J

.field mFailedBLEConnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private mGotMHSEnabledNotificationEarlier:Z

.field private mHotspotVersion:I

.field private mIsRetryGattConnect:Z

.field private mLimitCount:I

.field private final mLocalLog:Landroid/util/LocalLog;

.field private mMhsFreq:I

.field private mNeedRetry:Z

.field private mNl80211Manager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

.field private mPartialScanListener:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;

.field private mPassword:Ljava/lang/String;

.field private mPendingDeviceAddress:Ljava/lang/String;

.field private mReGetAes:Z

.field private mSSID:Ljava/lang/String;

.field private mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private mSmartAp_BLE_MAC:Ljava/lang/String;

.field private mSmartAp_WiFi_MAC:Ljava/lang/String;

.field mSmartMHSList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeMismatchOccured:Z

.field private mUserName:Ljava/lang/String;

.field private mUserType:I

.field private mWPA3Mode:I

.field private mWifiApSmartClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

.field private mWifiApSmartGattClientReceiver:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;

.field private final mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private mWifiScanner:Landroid/net/wifi/WifiScanner;

.field private mWorkSource:Landroid/os/WorkSource;

.field private mhideSSID:I

.field private mhs_read_auth_status_retry:I

.field private mhs_read_status_retry:I

.field private mhs_read_wifi_share_retry:I

.field private mhs_write_bluetooth_gatt_characteristic_status_retry:I

.field private mversion:I

.field private mwaitingToConnect:Z

.field private requestedToEnableMHS:Z

.field private supportBand:I

.field private supportSecurity:I

.field private supportedOWESecurity:I

.field private tWifiApSmartCallback:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;

.field private tryingToRetry:I


# direct methods
.method static bridge synthetic -$$Nest$fgetMHS_CONNECTION_TIMEOUT(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->MHS_CONNECTION_TIMEOUT:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisBondingGoingon(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->isBondingGoingon:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisClientAcceptedWifiProfileSharing(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->isClientAcceptedWifiProfileSharing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisWifiProfileShareEnabled(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->isWifiProfileShareEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAESKey(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mAESKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothAdapter(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/bluetooth/BluetoothAdapter;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothDevice(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/bluetooth/BluetoothDevice;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothGattService(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/bluetooth/BluetoothGattService;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBluetoothGattService:Landroid/bluetooth/BluetoothGattService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothIsOn(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBluetoothIsOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmChacteristicRetryCount(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mChacteristicRetryCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectedGatt(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/bluetooth/BluetoothGatt;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDelayStartFrom(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mDelayStartFrom:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmGotMHSEnabledNotificationEarlier(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mGotMHSEnabledNotificationEarlier:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHotspotVersion(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mHotspotVersion:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsRetryGattConnect(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mIsRetryGattConnect:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLimitCount(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mLimitCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mLocalLog:Landroid/util/LocalLog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMhsFreq(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mMhsFreq:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNeedRetry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mNeedRetry:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNl80211Manager(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/net/wifi/nl80211/WifiNl80211Manager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mNl80211Manager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPassword(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mPassword:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingDeviceAddress(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mPendingDeviceAddress:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReGetAes(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mReGetAes:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSSID(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSSID:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSmartAp_WiFi_MAC(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartAp_WiFi_MAC:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTimeMismatchOccured(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mTimeMismatchOccured:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserName(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mUserName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserType(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mUserType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWPA3Mode(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWPA3Mode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmhideSSID(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mhideSSID:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmhs_read_auth_status_retry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mhs_read_auth_status_retry:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmhs_read_status_retry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mhs_read_status_retry:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmhs_read_wifi_share_retry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mhs_read_wifi_share_retry:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmhs_write_bluetooth_gatt_characteristic_status_retry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mhs_write_bluetooth_gatt_characteristic_status_retry:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmversion(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mversion:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmwaitingToConnect(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mwaitingToConnect:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrequestedToEnableMHS(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->requestedToEnableMHS:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettryingToRetry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->tryingToRetry:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputMHS_CONNECTION_TIMEOUT(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->MHS_CONNECTION_TIMEOUT:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisBondingGoingon(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->isBondingGoingon:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAESKey(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mAESKey:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBluetoothDevice(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Landroid/bluetooth/BluetoothDevice;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBluetoothGattService(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Landroid/bluetooth/BluetoothGattService;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBluetoothGattService:Landroid/bluetooth/BluetoothGattService;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBluetoothIsOn(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBluetoothIsOn:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmChacteristicRetryCount(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mChacteristicRetryCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDelayStartFrom(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mDelayStartFrom:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmGotMHSEnabledNotificationEarlier(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mGotMHSEnabledNotificationEarlier:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHotspotVersion(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mHotspotVersion:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsRetryGattConnect(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mIsRetryGattConnect:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLimitCount(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mLimitCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMhsFreq(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mMhsFreq:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNeedRetry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mNeedRetry:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNl80211Manager(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Landroid/net/wifi/nl80211/WifiNl80211Manager;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mNl80211Manager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPassword(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mPassword:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPendingDeviceAddress(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mPendingDeviceAddress:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmReGetAes(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mReGetAes:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSSID(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSSID:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSmartAp_BLE_MAC(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartAp_BLE_MAC:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTimeMismatchOccured(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mTimeMismatchOccured:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWPA3Mode(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWPA3Mode:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmhs_read_auth_status_retry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mhs_read_auth_status_retry:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmhs_read_status_retry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mhs_read_status_retry:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmhs_read_wifi_share_retry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mhs_read_wifi_share_retry:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmhs_write_bluetooth_gatt_characteristic_status_retry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mhs_write_bluetooth_gatt_characteristic_status_retry:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmwaitingToConnect(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mwaitingToConnect:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputrequestedToEnableMHS(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->requestedToEnableMHS:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtryingToRetry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->tryingToRetry:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mchannelToFreq(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;I)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->channelToFreq(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcheckIfBSSIDExistInScanResults(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->checkIfBSSIDExistInScanResults(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdoPartialScan(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->doPartialScan(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetSemWifiManager(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/wifi/SemWifiManager;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->getSemWifiManager()Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minvokeCallback(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->invokeCallback(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlaunchWiFiApWarning(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->launchWiFiApWarning(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlaunchWiFiApWarningForWifiProfileSharing(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->launchWiFiApWarningForWifiProfileSharing(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveDoubleQuotes(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msendAuthInformation(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Landroid/bluetooth/BluetoothGatt;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->sendAuthInformation(Landroid/bluetooth/BluetoothGatt;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetConnectionState(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->setConnectionState(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshutdownclient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->shutdownclient()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshutdownclient_1(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->shutdownclient_1()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopPartialScan(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->stopPartialScan()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtryToConnectToRemoteBLE(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Landroid/bluetooth/BluetoothDevice;Z)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->tryToConnectToRemoteBLE(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetMHSDBG()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->MHSDBG:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 66
    sget-boolean v0, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    sput-boolean v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->MHSDBG:Z

    .line 145
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_ConfigOpBranding"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->CONFIG_OP_BRANDING:Ljava/lang/String;

    .line 194
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.account.SAMSUNGACCOUNT_SIGNOUT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartGattClientIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    .line 195
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartGattClientIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartGattClientIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartGattClientIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartGattClientIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartGattClientIntentFilter:Landroid/content/IntentFilter;

    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Landroid/util/LocalLog;)V
    .registers 9

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    .line 82
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    .line 83
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBleWorkThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    .line 100
    iput v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportBand:I

    const/4 v2, 0x1

    .line 101
    iput v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportSecurity:I

    .line 102
    iput v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportedOWESecurity:I

    const/4 v2, 0x3

    .line 107
    iput v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mLimitCount:I

    .line 112
    iput v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWPA3Mode:I

    .line 113
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mwaitingToConnect:Z

    .line 115
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBluetoothIsOn:Z

    .line 119
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->isBondingGoingon:Z

    const/4 v2, -0x1

    .line 121
    iput v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mMhsFreq:I

    .line 122
    iput v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->tryingToRetry:I

    .line 144
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    const-wide/16 v2, -0x1

    .line 147
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mDelayStartFrom:J

    .line 148
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mFailedBLEConnections:Ljava/util/HashMap;

    const/16 v2, 0x7530

    .line 149
    iput v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->MHS_CONNECTION_TIMEOUT:I

    .line 154
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mAESKey:Ljava/lang/String;

    .line 155
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mTimeMismatchOccured:Z

    const/4 v0, 0x2

    .line 156
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mhs_read_status_retry:I

    .line 157
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mhs_read_auth_status_retry:I

    .line 158
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mhs_read_wifi_share_retry:I

    .line 159
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mhs_write_bluetooth_gatt_characteristic_status_retry:I

    .line 163
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mGotMHSEnabledNotificationEarlier:Z

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mAAHFirstTimeConnectionDialog:Ljava/util/HashMap;

    .line 1202
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 177
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mContext:Landroid/content/Context;

    .line 178
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 179
    iput-object p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 180
    iput-object p4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mLocalLog:Landroid/util/LocalLog;

    .line 181
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    .line 182
    new-instance p2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartGattClientReceiver:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;

    .line 183
    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartGattClientIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private channelToFreq(I)I
    .registers 4

    const/4 p0, 0x1

    if-lt p1, p0, :cond_14

    const/16 p0, 0xa5

    if-gt p1, p0, :cond_14

    const/16 p0, 0xe

    if-gt p1, p0, :cond_e

    const/16 p0, 0x967

    goto :goto_10

    :cond_e
    const/16 p0, 0x1388

    :goto_10
    mul-int/lit8 p1, p1, 0x5

    add-int/2addr p1, p0

    goto :goto_18

    :cond_14
    if-eqz p1, :cond_17

    goto :goto_18

    :cond_17
    const/4 p1, -0x1

    .line 1893
    :goto_18
    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "freq :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method private checkIfBSSIDExistInScanResults(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p1, :cond_b

    .line 2127
    sget-object p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    const-string p2, " checkIfBSSIDExistInScanResults,scanResults null"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 2130
    :cond_b
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " checkIfBSSIDExistInScanResults,scanResults size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_2f

    .line 2133
    sget-object p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    const-string p2, " checkIfBSSIDExistInScanResults,ssid null"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_2f
    if-nez p2, :cond_38

    .line 2137
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    const-string v1, " checkIfBSSIDExistInScanResults,wifiprofileShare bssid null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2139
    :cond_38
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 2140
    iget-object v2, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-eqz v2, :cond_71

    if-eqz p2, :cond_71

    iget-object v2, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 2141
    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "scanResult.RSSI:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6f
    move p0, v1

    goto :goto_c6

    .line 2146
    :cond_71
    iget-object v2, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-eqz v2, :cond_77

    if-nez p2, :cond_3c

    .line 2147
    :cond_77
    invoke-virtual {v0}, Landroid/net/wifi/ScanResult;->getWifiSsid()Landroid/net/wifi/WifiSsid;

    move-result-object v2

    if-eqz v2, :cond_3c

    .line 2148
    sget-boolean v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->MHSDBG:Z

    if-eqz v2, :cond_9f

    .line 2149
    sget-object v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkIfBSSIDExistInScanResults:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/wifi/ScanResult;->getWifiSsid()Landroid/net/wifi/WifiSsid;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    :cond_9f
    invoke-virtual {v0}, Landroid/net/wifi/ScanResult;->getWifiSsid()Landroid/net/wifi/WifiSsid;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 2151
    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ssid scanResult.RSSI:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f

    :cond_c6
    :goto_c6
    return p0
.end method

.method private doPartialScan(I)V
    .registers 12

    .line 219
    new-instance v0, Landroid/net/wifi/WifiScanner$ScanSettings;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    const/4 v1, 0x2

    .line 220
    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->type:I

    .line 221
    sget-object v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    const-string v3, "doScanInternal enter"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq p1, v3, :cond_25

    .line 224
    iput v2, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 225
    iput-object v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 226
    iget-object v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    new-instance v3, Landroid/net/wifi/WifiScanner$ChannelSpec;

    invoke-direct {v3, p1}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    aput-object v3, v1, v2

    goto/16 :goto_b4

    .line 228
    :cond_25
    iput v2, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    .line 229
    iget p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportBand:I

    and-int/lit8 v3, p1, 0x4

    const/16 v4, 0x16

    if-eqz v3, :cond_75

    new-array p1, v4, [I

    .line 230
    fill-array-data p1, :array_dc

    .line 231
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mContext:Landroid/content/Context;

    const-string v3, "wifinl80211"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/nl80211/WifiNl80211Manager;

    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mNl80211Manager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    const/16 v3, 0x8

    .line 232
    invoke-virtual {v1, v3}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getChannelsMhzForBand(I)[I

    move-result-object v1

    .line 233
    array-length v3, v1

    add-int/2addr v3, v4

    new-array v3, v3, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    iput-object v3, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    move v3, v2

    move v5, v3

    :goto_4e
    if-ge v3, v4, :cond_61

    .line 235
    aget v6, p1, v3

    .line 236
    iget-object v7, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    add-int/lit8 v8, v5, 0x1

    new-instance v9, Landroid/net/wifi/WifiScanner$ChannelSpec;

    invoke-direct {v9, v6}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    aput-object v9, v7, v5

    add-int/lit8 v3, v3, 0x1

    move v5, v8

    goto :goto_4e

    .line 238
    :cond_61
    array-length p1, v1

    :goto_62
    if-ge v2, p1, :cond_b4

    aget v3, v1, v2

    .line 239
    iget-object v4, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    add-int/lit8 v6, v5, 0x1

    new-instance v7, Landroid/net/wifi/WifiScanner$ChannelSpec;

    invoke-direct {v7, v3}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    aput-object v7, v4, v5

    add-int/lit8 v2, v2, 0x1

    move v5, v6

    goto :goto_62

    :cond_75
    and-int/2addr p1, v1

    if-eqz p1, :cond_95

    new-array p1, v4, [I

    .line 242
    fill-array-data p1, :array_10c

    new-array v1, v4, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 243
    iput-object v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    move v1, v2

    :goto_82
    if-ge v2, v4, :cond_b4

    .line 245
    aget v3, p1, v2

    .line 246
    iget-object v5, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    add-int/lit8 v6, v1, 0x1

    new-instance v7, Landroid/net/wifi/WifiScanner$ChannelSpec;

    invoke-direct {v7, v3}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    aput-object v7, v5, v1

    add-int/lit8 v2, v2, 0x1

    move v1, v6

    goto :goto_82

    :cond_95
    const/16 p1, 0xd

    new-array v1, p1, [I

    .line 249
    fill-array-data v1, :array_13c

    new-array v3, p1, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 250
    iput-object v3, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    move v3, v2

    :goto_a1
    if-ge v2, p1, :cond_b4

    .line 252
    aget v4, v1, v2

    .line 253
    iget-object v5, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    add-int/lit8 v6, v3, 0x1

    new-instance v7, Landroid/net/wifi/WifiScanner$ChannelSpec;

    invoke-direct {v7, v4}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    aput-object v7, v5, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v6

    goto :goto_a1

    :cond_b4
    :goto_b4
    const/4 p1, 0x3

    .line 257
    iput p1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    .line 258
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mPartialScanListener:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;

    if-nez p1, :cond_c3

    .line 259
    new-instance p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener-IA;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mPartialScanListener:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;

    .line 261
    :cond_c3
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiScanner()Landroid/net/wifi/WifiScanner;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 262
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mPartialScanListener:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {p1, v0, v1, p0}, Landroid/net/wifi/WifiScanner;->startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;Landroid/os/WorkSource;)V

    .line 263
    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    const-string p1, "doScanInternal started"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :array_dc
    .array-data 4
        0x96c
        0x971
        0x976
        0x97b
        0x980
        0x985
        0x98a
        0x98f
        0x994
        0x999
        0x99e
        0x9a3
        0x9a8
        0x143c
        0x1450
        0x1464
        0x1478
        0x1671
        0x1685
        0x1699
        0x16ad
        0x16c1
    .end array-data

    :array_10c
    .array-data 4
        0x96c
        0x971
        0x976
        0x97b
        0x980
        0x985
        0x98a
        0x98f
        0x994
        0x999
        0x99e
        0x9a3
        0x9a8
        0x143c
        0x1450
        0x1464
        0x1478
        0x1671
        0x1685
        0x1699
        0x16ad
        0x16c1
    .end array-data

    :array_13c
    .array-data 4
        0x96c
        0x971
        0x976
        0x97b
        0x980
        0x985
        0x98a
        0x98f
        0x994
        0x999
        0x99e
        0x9a3
        0x9a8
    .end array-data
.end method

.method private getSemWifiManager()Lcom/samsung/android/wifi/SemWifiManager;
    .registers 3

    .line 2162
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    if-nez v0, :cond_10

    .line 2163
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mContext:Landroid/content/Context;

    const-string v1, "sem_wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 2165
    :cond_10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    return-object p0
.end method

.method private invokeCallback(Ljava/lang/String;I)V
    .registers 7

    .line 2008
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invokeCallback state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "clientmac"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":\tsinvokeCallback state :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2010
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->tWifiApSmartCallback:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;

    if-eqz p0, :cond_6c

    .line 2012
    :try_start_43
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;->onStateChanged(ILjava/lang/String;)V

    if-gez p2, :cond_6c

    .line 2013
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isAdvancedAutohotspotSupported()Z

    move-result p0

    if-eqz p0, :cond_6c

    .line 2014
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApAdvancedAutohotspotBleUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->setFailedMHSConnectionHistory(Ljava/lang/String;)V

    .line 2015
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApAdvancedAutohotspotService()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->updateGattFailedConnectionState(Ljava/lang/String;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_6c} :catch_6c

    :catch_6c
    :cond_6c
    return-void
.end method

.method private launchWiFiApWarning(Ljava/lang/String;I)V
    .registers 8

    .line 2082
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mAAHFirstTimeConnectionDialog:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_65

    .line 2084
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getWifiApWarningActivityRunningState()I

    move-result v0

    const-string v1, "com.android.settings"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3e

    .line 2085
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    const-string v3, "sending WIFIAP_WARNING_STOP_DIALOG "

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2087
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.samsung.android.settings.wifi.mobileap.wifiapwarning.finish"

    .line 2088
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2089
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-wide/16 v3, 0xc8

    .line 2091
    :try_start_36
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_39
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_3e

    :catch_3a
    move-exception v0

    .line 2093
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2096
    :cond_3e
    :goto_3e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mAAHFirstTimeConnectionDialog:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2097
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.android.settings.wifi.mobileap.WifiApWarning"

    .line 2098
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 2099
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    .line 2100
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "wifiap_warning_dialog_type"

    .line 2101
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2102
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_65
    return-void
.end method

.method private launchWiFiApWarningForWifiProfileSharing(Ljava/lang/String;)V
    .registers 5

    .line 2115
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.samsung.android.settings.wifi.mobileap.WifiApWarning"

    .line 2116
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 2117
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    .line 2118
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "wifiap_warning_dialog_type"

    const/16 v2, 0x3a

    .line 2119
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "mhs_wifi_network_name"

    .line 2120
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2121
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 2073
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_20

    const/4 v1, 0x0

    .line 2074
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_20

    sub-int/2addr p0, v0

    .line 2075
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_20

    .line 2076
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_20
    return-object p1
.end method

.method private sendAuthInformation(Landroid/bluetooth/BluetoothGatt;Z)V
    .registers 21

    move-object/from16 v0, p0

    .line 1747
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBluetoothGattService:Landroid/bluetooth/BluetoothGattService;

    sget-object v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_ENCRYPTED_AUTH_ID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    .line 1748
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHostNameFromDeviceName()Ljava/lang/String;

    move-result-object v2

    .line 1749
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getOwnWifiMac()Ljava/lang/String;

    move-result-object v3

    .line 1753
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getGuid()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    if-nez v4, :cond_21

    move-object v4, v5

    :cond_21
    if-nez v2, :cond_2a

    .line 1757
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    goto :goto_30

    .line 1759
    :cond_2a
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    .line 1760
    :goto_30
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 1761
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 1762
    iget v7, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mUserType:I

    const-string v8, "supportBand byte "

    const-string v9, ",supportedOWESecurity:"

    const-string v10, "supportSecurity byte "

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-ne v7, v14, :cond_1a7

    .line 1763
    sget-object v4, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    const-string v7, "Autheticating for same GUID"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mLocalLog:Landroid/util/LocalLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ":\tAutheticating for same GUID"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1766
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getGuid()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_78

    .line 1768
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    goto :goto_7e

    .line 1770
    :cond_78
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 1772
    :goto_7e
    array-length v5, v4

    add-int/lit8 v5, v5, 0x14

    array-length v7, v6

    add-int/2addr v5, v7

    array-length v7, v3

    add-int/2addr v5, v7

    new-array v5, v5, [B

    .line 1773
    aput-byte v14, v5, v13

    .line 1774
    array-length v7, v4

    int-to-byte v7, v7

    aput-byte v7, v5, v14

    move v7, v13

    .line 1775
    :goto_8e
    array-length v15, v4

    if-ge v7, v15, :cond_9a

    add-int/lit8 v15, v7, 0x2

    .line 1776
    aget-byte v16, v4, v7

    aput-byte v16, v5, v15

    add-int/lit8 v7, v7, 0x1

    goto :goto_8e

    .line 1778
    :cond_9a
    array-length v7, v4

    add-int/2addr v7, v12

    array-length v12, v6

    int-to-byte v12, v12

    aput-byte v12, v5, v7

    move v7, v13

    .line 1779
    :goto_a1
    array-length v12, v6

    if-ge v7, v12, :cond_b0

    add-int/lit8 v12, v7, 0x2

    .line 1780
    array-length v15, v4

    add-int/2addr v12, v15

    add-int/2addr v12, v14

    aget-byte v15, v6, v7

    aput-byte v15, v5, v12

    add-int/lit8 v7, v7, 0x1

    goto :goto_a1

    .line 1782
    :cond_b0
    array-length v7, v4

    add-int/2addr v7, v11

    array-length v11, v6

    add-int/2addr v7, v11

    array-length v11, v3

    int-to-byte v11, v11

    aput-byte v11, v5, v7

    .line 1783
    :goto_b8
    array-length v7, v3

    if-ge v13, v7, :cond_c8

    add-int/lit8 v7, v13, 0x4

    .line 1784
    array-length v11, v4

    add-int/2addr v7, v11

    array-length v11, v6

    add-int/2addr v7, v11

    aget-byte v11, v3, v13

    aput-byte v11, v5, v7

    add-int/lit8 v13, v13, 0x1

    goto :goto_b8

    .line 1786
    :cond_c8
    iget v7, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportBand:I

    if-eqz v7, :cond_ef

    .line 1787
    sget-object v7, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportBand:I

    int-to-byte v8, v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    array-length v7, v4

    add-int/lit8 v7, v7, 0x4

    array-length v8, v6

    add-int/2addr v7, v8

    array-length v8, v3

    add-int/2addr v7, v8

    iget v8, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportBand:I

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 1790
    :cond_ef
    sget-object v7, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportSecurity:I

    int-to-byte v10, v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportedOWESecurity:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    array-length v7, v4

    add-int/lit8 v7, v7, 0x5

    array-length v8, v6

    add-int/2addr v7, v8

    array-length v8, v3

    add-int/2addr v7, v8

    iget v8, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportSecurity:I

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 1792
    array-length v7, v4

    add-int/lit8 v7, v7, 0x5

    array-length v8, v6

    add-int/2addr v7, v8

    array-length v8, v3

    add-int/2addr v7, v8

    add-int/2addr v7, v14

    iget v8, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportedOWESecurity:I

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 1793
    array-length v4, v4

    add-int/lit8 v4, v4, 0x5

    array-length v6, v6

    add-int/2addr v4, v6

    array-length v3, v3

    add-int/2addr v4, v3

    add-int/2addr v4, v14

    add-int/2addr v4, v14

    move/from16 v3, p2

    int-to-byte v3, v3

    aput-byte v3, v5, v4

    .line 1794
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mAESKey:Ljava/lang/String;

    if-eqz v3, :cond_1a2

    const/4 v3, 0x0

    .line 1796
    sget-boolean v4, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->MHSDBG:Z

    if-eqz v4, :cond_156

    .line 1797
    sget-object v6, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Using AES:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mAESKey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    :cond_156
    new-instance v6, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v5, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mAESKey:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/AES;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16b

    .line 1800
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    :cond_16b
    if-nez v3, :cond_175

    .line 1803
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    const-string v4, " Encryption can\'t be null"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19d

    :cond_175
    if-eqz v4, :cond_19d

    .line 1806
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Encrypted size is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    :cond_19d
    :goto_19d
    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    goto/16 :goto_397

    .line 1810
    :cond_1a2
    invoke-virtual {v1, v5}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    goto/16 :goto_397

    :cond_1a7
    if-ne v7, v12, :cond_2b2

    .line 1813
    sget-object v7, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    const-string v15, "Autheticating for same family ID"

    invoke-static {v7, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    iget-object v7, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mLocalLog:Landroid/util/LocalLog;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ":\tAutheticating for same family ID"

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1816
    iget-object v7, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getFamilyID()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1d7

    .line 1818
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    goto :goto_1dd

    .line 1820
    :cond_1d7
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 1823
    :goto_1dd
    array-length v7, v5

    add-int/lit8 v7, v7, 0x14

    array-length v11, v6

    add-int/2addr v7, v11

    array-length v11, v3

    add-int/2addr v7, v11

    array-length v11, v4

    add-int/2addr v7, v11

    new-array v7, v7, [B

    .line 1824
    aput-byte v12, v7, v13

    .line 1825
    array-length v11, v5

    int-to-byte v11, v11

    aput-byte v11, v7, v14

    move v11, v13

    .line 1826
    :goto_1ef
    array-length v15, v5

    if-ge v11, v15, :cond_1fb

    add-int/lit8 v15, v11, 0x2

    .line 1827
    aget-byte v17, v5, v11

    aput-byte v17, v7, v15

    add-int/lit8 v11, v11, 0x1

    goto :goto_1ef

    .line 1829
    :cond_1fb
    array-length v11, v5

    add-int/2addr v11, v12

    array-length v12, v6

    int-to-byte v12, v12

    aput-byte v12, v7, v11

    move v11, v13

    .line 1830
    :goto_202
    array-length v12, v6

    if-ge v11, v12, :cond_211

    add-int/lit8 v12, v11, 0x2

    .line 1831
    array-length v15, v5

    add-int/2addr v12, v15

    add-int/2addr v12, v14

    aget-byte v15, v6, v11

    aput-byte v15, v7, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_202

    .line 1833
    :cond_211
    array-length v11, v5

    const/4 v12, 0x3

    add-int/2addr v11, v12

    array-length v12, v6

    add-int/2addr v11, v12

    array-length v12, v3

    int-to-byte v12, v12

    aput-byte v12, v7, v11

    move v11, v13

    .line 1834
    :goto_21b
    array-length v12, v3

    if-ge v11, v12, :cond_22b

    add-int/lit8 v12, v11, 0x4

    .line 1835
    array-length v15, v5

    add-int/2addr v12, v15

    array-length v15, v6

    add-int/2addr v12, v15

    aget-byte v15, v3, v11

    aput-byte v15, v7, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_21b

    .line 1837
    :cond_22b
    array-length v11, v5

    add-int/lit8 v11, v11, 0x4

    array-length v12, v6

    add-int/2addr v11, v12

    array-length v12, v3

    add-int/2addr v11, v12

    array-length v12, v4

    int-to-byte v12, v12

    aput-byte v12, v7, v11

    .line 1838
    :goto_236
    array-length v11, v4

    if-ge v13, v11, :cond_248

    add-int/lit8 v11, v13, 0x5

    .line 1839
    array-length v12, v5

    add-int/2addr v11, v12

    array-length v12, v6

    add-int/2addr v11, v12

    array-length v12, v3

    add-int/2addr v11, v12

    aget-byte v12, v4, v13

    aput-byte v12, v7, v11

    add-int/lit8 v13, v13, 0x1

    goto :goto_236

    .line 1841
    :cond_248
    iget v11, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportBand:I

    if-eqz v11, :cond_271

    .line 1842
    sget-object v11, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportBand:I

    int-to-byte v8, v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    array-length v8, v5

    add-int/lit8 v8, v8, 0x5

    array-length v11, v6

    add-int/2addr v8, v11

    array-length v11, v3

    add-int/2addr v8, v11

    array-length v11, v4

    add-int/2addr v8, v11

    iget v11, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportBand:I

    int-to-byte v11, v11

    aput-byte v11, v7, v8

    .line 1845
    :cond_271
    sget-object v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportSecurity:I

    int-to-byte v10, v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportedOWESecurity:I

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    array-length v8, v5

    add-int/lit8 v8, v8, 0x6

    array-length v9, v6

    add-int/2addr v8, v9

    array-length v9, v3

    add-int/2addr v8, v9

    array-length v9, v4

    add-int/2addr v8, v9

    iget v9, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportSecurity:I

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 1847
    array-length v5, v5

    add-int/lit8 v5, v5, 0x6

    array-length v6, v6

    add-int/2addr v5, v6

    array-length v3, v3

    add-int/2addr v5, v3

    array-length v3, v4

    add-int/2addr v5, v3

    add-int/2addr v5, v14

    iget v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportedOWESecurity:I

    int-to-byte v0, v0

    aput-byte v0, v7, v5

    .line 1848
    invoke-virtual {v1, v7}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    goto/16 :goto_397

    :cond_2b2
    move v4, v11

    if-ne v7, v4, :cond_397

    .line 1850
    sget-object v4, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    const-string v7, "Autheticating for Allowed User"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mLocalLog:Landroid/util/LocalLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ":\tAutheticating for Allowed User"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1853
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getD2DFamilyID()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2e3

    .line 1855
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    goto :goto_2e9

    .line 1857
    :cond_2e3
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 1859
    :goto_2e9
    array-length v5, v4

    add-int/lit8 v5, v5, 0x14

    array-length v7, v6

    add-int/2addr v5, v7

    array-length v7, v3

    add-int/2addr v5, v7

    new-array v5, v5, [B

    const/4 v7, 0x3

    .line 1860
    aput-byte v7, v5, v13

    .line 1861
    array-length v7, v4

    int-to-byte v7, v7

    aput-byte v7, v5, v14

    move v7, v13

    .line 1862
    :goto_2fa
    array-length v11, v4

    if-ge v7, v11, :cond_306

    add-int/lit8 v11, v7, 0x2

    .line 1863
    aget-byte v15, v4, v7

    aput-byte v15, v5, v11

    add-int/lit8 v7, v7, 0x1

    goto :goto_2fa

    .line 1865
    :cond_306
    array-length v7, v4

    add-int/2addr v7, v12

    array-length v11, v6

    int-to-byte v11, v11

    aput-byte v11, v5, v7

    move v7, v13

    .line 1866
    :goto_30d
    array-length v11, v6

    if-ge v7, v11, :cond_31c

    add-int/lit8 v11, v7, 0x2

    .line 1867
    array-length v12, v4

    add-int/2addr v11, v12

    add-int/2addr v11, v14

    aget-byte v12, v6, v7

    aput-byte v12, v5, v11

    add-int/lit8 v7, v7, 0x1

    goto :goto_30d

    .line 1869
    :cond_31c
    array-length v7, v4

    const/4 v11, 0x3

    add-int/2addr v7, v11

    array-length v11, v6

    add-int/2addr v7, v11

    array-length v11, v3

    int-to-byte v11, v11

    aput-byte v11, v5, v7

    .line 1870
    :goto_325
    array-length v7, v3

    if-ge v13, v7, :cond_335

    add-int/lit8 v7, v13, 0x4

    .line 1871
    array-length v11, v4

    add-int/2addr v7, v11

    array-length v11, v6

    add-int/2addr v7, v11

    aget-byte v11, v3, v13

    aput-byte v11, v5, v7

    add-int/lit8 v13, v13, 0x1

    goto :goto_325

    .line 1873
    :cond_335
    iget v7, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportBand:I

    if-eqz v7, :cond_35c

    .line 1874
    sget-object v7, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportBand:I

    int-to-byte v8, v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    array-length v7, v4

    add-int/lit8 v7, v7, 0x4

    array-length v8, v6

    add-int/2addr v7, v8

    array-length v8, v3

    add-int/2addr v7, v8

    iget v8, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportBand:I

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 1877
    :cond_35c
    sget-object v7, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportSecurity:I

    int-to-byte v10, v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportedOWESecurity:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    array-length v7, v4

    add-int/lit8 v7, v7, 0x5

    array-length v8, v6

    add-int/2addr v7, v8

    array-length v8, v3

    add-int/2addr v7, v8

    iget v8, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportSecurity:I

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 1879
    array-length v4, v4

    add-int/lit8 v4, v4, 0x5

    array-length v6, v6

    add-int/2addr v4, v6

    array-length v3, v3

    add-int/2addr v4, v3

    add-int/2addr v4, v14

    iget v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportedOWESecurity:I

    int-to-byte v0, v0

    aput-byte v0, v5, v4

    .line 1880
    invoke-virtual {v1, v5}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 1882
    :cond_397
    :goto_397
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Write Characterstic:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    .line 1883
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    return-void
.end method

.method private setConnectionState(ILjava/lang/String;)V
    .registers 7

    .line 1898
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConnectionState state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "MhsMac "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v2, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":\tsetConnectionState state :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "MhsMac"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v2, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    const/16 v0, -0xa

    if-eq p1, v0, :cond_57

    const/4 v0, -0x2

    if-eq p1, v0, :cond_57

    const/4 v0, -0x7

    if-ne p1, v0, :cond_71

    .line 1901
    :cond_57
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    move-result-object v0

    .line 1902
    new-instance v1, Landroid/util/Pair;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartAp_BLE_MAC:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p2, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->setBLEPairingFailedHistory(Ljava/lang/String;Landroid/util/Pair;)V

    .line 1907
    :cond_71
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->updateSmartMHSConnectionStatus(Ljava/lang/String;I)V

    .line 1908
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->tWifiApSmartCallback:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;

    if-eqz p0, :cond_7b

    .line 1910
    :try_start_78
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;->onStateChanged(ILjava/lang/String;)V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7b} :catch_7b

    :catch_7b
    :cond_7b
    return-void
.end method

.method private shutdownclient()V
    .registers 5

    .line 1934
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    const-string v1, "shutdownclient"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1935
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->requestedToEnableMHS:Z

    .line 1936
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v1, :cond_25

    .line 1937
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mFailedBLEConnections:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1938
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->close()V

    const-wide/16 v1, 0x3e8

    .line 1940
    :try_start_22
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_25

    .line 1945
    :catch_25
    :cond_25
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->isBondingGoingon:Z

    const/4 v1, 0x0

    .line 1946
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    .line 1947
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mTimeMismatchOccured:Z

    .line 1948
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mGotMHSEnabledNotificationEarlier:Z

    const-string v0, "vendor.wifiap.autohotspot.btadapterenable.smartgattclient"

    const-string v1, "0"

    .line 1949
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 1950
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1951
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_59

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_59

    .line 1952
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    const-string v1, "disabling BT which was enabled through autohotspot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    :cond_59
    return-void
.end method

.method private shutdownclient_1()V
    .registers 4

    .line 1918
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    const-string v1, "shutdownclient_1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1919
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->requestedToEnableMHS:Z

    .line 1920
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v1, :cond_16

    .line 1921
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->close()V

    const-wide/16 v1, 0x3e8

    .line 1923
    :try_start_13
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_16

    .line 1928
    :catch_16
    :cond_16
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->isBondingGoingon:Z

    const/4 v1, 0x0

    .line 1929
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    .line 1930
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mTimeMismatchOccured:Z

    return-void
.end method

.method private stopPartialScan()V
    .registers 3

    .line 267
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mPartialScanListener:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;

    if-eqz v0, :cond_16

    .line 268
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiScanner()Landroid/net/wifi/WifiScanner;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 269
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mPartialScanListener:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiScanner;->stopScan(Landroid/net/wifi/WifiScanner$ScanListener;)V

    const/4 v0, 0x0

    .line 270
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mPartialScanListener:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;

    :cond_16
    return-void
.end method

.method private tryToConnectToRemoteBLE(Landroid/bluetooth/BluetoothDevice;Z)Z
    .registers 11

    .line 2035
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 2037
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mFailedBLEConnections:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    .line 2038
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mFailedBLEConnections:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1b

    :cond_1a
    move v1, v2

    :goto_1b
    const/4 v3, 0x1

    add-int/2addr v1, v3

    .line 2040
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mFailedBLEConnections:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2041
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to create a new connection. attempt:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mLocalLog:Landroid/util/LocalLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\tTrying to create a new connection. attempt:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2043
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartAp_WiFi_MAC:Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->setConnectionState(ILjava/lang/String;)V

    .line 2044
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    const/4 v5, 0x2

    invoke-virtual {p1, v0, p2, v4, v5}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    .line 2045
    sget-object p2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    const-string v0, "set timeout for servicediscovery"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    if-eqz p2, :cond_7e

    const/16 v0, 0x19

    .line 2047
    invoke-virtual {p2, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->removeMessages(I)V

    .line 2048
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    const-wide/16 v6, 0x2710

    invoke-virtual {p2, v0, v6, v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2051
    :cond_7e
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez p2, :cond_e9

    const-wide/16 v6, 0x3e8

    .line 2053
    :try_start_84
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_87} :catch_87

    .line 2057
    :catch_87
    sget-object p2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mConnectedGatt = null, Trying to create a new connection. attempt:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mLocalLog:Landroid/util/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\tmConnectedGatt = null, Trying to create a new connection. attempt:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2059
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartAp_WiFi_MAC:Ljava/lang/String;

    invoke-direct {p0, v3, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->setConnectionState(ILjava/lang/String;)V

    .line 2060
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p1, p2, v3, v0, v5}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez p1, :cond_e9

    .line 2062
    sget-object p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    const-string p2, " mConnectedGatt = null, returning false"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mLocalLog:Landroid/util/LocalLog;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\tmConnectedGatt = null, returning false"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return v2

    :cond_e9
    return v3
.end method

.method private updateSmartMHSConnectionStatus(Ljava/lang/String;I)V
    .registers 7

    .line 1997
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    monitor-enter v0

    .line 1998
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;

    .line 1999
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->clientMAC:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2000
    iput p2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->state:I

    .line 2001
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->timestamp:J

    goto :goto_9

    .line 2004
    :cond_26
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p0
.end method


# virtual methods
.method public connectToSmartMHS(Lcom/samsung/android/wifi/SemWifiApBleScanResult;)Z
    .registers 13

    .line 658
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    const-string v1, "trying to connect from AdvHotspot client"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iget-object v3, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mDevice:Ljava/lang/String;

    iget v4, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mMHSdeviceType:I

    iget v5, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mhidden:I

    iget v6, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSecurity:I

    iget-object v7, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    iget-object v8, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mUserName:Ljava/lang/String;

    iget v9, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->version:I

    iget-boolean v10, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->isWifiProfileShareEnabled:Z

    move-object v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->connectToSmartMHS(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method

.method public connectToSmartMHS(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IZ)Z
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v9, p5

    move/from16 v10, p7

    .line 663
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 664
    sget-object v6, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "packageName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " mIsRetryGattConnect "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mIsRetryGattConnect:Z

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x1

    if-ne v2, v11, :cond_5b

    .line 665
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isAdvancedAutohotspotSupported()Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 666
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApAdvancedAutohotspotBleUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->setAutohotspotMHSConnectionHistory(Ljava/lang/String;)V

    .line 667
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "adv_autohotspot_client_history"

    invoke-static {v5, v6, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 669
    :cond_5b
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    const/4 v12, 0x0

    if-eqz v5, :cond_6c

    iget-boolean v5, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mIsRetryGattConnect:Z

    if-nez v5, :cond_6c

    .line 670
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    const-string v1, "mConnectedGatt is not null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    .line 673
    :cond_6c
    iget-boolean v5, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->isBondingGoingon:Z

    if-eqz v5, :cond_78

    .line 674
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    const-string v1, "isBondingGoingon is true"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    .line 677
    :cond_78
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    monitor-enter v5

    .line 678
    :try_start_7b
    iget-object v6, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_81
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v13, 0x2

    if-eqz v7, :cond_b2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;

    .line 679
    iget v8, v7, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->state:I

    if-eq v8, v11, :cond_94

    if-ne v8, v13, :cond_81

    :cond_94
    iget-boolean v8, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mIsRetryGattConnect:Z

    if-nez v8, :cond_81

    .line 680
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Gatt connecting is going on, return:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    monitor-exit v5

    return v12

    .line 684
    :cond_b2
    monitor-exit v5
    :try_end_b3
    .catchall {:try_start_7b .. :try_end_b3} :catchall_365

    .line 685
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 686
    iput v13, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mhs_read_status_retry:I

    .line 687
    iput v13, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mhs_read_auth_status_retry:I

    .line 688
    iput v13, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mhs_read_wifi_share_retry:I

    .line 689
    iput-boolean v12, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->isClientAcceptedWifiProfileSharing:Z

    .line 690
    iput v13, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mhs_write_bluetooth_gatt_characteristic_status_retry:I

    .line 691
    iput v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mUserType:I

    .line 692
    iput v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mhideSSID:I

    .line 693
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isWifiProfileShareAHSupported(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_e6

    .line 694
    sget-object v5, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    const-string v6, "wifiProfileShare is supported"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v5, p8

    .line 695
    iput-boolean v5, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->isWifiProfileShareEnabled:Z

    :cond_e6
    move-object/from16 v5, p6

    .line 697
    iput-object v5, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mUserName:Ljava/lang/String;

    .line 698
    iput v10, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mversion:I

    .line 699
    sget-object v5, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "connectToSmartMHS   mversion:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",address:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v7, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",mUserType:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",mHidden:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",mSecurity:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",mSmartAp_WiFi_MAC:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mLocalLog:Landroid/util/LocalLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":\tconnectToSmartMHS   mversion:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",address:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v7, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",mUserType:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",mHidden:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mSecurity:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mSmartAp_WiFi_MAC:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 703
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v3, :cond_35c

    if-nez v1, :cond_185

    goto/16 :goto_35c

    .line 710
    :cond_185
    invoke-virtual {v3, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v14

    if-nez v14, :cond_193

    .line 714
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    const-string v1, "Device not found. Unable to connect."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    .line 717
    :cond_193
    iput-object v9, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartAp_WiFi_MAC:Ljava/lang/String;

    .line 718
    iput-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartAp_BLE_MAC:Ljava/lang/String;

    .line 719
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    monitor-enter v1

    .line 720
    :try_start_19a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 722
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v12

    :goto_1a6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1dc

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;

    .line 723
    iget-object v7, v6, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->clientMAC:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x3

    if-eqz v7, :cond_1c7

    iget v7, v6, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->state:I

    if-eq v7, v8, :cond_1c7

    .line 724
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d9

    .line 725
    :cond_1c7
    iget v7, v6, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->state:I

    if-eq v7, v8, :cond_1d9

    .line 726
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 727
    iget-object v7, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    iget-object v6, v6, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->clientMAC:Ljava/lang/String;

    invoke-virtual {v7, v13, v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->removeFromScanResults(ILjava/lang/String;)V
    :try_end_1d9
    .catchall {:try_start_19a .. :try_end_1d9} :catchall_359

    :cond_1d9
    :goto_1d9
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a6

    .line 732
    :cond_1dc
    :try_start_1dc
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 733
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1f5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1dc .. :try_end_1f5} :catch_1f6
    .catchall {:try_start_1dc .. :try_end_1f5} :catchall_359

    goto :goto_1e0

    .line 738
    :catch_1f6
    :cond_1f6
    :try_start_1f6
    monitor-exit v1
    :try_end_1f7
    .catchall {:try_start_1f6 .. :try_end_1f7} :catchall_359

    .line 739
    iget-object v15, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    monitor-enter v15

    .line 740
    :try_start_1fa
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    new-instance v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/16 v16, 0x1

    move-object v3, v8

    move-object/from16 v4, p5

    move-object v12, v8

    move/from16 v8, v16

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 741
    monitor-exit v15
    :try_end_212
    .catchall {:try_start_1fa .. :try_end_212} :catchall_356

    const/16 v1, 0x7530

    .line 742
    iput v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->MHS_CONNECTION_TIMEOUT:I

    .line 743
    invoke-direct {v0, v11, v9}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->setConnectionState(ILjava/lang/String;)V

    .line 744
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    if-eqz v1, :cond_22c

    const/16 v3, 0x12

    .line 745
    invoke-virtual {v1, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_22c

    .line 746
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v3, v4, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_22c
    const/4 v1, 0x0

    .line 749
    iput-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mAESKey:Ljava/lang/String;

    .line 750
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v1, v10, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->isEncryptionCanbeUsed(II)Z

    move-result v1

    if-eqz v1, :cond_243

    .line 751
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getAESKey(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mAESKey:Ljava/lang/String;

    .line 753
    :cond_243
    iput v11, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportBand:I

    .line 754
    iput v13, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportSecurity:I

    .line 755
    iput v11, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportedOWESecurity:I

    .line 756
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "supportSecurity :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportSecurity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",supportedOWESecurity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportedOWESecurity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mContext:Landroid/content/Context;

    const-string v2, "wifinl80211"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/nl80211/WifiNl80211Manager;

    iput-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mNl80211Manager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    .line 765
    invoke-virtual {v1, v13}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getChannelsMhzForBand(I)[I

    move-result-object v1

    .line 766
    array-length v1, v1

    if-eqz v1, :cond_283

    .line 767
    iget v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportBand:I

    or-int/2addr v1, v13

    iput v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportBand:I

    :cond_283
    const/4 v1, 0x0

    .line 769
    iput-boolean v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mNeedRetry:Z

    .line 770
    iput v11, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mChacteristicRetryCount:I

    .line 771
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "supportBand :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportBand:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_2a6

    .line 772
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mAESKey:Ljava/lang/String;

    if-nez v1, :cond_341

    :cond_2a6
    invoke-virtual {v14}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_341

    .line 773
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_2fe

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    if-ne v1, v2, :cond_2fe

    .line 774
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "device is not bonded, enabling BT adapter,mBluetoothIsOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBluetoothIsOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mLocalLog:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":\tdevice is not bonded, enabling BT adapter,mBluetoothIsOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBluetoothIsOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    const-string v1, "vendor.wifiap.autohotspot.btadapterenable.smartgattclient"

    const-string v2, "1"

    .line 776
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 778
    iput-boolean v11, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBluetoothIsOn:Z

    .line 779
    iput-object v14, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    goto :goto_355

    .line 781
    :cond_2fe
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "device is not bonded:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mLocalLog:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":\tdevice is not bonded:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 783
    invoke-virtual {v14}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mPendingDeviceAddress:Ljava/lang/String;

    .line 784
    invoke-virtual {v14, v13}, Landroid/bluetooth/BluetoothDevice;->createBond(I)Z

    goto :goto_355

    :cond_341
    const/4 v1, 0x0

    .line 787
    invoke-direct {v0, v14, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->tryToConnectToRemoteBLE(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v1

    if-nez v1, :cond_355

    const/4 v1, -0x7

    .line 788
    invoke-direct {v0, v1, v9}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->setConnectionState(ILjava/lang/String;)V

    .line 789
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mFailedBLEConnections:Ljava/util/HashMap;

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_355
    :goto_355
    return v11

    :catchall_356
    move-exception v0

    .line 741
    :try_start_357
    monitor-exit v15
    :try_end_358
    .catchall {:try_start_357 .. :try_end_358} :catchall_356

    throw v0

    :catchall_359
    move-exception v0

    .line 738
    :try_start_35a
    monitor-exit v1
    :try_end_35b
    .catchall {:try_start_35a .. :try_end_35b} :catchall_359

    throw v0

    .line 706
    :cond_35c
    :goto_35c
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    const-string v1, "BluetoothAdapter not initialized or unspecified address."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :catchall_365
    move-exception v0

    .line 684
    :try_start_366
    monitor-exit v5
    :try_end_367
    .catchall {:try_start_366 .. :try_end_367} :catchall_365

    throw v0
.end method

.method public factoryReset()V
    .registers 6

    .line 2023
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2024
    sget-object v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    const-string v3, "factoryReset is called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mLocalLog:Landroid/util/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":\tfactoryReset is called"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2027
    :try_start_23
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "adv_autohotspot_client_history"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2028
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "bonded_device_clientside"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_3b
    .catchall {:try_start_23 .. :try_end_3b} :catchall_3f

    .line 2030
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_3f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2031
    throw p0
.end method

.method public getHotspotVersion()I
    .registers 4

    .line 214
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHotspotVersion value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mHotspotVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mHotspotVersion:I

    return p0
.end method

.method public getSmartApClientMac(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 625
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    monitor-enter v1

    .line 626
    :try_start_7
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;

    .line 627
    iget-object v4, v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->MHS_MAC:Ljava/lang/String;

    if-eqz v4, :cond_d

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 628
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSmartApClientMac mhs_mac "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",::"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->state:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object p0, v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->clientMAC:Ljava/lang/String;

    monitor-exit v1

    return-object p0

    .line 632
    :cond_4d
    monitor-exit v1

    return-object v0

    :catchall_4f
    move-exception p0

    monitor-exit v1
    :try_end_51
    .catchall {:try_start_7 .. :try_end_51} :catchall_4f

    throw p0
.end method

.method public getSmartApConnectedStatus(Ljava/lang/String;)I
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 611
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    monitor-enter v1

    .line 612
    :try_start_7
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;

    .line 613
    iget-object v4, v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->MHS_MAC:Ljava/lang/String;

    if-eqz v4, :cond_d

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 614
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSmartApConnectedStatus mhs_mac "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",::"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->state:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    iget p0, v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->state:I

    monitor-exit v1

    return p0

    .line 618
    :cond_4d
    monitor-exit v1

    return v0

    :catchall_4f
    move-exception p0

    monitor-exit v1
    :try_end_51
    .catchall {:try_start_7 .. :try_end_51} :catchall_4f

    throw p0
.end method

.method public getSmartApConnectedStatusFromScanResult(Ljava/lang/String;)I
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 640
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    monitor-enter v1

    .line 641
    :try_start_7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;

    .line 642
    iget-object v3, v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->clientMAC:Ljava/lang/String;

    if-eqz v3, :cond_d

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 643
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSmartApConnectedStatusFromScanResult client MAC:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->state:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iget v0, v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->state:I

    goto :goto_d

    .line 647
    :cond_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_7 .. :try_end_47} :catchall_82

    if-nez v0, :cond_81

    .line 648
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isAdvancedAutohotspotSupported()Z

    move-result p0

    if-eqz p0, :cond_81

    .line 649
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApAdvancedAutohotspotService()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isAutohotspotConnectedAfterLCDON(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_81

    .line 650
    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSmartApConnectedStatusFromScanResult client MAC:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":Advanced Connection"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    :cond_81
    return v0

    :catchall_82
    move-exception p0

    .line 647
    :try_start_83
    monitor-exit v1
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_82

    throw p0
.end method

.method public handleBootCompleted()V
    .registers 4

    .line 204
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    const-string v1, "handleBootCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SemWifiApSmartGattClientBleHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBleWorkThread:Landroid/os/HandlerThread;

    .line 206
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 207
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBleWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    .line 208
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bonded_device_clientside"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 209
    new-instance v0, Landroid/os/WorkSource;

    const/16 v1, 0x3e8

    const-string v2, "com.samsung.android.server.wifi.softap.smarttethering"

    invoke-direct {v0, v1, v2}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWorkSource:Landroid/os/WorkSource;

    const-string p0, "vendor.wifiap.autohotspot.btadapterenable.smartgattclient"

    const-string v0, "0"

    .line 210
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isClientAcceptedWifiProfileSharing(Z)V
    .registers 5

    .line 2107
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isClientAcceptedWifiProfileSharing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->isClientAcceptedWifiProfileSharing:Z

    .line 2109
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1f

    .line 2110
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->sendAuthInformation(Landroid/bluetooth/BluetoothGatt;Z)V

    :cond_1f
    return-void
.end method

.method public registerWifiApSmartCallback(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;)V
    .registers 2

    .line 190
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->tWifiApSmartCallback:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;

    return-void
.end method

.method showSmartMHSInfo()V
    .registers 6

    .line 1989
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    monitor-enter v0

    .line 1990
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;

    .line 1991
    sget-object v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1993
    :cond_2c
    monitor-exit v0

    return-void

    :catchall_2e
    move-exception p0

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw p0
.end method
