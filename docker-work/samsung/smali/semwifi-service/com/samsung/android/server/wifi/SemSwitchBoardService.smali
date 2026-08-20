.class public Lcom/samsung/android/server/wifi/SemSwitchBoardService;
.super Ljava/lang/Object;
.source "SemSwitchBoardService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;,
        Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardReceiver;,
        Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;,
        Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;
    }
.end annotation


# static fields
.field private static final EVENT_AUTO_STOP:I = 0x4

.field private static final EVENT_BOOT_COMPLETED:I = 0x2

.field private static final EVENT_ENABLE_SWITCHBOARD:I = 0x1

.field private static final EVENT_GET_WIFIINFO_POLL:I = 0x3

.field private static final EVENT_PRIMARY_IFACE_CHANGED:I = 0x8

.field private static final EVENT_SET_POLICY:I = 0x5

.field private static final EVENT_WIFI_CONNECTED:I = 0x6

.field private static final EVENT_WIFI_DISCONNECTED:I = 0x7

.field private static final INVALID_RSSI:I = -0x7f

.field private static final LAZY_BOOT_COMPLETE:Ljava/lang/String; = "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

.field private static final MAX_RUNNING_TIME_MILLIS:J = 0x1499700L

.field private static final PATH_LTE:I = 0x0

.field private static final PATH_WIFI:I = 0x1

.field private static final SWITCHBOARD_INTENT_ENABLE_DEBUG:Ljava/lang/String; = "com.samsung.android.SwitchBoard.ENABLE_DEBUG"

.field private static final SWITCHBOARD_INTENT_EXTRA_DEBUG:Ljava/lang/String; = "Debug"

.field private static final SWITCHBOARD_INTENT_EXTRA_LTE2WIFI_DELAY_MILLIS:Ljava/lang/String; = "LteToWifiDelayMillis"

.field private static final SWITCHBOARD_INTENT_EXTRA_PACKAGE:Ljava/lang/String; = "Package"

.field private static final SWITCHBOARD_INTENT_EXTRA_PACKAGE_DEFAULT:Ljava/lang/String; = "default"

.field private static final SWITCHBOARD_INTENT_EXTRA_WIFI2LTE_DELAY_MILLIS:Ljava/lang/String; = "WifiToLteDelayMillis"

.field private static final SWITCHBOARD_INTENT_MIN_SWITCHING_DELAY:Ljava/lang/String; = "com.samsung.android.SwitchBoard.MIN_SWITCHING_DELAY"

.field private static final SWITCHBOARD_INTENT_SET_POLICY:Ljava/lang/String; = "com.samsung.android.SwitchBoard.SET_POLICY"

.field private static final SWITCHBOARD_INTENT_START:Ljava/lang/String; = "com.samsung.android.SwitchBoard.START"

.field private static final SWITCHBOARD_INTENT_STATE:Ljava/lang/String; = "com.samsung.android.SwitchBoard.STATE"

.field private static final SWITCHBOARD_INTENT_STOP:Ljava/lang/String; = "com.samsung.android.SwitchBoard.STOP"

.field private static final SWITCHBOARD_INTENT_WIFI_PREFERENCE_VALUE:Ljava/lang/String; = "com.samsung.android.SwitchBoard.WIFI_PREFERENCE_VALUE"

.field private static final SWITCHBOARD_STATE:Ljava/lang/String; = "switchboard_state"

.field private static final SWITCHBOARD_WIFI_POLICY:Ljava/lang/String; = "Policy"

.field private static final SWITCHBOARD_WIFI_PREFERENCE:Ljava/lang/String; = "Preference"

.field public static final TAG:Ljava/lang/String; = "SemSwitchBoardService"

.field private static VDBG:Z = false

.field private static final VER:Ljava/lang/String; = "1.2.5"

.field private static final WIFI_POLLING_INTERVAL:I = 0x3e8


# instance fields
.field private mBootCompleted:Z

.field private final mClock:Lcom/samsung/android/server/wifi/util/SemClock;

.field private final mConMan:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

.field private mEnablePolicy:Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

.field private final mHandler:Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;

.field private final mIfaceHandleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLastUpdatedTimeMillis:J

.field private final mLastWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

.field private mLteToWifiDelayMillis:I

.field private final mPackageNames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferredPath:I

.field private mPrimaryWifiIfaceName:Ljava/lang/String;

.field private mSemClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

.field private mSwitchBoardEnabled:Z

.field private mSwitchBoardRequestBeforeBootCompleted:Z

.field private mWifiConnected:Z

.field private mWifiInfoPollingEnabled:Z

.field private final mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

.field private final mWifiNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mWifiToLteDelayMillis:I


# direct methods
.method public static synthetic $r8$lambda$Ryt-O-1IAR8zQKX8P9AG0CzRzfM(Lcom/samsung/android/server/wifi/SemSwitchBoardService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->lambda$setClientModeManager$0(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmBootCompleted(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mBootCompleted:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmConMan(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Landroid/net/ConnectivityManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mConMan:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurWifiMetric(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnablePolicy(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mEnablePolicy:Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mHandler:Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIfaceHandleMap(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mIfaceHandleMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastWifiMetric(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mLastWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLteToWifiDelayMillis(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mLteToWifiDelayMillis:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageNames(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Ljava/util/HashSet;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mPackageNames:Ljava/util/HashSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrimaryWifiIfaceName(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mPrimaryWifiIfaceName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSwitchBoardEnabled(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mSwitchBoardEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSwitchBoardRequestBeforeBootCompleted(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mSwitchBoardRequestBeforeBootCompleted:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiConnected(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mWifiConnected:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiInfoPollingEnabled(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mWifiInfoPollingEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiToLteDelayMillis(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mWifiToLteDelayMillis:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmBootCompleted(Lcom/samsung/android/server/wifi/SemSwitchBoardService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mBootCompleted:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEnablePolicy(Lcom/samsung/android/server/wifi/SemSwitchBoardService;Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mEnablePolicy:Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLteToWifiDelayMillis(Lcom/samsung/android/server/wifi/SemSwitchBoardService;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mLteToWifiDelayMillis:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPrimaryWifiIfaceName(Lcom/samsung/android/server/wifi/SemSwitchBoardService;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mPrimaryWifiIfaceName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSwitchBoardRequestBeforeBootCompleted(Lcom/samsung/android/server/wifi/SemSwitchBoardService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mSwitchBoardRequestBeforeBootCompleted:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiConnected(Lcom/samsung/android/server/wifi/SemSwitchBoardService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mWifiConnected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiToLteDelayMillis(Lcom/samsung/android/server/wifi/SemSwitchBoardService;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mWifiToLteDelayMillis:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckDefaultEnabled(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->checkDefaultEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdetermineDataPathPriority(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->determineDataPathPriority()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetWifiLinkLayerStats(Lcom/samsung/android/server/wifi/SemSwitchBoardService;Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->getWifiLinkLayerStats(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetSwitchBoardState(Lcom/samsung/android/server/wifi/SemSwitchBoardService;ZLjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->setSwitchBoardState(ZLjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetVDBG()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->VDBG:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputVDBG(Z)V
    .registers 1

    sput-boolean p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->VDBG:Z

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/util/SemClock;Landroid/os/HandlerThread;)V
    .registers 7

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mWifiInfoPollingEnabled:Z

    .line 100
    sget-object v1, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;->Default:Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mEnablePolicy:Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    const/4 v1, 0x1

    .line 104
    iput v1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mPreferredPath:I

    .line 105
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mSwitchBoardEnabled:Z

    .line 106
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mBootCompleted:Z

    .line 107
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mSwitchBoardRequestBeforeBootCompleted:Z

    const/16 v0, 0xbb8

    .line 109
    iput v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mWifiToLteDelayMillis:I

    const/16 v0, 0x1388

    .line 110
    iput v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mLteToWifiDelayMillis:I

    const-wide/16 v0, 0x0

    .line 111
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mLastUpdatedTimeMillis:J

    .line 118
    new-instance v0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$1;-><init>(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mWifiNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 153
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mContext:Landroid/content/Context;

    .line 154
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    const-string p2, "connectivity"

    .line 155
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mConMan:Landroid/net/ConnectivityManager;

    .line 156
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 158
    new-instance p2, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;

    invoke-virtual {p4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;-><init>(Lcom/samsung/android/server/wifi/SemSwitchBoardService;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mHandler:Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;

    .line 160
    new-instance p2, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;-><init>(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric-IA;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 161
    new-instance p2, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-direct {p2, p3}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;-><init>(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric-IA;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mLastWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 163
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mPackageNames:Ljava/util/HashSet;

    .line 164
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mIfaceHandleMap:Ljava/util/HashMap;

    .line 166
    new-instance p2, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardReceiver;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardReceiver;-><init>(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)V

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->getSwitchBoardIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string p0, "SwitchBoardService initialized: ver=1.2.5"

    .line 167
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logi(Ljava/lang/String;)V

    return-void
.end method

.method private broadcastSwitchBoardPreference()V
    .registers 4

    .line 344
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.SwitchBoard.WIFI_PREFERENCE_VALUE"

    .line 346
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    iget v1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mPreferredPath:I

    const-string v2, "Preference"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 349
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 350
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Send broadcast="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logv(Ljava/lang/String;)V

    return-void
.end method

.method private broadcastSwitchBoardState(Z)V
    .registers 4

    .line 333
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.SwitchBoard.STATE"

    .line 335
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "switchboard_state"

    .line 336
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 338
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 339
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastSBStatus: SwitchBoard state changed("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "), so send broadcast="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private checkDefaultEnabled()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method private determineDataPathPriority()V
    .registers 16

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "determineSubflowPriority: current mPreferredPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mPreferredPath:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", beaconCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgettotalRxBeacon(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgettotalRxBeacon(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mLastWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgettotalRxBeacon(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logv(Ljava/lang/String;)V

    .line 267
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->VDBG:Z

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_127

    .line 268
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetrssi(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)I

    move-result v7

    .line 269
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgettxFrames(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v5

    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgettxBad(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v3

    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgettxRetries(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v2

    const-string v7, "wifiMetric New [%4d, %4d, %4d, %4d]"

    .line 268
    invoke-static {v0, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logv(Ljava/lang/String;)V

    new-array v6, v1, [Ljava/lang/Object;

    .line 270
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mLastWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetrssi(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)I

    move-result v7

    .line 271
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mLastWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgettxFrames(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v5

    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mLastWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgettxBad(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v3

    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mLastWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgettxRetries(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v2

    const-string v7, "wifiMetric Old [%4d, %4d, %4d, %4d]"

    .line 270
    invoke-static {v0, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logv(Ljava/lang/String;)V

    const/16 v6, 0x8

    new-array v6, v6, [Ljava/lang/Object;

    .line 272
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mPrimaryWifiIfaceName:Ljava/lang/String;

    aput-object v7, v6, v4

    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetrssi(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)I

    move-result v7

    .line 274
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxFrames(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v3

    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxBad(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v2

    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxRetries(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v7, 0x5

    iget-object v8, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxBadRate(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)D

    move-result-wide v8

    .line 275
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    iget-object v8, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mLastWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxBadRate(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x7

    iget-object v8, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxRetriesRate(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    const-string v7, "wifiMetric %s [RSSI: %4d, TXFrames: %4d, TXBad: %4d, Retry: %4d, TxBadRate: %4.2f, OldTxBadRate: %4.2f, RetryRate: %4.2f]"

    .line 272
    invoke-static {v0, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logv(Ljava/lang/String;)V

    .line 278
    :cond_127
    iget v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mPreferredPath:I

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const/16 v8, -0x46

    if-ne v0, v5, :cond_248

    .line 279
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetrssi(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)I

    move-result v0

    const/16 v1, -0x51

    if-ge v0, v1, :cond_15f

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mLastWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetrssi(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)I

    move-result v0

    if-ge v0, v1, :cond_15f

    .line 280
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetrssi(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "Case0-4, triggered - bad RSSI(%d)"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logi(Ljava/lang/String;)V

    .line 281
    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->setDataPathPriority(I)V

    goto/16 :goto_35f

    .line 282
    :cond_15f
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetrssi(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)I

    move-result v0

    if-ge v0, v8, :cond_35f

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mLastWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetrssi(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)I

    move-result v0

    if-ge v0, v8, :cond_35f

    .line 283
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxFrames(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J

    move-result-wide v0

    const-wide/16 v8, 0x28

    cmp-long v0, v0, v8

    if-lez v0, :cond_1d4

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxBadRate(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)D

    move-result-wide v0

    const-wide v10, 0x3fa999999999999aL    # 0.05

    cmpl-double v0, v0, v10

    if-lez v0, :cond_1d4

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mLastWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxFrames(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-lez v0, :cond_1d4

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mLastWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxBadRate(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)D

    move-result-wide v0

    cmpl-double v0, v0, v10

    if-lez v0, :cond_1d4

    .line 285
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxFrames(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J

    move-result-wide v6

    .line 286
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxBadRate(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mLastWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxBadRate(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "Case0-1, triggered - TxFrames(%d), TxBadRate(%4.2f), OldTxBadRate(%4.2f)"

    .line 285
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logi(Ljava/lang/String;)V

    .line 287
    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->setDataPathPriority(I)V

    goto/16 :goto_35f

    .line 288
    :cond_1d4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxFrames(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-gtz v0, :cond_214

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxBad(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J

    move-result-wide v0

    const-wide/16 v8, 0x2

    cmp-long v0, v0, v8

    if-lez v0, :cond_214

    .line 289
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxFrames(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J

    move-result-wide v2

    .line 290
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxBad(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "Case0-2, triggered - TxFrames(%d), TxBad(%d)"

    .line 289
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logi(Ljava/lang/String;)V

    .line 291
    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->setDataPathPriority(I)V

    goto/16 :goto_35f

    .line 292
    :cond_214
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxRetriesRate(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)D

    move-result-wide v0

    cmpl-double v0, v0, v6

    if-lez v0, :cond_35f

    .line 293
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxFrames(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J

    move-result-wide v2

    .line 294
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxRetriesRate(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "Case0-3, triggered - TxFrames(%d), TxRetriesRate(%4.2f)"

    .line 293
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logi(Ljava/lang/String;)V

    .line 295
    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->setDataPathPriority(I)V

    goto/16 :goto_35f

    :cond_248
    if-nez v0, :cond_35f

    .line 299
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxFrames(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v0, v9, v11

    const-wide/16 v9, 0x1

    if-lez v0, :cond_2c0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxRetriesRate(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)D

    move-result-wide v13

    cmpg-double v0, v13, v6

    if-gez v0, :cond_2c0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxBad(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J

    move-result-wide v6

    cmp-long v0, v6, v9

    if-gez v0, :cond_2c0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetrssi(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)I

    move-result v0

    const/16 v6, -0x4b

    if-le v0, v6, :cond_2c0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mLastWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetrssi(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)I

    move-result v0

    if-le v0, v6, :cond_2c0

    .line 301
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetrssi(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)I

    move-result v6

    .line 302
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v4

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxFrames(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v5

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxBad(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J

    move-result-wide v6

    .line 303
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxRetriesRate(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Case1-1, triggered - RSSI(%d), TxFrames(%d), TxBad(%d), TxRetriesRate(%4.2f)"

    .line 301
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logi(Ljava/lang/String;)V

    .line 304
    invoke-direct {p0, v5}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->setDataPathPriority(I)V

    goto/16 :goto_35f

    .line 305
    :cond_2c0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxFrames(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J

    move-result-wide v6

    cmp-long v0, v6, v11

    if-lez v0, :cond_331

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxRetriesRate(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)D

    move-result-wide v6

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    cmpg-double v0, v6, v11

    if-gez v0, :cond_331

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxBad(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J

    move-result-wide v6

    cmp-long v0, v6, v9

    if-gez v0, :cond_331

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetrssi(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)I

    move-result v0

    if-le v0, v8, :cond_331

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mLastWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetrssi(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)I

    move-result v0

    if-le v0, v8, :cond_331

    .line 307
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetrssi(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)I

    move-result v6

    .line 308
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v4

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxFrames(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v5

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxBad(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J

    move-result-wide v6

    .line 309
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetcalculatedTxRetriesRate(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Case1-2, triggered - RSSI(%d), TxFrames(%d), TxBad(%d), TxRetriesRate(%4.2f)"

    .line 307
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logi(Ljava/lang/String;)V

    .line 310
    invoke-direct {p0, v5}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->setDataPathPriority(I)V

    goto :goto_35f

    .line 311
    :cond_331
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetrssi(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)I

    move-result v0

    const/16 v1, -0x3c

    if-le v0, v1, :cond_35f

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mLastWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetrssi(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)I

    move-result v0

    if-le v0, v1, :cond_35f

    .line 312
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mCurWifiMetric:Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$fgetrssi(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "Case1-3, triggered - good RSSI(%d)"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logi(Ljava/lang/String;)V

    .line 313
    invoke-direct {p0, v5}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->setDataPathPriority(I)V

    :cond_35f
    :goto_35f
    return-void
.end method

.method private getSwitchBoardIntentFilter()Landroid/content/IntentFilter;
    .registers 2

    .line 194
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.samsung.android.SwitchBoard.START"

    .line 196
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.SwitchBoard.STOP"

    .line 197
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.SwitchBoard.ENABLE_DEBUG"

    .line 198
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.SwitchBoard.SET_POLICY"

    .line 199
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.SwitchBoard.MIN_SWITCHING_DELAY"

    .line 200
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

    .line 201
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object p0
.end method

.method private getWifiLinkLayerStats(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;
    .registers 2

    if-nez p1, :cond_9

    const-string p0, "getWifiLinkLayerStats called without an interface"

    .line 367
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 370
    :cond_9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getWifiLinkLayerStats(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$setClientModeManager$0(Ljava/lang/String;)V
    .registers 3

    .line 174
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mHandler:Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected static logd(Ljava/lang/String;)V
    .registers 2

    .line 186
    sget-object v0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected static loge(Ljava/lang/String;)V
    .registers 2

    .line 178
    sget-object v0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected static logi(Ljava/lang/String;)V
    .registers 2

    .line 182
    sget-object v0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected static logv(Ljava/lang/String;)V
    .registers 2

    .line 190
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->VDBG:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method private minimumSwitchingDelayPassed(IJ)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_f

    .line 354
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mLastUpdatedTimeMillis:J

    sub-long/2addr p2, v2

    iget p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mLteToWifiDelayMillis:I

    int-to-long p0, p0

    cmp-long p0, p2, p0

    if-ltz p0, :cond_1a

    goto :goto_19

    .line 355
    :cond_f
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mLastUpdatedTimeMillis:J

    sub-long/2addr p2, v2

    iget p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mWifiToLteDelayMillis:I

    int-to-long p0, p0

    cmp-long p0, p2, p0

    if-ltz p0, :cond_1a

    :goto_19
    move v0, v1

    :cond_1a
    return v0
.end method

.method private setDataPathPriority(I)V
    .registers 5

    .line 319
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getWallClockMillis()J

    move-result-wide v0

    .line 321
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->minimumSwitchingDelayPassed(IJ)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 322
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mLastUpdatedTimeMillis:J

    .line 323
    iput p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mPreferredPath:I

    .line 325
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setDataPathPriority: mPreferredPath: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mPreferredPath:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logi(Ljava/lang/String;)V

    .line 326
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->broadcastSwitchBoardPreference()V

    goto :goto_2f

    :cond_2a
    const-string p0, "setDataPathPriority: path switching had just occurred, so ignore this."

    .line 328
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logd(Ljava/lang/String;)V

    :goto_2f
    return-void
.end method

.method private setPollingWifiInfo()V
    .registers 4

    .line 252
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mWifiInfoPollingEnabled:Z

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mSwitchBoardEnabled:Z

    if-ne v0, v1, :cond_7

    return-void

    .line 254
    :cond_7
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mWifiInfoPollingEnabled:Z

    const/4 v0, 0x3

    if-eqz v1, :cond_18

    .line 256
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mHandler:Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;

    .line 257
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    .line 256
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1d

    .line 259
    :cond_18
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mHandler:Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->removeMessages(I)V

    :goto_1d
    return-void
.end method

.method private setSwitchBoardState(ZLjava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_e

    .line 207
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mEnablePolicy:Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    sget-object v1, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;->AlwaysDisabled:Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    if-ne v0, v1, :cond_e

    const-string p0, "Ignore enable Switchboard due to Policy.AlwaysDisabled"

    .line 208
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logi(Ljava/lang/String;)V

    return-void

    :cond_e
    if-nez p1, :cond_1c

    .line 210
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mEnablePolicy:Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    sget-object v1, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;->AlwaysEnabled:Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    if-ne v0, v1, :cond_1c

    const-string p0, "Ignore disable Switchboard due to Policy.AlwaysEnabled"

    .line 211
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logi(Ljava/lang/String;)V

    return-void

    .line 215
    :cond_1c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getWallClockMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mLastUpdatedTimeMillis:J

    .line 216
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mSwitchBoardEnabled:Z

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSwitchBoardState(ver=1.2.5) request [enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", reason="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logi(Ljava/lang/String;)V

    .line 220
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->setupNetworkCallback()V

    .line 221
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->updateAutoStop()V

    .line 222
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->setPollingWifiInfo()V

    .line 223
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mSwitchBoardEnabled:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->broadcastSwitchBoardState(Z)V

    return-void
.end method

.method private setupNetworkCallback()V
    .registers 3

    const/4 v0, 0x0

    .line 227
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mWifiConnected:Z

    .line 228
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mSwitchBoardEnabled:Z

    if-eqz v0, :cond_22

    .line 230
    :try_start_7
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x1

    .line 231
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 232
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mConMan:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mWifiNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_1b} :catch_1c

    goto :goto_29

    :catch_1c
    const-string p0, "Cannot register NetworkCallback, so Switchboard will not work."

    .line 236
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->loge(Ljava/lang/String;)V

    goto :goto_29

    .line 239
    :cond_22
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mConMan:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mWifiNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :goto_29
    return-void
.end method

.method private updateAutoStop()V
    .registers 4

    .line 244
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mHandler:Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->removeMessages(I)V

    .line 245
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mSwitchBoardEnabled:Z

    if-eqz v0, :cond_16

    .line 246
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mHandler:Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;

    .line 247
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v1, 0x1499700

    .line 246
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_16
    return-void
.end method


# virtual methods
.method public setClientModeManager(Lcom/samsung/android/server/wifi/SemClientModeManager;)V
    .registers 3

    const-string v0, "SemClientModeManager registered"

    .line 171
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logi(Ljava/lang/String;)V

    .line 172
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->mSemClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 173
    new-instance v0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->registerPrimaryInterfaceListener(Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;)V

    return-void
.end method
