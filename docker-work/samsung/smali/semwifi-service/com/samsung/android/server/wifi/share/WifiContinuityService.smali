.class public Lcom/samsung/android/server/wifi/share/WifiContinuityService;
.super Lcom/android/internal/util/StateMachine;
.source "WifiContinuityService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;,
        Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;
    }
.end annotation


# static fields
.field static final BIND_TIMEOUT_MS:J = 0x1388L
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final CMD_BIND_SERVICE:I = 0x3

.field private static final CMD_BIND_TIMEOUT:I = 0x2

.field private static final CMD_CHECK_AND_START:I = 0x1

.field private static final CMD_NETWORK_CAP_CHANGED:I = 0x8

.field private static final CMD_SHARING_EXPIRED:I = 0x5

.field private static final CMD_START_DISCOVERY:I = 0x7

.field private static final CMD_START_TO_SHARE:I = 0x6

.field private static final CMD_UNBIND_SERVICE:I = 0x4

.field private static final DBG:Z

.field static final DEFAULT_DISCOVERY_TIME_MS:J = 0x7530L
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final DEFAULT_START_DELAY_MS:J = 0x1388L
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final EVENT_CONTINUITY_SETTINGS_CHANGED:I = 0x23

.field private static final EVENT_SA_STATE_CHANGED:I = 0x24

.field private static final EVENT_SERVICE_BOUND:I = 0x1e

.field private static final EVENT_SERVICE_UNBOUND:I = 0x1f

.field private static final EVENT_WIFI_CONFIG_DELIVERED:I = 0x22

.field static final MCF_DS_PERMISSION:Ljava/lang/String; = "com.samsung.android.mcfds.permission.START_SERVICE"

.field static final SA_PACKAGE_NAME:Ljava/lang/String; = "com.osp.app.signin"

.field static final SA_SIGN_IN_ACTION:Ljava/lang/String; = "com.samsung.account.SAMSUNGACCOUNT_SIGNIN_COMPLETED"

.field static final SA_SIGN_OUT_ACTION:Ljava/lang/String; = "com.samsung.account.SAMSUNGACCOUNT_SIGNOUT_COMPLETED"

.field static final SETTING_ID_CONTINUITY:Ljava/lang/String; = "mcf_continuity"

.field private static final TAG:Ljava/lang/String; = "SemWifi.Continuity"


# instance fields
.field private final accountManager:Landroid/accounts/AccountManager;

.field private final adapter:Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;

.field private final addedNetworkIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final clock:Lcom/samsung/android/server/wifi/util/SemClock;

.field private final configLock:Ljava/lang/Object;

.field private final configManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

.field private final context:Landroid/content/Context;

.field private final defaultState:Lcom/android/internal/util/State;

.field private final facade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private final featureController:Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

.field private isConnected:Z

.field private lastConnectedConfig:Landroid/net/wifi/WifiConfiguration;

.field private lastReceivedDataTimeMs:J

.field private lastSharedDataTimeMs:J

.field final mGetWhatToString:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final sharedNetworkIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final sharingState:Lcom/android/internal/util/State;

.field private final wifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;


# direct methods
.method public static synthetic $r8$lambda$f6x53lGLlFtwgY5VWfNwunKiy0g(Lcom/samsung/android/server/wifi/share/WifiContinuityService;Landroid/net/wifi/WifiConfiguration;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->lambda$registerWifiConfigListener$0(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gH5kP3JqGgynYXlxWFOqd7u7GpE(Ljava/lang/StringBuilder;Ljava/lang/Integer;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->lambda$getSharedReport$1(Ljava/lang/StringBuilder;Ljava/lang/Integer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetaccountManager(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Landroid/accounts/AccountManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->accountManager:Landroid/accounts/AccountManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetadapter(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->adapter:Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetaddedNetworkIds(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->addedNetworkIds:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetclock(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Lcom/samsung/android/server/wifi/util/SemClock;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->clock:Lcom/samsung/android/server/wifi/util/SemClock;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetconfigLock(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->configLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetconfigManager(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->configManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcontext(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdefaultState(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Lcom/android/internal/util/State;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->defaultState:Lcom/android/internal/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfeatureController(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->featureController:Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisConnected(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->isConnected:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastConnectedConfig(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Landroid/net/wifi/WifiConfiguration;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->lastConnectedConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsharedNetworkIds(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->sharedNetworkIds:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsharingState(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Lcom/android/internal/util/State;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->sharingState:Lcom/android/internal/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwifiManagerProxy(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->wifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisConnected(Lcom/samsung/android/server/wifi/share/WifiContinuityService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->isConnected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastConnectedConfig(Lcom/samsung/android/server/wifi/share/WifiContinuityService;Landroid/net/wifi/WifiConfiguration;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->lastConnectedConfig:Landroid/net/wifi/WifiConfiguration;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastReceivedDataTimeMs(Lcom/samsung/android/server/wifi/share/WifiContinuityService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->lastReceivedDataTimeMs:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastSharedDataTimeMs(Lcom/samsung/android/server/wifi/share/WifiContinuityService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->lastSharedDataTimeMs:J

    return-void
.end method

.method static bridge synthetic -$$Nest$maddNetwork(Lcom/samsung/android/server/wifi/share/WifiContinuityService;Landroid/net/wifi/WifiConfiguration;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->addNetwork(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mbindToContinuityService(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->bindToContinuityService()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misEnabledContinuitySettings(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->isEnabledContinuitySettings()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misFirstConnection(Lcom/samsung/android/server/wifi/share/WifiContinuityService;Landroid/net/wifi/WifiConfiguration;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->isFirstConnection(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misSupportedNetwork(Lcom/samsung/android/server/wifi/share/WifiContinuityService;Landroid/net/wifi/WifiConfiguration;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->isSupportedNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$munbind(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->unbind()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDBG()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->DBG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 67
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/SemWifiConfigManager;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;)V
    .registers 15

    .line 118
    new-instance v7, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;

    invoke-direct {v7, p1}, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/SemWifiConfigManager;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/SemWifiConfigManager;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;)V
    .registers 11
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "SemWifi.Continuity"

    .line 126
    invoke-direct {p0, v0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 247
    new-instance p2, Lcom/samsung/android/server/wifi/share/WifiContinuityService$5;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService$5;-><init>(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const/4 p2, 0x1

    new-array v0, p2, [Ljava/lang/Class;

    .line 293
    const-class v1, Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 294
    invoke-static {v0}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->mGetWhatToString:Landroid/util/SparseArray;

    .line 128
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->context:Landroid/content/Context;

    .line 129
    iput-object p3, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->facade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 130
    iput-object p4, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->configManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 131
    iput-object p5, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->wifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 132
    iput-object p6, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->featureController:Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    .line 133
    iput-object p7, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->adapter:Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;

    .line 134
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->accountManager:Landroid/accounts/AccountManager;

    .line 135
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->configLock:Ljava/lang/Object;

    .line 136
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->addedNetworkIds:Ljava/util/Set;

    .line 137
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->sharedNetworkIds:Ljava/util/Set;

    .line 138
    new-instance p1, Lcom/samsung/android/server/wifi/util/SemClock;

    invoke-direct {p1}, Lcom/samsung/android/server/wifi/util/SemClock;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->clock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 140
    new-instance p1, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState;-><init>(Lcom/samsung/android/server/wifi/share/WifiContinuityService;Lcom/samsung/android/server/wifi/share/WifiContinuityService$DefaultState-IA;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->defaultState:Lcom/android/internal/util/State;

    .line 141
    new-instance p4, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;

    invoke-direct {p4, p0, p3}, Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState;-><init>(Lcom/samsung/android/server/wifi/share/WifiContinuityService;Lcom/samsung/android/server/wifi/share/WifiContinuityService$SharingState-IA;)V

    iput-object p4, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->sharingState:Lcom/android/internal/util/State;

    .line 143
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->addState(Lcom/android/internal/util/State;)V

    .line 144
    invoke-virtual {p0, p4, p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 146
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->setInitialState(Lcom/android/internal/util/State;)V

    .line 147
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->setLogOnlyTransitions(Z)V

    const/16 p1, 0x32

    .line 148
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->setLogRecSize(I)V

    .line 149
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->start()V

    .line 150
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->sendMessage(I)V

    .line 152
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->registerNetworkCallback()V

    .line 153
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->registerWifiConfigListener()V

    .line 154
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->registerContentObserver()V

    .line 155
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->registerBroadcast()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/server/wifi/share/WifiContinuityService;I)V
    .registers 2

    .line 65
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/server/wifi/share/WifiContinuityService;I)V
    .registers 2

    .line 65
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/server/wifi/share/WifiContinuityService;I)V
    .registers 2

    .line 65
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/server/wifi/share/WifiContinuityService;I)V
    .registers 2

    .line 65
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/server/wifi/share/WifiContinuityService;I)V
    .registers 2

    .line 65
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/server/wifi/share/WifiContinuityService;I)V
    .registers 2

    .line 65
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/server/wifi/share/WifiContinuityService;I)Z
    .registers 2

    .line 65
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/samsung/android/server/wifi/share/WifiContinuityService;I)V
    .registers 2

    .line 65
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/server/wifi/share/WifiContinuityService;I)V
    .registers 2

    .line 65
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->removeMessages(I)V

    return-void
.end method

.method private addNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 373
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->configManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_22

    .line 374
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->wifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->addNetworkPrivileged(Landroid/net/wifi/WifiConfiguration;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_40

    .line 376
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->markSharedNetworkId(I)V

    .line 377
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->wifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->enableNetwork(IZ)Z

    goto :goto_40

    .line 380
    :cond_22
    sget-boolean p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->DBG:Z

    if-eqz p0, :cond_40

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "already has a network "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifi.Continuity"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    :goto_40
    return-void
.end method

.method private bindToContinuityService()V
    .registers 3

    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->adapter:Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;

    new-instance v1, Lcom/samsung/android/server/wifi/share/WifiContinuityService$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService$6;-><init>(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->bind(Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$ContinuityServiceBindResult;)Z
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    goto :goto_f

    :catchall_b
    move-exception p0

    .line 330
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_f
    return-void
.end method

.method private getDiffString(J)Ljava/lang/String;
    .registers 11

    .line 414
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->clock:Lcom/samsung/android/server/wifi/util/SemClock;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/32 v2, 0x927c0

    cmp-long p0, v0, v2

    if-lez p0, :cond_13

    .line 416
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 418
    :cond_13
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 p1, 0x3e8

    .line 419
    div-long v2, v0, p1

    const-wide/16 v4, 0x3c

    cmp-long v6, v2, v4

    if-lez v6, :cond_2c

    .line 421
    div-long v6, v2, v4

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " min "

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    :cond_2c
    rem-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "."

    .line 424
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " seconds ago"

    .line 425
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isCaptivePortal(Landroid/net/wifi/WifiConfiguration;)Z
    .registers 2

    .line 350
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->configManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getManagedNetwork(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object p0

    if-eqz p0, :cond_1f

    .line 351
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal()Z

    move-result p0

    if-eqz p0, :cond_1f

    .line 352
    sget-boolean p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->DBG:Z

    if-eqz p0, :cond_1d

    const-string p0, "SemWifi.Continuity"

    const-string p1, "do not add captive portal network"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    const/4 p0, 0x1

    return p0

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method private isEnabledContinuitySettings()Z
    .registers 4

    .line 368
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->facade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->context:Landroid/content/Context;

    const-string v1, "mcf_continuity"

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_f

    move v2, v0

    :cond_f
    return v2
.end method

.method private isFirstConnection(Landroid/net/wifi/WifiConfiguration;)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 344
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->configLock:Ljava/lang/Object;

    monitor-enter v0

    .line 345
    :try_start_7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->addedNetworkIds:Ljava/util/Set;

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 346
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw p0
.end method

.method private isSupportedNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .registers 4

    if-eqz p1, :cond_25

    .line 359
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_25

    .line 360
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isEphemeral()Z

    move-result v0

    if-nez v0, :cond_25

    .line 361
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-nez v0, :cond_25

    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    if-nez v0, :cond_25

    .line 363
    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;->isSupported(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 364
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->isCaptivePortal(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    if-nez p0, :cond_25

    const/4 p0, 0x1

    goto :goto_26

    :cond_25
    const/4 p0, 0x0

    :goto_26
    return p0
.end method

.method private static synthetic lambda$getSharedReport$1(Ljava/lang/StringBuilder;Ljava/lang/Integer;)V
    .registers 3

    const-string v0, " "

    .line 402
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private synthetic lambda$registerWifiConfigListener$0(Landroid/net/wifi/WifiConfiguration;)V
    .registers 6

    .line 203
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->isSupportedNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 206
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->configLock:Ljava/lang/Object;

    monitor-enter v0

    .line 207
    :try_start_a
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->sharedNetworkIds:Ljava/util/Set;

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 208
    monitor-exit v0

    return-void

    :cond_1a
    const-string v1, "SemWifi.Continuity"

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add a new network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->addedNetworkIds:Ljava/util/Set;

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 212
    monitor-exit v0

    return-void

    :catchall_4b
    move-exception p0

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_a .. :try_end_4d} :catchall_4b

    throw p0
.end method

.method private registerBroadcast()V
    .registers 5

    .line 159
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.account.SAMSUNGACCOUNT_SIGNIN_COMPLETED"

    .line 160
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.account.SAMSUNGACCOUNT_SIGNOUT_COMPLETED"

    .line 161
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->context:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/server/wifi/share/WifiContinuityService$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService$1;-><init>(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 174
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->context:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/server/wifi/share/WifiContinuityService$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService$2;-><init>(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.android.server.wifi.share.WIFI_PROFILE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const-string v3, "com.samsung.android.mcfds.permission.START_SERVICE"

    .line 174
    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private registerContentObserver()V
    .registers 6

    .line 190
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->facade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->context:Landroid/content/Context;

    const-string v2, "mcf_continuity"

    .line 191
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/server/wifi/share/WifiContinuityService$3;

    .line 192
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/server/wifi/share/WifiContinuityService$3;-><init>(Lcom/samsung/android/server/wifi/share/WifiContinuityService;Landroid/os/Handler;)V

    const/4 p0, 0x1

    .line 190
    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerNetworkCallback()V
    .registers 4

    .line 238
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 239
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 240
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v2, 0x1

    .line 242
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 243
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 240
    invoke-virtual {v0, v1, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method private registerWifiConfigListener()V
    .registers 3

    .line 202
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->configManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    new-instance v1, Lcom/samsung/android/server/wifi/share/WifiContinuityService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->registerNetworkAddedListener(Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkAddedListener;)V

    .line 214
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->configManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    new-instance v1, Lcom/samsung/android/server/wifi/share/WifiContinuityService$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService$4;-><init>(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->registerNetworkRemovedListener(Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;)V

    return-void
.end method

.method private unbind()V
    .registers 2

    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->adapter:Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->unbind()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_5

    :catchall_5
    const/16 v0, 0x1f

    .line 339
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->sendMessage(I)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    const-string v0, "WifiAutoShare:"

    .line 431
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->getSharedReport()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 433
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 434
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .registers 4

    .line 307
    iget p0, p1, Landroid/os/Message;->what:I

    const-string v0, " "

    const/4 v1, 0x6

    if-ne p0, v1, :cond_21

    .line 308
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/net/wifi/WifiConfiguration;

    if-eqz p0, :cond_21

    .line 310
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 313
    :cond_21
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSharedReport()Ljava/lang/String;
    .registers 7

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->lastConnectedConfig:Landroid/net/wifi/WifiConfiguration;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_32

    const-string v1, "Last shared config: "

    .line 394
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->lastConnectedConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->lastSharedDataTimeMs:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_2d

    const-string v1, " at "

    .line 396
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->lastSharedDataTimeMs:J

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->getDiffString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2d
    const-string v1, "\n"

    .line 398
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    :cond_32
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->configLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_35
    const-string v4, "Received network list:"

    .line 401
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    iget-object v4, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->sharedNetworkIds:Ljava/util/Set;

    new-instance v5, Lcom/samsung/android/server/wifi/share/WifiContinuityService$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService$$ExternalSyntheticLambda1;-><init>(Ljava/lang/StringBuilder;)V

    invoke-interface {v4, v5}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    const-string v4, "\n"

    .line 403
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->lastReceivedDataTimeMs:J

    cmp-long v2, v4, v2

    if-lez v2, :cond_62

    const-string v2, "Last received data at "

    .line 405
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->lastReceivedDataTimeMs:J

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->getDiffString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    .line 406
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    :cond_62
    monitor-exit v1
    :try_end_63
    .catchall {:try_start_35 .. :try_end_63} :catchall_68

    .line 409
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_68
    move-exception p0

    .line 408
    :try_start_69
    monitor-exit v1
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw p0
.end method

.method protected getWhatToString(I)Ljava/lang/String;
    .registers 3

    .line 298
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->mGetWhatToString:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_b

    return-object v0

    .line 302
    :cond_b
    invoke-super {p0, p1}, Lcom/android/internal/util/StateMachine;->getWhatToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method markSharedNetworkId(I)V
    .registers 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 386
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->configLock:Ljava/lang/Object;

    monitor-enter v0

    .line 387
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->sharedNetworkIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 388
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method
