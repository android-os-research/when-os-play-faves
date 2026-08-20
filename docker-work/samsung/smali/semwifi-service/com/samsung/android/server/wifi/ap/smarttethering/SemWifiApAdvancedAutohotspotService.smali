.class public Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;
.super Ljava/lang/Object;
.source "SemWifiApAdvancedAutohotspotService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;,
        Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$PartialScanListener;,
        Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$FullScanListener;
    }
.end annotation


# static fields
.field private static final ACTION_NEARBY_SCANNING:Ljava/lang/String; = "com.samsung.android.nearbyscanning"

.field private static final ADV_HISTORY_DB_NAME:Ljava/lang/String; = "adv_autohotspot_client_history"

.field private static final AUTOHOTSPOT_DISCOVERY_TIMEOUT_INTERVAL:I = 0x1d4c0

.field private static final AUTOHOTSPOT_SCAN_RESULT_INTERVAL:I = 0x1f4

.field private static final AUTOHOTSPOT_TRAFFIC_CHECK_INTERVAL:I = 0x1d4c0

.field private static final AUTOHOTSPOT_TRAFFIC_THRESHOLD:I = 0x1400

.field private static final CHECK_PACKET_TIME_OUT_DURATION:I = 0x2710

.field private static final CMD_AUTOHOTSPOT_DISCOVERY_TIMEOUT:I = 0x14

.field private static final CMD_AUTOHOTSPOT_SCAN_OFF:I = 0xf

.field private static final CMD_AUTOHOTSPOT_SCAN_ON:I = 0xe

.field private static final CMD_AUTOHOTSPOT_WAKEUP_TIMEOUT:I = 0x1a

.field private static final CMD_BLE_DISABLED:I = 0x9

.field private static final CMD_BLE_ENABLED:I = 0x8

.field private static final CMD_CHECK_AUTOHOTSPOT_TRAFFIC_IN_LCD_OFF:I = 0x1d

.field private static final CMD_CHECK_AUTOHOTSPOT_TRAFFIC_IN_LCD_OFF_FIRST:I = 0x1e

.field private static final CMD_GET_AUTOHOTSPOT_SCAN_RESULT:I = 0x13

.field private static final CMD_HARDAP_SCAN_OFF:I = 0xd

.field private static final CMD_HARDAP_SCAN_ON:I = 0xc

.field private static final CMD_INITIALIZE:I = 0x1

.field private static final CMD_MONITOR_WLAN_TRAFFIC:I = 0x10

.field private static final CMD_NEARBY_SHARE_DISABLED:I = 0x7

.field private static final CMD_NEARBY_SHARE_ENABLED:I = 0x6

.field private static final CMD_SCREEN_OFF:I = 0xb

.field private static final CMD_SCREEN_OFF_TIMEOUT:I = 0x18

.field private static final CMD_SCREEN_ON:I = 0xa

.field private static final CMD_SCREEN_ON_TIMEOUT:I = 0x19

.field private static final CMD_START_PARTIAL_SCAN:I = 0x1b

.field private static final CMD_STOP_PARTIAL_SCAN:I = 0x1c

.field private static final CMD_WIFI_CONNECTED:I = 0x4

.field private static final CMD_WIFI_DISCONNECTED:I = 0x5

.field private static final CMD_WIFI_DISCONNECTED_TIMEOUT:I = 0x15

.field private static final CMD_WIFI_OFF:I = 0x3

.field private static final CMD_WIFI_ON:I = 0x2

.field private static final CMD_WIFI_ON_TIMEOUT:I = 0x16

.field private static final EVENT_FAVORITE_NETWORK_FOUND:I = 0x11

.field private static final EVENT_FAVORITE_NETWORK_NOT_FOUND:I = 0x12

.field private static final HARDAP_SCAN_FAILED:I = 0x17

.field private static final MAX_COMMAND:I = 0x32

.field private static final MAX_WIFI_SCAN_LIMIT:I = 0x28

.field private static final SCREEN_OFF_TIME_OUT_DURATION:I = 0x1770

.field private static final TAG:Ljava/lang/String; = "SemWifiApAdvancedAutohotspotService"

.field private static final WIFIAP_WARNING_CLASS:Ljava/lang/String; = "com.samsung.android.settings.wifi.mobileap.WifiApWarning"

.field private static final WIFIAP_WARNING_DIALOG:Ljava/lang/String; = "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

.field private static final WIFIAP_WARNING_DIALOG_TYPE:Ljava/lang/String; = "wifiap_warning_dialog_type"

.field private static final WIFIAP_WARNING_STOP_DIALOG:Ljava/lang/String; = "com.samsung.android.settings.wifi.mobileap.wifiapwarning.finish"

.field private static final WIFI_RECONNECTION_TIME_OUT_DURATION:I = 0x4650


# instance fields
.field private AttemptToConnectWifi:Z

.field private NumberOfTimeWiFiScan:I

.field private WaitingToConnect:Z

.field private autohotspot_discovery_timeout_message:Lcom/android/internal/util/WakeupMessage;

.field private autohotspot_discovery_timeout_message_TAG:Ljava/lang/String;

.field private autohotspot_lcdoff_added_traffic_check_message:Lcom/android/internal/util/WakeupMessage;

.field private autohotspot_lcdoff_added_traffic_check_message_TAG:Ljava/lang/String;

.field private autohotspot_traffic_check_message:Lcom/android/internal/util/WakeupMessage;

.field private autohotspot_traffic_check_message_TAG:Ljava/lang/String;

.field private autohotspot_wakeup_message_scheduled:Z

.field private autohotspot_wakeup_timeout_message:Lcom/android/internal/util/WakeupMessage;

.field private autohotspot_wakeup_timeout_message_TAG:Ljava/lang/String;

.field private isAHConnectionIntiatedFromAAH:Z

.field private isAttemptedToConnectToAutohotspot:Z

.field private isAutoHotspotConnected:Z

.field private isAutohotspotDisconnectedBecauseOfLCDOff:Z

.field private isAvailableAp:Z

.field private isBleAdvertising:Z

.field private isBleON:Z

.field private isLCDOn:Z

.field private isMobileDataEnabled:Z

.field private isNearbyScanEnabled:Z

.field private isRegisteredWifiScan:Z

.field private isSettingsAppInForeground:Z

.field private isUserCancelledPopUp:Z

.field private isWifiConnected:Z

.field private isWifiEnabledByUser:Z

.field private isWifiOn:Z

.field private isWifiSettingsAppInForeground:Z

.field private mAAHFirstTimeLCDDialog:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAdvAHDumpLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAospWifimanager:Landroid/net/wifi/WifiManager;

.field private mAutoHotspotConnectedConfigKey:Ljava/lang/String;

.field private mAutohotspotWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;

.field private mCellularDataListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mConnectedInfo:Landroid/net/wifi/WifiInfo;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private mFullScanListener:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$FullScanListener;

.field private mLastAttemptedBleScanResult:Lcom/samsung/android/wifi/SemWifiApBleScanResult;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mPackage:Ljava/lang/String;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPacketCheck:I

.field private mPartialScanListener:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$PartialScanListener;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mSemWifimanager:Lcom/samsung/android/wifi/SemWifiManager;

.field private mSmartApAdvThread:Landroid/os/HandlerThread;

.field private mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

.field private final mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;

.field private final mWifiControlListener:Lcom/samsung/android/server/wifi/db/WifiControlListener;

.field private mWifiListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private mWifiScanner:Landroid/net/wifi/WifiScanner;

.field private mWorkSource:Landroid/os/WorkSource;

.field private screen_off_timeout_message:Lcom/android/internal/util/WakeupMessage;

.field private screen_off_timeout_message_TAG:Ljava/lang/String;

.field private wifiBroadCastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetAttemptToConnectWifi(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->AttemptToConnectWifi:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetNumberOfTimeWiFiScan(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->NumberOfTimeWiFiScan:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetWaitingToConnect(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->WaitingToConnect:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetautohotspot_discovery_timeout_message(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/android/internal/util/WakeupMessage;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->autohotspot_discovery_timeout_message:Lcom/android/internal/util/WakeupMessage;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetautohotspot_lcdoff_added_traffic_check_message(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/android/internal/util/WakeupMessage;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->autohotspot_lcdoff_added_traffic_check_message:Lcom/android/internal/util/WakeupMessage;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetautohotspot_traffic_check_message(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/android/internal/util/WakeupMessage;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->autohotspot_traffic_check_message:Lcom/android/internal/util/WakeupMessage;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetautohotspot_wakeup_message_scheduled(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->autohotspot_wakeup_message_scheduled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetautohotspot_wakeup_timeout_message(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/android/internal/util/WakeupMessage;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->autohotspot_wakeup_timeout_message:Lcom/android/internal/util/WakeupMessage;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisAHConnectionIntiatedFromAAH(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isAHConnectionIntiatedFromAAH:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisAttemptedToConnectToAutohotspot(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isAttemptedToConnectToAutohotspot:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisAutoHotspotConnected(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isAutoHotspotConnected:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisAutohotspotDisconnectedBecauseOfLCDOff(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isAutohotspotDisconnectedBecauseOfLCDOff:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisLCDOn(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isLCDOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisMobileDataEnabled(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isMobileDataEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisWifiConnected(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isWifiConnected:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisWifiEnabledByUser(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isWifiEnabledByUser:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisWifiOn(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isWifiOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAAHFirstTimeLCDDialog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mAAHFirstTimeLCDDialog:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAutoHotspotConnectedConfigKey(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mAutoHotspotConnectedConfigKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAutohotspotWifiInfo(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Landroid/net/wifi/WifiInfo;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mAutohotspotWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectedInfo(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Landroid/net/wifi/WifiInfo;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mConnectedInfo:Landroid/net/wifi/WifiInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastAttemptedBleScanResult(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/samsung/android/wifi/SemWifiApBleScanResult;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mLastAttemptedBleScanResult:Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackage(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mPackage:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPacketCheck(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mPacketCheck:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscreen_off_timeout_message(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/android/internal/util/WakeupMessage;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->screen_off_timeout_message:Lcom/android/internal/util/WakeupMessage;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputAttemptToConnectWifi(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->AttemptToConnectWifi:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputNumberOfTimeWiFiScan(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->NumberOfTimeWiFiScan:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputWaitingToConnect(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->WaitingToConnect:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputautohotspot_wakeup_message_scheduled(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->autohotspot_wakeup_message_scheduled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisAHConnectionIntiatedFromAAH(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isAHConnectionIntiatedFromAAH:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisAttemptedToConnectToAutohotspot(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isAttemptedToConnectToAutohotspot:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisAutoHotspotConnected(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isAutoHotspotConnected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisAutohotspotDisconnectedBecauseOfLCDOff(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isAutohotspotDisconnectedBecauseOfLCDOff:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisBleON(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isBleON:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisLCDOn(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isLCDOn:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisMobileDataEnabled(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isMobileDataEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisNearbyScanEnabled(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isNearbyScanEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisUserCancelledPopUp(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isUserCancelledPopUp:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisWifiConnected(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isWifiConnected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisWifiEnabledByUser(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isWifiEnabledByUser:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisWifiOn(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isWifiOn:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAutohotspotWifiInfo(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Landroid/net/wifi/WifiInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mAutohotspotWifiInfo:Landroid/net/wifi/WifiInfo;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmConnectedInfo(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Landroid/net/wifi/WifiInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mConnectedInfo:Landroid/net/wifi/WifiInfo;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastAttemptedBleScanResult(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Lcom/samsung/android/wifi/SemWifiApBleScanResult;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mLastAttemptedBleScanResult:Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLinkProperties(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Landroid/net/LinkProperties;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mLinkProperties:Landroid/net/LinkProperties;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPackage(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mPackage:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPacketCheck(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mPacketCheck:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckAdvancedAutohotspotDiscovery(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->checkAdvancedAutohotspotDiscovery()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckMobileDataEnabled(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->checkMobileDataEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcheckToStopAdvancedAutohotspotDiscovery(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->checkToStopAdvancedAutohotspotDiscovery()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcloseWifiApWarningDialogIfOpen(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->closeWifiApWarningDialogIfOpen()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoPartialScan(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->doPartialScan()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetAospWifimanager(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Landroid/net/wifi/WifiManager;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getAospWifimanager()Landroid/net/wifi/WifiManager;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetAutohotspotBleUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getAutohotspotBleUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetPowerManager(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Landroid/os/PowerManager;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getPowerManager()Landroid/os/PowerManager;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSemFrameworkFacade(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getSemFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSemWifiApAdvancedAutohotspotMHSLcdOnOff(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getSemWifiApAdvancedAutohotspotMHSLcdOnOff()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSemWifimanager(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/samsung/android/wifi/SemWifiManager;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getSemWifimanager()Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetStateString(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;I)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getStateString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetWifiManagerProxy(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhasPreviousAutohotspotGattConnetionHistory(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->hasPreviousAutohotspotGattConnetionHistory()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mlaunchWiFiApWarning(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->launchWiFiApWarning(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveDoubleQuotes(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mresetAutohotspotBecauseOfWiFiShutDown(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->resetAutohotspotBecauseOfWiFiShutDown()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetIfExistAvailableAP(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->setIfExistAvailableAP()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopFullScan(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->stopFullScan()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopPartialScan(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->stopPartialScan()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;)V
    .registers 5

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 60
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isUserCancelledPopUp:Z

    .line 76
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->WaitingToConnect:Z

    .line 77
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->AttemptToConnectWifi:Z

    .line 78
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isBleAdvertising:Z

    .line 83
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isAHConnectionIntiatedFromAAH:Z

    const-string v0, ""

    .line 86
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mPackage:Ljava/lang/String;

    .line 87
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isWifiEnabledByUser:Z

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mAAHFirstTimeLCDDialog:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->autohotspot_lcdoff_added_traffic_check_message:Lcom/android/internal/util/WakeupMessage;

    const-string v1, "SemWifiApAdvancedAutohotspotService adv autohotspot lcdoff added traffic check message Timeout"

    .line 111
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->autohotspot_lcdoff_added_traffic_check_message_TAG:Ljava/lang/String;

    .line 113
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->autohotspot_traffic_check_message:Lcom/android/internal/util/WakeupMessage;

    const-string v1, "SemWifiApAdvancedAutohotspotService adv autohotspot traffic check message Timeout"

    .line 114
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->autohotspot_traffic_check_message_TAG:Ljava/lang/String;

    .line 116
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->autohotspot_discovery_timeout_message:Lcom/android/internal/util/WakeupMessage;

    const-string v1, "SemWifiApAdvancedAutohotspotService adv autohotspot discovery timeout message Timeout"

    .line 117
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->autohotspot_discovery_timeout_message_TAG:Ljava/lang/String;

    .line 119
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->autohotspot_wakeup_timeout_message:Lcom/android/internal/util/WakeupMessage;

    const-string v1, "SemWifiApAdvancedAutohotspotService adv autohotspot wakeup timeout message Timeout"

    .line 120
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->autohotspot_wakeup_timeout_message_TAG:Ljava/lang/String;

    .line 122
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->screen_off_timeout_message:Lcom/android/internal/util/WakeupMessage;

    const-string v0, "SemWifiApAdvancedAutohotspotService adv autohotspot screen off  message Timeout"

    .line 123
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->screen_off_timeout_message_TAG:Ljava/lang/String;

    .line 125
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->autohotspot_wakeup_message_scheduled:Z

    .line 160
    iput p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mPacketCheck:I

    .line 258
    new-instance p2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$1;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mWifiControlListener:Lcom/samsung/android/server/wifi/db/WifiControlListener;

    .line 272
    new-instance p2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$2;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;

    .line 502
    new-instance p2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$10;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$10;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mCellularDataListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 562
    new-instance p2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$12;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$12;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mWifiListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1631
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mAdvAHDumpLogs:Ljava/util/List;

    .line 165
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mContext:Landroid/content/Context;

    const/16 p1, 0x28

    .line 166
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->NumberOfTimeWiFiScan:I

    .line 168
    new-instance p1, Landroid/os/WorkSource;

    const/16 p2, 0x3e8

    const-string v0, "com.samsung.android.server.wifi.softap.smarttethering.adv"

    invoke-direct {p1, p2, v0}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mWorkSource:Landroid/os/WorkSource;

    return-void
.end method

.method private checkAdvancedAutohotspotDiscovery()V
    .registers 6

    .line 716
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isWifiEnabledByUser:Z

    const-string v1, "SemWifiApAdvancedAutohotspotService"

    if-nez v0, :cond_c

    const-string p0, "Wi-Fi is not enabled by User, so dont start Autohotspot discovery"

    .line 717
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 720
    :cond_c
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isWifiSettingsIsForeground()V

    .line 721
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->checkWifiActuallyConnected()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    .line 722
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isWifiConnected:Z

    const-string v0, "checkWifiActuallyConnected(): True"

    .line 723
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSettingsAppInForeground:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isSettingsAppInForeground:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isAvailableAp:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isAvailableAp:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isUserCancelledPopUp:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isUserCancelledPopUp:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isLCDOn:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isLCDOn:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isWifiOn:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isWifiOn:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isWifiConnected:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isWifiConnected:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isMobileDataEnabled:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->checkMobileDataEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",hasHistory:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->hasPreviousAutohotspotGattConnetionHistory()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isSettingsAppInForeground:Z

    if-nez v0, :cond_c9

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isAvailableAp:Z

    if-nez v0, :cond_c9

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isUserCancelledPopUp:Z

    if-nez v0, :cond_c9

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isLCDOn:Z

    if-eqz v0, :cond_c9

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->checkMobileDataEnabled()Z

    move-result v0

    if-nez v0, :cond_c9

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isWifiOn:Z

    if-eqz v0, :cond_c9

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isWifiConnected:Z

    if-nez v0, :cond_c9

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->hasPreviousAutohotspotGattConnetionHistory()Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 728
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getAutohotspotBleUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->startAdvancedAutohotspotDiscovery()I

    move-result v0

    if-nez v0, :cond_c4

    .line 729
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->autohotspot_discovery_timeout_message:Lcom/android/internal/util/WakeupMessage;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/32 v3, 0x1d4c0

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    .line 730
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getBleHandler()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;

    move-result-object p0

    const/16 v0, 0x13

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_c9

    :cond_c4
    const-string p0, "could not start Autohotspot discovery"

    .line 732
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c9
    :goto_c9
    return-void
.end method

.method private checkMobileDataEnabled()Z
    .registers 8

    .line 1575
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    const-string v1, "SemWifiApAdvancedAutohotspotService"

    const/4 v2, 0x0

    if-nez v0, :cond_16

    const-string v0, "checkMobileDataEnabled,activeNetwork is null"

    .line 1577
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->addAdvAHDumpLog(Ljava/lang/String;)V

    goto :goto_6c

    .line 1581
    :cond_16
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 1583
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    const/16 v4, 0xc

    .line 1584
    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v3, :cond_2f

    if-eqz v0, :cond_2f

    const/4 v2, 0x1

    .line 1586
    :cond_2f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkMobileDataEnabled,NetworkCapabilities, cellular:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",internet:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->addAdvAHDumpLog(Ljava/lang/String;)V

    .line 1587
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6c

    :cond_64
    const-string v0, "checkMobileDataEnabled,NetworkCapabilities is null"

    .line 1589
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->addAdvAHDumpLog(Ljava/lang/String;)V

    .line 1590
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    :goto_6c
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isMobileDataEnabled:Z

    .line 1594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkMobileDataEnabled :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isMobileDataEnabled:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->addAdvAHDumpLog(Ljava/lang/String;)V

    .line 1595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isMobileDataEnabled:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private checkToStopAdvancedAutohotspotDiscovery()V
    .registers 4

    .line 738
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getBleHandler()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "SemWifiApAdvancedAutohotspotService"

    const-string v2, "checkToStopAdvancedAutohotspotDiscovery, removed,CMD_GET_AUTOHOTSPOT_SCAN_RESULT "

    .line 739
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getBleHandler()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->removeMessages(I)V

    .line 742
    :cond_1a
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApAdvancedAutohotspotBleUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->stopAdvancedAutohotspotDiscovery()V

    return-void
.end method

.method private checkWifiActuallyConnected()Z
    .registers 3

    .line 702
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 703
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    if-nez v0, :cond_12

    return v1

    .line 707
    :cond_12
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-eqz p0, :cond_22

    const/4 v0, 0x1

    .line 709
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    return p0

    :cond_22
    return v1
.end method

.method private closeWifiApWarningDialogIfOpen()V
    .registers 3

    .line 1600
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getWifiApWarningActivityRunningState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_34

    const-string v0, "SemWifiApAdvancedAutohotspotService"

    const-string v1, "sending WIFIAP_WARNING_STOP_DIALOG "

    .line 1601
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    .line 1603
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.settings.wifi.mobileap.wifiapwarning.finish"

    .line 1604
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1605
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-wide/16 v0, 0xc8

    .line 1607
    :try_start_2c
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_34

    :catch_30
    move-exception p0

    .line 1609
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_34
    :goto_34
    return-void
.end method

.method private doFullScan()V
    .registers 5

    .line 796
    new-instance v0, Landroid/net/wifi/WifiScanner$ScanSettings;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    const/4 v1, 0x2

    .line 797
    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->type:I

    const-string v1, "SemWifiApAdvancedAutohotspotService"

    const-string v2, "doFullScan enter"

    .line 798
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 799
    iput v2, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    const/4 v2, 0x3

    .line 800
    iput v2, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    .line 801
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mFullScanListener:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$FullScanListener;

    if-nez v2, :cond_21

    .line 802
    new-instance v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$FullScanListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$FullScanListener;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$FullScanListener-IA;)V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mFullScanListener:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$FullScanListener;

    .line 804
    :cond_21
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiScanner()Landroid/net/wifi/WifiScanner;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 805
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mFullScanListener:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$FullScanListener;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v0, v3, p0}, Landroid/net/wifi/WifiScanner;->startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;Landroid/os/WorkSource;)V

    const-string p0, "doFullScan started"

    .line 806
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private doPartialScan()V
    .registers 11

    .line 756
    new-instance v0, Landroid/net/wifi/WifiScanner$ScanSettings;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    const/4 v1, 0x2

    .line 757
    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->type:I

    .line 759
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mAutohotspotWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v2, -0x1

    if-eqz v1, :cond_12

    .line 760
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v1

    goto :goto_13

    :cond_12
    move v1, v2

    .line 762
    :goto_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doScanInternal enter,freq:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SemWifiApAdvancedAutohotspotService"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3d

    .line 765
    iput v3, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 766
    iput-object v2, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 767
    iget-object v2, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    new-instance v5, Landroid/net/wifi/WifiScanner$ChannelSpec;

    invoke-direct {v5, v1}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    aput-object v5, v2, v3

    goto :goto_5c

    :cond_3d
    const/16 v1, 0x12

    new-array v2, v1, [I

    .line 770
    fill-array-data v2, :array_82

    new-array v5, v1, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 771
    iput-object v5, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    move v5, v3

    :goto_49
    if-ge v3, v1, :cond_5c

    .line 772
    aget v6, v2, v3

    .line 773
    iget-object v7, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    add-int/lit8 v8, v5, 0x1

    new-instance v9, Landroid/net/wifi/WifiScanner$ChannelSpec;

    invoke-direct {v9, v6}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    aput-object v9, v7, v5

    add-int/lit8 v3, v3, 0x1

    move v5, v8

    goto :goto_49

    :cond_5c
    :goto_5c
    const/4 v1, 0x3

    .line 776
    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    .line 777
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mPartialScanListener:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$PartialScanListener;

    if-nez v1, :cond_6b

    .line 778
    new-instance v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$PartialScanListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$PartialScanListener;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$PartialScanListener-IA;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mPartialScanListener:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$PartialScanListener;

    .line 780
    :cond_6b
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiScanner()Landroid/net/wifi/WifiScanner;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 781
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mPartialScanListener:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$PartialScanListener;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, v0, v2, p0}, Landroid/net/wifi/WifiScanner;->startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;Landroid/os/WorkSource;)V

    const-string p0, "doScanInternal started"

    .line 782
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :array_82
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
        0x1671
        0x1685
        0x1699
        0x16ad
        0x16c1
    .end array-data
.end method

.method private findFromScanResult(Ljava/util/List;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1535
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getSavedNetworkKeys()Ljava/util/List;

    move-result-object v0

    .line 1536
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "SemWifiApAdvancedAutohotspotService"

    if-nez v1, :cond_26

    .line 1537
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "not found, savedNetworkKeys size: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 1540
    :cond_26
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2a
    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_76

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 1541
    iget-object v5, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3f

    goto :goto_2a

    .line 1542
    :cond_3f
    iget-object v5, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v4, v4, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 1543
    invoke-static {v4}, Lcom/samsung/android/server/wifi/util/ScanPool;->getSecurityString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1542
    invoke-direct {p0, v5, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getConfigKeys(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1544
    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 1545
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "found "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    .line 1550
    :cond_76
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not found, scan result size: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private getAospWifimanager()Landroid/net/wifi/WifiManager;
    .registers 3

    .line 208
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mAospWifimanager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_10

    .line 209
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mAospWifimanager:Landroid/net/wifi/WifiManager;

    .line 211
    :cond_10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mAospWifimanager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method private getAutohotspotBleUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;
    .registers 1

    .line 614
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApAdvancedAutohotspotBleUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    move-result-object p0

    return-object p0
.end method

.method private getConfigKeys(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1527
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 1528
    array-length v0, p2

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_28

    aget-object v2, p2, v1

    .line 1529
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_28
    return-object p0
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .registers 3

    .line 171
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_10

    .line 172
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 174
    :cond_10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method private getPackageManager()Landroid/content/pm/PackageManager;
    .registers 2

    .line 186
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v0, :cond_5

    return-object v0

    .line 189
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private getPowerManager()Landroid/os/PowerManager;
    .registers 3

    .line 194
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_10

    .line 195
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mPowerManager:Landroid/os/PowerManager;

    .line 197
    :cond_10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method private getSavedNetworkKeys()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1555
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiConfigManager()Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getManagedNetworks()Ljava/util/List;

    move-result-object p0

    .line 1556
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiConfigManager()Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object v0

    .line 1557
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1559
    :try_start_19
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1d
    :goto_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 1560
    iget-object v3, v2, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    if-eqz v3, :cond_1d

    .line 1561
    iget-object v3, v2, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    if-eqz v3, :cond_1d

    .line 1562
    iget-boolean v4, v3, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    if-eqz v4, :cond_1d

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1563
    iget-object v2, v2, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_48} :catch_49

    goto :goto_1d

    :catch_49
    :cond_49
    return-object v1
.end method

.method private getSemFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;
    .registers 2

    .line 215
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    if-eqz v0, :cond_5

    return-object v0

    .line 218
    :cond_5
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    return-object v0
.end method

.method private getSemWifiApAdvancedAutohotspotMHSLcdOnOff()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff;
    .registers 1

    .line 618
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApAdvancedAutohotspotMHSLcdOnOff()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff;

    move-result-object p0

    return-object p0
.end method

.method private getSemWifimanager()Lcom/samsung/android/wifi/SemWifiManager;
    .registers 3

    .line 201
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mSemWifimanager:Lcom/samsung/android/wifi/SemWifiManager;

    if-nez v0, :cond_10

    .line 202
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mContext:Landroid/content/Context;

    const-string v1, "sem_wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mSemWifimanager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 204
    :cond_10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mSemWifimanager:Lcom/samsung/android/wifi/SemWifiManager;

    return-object p0
.end method

.method private getStateString(I)Ljava/lang/String;
    .registers 2

    packed-switch p1, :pswitch_data_60

    const-string p0, "NotAddedEvent"

    return-object p0

    :pswitch_6
    const-string p0, "CMD_CHECK_AUTOHOTSPOT_TRAFFIC_IN_LCD_OFF_FIRST"

    return-object p0

    :pswitch_9
    const-string p0, "CMD_CHECK_AUTOHOTSPOT_TRAFFIC_IN_LCD_OFF"

    return-object p0

    :pswitch_c
    const-string p0, "CMD_STOP_PARTIAL_SCAN"

    return-object p0

    :pswitch_f
    const-string p0, "CMD_START_PARTIAL_SCAN"

    return-object p0

    :pswitch_12
    const-string p0, "CMD_AUTOHOTSPOT_WAKEUP_TIMEOUT"

    return-object p0

    :pswitch_15
    const-string p0, "CMD_SCREEN_ON_TIMEOUT"

    return-object p0

    :pswitch_18
    const-string p0, "CMD_SCREEN_OFF_TIMEOUT"

    return-object p0

    :pswitch_1b
    const-string p0, "HARDAP_SCAN_FAILED"

    return-object p0

    :pswitch_1e
    const-string p0, "CMD_WIFI_ON_TIMEOUT"

    return-object p0

    :pswitch_21
    const-string p0, "CMD_WIFI_DISCONNECTED_TIMEOUT"

    return-object p0

    :pswitch_24
    const-string p0, "CMD_AUTOHOTSPOT_DISCOVERY_TIMEOUT"

    return-object p0

    :pswitch_27
    const-string p0, "CMD_GET_AUTOHOTSPOT_SCAN_RESULT"

    return-object p0

    :pswitch_2a
    const-string p0, "EVENT_FAVORITE_NETWORK_NOT_FOUND"

    return-object p0

    :pswitch_2d
    const-string p0, "EVENT_FAVORITE_NETWORK_FOUND"

    return-object p0

    :pswitch_30
    const-string p0, "CMD_MONITOR_WLAN_TRAFFIC"

    return-object p0

    :pswitch_33
    const-string p0, "CMD_AUTOHOTSPOT_SCAN_OFF"

    return-object p0

    :pswitch_36
    const-string p0, "CMD_AUTOHOTSPOT_SCAN_ON"

    return-object p0

    :pswitch_39
    const-string p0, "CMD_HARDAP_SCAN_OFF"

    return-object p0

    :pswitch_3c
    const-string p0, "CMD_HARDAP_SCAN_ON"

    return-object p0

    :pswitch_3f
    const-string p0, "CMD_SCREEN_OFF"

    return-object p0

    :pswitch_42
    const-string p0, "CMD_SCREEN_ON"

    return-object p0

    :pswitch_45
    const-string p0, "CMD_BLE_DISABLED"

    return-object p0

    :pswitch_48
    const-string p0, "CMD_BLE_ENABLED"

    return-object p0

    :pswitch_4b
    const-string p0, "CMD_NEARBY_SHARE_DISABLED"

    return-object p0

    :pswitch_4e
    const-string p0, "CMD_NEARBY_SHARE_ENABLED"

    return-object p0

    :pswitch_51
    const-string p0, "CMD_WIFI_DISCONNECTED"

    return-object p0

    :pswitch_54
    const-string p0, "CMD_WIFI_CONNECTED"

    return-object p0

    :pswitch_57
    const-string p0, "CMD_WIFI_OFF"

    return-object p0

    :pswitch_5a
    const-string p0, "CMD_WIFI_ON"

    return-object p0

    :pswitch_5d
    const-string p0, "CMD_INITIALIZE"

    return-object p0

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_5d
        :pswitch_5a
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private getUsageStatsManager()Landroid/app/usage/UsageStatsManager;
    .registers 3

    .line 178
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    if-eqz v0, :cond_5

    return-object v0

    .line 181
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mContext:Landroid/content/Context;

    const-string v1, "usagestats"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    return-object v0
.end method

.method private getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;
    .registers 2

    .line 223
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    if-eqz v0, :cond_5

    return-object v0

    .line 226
    :cond_5
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    return-object v0
.end method

.method private hasPreviousAutohotspotGattConnetionHistory()Z
    .registers 3

    .line 689
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "adv_autohotspot_client_history"

    const/16 v1, 0xa

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prev history :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiApAdvancedAutohotspotService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_28

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    return v0
.end method

.method private isNeedToRegisterWifiScanResults()Z
    .registers 3

    .line 499
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->hasPreviousAutohotspotGattConnetionHistory()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getAdvnacedConnectionSetting()I

    move-result p0

    if-eq p0, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method private isWifiSettingsIsForeground()V
    .registers 3

    const/4 v0, 0x0

    .line 695
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isSettingsAppInForeground:Z

    .line 696
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mPackage:Ljava/lang/String;

    const-string v1, "com.android.settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isWifiSettingsAppInForeground:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    .line 697
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isSettingsAppInForeground:Z

    :cond_14
    return-void
.end method

.method private launchWiFiApWarning(Ljava/lang/String;I)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 1618
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mAAHFirstTimeLCDDialog:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_3a

    .line 1620
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->closeWifiApWarningDialogIfOpen()V

    .line 1621
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mAAHFirstTimeLCDDialog:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1622
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings"

    const-string v1, "com.samsung.android.settings.wifi.mobileap.WifiApWarning"

    .line 1623
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 1624
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    .line 1625
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "wifiap_warning_dialog_type"

    .line 1626
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1627
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3a
    return-void
.end method

.method private registerNetworkRemoved()V
    .registers 3

    .line 308
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiConfigManager()Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$3;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->registerNetworkRemovedListener(Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;)V

    return-void
.end method

.method private registerReceiver()V
    .registers 6

    .line 401
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 402
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    .line 403
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    .line 404
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 405
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$4;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.samsung.account.SAMSUNGACCOUNT_SIGNOUT_COMPLETED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 416
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$5;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.samsung.android.net.wifi.ALLOW_AUTOHOTSPOT_DISCOVERY_ACTION"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 428
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$6;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 443
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$7;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.samsung.bluetooth.adapter.action.BLE_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 458
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$8;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$8;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.samsung.android.nearbyscanning"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 472
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$9;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$9;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 487
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->registerWifiScanReceiver()V

    .line 488
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v2, 0xc

    .line 489
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/4 v3, 0x1

    .line 490
    invoke-virtual {v1, v3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mWifiListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 488
    invoke-virtual {v0, v1, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 492
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 493
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 494
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mCellularDataListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 492
    invoke-virtual {v0, v1, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 787
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_20

    const/4 v1, 0x0

    .line 788
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_20

    sub-int/2addr p0, v0

    .line 789
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_20

    .line 790
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_20
    return-object p1
.end method

.method private resetAutohotspotBecauseOfWiFiShutDown()V
    .registers 4

    const-string v0, "SemWifiApAdvancedAutohotspotService"

    const-string v1, "resetAutohotspotBecauseOfWiFiShutDown: on WIFI OFF "

    .line 645
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 646
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isAutoHotspotConnected:Z

    .line 647
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isAHConnectionIntiatedFromAAH:Z

    .line 648
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->AttemptToConnectWifi:Z

    .line 649
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isUserCancelledPopUp:Z

    .line 650
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isWifiConnected:Z

    const/16 v1, 0x28

    .line 651
    iput v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->NumberOfTimeWiFiScan:I

    .line 652
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->WaitingToConnect:Z

    .line 654
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getAutohotspotBleUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->clearFailedMHSConnectionHistory()V

    .line 655
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "client_advanced_autohotspot_run"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 657
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->autohotspot_discovery_timeout_message:Lcom/android/internal/util/WakeupMessage;

    invoke-virtual {v1}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 659
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getBleHandler()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 660
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getBleHandler()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->removeMessages(I)V

    .line 663
    :cond_42
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->screen_off_timeout_message:Lcom/android/internal/util/WakeupMessage;

    invoke-virtual {v1}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 665
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getBleHandler()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;

    move-result-object v1

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 666
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getBleHandler()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->removeMessages(I)V

    .line 669
    :cond_5a
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->autohotspot_traffic_check_message:Lcom/android/internal/util/WakeupMessage;

    invoke-virtual {v1}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 670
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->autohotspot_wakeup_timeout_message:Lcom/android/internal/util/WakeupMessage;

    invoke-virtual {v1}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 671
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getBleHandler()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;

    move-result-object v1

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 672
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getBleHandler()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->removeMessages(I)V

    .line 678
    :cond_77
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getAutohotspotBleUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->isAdvHotspotDiscoveryRunning()Z

    move-result v1

    if-eqz v1, :cond_88

    .line 679
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getAutohotspotBleUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->stopAdvancedAutohotspotDiscovery()V

    .line 681
    :cond_88
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getAutohotspotBleUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->isAdvHotspotWakeupRunning()Z

    move-result v1

    if-eqz v1, :cond_99

    .line 682
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getAutohotspotBleUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->stopAdvancedAutohotspotWakeup()V

    .line 684
    :cond_99
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isAttemptedToConnectToAutohotspot:Z

    .line 685
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isAutohotspotDisconnectedBecauseOfLCDOff:Z

    return-void
.end method

.method private setIfExistAvailableAP()V
    .registers 2

    const/4 v0, 0x0

    .line 528
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isAvailableAp:Z

    .line 529
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getSavedNetworkKeys()Ljava/util/List;

    move-result-object v0

    .line 530
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_e

    return-void

    .line 533
    :cond_e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mAospWifimanager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->findFromScanResult(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    .line 534
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isAvailableAp:Z

    :cond_1d
    return-void
.end method

.method private stopFullScan()V
    .registers 3

    .line 810
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mFullScanListener:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$FullScanListener;

    if-eqz v0, :cond_1d

    const-string v0, "SemWifiApAdvancedAutohotspotService"

    const-string v1, "stopFullScan"

    .line 811
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiScanner()Landroid/net/wifi/WifiScanner;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 813
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mFullScanListener:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$FullScanListener;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiScanner;->stopScan(Landroid/net/wifi/WifiScanner$ScanListener;)V

    const/4 v0, 0x0

    .line 814
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mFullScanListener:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$FullScanListener;

    :cond_1d
    return-void
.end method

.method private stopPartialScan()V
    .registers 3

    .line 746
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mPartialScanListener:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$PartialScanListener;

    if-eqz v0, :cond_1d

    const-string v0, "SemWifiApAdvancedAutohotspotService"

    const-string v1, "stopPartialScan"

    .line 747
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiScanner()Landroid/net/wifi/WifiScanner;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 749
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mPartialScanListener:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$PartialScanListener;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiScanner;->stopScan(Landroid/net/wifi/WifiScanner$ScanListener;)V

    const/4 v0, 0x0

    .line 750
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mPartialScanListener:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$PartialScanListener;

    :cond_1d
    return-void
.end method


# virtual methods
.method public declared-synchronized addAdvAHDumpLog(Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    .line 1633
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1635
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM-dd HH:mm:ss.SSS"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1637
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mAdvAHDumpLogs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v1, 0x3e8

    if-le p1, v1, :cond_47

    .line 1638
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mAdvAHDumpLogs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_57

    .line 1641
    :cond_47
    :try_start_47
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mAdvAHDumpLogs:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_50
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_47 .. :try_end_50} :catch_51
    .catchall {:try_start_47 .. :try_end_50} :catchall_57

    goto :goto_55

    :catch_51
    move-exception p1

    .line 1643
    :try_start_52
    invoke-virtual {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_57

    .line 1645
    :goto_55
    monitor-exit p0

    return-void

    :catchall_57
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public clearAutoHotspotHistory()V
    .registers 3

    const-string v0, "SemWifiApAdvancedAutohotspotService"

    const-string v1, "clearAutoHotspotHistory: network removed and SA log out"

    .line 630
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 631
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mAutohotspotWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 632
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mAutoHotspotConnectedConfigKey:Ljava/lang/String;

    .line 633
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getAutohotspotBleUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->setLastConnectedMHSMac(Ljava/lang/String;Landroid/net/wifi/WifiInfo;)V

    .line 634
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getAutohotspotBleUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->clearAutohotspotMHSConnectionHistory()V

    .line 635
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->resetAutohotspotBecauseOfWiFiShutDown()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    const-string p1, "Advanced AutoHotspot"

    .line 1661
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1662
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1664
    :try_start_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isLCDOn: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isLCDOn:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ",isWifiOn: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isWifiOn:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ",isWifiConnected:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isWifiConnected:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ",isMobileDataEnabled: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1665
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->checkMobileDataEnabled()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ",isBleAdvertising"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isBleAdvertising:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ",isNearByEnabled :"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isNearByAutohotspotEnabled()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1664
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1666
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "AdvnacedConnectionSetting "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getAdvnacedConnectionSetting()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",AdvnacedConnectionLcdOffSetting :"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1667
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getAdvnacedConnectionLcdOffSetting()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",NumberOfTimeWiFiScan "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->NumberOfTimeWiFiScan:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", WaitingToConnect "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->WaitingToConnect:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1666
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1669
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "hasHistory: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->hasPreviousAutohotspotGattConnetionHistory()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ",isAutoHotspotConnected "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isAutoHotspotConnected:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ",isAttemptedToConnectToAutohotspot "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isAttemptedToConnectToAutohotspot:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", isAutohotspotDisconnectedBecauseOfLCDOff"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isAutohotspotDisconnectedBecauseOfLCDOff:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1671
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mAutohotspotWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz p1, :cond_eb

    .line 1672
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "AutoHotspot Freq "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mAutohotspotWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p3}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " mAutoHotspotConnectedConfigKey "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mAutoHotspotConnectedConfigKey:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1674
    :cond_eb
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "AAH MHS MAC history:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getAutohotspotBleUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->getAutohotspotMHSConnectionHistory()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_107
    .catchall {:try_start_9 .. :try_end_107} :catchall_10b

    .line 1676
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_10b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1677
    throw p0
.end method

.method public getAdvnacedConnectionLcdOffSetting()I
    .registers 5

    .line 359
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getSemFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mContext:Landroid/content/Context;

    const-string v2, "smart_wifi_ap_advanced_connect_lcd_off"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v3, :cond_1a

    .line 361
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getAdvnacedConnectionSetting()I

    move-result p0

    if-ne p0, v1, :cond_19

    move v0, v1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x2

    :cond_1a
    :goto_1a
    return v0
.end method

.method public getAdvnacedConnectionSetting()I
    .registers 4

    .line 334
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getSemFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mContext:Landroid/content/Context;

    const-string v1, "smart_wifi_ap_advanced_connect"

    const/16 v2, 0xa

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_11

    const/4 p0, 0x1

    .line 338
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAdvnacedConnectionSetting() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiApAdvancedAutohotspotService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method getBleHandler()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;
    .registers 3

    .line 390
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "SemWifiApAdvancedAutohotspotService"

    const-string v1, "initialize Blehandler"

    .line 393
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mSmartApAdvThread:Landroid/os/HandlerThread;

    .line 395
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 396
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mSmartApAdvThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;

    return-object v0
.end method

.method public getDumpLogs()Ljava/lang/String;
    .registers 5

    .line 1648
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1649
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_9
    const-string v3, "--Advanced AutoHotspot \n"

    .line 1651
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1652
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mAdvAHDumpLogs:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_1f

    .line 1654
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1657
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_1f
    move-exception p0

    .line 1654
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1655
    throw p0
.end method

.method public handleBootCompleted()V
    .registers 6

    .line 240
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getAospWifimanager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_12

    const/16 v1, 0xc

    if-ne v0, v1, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, 0x1

    .line 241
    :goto_13
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isWifiOn:Z

    .line 242
    new-instance v0, Lcom/android/internal/util/WakeupMessage;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getBleHandler()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->autohotspot_lcdoff_added_traffic_check_message_TAG:Ljava/lang/String;

    const/16 v4, 0x1e

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->autohotspot_lcdoff_added_traffic_check_message:Lcom/android/internal/util/WakeupMessage;

    .line 244
    new-instance v0, Lcom/android/internal/util/WakeupMessage;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getBleHandler()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->autohotspot_traffic_check_message_TAG:Ljava/lang/String;

    const/16 v4, 0x1d

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->autohotspot_traffic_check_message:Lcom/android/internal/util/WakeupMessage;

    .line 246
    new-instance v0, Lcom/android/internal/util/WakeupMessage;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getBleHandler()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->autohotspot_discovery_timeout_message_TAG:Ljava/lang/String;

    const/16 v4, 0x14

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->autohotspot_discovery_timeout_message:Lcom/android/internal/util/WakeupMessage;

    .line 248
    new-instance v0, Lcom/android/internal/util/WakeupMessage;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getBleHandler()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->autohotspot_wakeup_timeout_message_TAG:Ljava/lang/String;

    const/16 v4, 0x1a

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->autohotspot_wakeup_timeout_message:Lcom/android/internal/util/WakeupMessage;

    .line 250
    new-instance v0, Lcom/android/internal/util/WakeupMessage;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getBleHandler()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->screen_off_timeout_message_TAG:Ljava/lang/String;

    const/16 v4, 0x18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->screen_off_timeout_message:Lcom/android/internal/util/WakeupMessage;

    .line 252
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->registerReceiver()V

    .line 253
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->registerNetworkRemoved()V

    .line 254
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getUsageStatsManager()Landroid/app/usage/UsageStatsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;

    invoke-virtual {v0, v1}, Landroid/app/usage/UsageStatsManager;->registerUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;)V

    .line 255
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiControlMonitor()Lcom/samsung/android/server/wifi/db/WifiControlMonitor;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mWifiControlListener:Lcom/samsung/android/server/wifi/db/WifiControlListener;

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->registerListener(Lcom/samsung/android/server/wifi/db/WifiControlListener;)V

    return-void
.end method

.method public isAutohotspotConnectedAfterLCDON(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 625
    :cond_4
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isAutoHotspotConnected:Z

    if-eqz v1, :cond_17

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getAutohotspotBleUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->getLastConnectedMHSMac()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_17

    const/4 v0, 0x1

    :cond_17
    return v0
.end method

.method isNearByAutohotspotEnabled()Z
    .registers 3

    .line 235
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "nearby_scanning_enabled"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method public registerWifiScanReceiver()V
    .registers 4

    const-string v0, "SemWifiApAdvancedAutohotspotService"

    const-string v1, "registerWifiScanReceiver()"

    .line 539
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isRegisteredWifiScan:Z

    if-nez v0, :cond_27

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isNeedToRegisterWifiScanResults()Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    .line 541
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isRegisteredWifiScan:Z

    .line 542
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$11;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$11;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->wifiBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 549
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_27
    return-void
.end method

.method public setAdvnacedConnectionLcdOffSetting(I)V
    .registers 4

    const/4 v0, 0x1

    if-lt p1, v0, :cond_26

    const/4 v0, 0x2

    if-le p1, v0, :cond_7

    goto :goto_26

    .line 384
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAdvnacedConnectionLcdOffSetting :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->addAdvAHDumpLog(Ljava/lang/String;)V

    .line 386
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getSemFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mContext:Landroid/content/Context;

    const-string v1, "smart_wifi_ap_advanced_connect_lcd_off"

    invoke-virtual {v0, p0, v1, p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    :cond_26
    :goto_26
    return-void
.end method

.method public setAdvnacedConnectionSetting(I)V
    .registers 7

    const/4 v0, 0x1

    if-lt p1, v0, :cond_3c

    const/4 v1, 0x3

    if-le p1, v1, :cond_7

    goto :goto_3c

    .line 346
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAdvnacedConnectionSetting :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->addAdvAHDumpLog(Ljava/lang/String;)V

    .line 348
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getSemFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mContext:Landroid/content/Context;

    const-string v4, "smart_wifi_ap_advanced_connect"

    invoke-virtual {v2, v3, v4, p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    const-string v2, "SemWifiApAdvancedAutohotspotService"

    const-string v3, "Try to register or unregister Wi-Fi scan Receiver"

    .line 350
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    if-eq p1, v2, :cond_39

    if-ne p1, v1, :cond_33

    goto :goto_39

    :cond_33
    if-ne p1, v0, :cond_3c

    .line 354
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->unregisterWifiScanReceiver()V

    goto :goto_3c

    .line 352
    :cond_39
    :goto_39
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->registerWifiScanReceiver()V

    :cond_3c
    :goto_3c
    return-void
.end method

.method public setCancelledByUser(Z)V
    .registers 5

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCancelledByUser:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SemWifiApAdvancedAutohotspotService"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->addAdvAHDumpLog(Ljava/lang/String;)V

    .line 641
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isUserCancelledPopUp:Z

    return-void
.end method

.method public setWifiSettingsForegroundState(I)V
    .registers 4

    if-ltz p1, :cond_38

    const/4 v0, 0x1

    if-le p1, v0, :cond_6

    goto :goto_38

    :cond_6
    if-ne p1, v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 375
    :goto_a
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isWifiSettingsAppInForeground:Z

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isWifiSettingsAppInForeground :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->addAdvAHDumpLog(Ljava/lang/String;)V

    .line 377
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isWifiSettingsAppInForeground:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isWifiSettingsAppInForeground:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifiApAdvancedAutohotspotService"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    :goto_38
    return-void
.end method

.method public unregisterWifiScanReceiver()V
    .registers 3

    const-string v0, "SemWifiApAdvancedAutohotspotService"

    const-string v1, "unregisterWifiScanReceiver()"

    .line 554
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isRegisteredWifiScan:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->wifiBroadCastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1a

    const/4 v1, 0x0

    .line 556
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isRegisteredWifiScan:Z

    .line 557
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 558
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->wifiBroadCastReceiver:Landroid/content/BroadcastReceiver;

    :cond_1a
    return-void
.end method

.method public updateGattFailedConnectionState(Ljava/lang/String;)V
    .registers 4

    .line 1445
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isAttemptedToConnectToAutohotspot:Z

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mLastAttemptedBleScanResult:Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    if-eqz v0, :cond_3a

    iget-object v0, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const/4 v0, 0x0

    .line 1446
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isAttemptedToConnectToAutohotspot:Z

    const/4 v1, 0x0

    .line 1447
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->mLastAttemptedBleScanResult:Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    .line 1448
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isAHConnectionIntiatedFromAAH:Z

    .line 1449
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateGattFailedConnectionState:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifiApAdvancedAutohotspotService"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    return-void
.end method
