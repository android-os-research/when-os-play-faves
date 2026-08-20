.class public Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;
.super Ljava/lang/Object;
.source "SemMobileWipsFrameworkService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;,
        Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;,
        Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$WipsDetectionsChangedCallback;
    }
.end annotation


# static fields
.field private static final EMERGENCY_STATE_CHANGED:Ljava/lang/String; = "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

.field public static final ENABLE_UNIFIED_HQM_SERVER:Z = true

.field private static final EVENT_BCN_ABORT:I = 0x3ec

.field private static final EVENT_BCN_INTERVAL:I = 0x3eb

.field private static final EVENT_SEND_SAVED_DATA:I = 0x3ee

.field private static final EVENT_START_SERVICE:I = 0x3e9

.field private static final EVENT_STOP_SERVICE:I = 0x3ea

.field private static final EVENT_WIPS_MONITOR:I = 0x3ed

.field private static final HOTSPOT_NETWORK_MASK:[I

.field private static final MAX_RETRY_COUNT:I = 0x2

.field private static final MOBILEWIPS_DEFAULT_MIN_RAMSIZE:I = 0x349238

.field private static final MOBILEWIPS_DEFAULT_MIN_RAMSIZE_GUARD:I = 0xf4240

.field private static final MWIPS_FRAMEWORK_VERSION:I = 0x1

.field private static final MWIPS_PACKAGE:Ljava/lang/String; = "com.samsung.android.server.wifi.mobilewips"

.field private static final MWIPS_SERVICE:Ljava/lang/String; = "com.samsung.android.server.wifi.mobilewips.SemMobileWipsService"

.field private static final SEEN_TIME:Ljava/lang/String; = "seen_time"

.field private static final SERVICE_START_DELAY:I = 0xbb8

.field private static final SERVICE_START_DELAY_BOOT_COMPLTED:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "SemMobileWipsFrameworkService"

.field private static final URI_CONTENT_MOBILE_WIPS_DETECTION_LIST:Ljava/lang/String; = "content://com.samsung.android.server.wifi.mobilewips/detection"

.field private static final WIPS_GOING_OFF:I = 0x2

.field private static final WIPS_GOING_ON:I = 0x3

.field private static final WIPS_MONITOR_INTERVAL:I = 0xbb8

.field private static final WIPS_OFF:I = 0x0

.field private static final WIPS_ON:I = 0x1


# instance fields
.field private final ISemMobileWipsCallback:Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;

.field private final defaultMobileWips:I

.field private isJDMDevice:Z

.field private mBootCompleted:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mBroadcastReceiverPackage:Landroid/content/BroadcastReceiver;

.field private mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mDnsRequester:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;

.field private final mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private mHandler:Landroid/os/Handler;

.field private final mInterfaceEventHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;

.field private mIsConnected:Z

.field private final mMobileWipsDetectionBssidList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPacketSender:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;

.field mPacketSenderFrameworkApi:Lcom/samsung/android/wifi/ISemMobileWipsPacketSender;

.field private mRetrycount:I

.field private final mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

.field private final mSemHqmManager:Landroid/os/SemHqmManager;

.field private final mSemMobileWipsNetdEvent:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;

.field private mSemMobileWipsWifiScanner:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;

.field private mService:Lcom/samsung/android/wifi/ISemMobileWipsService;

.field private final mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

.field private final mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private final mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

.field private mWifiScanner:Landroid/net/wifi/WifiScanner;

.field private final mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

.field private mWipsDetectionsChangedCallback:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$WipsDetectionsChangedCallback;

.field mWipsFrameworkApi:Lcom/samsung/android/wifi/ISemMobileWipsFramework;

.field private final mWipsObserver:Landroid/database/ContentObserver;

.field private mWipsServiceHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;

.field private final mWipsThread:Landroid/os/HandlerThread;

.field private mWipsValue:I


# direct methods
.method public static synthetic $r8$lambda$gEwEc3aDjXgz2Cn6zegzsqH0Ruk(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->lambda$setWipsValue$0(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmBootCompleted(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mBootCompleted:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmClientModeManager(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnection(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Landroid/content/ServiceConnection;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectivityManager(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Landroid/net/ConnectivityManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDnsRequester(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mDnsRequester:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsConnected(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mIsConnected:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPacketSender(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mPacketSender:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRetrycount(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mRetrycount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemHqmManager(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Landroid/os/SemHqmManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mSemHqmManager:Landroid/os/SemHqmManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemMobileWipsNetdEvent(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mSemMobileWipsNetdEvent:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemMobileWipsWifiScanner(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mSemMobileWipsWifiScanner:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmService(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/wifi/ISemMobileWipsService;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mService:Lcom/samsung/android/wifi/ISemMobileWipsService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/SemWifiInjector;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/halclient/SemWifiNative;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiScanner(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Landroid/net/wifi/WifiScanner;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiThreadRunner(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/SemWifiThreadRunner;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWipsServiceHandler(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWipsServiceHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWipsValue(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWipsValue:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmBootCompleted(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mBootCompleted:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmConnectivityManager(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;Landroid/net/ConnectivityManager;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsConnected(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mIsConnected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRetrycount(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mRetrycount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmService(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;Lcom/samsung/android/wifi/ISemMobileWipsService;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mService:Lcom/samsung/android/wifi/ISemMobileWipsService;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWipsValue(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWipsValue:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetHandler(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->getHandler()Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetWipsPid(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)I
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->getWipsPid()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misWipsOn(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->isWipsOn()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msendEmptyMessage(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->sendEmptyMessage(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendEmptyMessageDelayed(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->sendEmptyMessageDelayed(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendMessage(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetCurrentBss(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;Lcom/samsung/android/server/wifi/halclient/BssInfo;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->setCurrentBss(Lcom/samsung/android/server/wifi/halclient/BssInfo;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mturnOffWips(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->turnOffWips()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mturnOnWips(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->turnOnWips()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mturnOnWips(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->turnOnWips(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateMobileWipsDetectionList(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->updateMobileWipsDetectionList()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetHOTSPOT_NETWORK_MASK()[I
    .registers 1

    sget-object v0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->HOTSPOT_NETWORK_MASK:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 101
    fill-array-data v0, :array_a

    sput-object v0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->HOTSPOT_NETWORK_MASK:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x2ba8c0
        0xa14ac
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/wifi/SemWifiThreadRunner;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiConfigManager;Lcom/samsung/android/server/wifi/util/ScanPool;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
    .registers 15

    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->isJDMDevice:Z

    .line 123
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mMobileWipsDetectionBssidList:Ljava/util/Set;

    .line 144
    new-instance v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$1;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$1;-><init>(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWipsObserver:Landroid/database/ContentObserver;

    .line 167
    new-instance v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$2;-><init>(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mBroadcastReceiverPackage:Landroid/content/BroadcastReceiver;

    .line 192
    new-instance v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$3;-><init>(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mPacketSenderFrameworkApi:Lcom/samsung/android/wifi/ISemMobileWipsPacketSender;

    .line 323
    new-instance v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$4;-><init>(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    .line 348
    iput-object v1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 349
    iput-object v1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mService:Lcom/samsung/android/wifi/ISemMobileWipsService;

    .line 350
    new-instance v2, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$5;-><init>(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWipsFrameworkApi:Lcom/samsung/android/wifi/ISemMobileWipsFramework;

    .line 534
    new-instance v2, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$6;-><init>(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mConnection:Landroid/content/ServiceConnection;

    .line 579
    new-instance v2, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$7;-><init>(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->ISemMobileWipsCallback:Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;

    const-string v3, "SemMobileWipsFrameworkService"

    const-string v4, "SemMobileWipsFrameworkService::Start"

    .line 606
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iput-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mContext:Landroid/content/Context;

    .line 608
    iput-object p2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mHandler:Landroid/os/Handler;

    .line 609
    iput-object p3, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 610
    iput-object p4, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 611
    iput-object p9, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 612
    iput-object p5, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 613
    iput-object p6, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 614
    iput-object p7, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 615
    iput-object p8, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 617
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->checkDefaultMobileWips()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->defaultMobileWips:I

    const-string p2, "HqmManagerService"

    .line 619
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/SemHqmManager;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 622
    new-instance p2, Landroid/os/HandlerThread;

    invoke-direct {p2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWipsThread:Landroid/os/HandlerThread;

    .line 624
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 625
    new-instance p3, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p3, p0, p2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;-><init>(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;Landroid/os/Looper;)V

    invoke-virtual {p0, p3}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->setSemMobileWipsServiceHandler(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;)V

    .line 628
    new-instance p2, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;

    invoke-direct {p2, v2, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;-><init>(Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mSemMobileWipsNetdEvent:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;

    .line 629
    new-instance p2, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;

    invoke-direct {p2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mPacketSender:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;

    .line 630
    new-instance p3, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;

    invoke-direct {p3, v2, p2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;-><init>(Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;)V

    iput-object p3, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mDnsRequester:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;

    .line 631
    new-instance p2, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;

    invoke-direct {p2, p0, v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;-><init>(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler-IA;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mInterfaceEventHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;

    .line 633
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->getWipsValue()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWipsValue:I

    const/4 p2, 0x0

    .line 634
    iput p2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mRetrycount:I

    .line 636
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "content://com.samsung.android.server.wifi.mobilewips/detection"

    .line 637
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$8;

    .line 638
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->getHandler()Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;

    move-result-object p4

    invoke-direct {p3, p0, p4}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$8;-><init>(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;Landroid/os/Handler;)V

    .line 636
    invoke-virtual {p1, p2, v0, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 645
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->registerForBroadcastsForWifiWIPS()V

    return-void
.end method

.method private checkDefaultMobileWips()I
    .registers 5

    const-string v0, "wifi_mwips"

    .line 687
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->getDefaultWips()I

    move-result v1

    .line 690
    :try_start_6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_6 .. :try_end_f} :catch_10

    goto :goto_1e

    :catch_10
    const-string v2, "SemMobileWipsFrameworkService"

    const-string v3, "SettingNotFoundException, Set default Setting"

    .line 692
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-object v2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0, v0, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    :goto_1e
    return v1
.end method

.method private checkMwipsPackageVersion()Z
    .registers 6

    const-string v0, "SemMobileWipsFrameworkService"

    .line 859
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_c

    return v1

    :cond_c
    const/4 v2, -0x1

    const/4 v3, 0x1

    :try_start_e
    const-string v4, "com.samsung.android.server.wifi.mobilewips"

    .line 866
    invoke-virtual {p0, v4, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_29

    .line 868
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_18} :catch_46
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_18} :catch_25

    const v2, 0x5f5e100

    if-lt p0, v2, :cond_23

    const v2, 0xbebc200

    if-ge p0, v2, :cond_23

    return v3

    :cond_23
    move v2, p0

    goto :goto_29

    :catch_25
    move-exception p0

    .line 877
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 880
    :cond_29
    :goto_29
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MobileWips package version missmatch, mwips "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " framework "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_46
    const-string p0, "MobileWips package not installed"

    .line 874
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private clearWipsServiceStatusEvent()V
    .registers 3

    const-string v0, "SemMobileWipsFrameworkService"

    const-string v1, "clearWipsServiceStatusEvent2"

    .line 903
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->getHandler()Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method private getDefaultWips()I
    .registers 5

    .line 700
    new-instance p0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {p0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 701
    invoke-virtual {p0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 702
    invoke-virtual {p0}, Lcom/android/internal/util/MemInfoReader;->getTotalSizeKb()J

    move-result-wide v0

    const-wide/32 v2, 0x43d478

    cmp-long p0, v0, v2

    if-ltz p0, :cond_21

    .line 705
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string v0, "CscFeature_Wifi_DisableDefaultMWIPS"

    .line 706
    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_21

    const/4 p0, 0x1

    goto :goto_22

    :cond_21
    const/4 p0, 0x0

    .line 709
    :goto_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MobileWips default feature value : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemMobileWipsFrameworkService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private getHandler()Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;
    .registers 1

    .line 758
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWipsServiceHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;

    return-object p0
.end method

.method private getWipsPid()I
    .registers 4

    .line 1014
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 1015
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 1016
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1017
    iget-object v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v2, "com.samsung.android.server.wifi.mobilewips"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1018
    iget p0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    return p0

    :cond_31
    const/4 p0, -0x1

    return p0
.end method

.method private hasWifiWIPSPermission(Ljava/lang/String;)Z
    .registers 3

    .line 886
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.samsung.permission.WIFI_WIPS"

    .line 887
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private isWipsOn()Z
    .registers 3

    .line 1010
    iget v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWipsValue:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mService:Lcom/samsung/android/wifi/ISemMobileWipsService;

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->getWipsPid()I

    move-result p0

    const/4 v0, -0x1

    if-le p0, v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method private synthetic lambda$setWipsValue$0(I)V
    .registers 4

    .line 923
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mContext:Landroid/content/Context;

    const-string v1, "wifi_mwips"

    invoke-virtual {v0, p0, v1, p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    return-void
.end method

.method private removeMessages(I)V
    .registers 2

    .line 748
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWipsServiceHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->removeMessages(I)V

    return-void
.end method

.method private sendEmptyMessage(I)V
    .registers 3

    .line 752
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 753
    iput p1, v0, Landroid/os/Message;->what:I

    .line 754
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method private sendEmptyMessageDelayed(II)V
    .registers 5

    .line 744
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWipsServiceHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private sendMessage(Landroid/os/Message;)V
    .registers 2

    .line 740
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWipsServiceHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private setCurrentBss(Lcom/samsung/android/server/wifi/halclient/BssInfo;)Z
    .registers 15

    .line 819
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mService:Lcom/samsung/android/wifi/ISemMobileWipsService;

    const/4 v6, 0x0

    if-nez v0, :cond_6

    return v6

    :cond_6
    if-nez p1, :cond_17

    :try_start_8
    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x0

    const/4 p0, 0x1

    new-array v5, p0, [B

    .line 822
    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/wifi/ISemMobileWipsService;->setCurrentBss(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[B)Z

    move-result p0

    return p0

    .line 824
    :cond_17
    iget-object v0, p1, Lcom/samsung/android/server/wifi/halclient/BssInfo;->ieData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v12, v0, [B

    move v0, v6

    .line 825
    :goto_20
    iget-object v1, p1, Lcom/samsung/android/server/wifi/halclient/BssInfo;->ieData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_39

    .line 826
    iget-object v1, p1, Lcom/samsung/android/server/wifi/halclient/BssInfo;->ieData:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    aput-byte v1, v12, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 828
    :cond_39
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_42

    return v6

    .line 830
    :cond_42
    iget-object v7, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mService:Lcom/samsung/android/wifi/ISemMobileWipsService;

    iget-object v8, p1, Lcom/samsung/android/server/wifi/halclient/BssInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v9

    .line 831
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v10

    iget v11, p1, Lcom/samsung/android/server/wifi/halclient/BssInfo;->frequency:I

    .line 830
    invoke-interface/range {v7 .. v12}, Lcom/samsung/android/wifi/ISemMobileWipsService;->setCurrentBss(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[B)Z

    move-result p0
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_54} :catch_55

    return p0

    :catch_55
    move-exception p0

    .line 833
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v6
.end method

.method private turnOffWips()V
    .registers 3

    .line 959
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mBootCompleted:Z

    if-nez v0, :cond_c

    const-string p0, "SemMobileWipsFrameworkService"

    const-string v0, "booting not completed"

    .line 960
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 964
    :cond_c
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->clearWipsServiceStatusEvent()V

    const/16 v0, 0x10

    .line 965
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->sendEmptyMessage(I)V

    const/16 v0, 0x3ed

    const/16 v1, 0xbb8

    .line 966
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->sendEmptyMessageDelayed(II)V

    return-void
.end method

.method private turnOnWips()V
    .registers 2

    const/4 v0, 0x0

    .line 929
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->turnOnWips(I)V

    return-void
.end method

.method private turnOnWips(I)V
    .registers 5

    .line 933
    iget v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWipsValue:I

    const-string v1, "SemMobileWipsFrameworkService"

    if-eqz v0, :cond_48

    const/4 v2, 0x2

    if-ne v0, v2, :cond_a

    goto :goto_48

    .line 937
    :cond_a
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mBootCompleted:Z

    if-nez v0, :cond_14

    const-string p0, "booting not completed"

    .line 938
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 941
    :cond_14
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->checkMwipsPackageVersion()Z

    move-result v0

    if-nez v0, :cond_1b

    return-void

    :cond_1b
    const-string v0, "com.samsung.android.server.wifi.mobilewips"

    .line 944
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->hasWifiWIPSPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string p0, "com.samsung.android.server.wifi.mobilewips does not have valid permission"

    .line 945
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 948
    :cond_29
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_38

    const-string p0, "wifi is turned off, do not turn on wips"

    .line 949
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 953
    :cond_38
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->clearWipsServiceStatusEvent()V

    const/16 v0, 0x3e9

    .line 954
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->sendEmptyMessageDelayed(II)V

    const/16 v0, 0x3ed

    add-int/lit16 p1, p1, 0xbb8

    .line 955
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->sendEmptyMessageDelayed(II)V

    return-void

    :cond_48
    :goto_48
    const-string p0, "wips disabled, do not start service"

    .line 934
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateMobileWipsDetectionList()V
    .registers 11

    const-string v0, "Error to close cursor"

    .line 649
    iget-object v1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mMobileWipsDetectionBssidList:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 650
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->isSupportMobileWips()Z

    move-result v1

    const-string v2, "SemMobileWipsFrameworkService"

    if-eqz v1, :cond_6d

    const/4 v1, 0x0

    .line 653
    :try_start_10
    iget-object v3, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v3, "content://com.samsung.android.server.wifi.mobilewips/detection"

    .line 654
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v3, "mac_addr"

    const-string v6, "ssid_name"

    const-string v7, "time_stamp"

    const-string v8, "seen_time"

    const-string v9, "attack_type"

    filled-new-array {v3, v6, v7, v8, v9}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 653
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_4a

    .line 658
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 659
    :goto_36
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_4f

    const/4 v3, 0x0

    .line 660
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 661
    iget-object v4, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mMobileWipsDetectionBssidList:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 662
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_36

    :cond_4a
    const-string v3, "MobileWipsDetection List is empty"

    .line 665
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catch Landroid/database/SQLException; {:try_start_10 .. :try_end_4f} :catch_54
    .catchall {:try_start_10 .. :try_end_4f} :catchall_52

    :cond_4f
    if-eqz v1, :cond_6d

    goto :goto_5b

    :catchall_52
    move-exception p0

    goto :goto_63

    :catch_54
    :try_start_54
    const-string v3, "Error to get MobileWips detection list"

    .line 669
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catchall {:try_start_54 .. :try_end_59} :catchall_52

    if-eqz v1, :cond_6d

    .line 673
    :goto_5b
    :try_start_5b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5e
    .catch Landroid/database/SQLException; {:try_start_5b .. :try_end_5e} :catch_5f

    goto :goto_6d

    .line 675
    :catch_5f
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d

    :goto_63
    if-eqz v1, :cond_6c

    .line 673
    :try_start_65
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_68
    .catch Landroid/database/SQLException; {:try_start_65 .. :try_end_68} :catch_69

    goto :goto_6c

    .line 675
    :catch_69
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :cond_6c
    :goto_6c
    throw p0

    :cond_6d
    :goto_6d
    const-string v0, "Notify MobileWips DetectionList"

    .line 680
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWipsDetectionsChangedCallback:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$WipsDetectionsChangedCallback;

    if-eqz p0, :cond_79

    .line 682
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$WipsDetectionsChangedCallback;->onWipsDetectionsListChanged()V

    :cond_79
    return-void
.end method


# virtual methods
.method public beaconAbort(Ljava/lang/String;I)V
    .registers 6

    .line 769
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3ec

    .line 770
    iput v1, v0, Landroid/os/Message;->what:I

    .line 771
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "iface"

    .line 772
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "abortReason"

    .line 773
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 774
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 775
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public beaconInterval(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .line 762
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0x3eb

    .line 763
    iput v0, p1, Landroid/os/Message;->what:I

    .line 764
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 765
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public getWipsNetworks()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 997
    new-instance v0, Ljava/util/HashSet;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mMobileWipsDetectionBssidList:Ljava/util/Set;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected getWipsValue()I
    .registers 4

    .line 916
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->isSupportMobileWips()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 917
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->defaultMobileWips:I

    const-string v2, "wifi_mwips"

    invoke-virtual {v0, v1, v2, p0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method protected isSupportMobileWips()Z
    .registers 3

    .line 909
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_DisableMWIPS"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 910
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_ConfigSecureSvcIntegration"

    .line 911
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 910
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->isJDMDevice:Z

    if-nez p0, :cond_24

    const/4 p0, 0x1

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    :goto_25
    return p0
.end method

.method public notifyAssociated(Ljava/lang/String;)V
    .registers 3

    .line 779
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mInterfaceEventHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;->notifyEvent(ILjava/lang/String;)V

    return-void
.end method

.method public notifyCaptivePortalNetwork()V
    .registers 3

    .line 811
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xe

    .line 812
    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    .line 813
    iput v1, v0, Landroid/os/Message;->arg1:I

    const/4 v1, 0x0

    .line 814
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 815
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public notifyDisconnect(Ljava/lang/String;)V
    .registers 3

    .line 799
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mInterfaceEventHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;

    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;->notifyEvent(ILjava/lang/String;)V

    return-void
.end method

.method public notifyL2Connected(Ljava/lang/String;)V
    .registers 3

    .line 783
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mInterfaceEventHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;

    const/16 v0, 0x11

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;->notifyEvent(ILjava/lang/String;)V

    return-void
.end method

.method public notifyL3Connected(Ljava/lang/String;)V
    .registers 3

    .line 787
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mInterfaceEventHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;

    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;->notifyEvent(ILjava/lang/String;)V

    return-void
.end method

.method public notifyRoaming(Ljava/lang/String;)V
    .registers 3

    .line 795
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mInterfaceEventHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;

    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;->notifyEvent(ILjava/lang/String;)V

    return-void
.end method

.method public notifyRoamingStart(Ljava/lang/String;)V
    .registers 3

    .line 791
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mInterfaceEventHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;

    const/16 v0, 0x18

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;->notifyEvent(ILjava/lang/String;)V

    return-void
.end method

.method public notifyValidateState(Z)V
    .registers 4

    .line 803
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xe

    .line 804
    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    .line 805
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 806
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 807
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public declared-synchronized onBootPhase()V
    .registers 4

    monitor-enter p0

    .line 714
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    if-nez v0, :cond_d

    .line 715
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiScanner()Landroid/net/wifi/WifiScanner;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 717
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mSemMobileWipsWifiScanner:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;

    if-nez v0, :cond_1d

    .line 718
    new-instance v0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->ISemMobileWipsCallback:Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;-><init>(Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;Landroid/net/wifi/WifiScanner;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->setSemMobileWipsWifiScanner(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;)V

    .line 721
    :cond_1d
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    if-nez v0, :cond_39

    .line 722
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInterfaceNameProvider()Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 723
    iget-object v1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mPacketSender:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;

    invoke-interface {v0}, Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;->getPrimaryInterfaceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->setInterfaceName(Ljava/lang/String;)V

    .line 724
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mInterfaceEventHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$InterfaceEventHandler;

    invoke-interface {v0, v1}, Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;->registerPrimaryInterfaceListener(Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;)V

    :cond_39
    const/4 v0, 0x1

    .line 726
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mBootCompleted:Z

    .line 727
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->updateMobileWipsDetectionList()V

    const/16 v0, 0x1388

    .line 728
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->turnOnWips(I)V
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_46

    .line 729
    monitor-exit p0

    return-void

    :catchall_46
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDnsResponses(Ljava/util/List;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 849
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mService:Lcom/samsung/android/wifi/ISemMobileWipsService;

    if-eqz p0, :cond_c

    .line 851
    :try_start_4
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/wifi/ISemMobileWipsService;->onDnsResponses(Ljava/util/List;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception p0

    .line 853
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    :goto_c
    return-void
.end method

.method public onScanResults(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemMobileWipsScanResult;",
            ">;)V"
        }
    .end annotation

    .line 839
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mService:Lcom/samsung/android/wifi/ISemMobileWipsService;

    if-eqz p0, :cond_c

    .line 841
    :try_start_4
    invoke-interface {p0, p1}, Lcom/samsung/android/wifi/ISemMobileWipsService;->onScanResults(Ljava/util/List;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception p0

    .line 843
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    :goto_c
    return-void
.end method

.method public registerForBroadcastsForWifiWIPS()V
    .registers 1

    .line 987
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->registerReceiver()V

    .line 988
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->registerPackageReceiver()V

    return-void
.end method

.method public registerPackageReceiver()V
    .registers 6

    .line 970
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 971
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 972
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 973
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.server.wifi.mobilewips"

    const/4 v2, 0x0

    .line 974
    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 976
    iget-object v1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mBroadcastReceiverPackage:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v0, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 977
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_mwips"

    .line 978
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWipsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public registerReceiver()V
    .registers 3

    .line 892
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 893
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 894
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 895
    iget-object v1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public registerWipsDetectionsChangedCallback(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$WipsDetectionsChangedCallback;)V
    .registers 2

    .line 1001
    iput-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWipsDetectionsChangedCallback:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$WipsDetectionsChangedCallback;

    return-void
.end method

.method setSemMobileWipsServiceHandler(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;)V
    .registers 2

    .line 736
    iput-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWipsServiceHandler:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;

    return-void
.end method

.method declared-synchronized setSemMobileWipsWifiScanner(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;)V
    .registers 2

    monitor-enter p0

    .line 732
    :try_start_1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mSemMobileWipsWifiScanner:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 733
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected setWipsValue(I)I
    .registers 4

    .line 921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWipsValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemMobileWipsFrameworkService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->getHandler()Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$ServiceHandler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 924
    iput p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWipsValue:I

    return p1
.end method

.method public unregisterForBroadcastsForWifiWIPS()V
    .registers 1

    .line 992
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->unregisterReceiver()V

    .line 993
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->unregisterPackageReceiver()V

    return-void
.end method

.method public unregisterPackageReceiver()V
    .registers 3

    .line 982
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mBroadcastReceiverPackage:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 983
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mWipsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public unregisterReceiver()V
    .registers 2

    .line 899
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
