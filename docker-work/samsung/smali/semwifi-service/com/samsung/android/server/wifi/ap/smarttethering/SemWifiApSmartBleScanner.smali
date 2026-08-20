.class public Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;
.super Ljava/lang/Object;
.source "SemWifiApSmartBleScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;,
        Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerCallback;,
        Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;,
        Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerAppDisableReceiver;,
        Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerSamsungAccountSiginReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_LOGIN_ACCOUNTS_COMPLETE:Ljava/lang/String; = "com.samsung.account.SAMSUNGACCOUNT_SIGNIN_COMPLETED"

.field private static final ACTION_LOGOUT_ACCOUNTS_COMPLETE:Ljava/lang/String; = "com.samsung.account.SAMSUNGACCOUNT_SIGNOUT_COMPLETED"

.field private static final ACTION_NEARBY_SCANNING:Ljava/lang/String; = "com.samsung.android.nearbyscanning"

.field private static final AES_KEY_RESTART_INTERVAL:I = 0x7530

.field private static final AIRPLANE_MODE_OFF_RESTART_INTERVAL:I = 0x7d0

.field public static final CHECK_AES_KEY_STATUS_START_SCAN:I = 0x7

.field public static final CHECK_GUID_STATUS_START_SCAN:I = 0x4

.field public static final CHECK_TO_STOP_D2D_CLIENT_ADV:I = 0x6

.field public static final CHECK_TO_STOP_MHS_ADV:I = 0x5

.field public static final CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

.field private static final D2D_CLIENT_ADV_STOP_INTERVAL:I = 0x7530

.field private static final FAMILYID_CHANGE_RESTART_INTERVAL:I = 0x1388

.field private static final HANDLE_BLE_SCAN_RESULT:I = 0x1

.field public static final INET_CONDITION_ACTION:Ljava/lang/String; = "android.net.conn.INET_CONDITION_ACTION"

.field private static final KEY_CONTENT_PROVIDER_IS_FAMILY_SHARING_SWITCH_CHANGED_AUTOMATICALLY:Ljava/lang/String; = "smart_tethering_family_sharing_switch_changed_automatically"

.field private static final LOGIN_RESTART_INTERVAL:I = 0x9c40

.field private static final LOGOUT_RESTART_INTERVAL:I = 0xbb8

.field private static final MHS_ADV_STOP_INTERVAL:I = 0x7530

.field private static final SAMSUNG_ACCOUNT_SIGIN_RECEIVER_PERMISSION:Ljava/lang/String; = "com.osp.app.signin.BROADCAST_PERMISSION"

.field private static final SEMS_PACKAGE:Ljava/lang/String; = "com.samsung.android.mobileservice"

.field private static final SETTINGS_PACKAGE_NAME:Ljava/lang/String; = "com.android.settings"

.field private static final SETTINGS_SOFT_RESET:Ljava/lang/String; = "com.samsung.intent.action.SETTINGS_SOFT_RESET"

.field private static final SMART_TETHERING_FAMILY_DETAILS_CHANGED_BROADCAST:Ljava/lang/String; = "com.samsung.android.server.wifi.softap.smarttethering.changed"

.field private static final SMART_TETHERING_FAMILY_ID_CHANGED_BROADCAST:Ljava/lang/String; = "com.samsung.android.server.wifi.softap.smarttethering.familyid"

.field private static final SMART_TETHERING_SERVICE_REGISTER:Ljava/lang/String; = "com.samsung.android.server.wifi.softap.smarttethering.isServiceRegistered"

.field public static final START_SCAN:I = 0x2

.field public static final STOP_SCAN:I = 0x3

.field public static final SUPPORTMOBILEAPENHANCED_D2D:Z

.field public static final SUPPORTMOBILEAPENHANCED_LITE:Z

.field public static final SUPPORTMOBILEAPENHANCED_WIFI_ONLY_LITE:Z

.field private static TAG:Ljava/lang/String; = "SemWifiApSmartBleScanner"

.field private static mWifiApSmartBleScannerAppDisableFilter:Landroid/content/IntentFilter; = null

.field private static mWifiApSmartBleScannerIntentFilter:Landroid/content/IntentFilter; = null

.field private static mWifiApSmartBleScannerSamsungAccountFilter:Landroid/content/IntentFilter; = null

.field private static final wifiApScanInterval:I = 0xc30

.field private static final wifiApscanWindow_LCDOFF:I = 0x37

.field private static final wifiApscanWindow_LCDON:I = 0xa0


# instance fields
.field private AesKeyRetryNumber:I

.field private D2D_CLIENT_ADV_SEND_MESSAGE_TIMEOUT_PACKET_CHECK_TAG:Ljava/lang/String;

.field private DBG:Z

.field private LoginRetryNumber:I

.field private MHS_ADV_SEND_MESSAGE_TIMEOUT_TAG:Ljava/lang/String;

.field private final STANDALONE_API_INTERVAL:I

.field private d2d_client_adv_TimeoutMessage:Lcom/android/internal/util/WakeupMessage;

.field private isAutoHotspotBleSet:Z

.field private isJDMDevice:Z

.field private isLcdOn:Z

.field private isScanningRunning:Z

.field private isStartScanningPending:Z

.field private last_client_adv_time:J

.field private mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

.field private mBleWorkThread:Landroid/os/HandlerThread;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

.field mClientD2dFilter:Landroid/bluetooth/le/ScanFilter;

.field private mContext:Landroid/content/Context;

.field mFamilyScanFilter:Landroid/bluetooth/le/ScanFilter;

.field private mFamilySharingSavedState:Z

.field private mGattServerObjectLock:Ljava/lang/Object;

.field mGuidScanFilter:Landroid/bluetooth/le/ScanFilter;

.field private mIsGotAutohotspotBleAdvFromClient:Z

.field private mIsSamsungAccountLogin:Z

.field private mLastTimeStampBleStandaloneAPICalled:J

.field private mLocalLog:Landroid/util/LocalLog;

.field mMhsD2dFilter:Landroid/bluetooth/le/ScanFilter;

.field private mSemWifiApSmartBleScannerAppDisableReceiver:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerAppDisableReceiver;

.field private mSemWifiApSmartBleScannerSamsungAccountSiginReceiver:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerSamsungAccountSiginReceiver;

.field private final mSoftResetReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiApSmartBleScannerCallback:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerCallback;

.field private mWifiApSmartBleScannerReceiver:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;

.field private mWifiApSmartClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

.field private mWifiApSmartFamilySwitchObserver:Landroid/database/ContentObserver;

.field private mWifiApSmartGattServer:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

.field private mWifiApSmartMHS:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

.field private mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

.field private mWifiApSmart_AutoHotSpot_SwitchObserver:Landroid/database/ContentObserver;

.field private mWifiApSmart_Client_SwitchObserver:Landroid/database/ContentObserver;

.field private mWifiApSmart_D2D_SwitchObserver:Landroid/database/ContentObserver;

.field private mWifiApscanWindow:I

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private mhs_adv_TimeoutMessage:Lcom/android/internal/util/WakeupMessage;

.field scanFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$H6z4319KdFM7bvKXjdKWkPQoQbQ(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->lambda$new$0(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetAesKeyRetryNumber(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->AesKeyRetryNumber:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetLoginRetryNumber(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->LoginRetryNumber:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetd2d_client_adv_TimeoutMessage(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/android/internal/util/WakeupMessage;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->d2d_client_adv_TimeoutMessage:Lcom/android/internal/util/WakeupMessage;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisJDMDevice(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isJDMDevice:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisScanningRunning(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isScanningRunning:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlast_client_adv_time(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->last_client_adv_time:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothAdapter(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/bluetooth/BluetoothAdapter;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFamilySharingSavedState(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mFamilySharingSavedState:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsSamsungAccountLogin(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mIsSamsungAccountLogin:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/util/LocalLog;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiApSmartClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiApSmartGattServer(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartGattServer:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiApSmartMHS(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartMHS:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmhs_adv_TimeoutMessage(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/android/internal/util/WakeupMessage;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mhs_adv_TimeoutMessage:Lcom/android/internal/util/WakeupMessage;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputAesKeyRetryNumber(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->AesKeyRetryNumber:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputLoginRetryNumber(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->LoginRetryNumber:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisLcdOn(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isLcdOn:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisScanningRunning(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isScanningRunning:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisStartScanningPending(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isStartScanningPending:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlast_client_adv_time(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->last_client_adv_time:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFamilySharingSavedState(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mFamilySharingSavedState:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsGotAutohotspotBleAdvFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mIsGotAutohotspotBleAdvFromClient:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsSamsungAccountLogin(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mIsSamsungAccountLogin:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mSetAutoHotspotSettingsDB(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->SetAutoHotspotSettingsDB()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopBleScanning(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->stopBleScanning()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 145
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApCust;->getInstance()Lcom/samsung/android/wifi/SemWifiApCust;

    sget-object v0, Lcom/samsung/android/wifi/SemWifiApCust;->mMHSCustomer:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const/4 v0, 0x1

    .line 146
    sput-boolean v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->SUPPORTMOBILEAPENHANCED_D2D:Z

    const/4 v0, 0x0

    .line 147
    sput-boolean v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->SUPPORTMOBILEAPENHANCED_LITE:Z

    .line 148
    sput-boolean v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->SUPPORTMOBILEAPENHANCED_WIFI_ONLY_LITE:Z

    .line 162
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartBleScannerAppDisableFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 163
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartBleScannerAppDisableFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartBleScannerAppDisableFilter:Landroid/content/IntentFilter;

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 167
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.bluetooth.adapter.action.BLE_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartBleScannerIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 168
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartBleScannerIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartBleScannerIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartBleScannerIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.server.wifi.softap.smarttethering.changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartBleScannerIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.server.wifi.softap.smarttethering.familyid"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartBleScannerIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.server.wifi.softap.smarttethering.d2dfamilyid"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartBleScannerIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartBleScannerIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartBleScannerIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartBleScannerIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.nearbyscanning"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartBleScannerIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartBleScannerIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartBleScannerIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartBleScannerIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartBleScannerIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.server.wifi.softap.smarttethering.isServiceRegistered"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartBleScannerSamsungAccountFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.account.SAMSUNGACCOUNT_SIGNIN_COMPLETED"

    .line 186
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartBleScannerSamsungAccountFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.account.SAMSUNGACCOUNT_SIGNOUT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Landroid/util/LocalLog;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 191
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "eng"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1c

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_1c

    :cond_1a
    move v2, v4

    goto :goto_1d

    :cond_1c
    :goto_1c
    move v2, v3

    :goto_1d
    iput-boolean v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->DBG:Z

    const/4 v2, 0x0

    .line 90
    iput-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    .line 91
    iput-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkThread:Landroid/os/HandlerThread;

    const-wide/16 v5, 0x0

    .line 97
    iput-wide v5, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->last_client_adv_time:J

    .line 105
    iput-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mhs_adv_TimeoutMessage:Lcom/android/internal/util/WakeupMessage;

    .line 106
    iput-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->d2d_client_adv_TimeoutMessage:Lcom/android/internal/util/WakeupMessage;

    .line 107
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " mhs adv Send Message Timeout"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->MHS_ADV_SEND_MESSAGE_TIMEOUT_TAG:Ljava/lang/String;

    .line 109
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " d2d client adv Send Message Timeout"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->D2D_CLIENT_ADV_SEND_MESSAGE_TIMEOUT_PACKET_CHECK_TAG:Ljava/lang/String;

    .line 114
    iput-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mGuidScanFilter:Landroid/bluetooth/le/ScanFilter;

    .line 115
    iput-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mFamilyScanFilter:Landroid/bluetooth/le/ScanFilter;

    .line 116
    iput-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mMhsD2dFilter:Landroid/bluetooth/le/ScanFilter;

    .line 117
    iput-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mClientD2dFilter:Landroid/bluetooth/le/ScanFilter;

    .line 149
    iput-boolean v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isJDMDevice:Z

    .line 151
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->scanFilters:Ljava/util/List;

    .line 152
    iput-boolean v4, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isAutoHotspotBleSet:Z

    .line 153
    iput-boolean v4, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mFamilySharingSavedState:Z

    .line 154
    iput-boolean v4, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mIsSamsungAccountLogin:Z

    const/4 v2, 0x3

    .line 155
    iput v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->LoginRetryNumber:I

    .line 156
    iput v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->AesKeyRetryNumber:I

    .line 157
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mGattServerObjectLock:Ljava/lang/Object;

    const-wide/16 v2, -0x1

    .line 158
    iput-wide v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLastTimeStampBleStandaloneAPICalled:J

    const/16 v2, 0x1388

    .line 159
    iput v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->STANDALONE_API_INTERVAL:I

    .line 423
    new-instance v6, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$1;

    invoke-direct {v6, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$1;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)V

    iput-object v6, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mSoftResetReceiver:Landroid/content/BroadcastReceiver;

    .line 1324
    new-instance v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$2;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$2;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;Landroid/os/Handler;)V

    iput-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartFamilySwitchObserver:Landroid/database/ContentObserver;

    .line 1342
    new-instance v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$3;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$3;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;Landroid/os/Handler;)V

    iput-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmart_AutoHotSpot_SwitchObserver:Landroid/database/ContentObserver;

    .line 1384
    new-instance v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$4;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$4;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;Landroid/os/Handler;)V

    iput-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmart_Client_SwitchObserver:Landroid/database/ContentObserver;

    .line 1408
    new-instance v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$5;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$5;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;Landroid/os/Handler;)V

    iput-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmart_D2D_SwitchObserver:Landroid/database/ContentObserver;

    move-object/from16 v2, p1

    .line 192
    iput-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    move-object/from16 v2, p2

    .line 193
    iput-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 194
    iput-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-object/from16 v2, p4

    .line 195
    iput-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 196
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartGattServer()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartGattServer:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 197
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    .line 198
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartMHS()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartMHS:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    .line 199
    new-instance v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;

    invoke-direct {v2, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)V

    iput-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartBleScannerReceiver:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;

    .line 200
    new-instance v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerSamsungAccountSiginReceiver;

    invoke-direct {v2, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerSamsungAccountSiginReceiver;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)V

    iput-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mSemWifiApSmartBleScannerSamsungAccountSiginReceiver:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerSamsungAccountSiginReceiver;

    .line 201
    new-instance v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerAppDisableReceiver;

    invoke-direct {v2, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerAppDisableReceiver;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)V

    iput-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mSemWifiApSmartBleScannerAppDisableReceiver:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerAppDisableReceiver;

    .line 202
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartBleScannerAppDisableFilter:Landroid/content/IntentFilter;

    invoke-virtual {v3, v2, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 203
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartBleScannerReceiver:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;

    sget-object v5, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartBleScannerIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 204
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-direct {v7, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v8, "com.sec.android.settings.permission.SOFT_RESET"

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 206
    iget-object v11, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    iget-object v12, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mSemWifiApSmartBleScannerSamsungAccountSiginReceiver:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerSamsungAccountSiginReceiver;

    sget-object v13, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartBleScannerSamsungAccountFilter:Landroid/content/IntentFilter;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v14, "com.osp.app.signin.BROADCAST_PERMISSION"

    invoke-virtual/range {v11 .. v16}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 209
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_ap_smart_tethering_settings_with_family"

    .line 210
    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartFamilySwitchObserver:Landroid/database/ContentObserver;

    .line 209
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 211
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "client_advanced_autohotspot_run"

    .line 212
    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmart_Client_SwitchObserver:Landroid/database/ContentObserver;

    .line 211
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 213
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_client_smart_tethering_settings"

    .line 214
    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmart_Client_SwitchObserver:Landroid/database/ContentObserver;

    .line 213
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 215
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_ap_smart_tethering_settings"

    .line 216
    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmart_AutoHotSpot_SwitchObserver:Landroid/database/ContentObserver;

    .line 215
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 217
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_ap_smart_d2d_mhs"

    .line 218
    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmart_D2D_SwitchObserver:Landroid/database/ContentObserver;

    .line 217
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 219
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isScreenOn()Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isLcdOn:Z

    .line 220
    new-instance v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V

    return-void
.end method

.method private SetAutoHotspotSettingsDB()V
    .registers 11

    .line 1553
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    const-string v1, "sem_wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    .line 1557
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->isNearByAutohotspotEnabled()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_49

    .line 1558
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "autohotspot_saved_nearby_state"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_24

    move v1, v2

    goto :goto_25

    :cond_24
    move v1, v3

    .line 1559
    :goto_25
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "autohotspot_family_sharing_nearby_saved_state"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v2, :cond_35

    move v5, v2

    goto :goto_36

    :cond_35
    move v5, v3

    .line 1560
    :goto_36
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v4, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1561
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4b

    :cond_49
    move v1, v3

    move v5, v1

    .line 1563
    :goto_4b
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "autohotspot_saved_state"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_5b

    move v4, v2

    goto :goto_5c

    :cond_5b
    move v4, v3

    :goto_5c
    if-nez v4, :cond_5f

    goto :goto_60

    :cond_5f
    move v1, v4

    .line 1567
    :goto_60
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":\t getSamsungAccountCount():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getSamsungAccountCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",mAutoHotspotSavedState:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1568
    sget-object v4, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSamsungAccountCount():"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v9}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getSamsungAccountCount()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    sget-boolean v4, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->SUPPORTMOBILEAPENHANCED_WIFI_ONLY_LITE:Z

    const-string v7, "wifi_ap_smart_tethering_settings"

    if-nez v4, :cond_154

    sget-boolean v4, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->SUPPORTMOBILEAPENHANCED_LITE:Z

    if-eqz v4, :cond_b7

    if-eqz v1, :cond_154

    :cond_b7
    sget-object v4, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const-string v8, "ATT"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c3

    if-eqz v1, :cond_154

    :cond_c3
    iget-object v8, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartMHS:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->checkPreConditions()I

    move-result v8

    if-ltz v8, :cond_154

    iget-object v8, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getSamsungAccountCount()I

    move-result v8

    if-lez v8, :cond_154

    const-string v8, "TMO"

    .line 1570
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e8

    const-string v8, "NEWCO"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e4

    goto :goto_e8

    .line 1581
    :cond_e4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->setWifiApSmartTetheringEnable()V

    goto :goto_132

    .line 1571
    :cond_e8
    :goto_e8
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v4

    if-eqz v4, :cond_12f

    .line 1572
    invoke-virtual {v4}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v8

    if-eqz v8, :cond_12f

    invoke-virtual {v4}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_12f

    .line 1573
    invoke-virtual {v4}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v4

    const-string v8, "\tUSER#DEFINED#PWD#\n"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12f

    .line 1574
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":\t USER#DEFINED#PWD# is set, so not turning on AutoHotspot"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1575
    sget-object v4, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    const-string v8, "USER#DEFINED#PWD# is set, so not turning on AutoHotspot"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v7, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_132

    .line 1578
    :cond_12f
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->setWifiApSmartTetheringEnable()V

    .line 1583
    :goto_132
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiSharingSupported()Z

    move-result v4

    if-eqz v4, :cond_149

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiSharingLiteSupported()Z

    move-result v0

    if-nez v0, :cond_149

    .line 1584
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "wifi_ap_wifi_sharing"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_149
    if-eqz v1, :cond_154

    .line 1587
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v6, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1590
    :cond_154
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v7, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_16d

    if-eqz v5, :cond_16d

    .line 1592
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "wifi_ap_smart_tethering_settings_with_family"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1594
    :cond_16d
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetAutoHotspotSettingsDB:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":\tSetAutoHotspotSettingsDB:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private buildScanFilters()Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation

    .line 914
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->scanFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 916
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonGuid()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 917
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonFamilyId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 918
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonD2DFamilyid()J

    move-result-wide v2

    .line 919
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_ap_smart_d2d_mhs"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 920
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "wifi_client_smart_tethering_settings"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 921
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "client_advanced_autohotspot_run"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 922
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->isNearByAutohotspotEnabled()Z

    move-result v7

    .line 923
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v0, v8, v10

    const/4 v8, 0x0

    const/16 v9, 0x75

    if-eqz v0, :cond_104

    if-nez v4, :cond_ac

    .line 925
    new-instance v0, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    .line 926
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->getScanManufactureData()[B

    move-result-object v7

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->getGUIDMask()[B

    move-result-object v12

    .line 925
    invoke-virtual {v0, v9, v7, v12}, Landroid/bluetooth/le/ScanFilter$Builder;->setManufacturerData(I[B[B)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v0

    .line 926
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mGuidScanFilter:Landroid/bluetooth/le/ScanFilter;

    .line 927
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->scanFilters:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 928
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mGuidScanFilter"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mGuidScanFilter:Landroid/bluetooth/le/ScanFilter;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ":\tmGuidScanFilter"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mGuidScanFilter:Landroid/bluetooth/le/ScanFilter;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto/16 :goto_16f

    .line 931
    :cond_ac
    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->SUPPORTMOBILEAPENHANCED_D2D:Z

    if-eqz v0, :cond_16f

    .line 932
    new-instance v0, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    .line 933
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->getScanManufactureData()[B

    move-result-object v7

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->getCientD2DMask()[B

    move-result-object v12

    .line 932
    invoke-virtual {v0, v9, v7, v12}, Landroid/bluetooth/le/ScanFilter$Builder;->setManufacturerData(I[B[B)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v0

    .line 933
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mClientD2dFilter:Landroid/bluetooth/le/ScanFilter;

    .line 934
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->scanFilters:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 935
    iput-object v8, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mMhsD2dFilter:Landroid/bluetooth/le/ScanFilter;

    .line 936
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mClientD2dFilter"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mClientD2dFilter:Landroid/bluetooth/le/ScanFilter;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ":\tmClientD2dFilter"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mClientD2dFilter:Landroid/bluetooth/le/ScanFilter;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_16f

    .line 940
    :cond_104
    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->SUPPORTMOBILEAPENHANCED_WIFI_ONLY_LITE:Z

    if-nez v0, :cond_10c

    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->SUPPORTMOBILEAPENHANCED_D2D:Z

    if-eqz v0, :cond_16f

    :cond_10c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getSamsungAccountCount()I

    move-result v0

    if-nez v0, :cond_16f

    if-eqz v7, :cond_16f

    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->SUPPORTMOBILEAPENHANCED_LITE:Z

    if-nez v0, :cond_16f

    .line 941
    iput-object v8, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mGuidScanFilter:Landroid/bluetooth/le/ScanFilter;

    .line 942
    iput-object v8, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mClientD2dFilter:Landroid/bluetooth/le/ScanFilter;

    .line 943
    new-instance v0, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    .line 944
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->getMHS_D2D_ScanManufactureData()[B

    move-result-object v7

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->getMHSD2DMask()[B

    move-result-object v12

    .line 943
    invoke-virtual {v0, v9, v7, v12}, Landroid/bluetooth/le/ScanFilter$Builder;->setManufacturerData(I[B[B)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v0

    .line 944
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mMhsD2dFilter:Landroid/bluetooth/le/ScanFilter;

    .line 945
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->scanFilters:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 946
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mMhsD2dFilter:"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mMhsD2dFilter:Landroid/bluetooth/le/ScanFilter;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ":\tmMhsD2dFilter:"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mMhsD2dFilter:Landroid/bluetooth/le/ScanFilter;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 950
    :cond_16f
    :goto_16f
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v10

    if-eqz v0, :cond_1cb

    if-nez v4, :cond_1cb

    .line 951
    new-instance v0, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    .line 952
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->getScanManufactureData()[B

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->getFamilyIdMask()[B

    move-result-object v2

    .line 951
    invoke-virtual {v0, v9, v1, v2}, Landroid/bluetooth/le/ScanFilter$Builder;->setManufacturerData(I[B[B)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v0

    .line 952
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mFamilyScanFilter:Landroid/bluetooth/le/ScanFilter;

    .line 953
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->scanFilters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 954
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFamilyScanFilter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mFamilyScanFilter:Landroid/bluetooth/le/ScanFilter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":\tmFamilyScanFilter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mFamilyScanFilter:Landroid/bluetooth/le/ScanFilter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_238

    .line 956
    :cond_1cb
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getSamsungAccountCount()I

    move-result v0

    if-nez v0, :cond_236

    cmp-long v0, v2, v10

    if-eqz v0, :cond_236

    const/4 v0, 0x1

    if-eq v5, v0, :cond_1dc

    if-ne v6, v0, :cond_236

    :cond_1dc
    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->SUPPORTMOBILEAPENHANCED_WIFI_ONLY_LITE:Z

    if-nez v0, :cond_1e4

    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->SUPPORTMOBILEAPENHANCED_D2D:Z

    if-eqz v0, :cond_236

    .line 957
    :cond_1e4
    new-instance v0, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    .line 958
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->getScanManufactureData()[B

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->getFamilyIdMask()[B

    move-result-object v2

    .line 957
    invoke-virtual {v0, v9, v1, v2}, Landroid/bluetooth/le/ScanFilter$Builder;->setManufacturerData(I[B[B)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v0

    .line 958
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mFamilyScanFilter:Landroid/bluetooth/le/ScanFilter;

    .line 959
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->scanFilters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 960
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mD2DFamilyScanFilter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mFamilyScanFilter:Landroid/bluetooth/le/ScanFilter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":\tmD2DFamilyScanFilter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mFamilyScanFilter:Landroid/bluetooth/le/ScanFilter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_238

    .line 964
    :cond_236
    iput-object v8, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mFamilyScanFilter:Landroid/bluetooth/le/ScanFilter;

    .line 967
    :goto_238
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->scanFilters:Ljava/util/List;

    return-object p0
.end method

.method private buildScanSettings()Landroid/bluetooth/le/ScanSettings;
    .registers 3

    .line 778
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 779
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    const/16 v1, 0x37

    .line 780
    iput v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApscanWindow:I

    if-eqz v0, :cond_1c

    .line 781
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isLcdOn:Z

    if-eqz v0, :cond_1c

    const/16 v0, 0xa0

    .line 782
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApscanWindow:I

    .line 784
    :cond_1c
    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    const/16 v1, 0x64

    .line 785
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    const/16 v1, 0xc30

    .line 786
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApscanWindow:I

    invoke-virtual {v0, v1, p0}, Landroid/bluetooth/le/ScanSettings$Builder;->semSetCustomScanParams(II)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 787
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object p0

    return-object p0
.end method

.method private checkIfAllowedDevice([B)Z
    .registers 8

    const/4 p0, 0x4

    new-array v0, p0, [B

    .line 1315
    fill-array-data v0, :array_2e

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 1316
    invoke-static {p1, v1, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p1, v2

    :goto_c
    if-ge p1, p0, :cond_2d

    .line 1317
    aget-byte v1, v0, p1

    .line 1318
    sget-object v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "temp value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2a

    const/4 p0, 0x1

    return p0

    :cond_2a
    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    :cond_2d
    return v2

    :array_2e
    .array-data 1
        0x11t
        0x11t
        0x11t
        0x11t
    .end array-data
.end method

.method private getCientD2DMask()[B
    .registers 4

    const/16 p0, 0x18

    new-array v0, p0, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, p0, :cond_d

    .line 893
    aput-byte v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_d
    const/4 p0, 0x1

    const/4 v1, -0x1

    aput-byte v1, v0, p0

    const/16 p0, 0xa

    aput-byte v1, v0, p0

    return-object v0
.end method

.method private getFamilyIdMask()[B
    .registers 11

    const/16 v0, 0x18

    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    .line 869
    :goto_6
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    if-ge v3, v0, :cond_f

    .line 870
    aput-byte v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_f
    const/4 v0, 0x1

    const/4 v3, -0x1

    aput-byte v3, v1, v0

    .line 874
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonFamilyId()J

    move-result-wide v4

    .line 875
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonD2DFamilyid()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long p0, v4, v8

    const/4 v0, 0x4

    if-eqz p0, :cond_2e

    :goto_24
    if-ge v2, v0, :cond_3c

    add-int/lit8 p0, v2, 0x2

    add-int/2addr p0, v0

    .line 878
    aput-byte v3, v1, p0

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_2e
    cmp-long p0, v6, v8

    if-eqz p0, :cond_3c

    :goto_32
    if-ge v2, v0, :cond_3c

    add-int/lit8 p0, v2, 0x2

    add-int/2addr p0, v0

    .line 884
    aput-byte v3, v1, p0

    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :cond_3c
    return-object v1
.end method

.method private getGUIDMask()[B
    .registers 8

    const/16 v0, 0x18

    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    .line 853
    :goto_6
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    if-ge v3, v0, :cond_f

    .line 854
    aput-byte v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_f
    const/4 p0, 0x1

    const/4 v0, -0x1

    aput-byte v0, v1, p0

    .line 859
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonGuid()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 860
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long p0, v3, v5

    if-eqz p0, :cond_2f

    :goto_25
    const/4 p0, 0x4

    if-ge v2, p0, :cond_2f

    add-int/lit8 p0, v2, 0x2

    .line 862
    aput-byte v0, v1, p0

    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_2f
    return-object v1
.end method

.method private getMHSD2DMask()[B
    .registers 4

    const/16 p0, 0x18

    new-array v0, p0, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, p0, :cond_d

    .line 903
    aput-byte v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_d
    const/4 p0, 0x1

    const/4 v1, -0x1

    aput-byte v1, v0, p0

    const/16 p0, 0xa

    aput-byte v1, v0, p0

    return-object v0
.end method

.method private getMHS_D2D_ScanManufactureData()[B
    .registers 13

    const/16 v0, 0x18

    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v3, v0, :cond_d

    .line 823
    aput-byte v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 825
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonGuid()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 826
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonFamilyId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 827
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonD2DFamilyid()J

    move-result-wide v4

    const/4 p0, 0x1

    aput-byte p0, v1, v2

    const/16 v6, 0x12

    aput-byte v6, v1, p0

    const/16 p0, 0xa

    const/4 v6, 0x3

    aput-byte v6, v1, p0

    .line 832
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long p0, v6, v8

    const/4 v6, 0x4

    if-eqz p0, :cond_4e

    .line 833
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->bytesFromLong(Ljava/lang/Long;)[B

    move-result-object p0

    move v0, v2

    :goto_43
    if-ge v0, v6, :cond_4e

    add-int/lit8 v7, v0, 0x2

    .line 835
    aget-byte v10, p0, v0

    aput-byte v10, v1, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    .line 838
    :cond_4e
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long p0, v10, v8

    if-eqz p0, :cond_66

    .line 839
    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->bytesFromLong(Ljava/lang/Long;)[B

    move-result-object p0

    :goto_5a
    if-ge v2, v6, :cond_7e

    add-int/lit8 v0, v2, 0x2

    add-int/2addr v0, v6

    .line 841
    aget-byte v3, p0, v2

    aput-byte v3, v1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_5a

    :cond_66
    cmp-long p0, v4, v8

    if-eqz p0, :cond_7e

    .line 844
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->bytesFromLong(Ljava/lang/Long;)[B

    move-result-object p0

    :goto_72
    if-ge v2, v6, :cond_7e

    add-int/lit8 v0, v2, 0x2

    add-int/2addr v0, v6

    .line 846
    aget-byte v3, p0, v2

    aput-byte v3, v1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_72

    :cond_7e
    return-object v1
.end method

.method private getScanManufactureData()[B
    .registers 12

    const/16 v0, 0x18

    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v3, v0, :cond_d

    .line 793
    aput-byte v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 795
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonGuid()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 796
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonFamilyId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 797
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonD2DFamilyid()J

    move-result-wide v4

    const/4 p0, 0x1

    aput-byte p0, v1, v2

    const/16 v6, 0x12

    aput-byte v6, v1, p0

    const/16 p0, 0xa

    const/4 v6, 0x4

    aput-byte v6, v1, p0

    .line 801
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long p0, v7, v9

    if-eqz p0, :cond_4d

    .line 802
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->bytesFromLong(Ljava/lang/Long;)[B

    move-result-object p0

    move v0, v2

    :goto_42
    if-ge v0, v6, :cond_4d

    add-int/lit8 v7, v0, 0x2

    .line 804
    aget-byte v8, p0, v0

    aput-byte v8, v1, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    .line 807
    :cond_4d
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long p0, v7, v9

    if-eqz p0, :cond_65

    .line 808
    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->bytesFromLong(Ljava/lang/Long;)[B

    move-result-object p0

    :goto_59
    if-ge v2, v6, :cond_7d

    add-int/lit8 v0, v2, 0x2

    add-int/2addr v0, v6

    .line 810
    aget-byte v3, p0, v2

    aput-byte v3, v1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    :cond_65
    cmp-long p0, v4, v9

    if-eqz p0, :cond_7d

    .line 813
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->bytesFromLong(Ljava/lang/Long;)[B

    move-result-object p0

    :goto_71
    if-ge v2, v6, :cond_7d

    add-int/lit8 v0, v2, 0x2

    add-int/2addr v0, v6

    .line 815
    aget-byte v3, p0, v2

    aput-byte v3, v1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_71

    :cond_7d
    return-object v1
.end method

.method private synthetic lambda$new$0(Z)V
    .registers 8

    .line 221
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isLcdOn:Z

    const-wide/16 v0, 0x1f4

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-eqz p1, :cond_3a

    .line 223
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isScanningRunning:Z

    if-eqz p1, :cond_6b

    .line 224
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    if-eqz p1, :cond_6b

    .line 225
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":\tScreen is ON, restarting scanning"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 226
    sget-object p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    const-string v4, "Screen is ON, restarting scanning"

    invoke-static {p1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    invoke-virtual {p1, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->sendEmptyMessage(I)Z

    .line 228
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_6b

    .line 232
    :cond_3a
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isScanningRunning:Z

    if-eqz p1, :cond_6b

    .line 233
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    if-eqz p1, :cond_6b

    .line 234
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":\tScreen is OFF, restarting scanning"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 235
    sget-object p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    const-string v4, "Screen is OFF, restarting scanning"

    invoke-static {p1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    invoke-virtual {p1, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->sendEmptyMessage(I)Z

    .line 237
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_6b
    :goto_6b
    return-void
.end method

.method private setWifiApSmartTetheringEnable()V
    .registers 3

    .line 1547
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getSamsungAccountCount()I

    move-result v0

    if-lez v0, :cond_14

    .line 1548
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "wifi_ap_smart_tethering_settings"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_14
    return-void
.end method

.method private stopBleScanning()V
    .registers 3

    .line 1064
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isScanningRunning:Z

    if-nez v0, :cond_5

    return-void

    .line 1066
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartBleScannerCallback:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerCallback;

    if-eqz v1, :cond_15

    .line 1068
    :try_start_d
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_15

    :catch_11
    move-exception v0

    .line 1070
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_15
    :goto_15
    const/4 v0, 0x0

    .line 1073
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isScanningRunning:Z

    .line 1074
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    const-string v1, "Stopped scanning"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":\tStopped scanning"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method checkPreConditions()I
    .registers 5

    .line 1425
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isJDMDevice:Z

    if-eqz v0, :cond_2f

    .line 1426
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApMacInfo;->getInstance()Lcom/samsung/android/wifi/SemWifiApMacInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiApMacInfo;->readWifiMacInfo()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2f

    .line 1427
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    const-string v1, "JDM MAC address is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":\t JDM MAC address is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    const/4 p0, -0x4

    return p0

    .line 1432
    :cond_2f
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    const-string v1, "com.sec.mhs.smarttethering"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->isPackageExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 1433
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    const-string v1, "isPackageExists smarttethering == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->stopBleScanning()V

    const/4 p0, -0x1

    return p0

    .line 1437
    :cond_45
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_5c

    .line 1438
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getStandAloneBleMode()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 1439
    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    const-string v0, "Preconditions standalonemode is ON"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1442
    :cond_5c
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    const-string v2, "Preconditions standalonemode is OFF"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":\t  Preconditions standalonemode is OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1445
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->isNearByAutohotspotEnabled()Z

    move-result v0

    if-nez v0, :cond_a4

    .line 1446
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    const-string v1, "not isNearByAutohotspotEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":\t not isNearByAutohotspotEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    const/4 p0, -0x5

    return p0

    .line 1450
    :cond_a4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    if-eqz v0, :cond_bb

    .line 1451
    invoke-virtual {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 1452
    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    const-string v0, "Do not setWifiApSmartClient in EmergencyMode"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x2

    return p0

    .line 1455
    :cond_bb
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airplane_mode_on"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_cb

    const/4 p0, 0x1

    goto :goto_cc

    :cond_cb
    move p0, v1

    :goto_cc
    if-eqz p0, :cond_e6

    .line 1457
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAirplaneMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x3

    return p0

    :cond_e6
    return v1
.end method

.method public getDumpLogs()Ljava/lang/String;
    .registers 7

    const-string v0, "\n"

    .line 1516
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1517
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_b
    const-string v4, "-- Auto Hotspot BleScanner --\n"

    .line 1519
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1520
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkPreConditions:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->checkPreConditions()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1521
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mGuidScanFilter:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mGuidScanFilter:Landroid/bluetooth/le/ScanFilter;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1522
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFamilyScanFilter:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mFamilyScanFilter:Landroid/bluetooth/le/ScanFilter;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1523
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isBackGroundScanningRunning:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isScanningRunning:Z

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_76
    .catchall {:try_start_b .. :try_end_76} :catchall_7e

    .line 1526
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1528
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_7e
    move-exception p0

    .line 1526
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1527
    throw p0
.end method

.method public handleBootCompleted()V
    .registers 8

    .line 245
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    const-string v1, "handleBootCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":\t handleBootCompleted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 247
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SemWifiApSmartBleScanner"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkThread:Landroid/os/HandlerThread;

    .line 248
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 249
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    .line 250
    new-instance v0, Lcom/android/internal/util/WakeupMessage;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->MHS_ADV_SEND_MESSAGE_TIMEOUT_TAG:Ljava/lang/String;

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mhs_adv_TimeoutMessage:Lcom/android/internal/util/WakeupMessage;

    .line 252
    new-instance v0, Lcom/android/internal/util/WakeupMessage;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->D2D_CLIENT_ADV_SEND_MESSAGE_TIMEOUT_PACKET_CHECK_TAG:Ljava/lang/String;

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->d2d_client_adv_TimeoutMessage:Lcom/android/internal/util/WakeupMessage;

    .line 254
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const-string v0, "vendor.wifiap.autohotspot.btadapterenable.smartmhs"

    const-string v1, "0"

    .line 255
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    const/4 v1, 0x1

    if-eqz v0, :cond_fa

    .line 257
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_76

    move v3, v1

    :cond_76
    if-eqz v3, :cond_97

    .line 259
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    const-string v2, " Airplane is ON and standalonemode is not ON"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Airplane is ON and standalonemode is not ON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 262
    :cond_97
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->setBleStandAloneModeByAutohotspot(Z)V

    .line 263
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getSamsungAccountCount()I

    move-result v0

    const/4 v2, 0x2

    if-lez v0, :cond_f5

    .line 264
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonGuid()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_e5

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->checkIfActiveNetworkHasInternet()Z

    move-result v0

    if-eqz v0, :cond_e5

    .line 265
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    const-string v2, "After BOOT Connected to Internet,Samsung account loggedin, but hashbased on Guid is -1"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":\tAfter BOOT Connected to Internet,Samsung account loggedin, but hashbased on Guid is -1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->sendEmptyMessage(I)Z

    .line 268
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    const/4 v2, 0x4

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_fa

    .line 269
    :cond_e5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonGuid()J

    move-result-wide v3

    cmp-long v0, v3, v5

    if-eqz v0, :cond_fa

    .line 270
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->sendEmptyMessage(I)Z

    goto :goto_fa

    .line 273
    :cond_f5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->sendEmptyMessage(I)Z

    .line 277
    :cond_fa
    :goto_fa
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getSamsungAccountCount()I

    move-result v0

    if-lez v0, :cond_104

    .line 278
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mIsSamsungAccountLogin:Z

    .line 281
    :cond_104
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    const-string v1, "After BOOT sendBroadcastForMDE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->sendBroadcastForMDE(Landroid/content/Context;)V

    return-void
.end method

.method isBackGroundScannRunning()Z
    .registers 1

    .line 1052
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isScanningRunning:Z

    return p0
.end method

.method public isGotAutohotspotBleAdvFromClient()Z
    .registers 1

    .line 1543
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mIsGotAutohotspotBleAdvFromClient:Z

    return p0
.end method

.method isRegsteredAutoHotspotServer()Z
    .registers 2

    .line 1532
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 1533
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getStandAloneBleMode()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartGattServer:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    if-eqz p0, :cond_23

    .line 1534
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothGattServer;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 1535
    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    const-string v0, "isRegsteredAutoHotspotServer()"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method declared-synchronized registerAutoHotspotGattServer(Z)Z
    .registers 6

    monitor-enter p0

    const/4 v0, 0x0

    .line 1464
    :try_start_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 1465
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mGattServerObjectLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_95

    if-eqz v1, :cond_46

    .line 1466
    :try_start_b
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getStandAloneBleMode()Z

    move-result v3

    if-eqz v3, :cond_46

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartGattServer:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v3, v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    if-nez v3, :cond_46

    .line 1468
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    const-string v1, "registerAutoHotspotGattServer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":\tregisterAutoHotspotGattServer"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1470
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartGattServer:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->setGattServer(Z)Z

    move-result p1
    :try_end_3c
    .catchall {:try_start_b .. :try_end_3c} :catchall_44

    const-wide/16 v0, 0x32

    .line 1472
    :try_start_3e
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_44

    .line 1475
    :catch_41
    :try_start_41
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_44

    monitor-exit p0

    return p1

    :catchall_44
    move-exception p1

    goto :goto_93

    :cond_46
    if-eqz v1, :cond_90

    .line 1476
    :try_start_48
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getStandAloneBleMode()Z

    move-result v1

    if-eqz v1, :cond_90

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartGattServer:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    if-eqz v1, :cond_90

    .line 1477
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGattServer;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-eqz v0, :cond_60

    const/4 p1, 0x1

    .line 1478
    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_48 .. :try_end_5e} :catchall_44

    monitor-exit p0

    return p1

    .line 1480
    :cond_60
    :try_start_60
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    const-string v1, "AutoHotspot Service is not registered, registering again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":\tAutoHotspot Service is not registered, registering again"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1482
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartGattServer:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    .line 1483
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->setGattServer(Z)Z

    move-result p1
    :try_end_88
    .catchall {:try_start_60 .. :try_end_88} :catchall_44

    const-wide/16 v0, 0x12c

    .line 1485
    :try_start_8a
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8d} :catch_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_44

    .line 1488
    :catch_8d
    :try_start_8d
    monitor-exit v2
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_44

    monitor-exit p0

    return p1

    .line 1491
    :cond_90
    :try_start_90
    monitor-exit v2
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_44

    .line 1492
    monitor-exit p0

    return v0

    .line 1491
    :goto_93
    :try_start_93
    monitor-exit v2
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_44

    :try_start_94
    throw p1
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_95

    :catchall_95
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method sendMessagewithDelay(II)V
    .registers 5

    .line 1060
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    if-eqz p0, :cond_8

    int-to-long v0, p2

    .line 1061
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_8
    return-void
.end method

.method public setBleStandAloneModeByAutohotspot(Z)V
    .registers 11

    .line 286
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBleStandAloneModeByAutohotspot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isAutoHotspotBleSet:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isAutoHotspotBleSet:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "setBleStandAloneModeByAutohotspot:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isAutoHotspotBleSet:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 288
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 289
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5b

    move v0, v1

    goto :goto_5c

    :cond_5b
    move v0, v3

    .line 290
    :goto_5c
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v4, :cond_120

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getStandAloneBleMode()Z

    move-result v4

    if-nez v4, :cond_120

    const-string v4, "setBleStandAloneModeByAutohotspot result:"

    if-eqz p1, :cond_d5

    if-nez v0, :cond_d5

    .line 291
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->isNearByAutohotspotEnabled()Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 292
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isAutoHotspotBleSet:Z

    if-eqz v0, :cond_8b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLastTimeStampBleStandaloneAPICalled:J

    sub-long/2addr v2, v5

    const-wide/16 v7, 0x1388

    cmp-long v0, v2, v7

    if-gtz v0, :cond_8b

    const-wide/16 v2, -0x1

    cmp-long v0, v5, v2

    if-nez v0, :cond_13d

    .line 293
    :cond_8b
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isAutoHotspotBleSet:Z

    .line 294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLastTimeStampBleStandaloneAPICalled:J

    .line 295
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->semSetStandAloneBleMode(Z)Z

    move-result v0

    .line 296
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",isEnabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_13d

    :cond_d5
    if-nez p1, :cond_13d

    .line 299
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isAutoHotspotBleSet:Z

    if-eqz v0, :cond_13d

    .line 300
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isAutoHotspotBleSet:Z

    .line 301
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothAdapter;->semSetStandAloneBleMode(Z)Z

    .line 302
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isAutoHotspotBleSet:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isAutoHotspotBleSet:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_13d

    .line 306
    :cond_120
    sget-object p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    const-string v0, "mBluetoothAdapter is null or getStandAloneBleMode is not set "

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    :cond_13d
    :goto_13d
    return-void
.end method

.method public setIsAutoHotspotBleSet()V
    .registers 2

    const/4 v0, 0x1

    .line 1056
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isAutoHotspotBleSet:Z

    return-void
.end method

.method startBleScanning()V
    .registers 16

    .line 970
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isFactoryBinary()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 971
    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    const-string v0, "This devices\'s binary is a factory binary"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 974
    :cond_16
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isScanningRunning:Z

    if-eqz v0, :cond_1b

    return-void

    .line 976
    :cond_1b
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->checkPreConditions()I

    move-result v0

    if-gez v0, :cond_38

    .line 978
    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to start background scanner "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 981
    :cond_38
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonGuid()J

    move-result-wide v0

    .line 982
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonFamilyId()J

    move-result-wide v2

    .line 983
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_ap_smart_tethering_settings"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 984
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "wifi_client_smart_tethering_settings"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 985
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "client_advanced_autohotspot_run"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 986
    iget-object v8, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wifi_ap_smart_d2d_mhs"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 987
    iget-object v8, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonD2DFamilyid()J

    move-result-wide v8

    .line 988
    iget-object v10, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v10}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->isNearByAutohotspotEnabled()Z

    move-result v10

    if-nez v4, :cond_b1

    if-nez v5, :cond_b1

    if-nez v7, :cond_b1

    if-nez v6, :cond_b1

    if-nez v10, :cond_b1

    const-wide/16 v10, -0x1

    cmp-long v4, v8, v10

    if-nez v4, :cond_b1

    .line 990
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    const-string v1, "not to start background scanner as there is no MST/CST/D2D enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":\t not to start background scanner as there is no MST/CST/D2D enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void

    .line 999
    :cond_b1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v6, 0x1

    if-nez v4, :cond_d5

    .line 1001
    iput-boolean v6, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isStartScanningPending:Z

    .line 1002
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBluetoothAdapter == null, waiting for isStartScanningPending "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isStartScanningPending:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1005
    :cond_d5
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getStandAloneBleMode()Z

    move-result v4

    if-eqz v4, :cond_e3

    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->semIsBleEnabled()Z

    move-result v4

    if-nez v4, :cond_ee

    :cond_e3
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 1006
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->isNearByAutohotspotEnabled()Z

    move-result v4

    if-eqz v4, :cond_ee

    .line 1007
    invoke-virtual {p0, v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->setBleStandAloneModeByAutohotspot(Z)V

    .line 1009
    :cond_ee
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 1010
    new-instance v4, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerCallback;

    const/4 v10, 0x0

    invoke-direct {v4, p0, v10}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerCallback;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerCallback-IA;)V

    iput-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartBleScannerCallback:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerCallback;

    .line 1011
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v4, :cond_11d

    .line 1012
    iput-boolean v6, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isStartScanningPending:Z

    .line 1013
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBluetoothLeScanner == null, waiting for isStartScanningPending "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isStartScanningPending:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1017
    :cond_11d
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->buildScanFilters()Ljava/util/List;

    move-result-object v4

    .line 1018
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_147

    .line 1019
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    const-string v1, " scanfilter size zero"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":\t scanfilter size zero "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void

    .line 1023
    :cond_147
    sget-boolean v10, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->SUPPORTMOBILEAPENHANCED_LITE:Z

    const-string v11, ",mWifiApscanWindow:"

    const-string v12, ",mD2DFamilyID:"

    const-string v13, ",mHashBasedFamilyID:"

    if-eqz v10, :cond_1f5

    .line 1024
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1025
    iget-object v10, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    const-string v14, "power"

    invoke-virtual {v10, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/PowerManager;

    .line 1026
    invoke-virtual {v10}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v10

    if-eq v7, v6, :cond_168

    if-eqz v10, :cond_27f

    if-ne v5, v6, :cond_27f

    .line 1028
    :cond_168
    iput-boolean v6, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isScanningRunning:Z

    .line 1029
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->buildScanSettings()Landroid/bluetooth/le/ScanSettings;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartBleScannerCallback:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerCallback;

    invoke-virtual {v5, v4, v6, v7}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    .line 1030
    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->DBG:Z

    if-eqz v4, :cond_1d4

    .line 1031
    sget-object v4, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Started Lite scanning,mHashBasedGuid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApscanWindow:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":\tStarted Lite scanning,mHashBasedGuid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApscanWindow:I

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto/16 :goto_27f

    .line 1034
    :cond_1d4
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    const-string v1, "Started Lite scanning"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":\tStarted Lite scanning"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto/16 :goto_27f

    .line 1039
    :cond_1f5
    iput-boolean v6, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isScanningRunning:Z

    .line 1040
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->buildScanSettings()Landroid/bluetooth/le/ScanSettings;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartBleScannerCallback:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerCallback;

    invoke-virtual {v5, v4, v6, v7}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    .line 1041
    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->DBG:Z

    if-eqz v4, :cond_260

    .line 1042
    sget-object v4, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Started scanning,mHashBasedGuid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApscanWindow:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":\tStarted scanning,mHashBasedGuid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApscanWindow:I

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_27f

    .line 1045
    :cond_260
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    const-string v1, "Started scanning"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":\tStarted scanning"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    :cond_27f
    :goto_27f
    return-void
.end method

.method declared-synchronized unregisterAutoHotspotGattServer()V
    .registers 7

    monitor-enter p0

    .line 1495
    :try_start_1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartD2DClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;

    move-result-object v0

    .line 1496
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mGattServerObjectLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_91

    .line 1497
    :try_start_c
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartMHS:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isMHSAdvertizing()Z

    move-result v2

    .line 1498
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->isAdvertising()Z

    move-result v0

    if-nez v2, :cond_4a

    if-eqz v0, :cond_1b

    goto :goto_4a

    .line 1504
    :cond_1b
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    const-string v2, "unregisterAutoHotspotGattServer"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":\tunregisterAutoHotspotGattServer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1506
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartGattServer:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->removeGattServer()V

    const/4 v0, 0x0

    .line 1507
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mIsGotAutohotspotBleAdvFromClient:Z
    :try_end_42
    .catchall {:try_start_c .. :try_end_42} :catchall_8e

    const-wide/16 v2, 0x64

    .line 1509
    :try_start_44
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_8e

    .line 1512
    :catch_47
    :try_start_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_8e

    .line 1513
    monitor-exit p0

    return-void

    .line 1500
    :cond_4a
    :goto_4a
    :try_start_4a
    sget-object v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unregisterAutoHotspotGattServer, is called but mhs_adv:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",d2d_adv:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":\tunregisterAutoHotspotGattServer , is called but mhs_adv:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",d2d_adv:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1502
    monitor-exit v1
    :try_end_8c
    .catchall {:try_start_4a .. :try_end_8c} :catchall_8e

    monitor-exit p0

    return-void

    :catchall_8e
    move-exception v0

    .line 1512
    :try_start_8f
    monitor-exit v1
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8e

    :try_start_90
    throw v0
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_91

    :catchall_91
    move-exception v0

    monitor-exit p0

    throw v0
.end method
