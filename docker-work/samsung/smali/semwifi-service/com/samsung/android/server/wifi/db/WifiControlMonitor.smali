.class public Lcom/samsung/android/server/wifi/db/WifiControlMonitor;
.super Ljava/lang/Object;
.source "WifiControlMonitor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemWifi.ControlMonitor"

.field public static final UNKNOWN_OR_SYSTEM:Ljava/lang/String; = "android"


# instance fields
.field private final lastCallerInfoCallback:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private lastWifiState:I

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/db/WifiControlListener;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private final resolver:Landroid/content/ContentResolver;

.field private final wifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;


# direct methods
.method public static synthetic $r8$lambda$ZPO_q5k2vA3tUXq0AP1mjer0d8Q(Ljava/lang/String;ZZLcom/samsung/android/server/wifi/db/WifiControlListener;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->lambda$notifyToClients$1(Ljava/lang/String;ZZLcom/samsung/android/server/wifi/db/WifiControlListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hAM3wZB6Bmf0lzOord3e-8Z2VTk(Lcom/samsung/android/server/wifi/db/WifiControlMonitor;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->lambda$new$0(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetlastWifiState(Lcom/samsung/android/server/wifi/db/WifiControlMonitor;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->lastWifiState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetresolver(Lcom/samsung/android/server/wifi/db/WifiControlMonitor;)Landroid/content/ContentResolver;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->resolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwifiThreadRunner(Lcom/samsung/android/server/wifi/db/WifiControlMonitor;)Lcom/samsung/android/server/wifi/SemWifiThreadRunner;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->wifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mnotifyToClients(Lcom/samsung/android/server/wifi/db/WifiControlMonitor;Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->notifyToClients(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiThreadRunner;)V
    .registers 5

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/db/WifiControlMonitor$1;-><init>(Lcom/samsung/android/server/wifi/db/WifiControlMonitor;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->lastCallerInfoCallback:Ljava/util/function/BiConsumer;

    .line 44
    iput-object p1, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->resolver:Landroid/content/ContentResolver;

    .line 45
    iput-object p3, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->wifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 46
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->lock:Ljava/lang/Object;

    .line 47
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->listeners:Ljava/util/Set;

    const/4 p1, 0x4

    .line 48
    iput p1, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->lastWifiState:I

    .line 50
    new-instance p1, Lcom/samsung/android/server/wifi/db/WifiControlMonitor$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/server/wifi/db/WifiControlMonitor$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/db/WifiControlMonitor;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    invoke-virtual {p2, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;)V

    return-void
.end method

.method private synthetic lambda$new$0(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;II)V
    .registers 4

    const/4 p3, 0x3

    if-eq p2, p3, :cond_6

    const/4 p3, 0x1

    if-ne p2, p3, :cond_d

    .line 53
    :cond_6
    iput p2, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->lastWifiState:I

    .line 54
    iget-object p0, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->lastCallerInfoCallback:Ljava/util/function/BiConsumer;

    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getLastCallerInfoForSta(Ljava/util/function/BiConsumer;)V

    :cond_d
    return-void
.end method

.method private static synthetic lambda$notifyToClients$1(Ljava/lang/String;ZZLcom/samsung/android/server/wifi/db/WifiControlListener;)V
    .registers 4

    .line 90
    invoke-interface {p3, p0, p1, p2}, Lcom/samsung/android/server/wifi/db/WifiControlListener;->onWifiStateChangedBy(Ljava/lang/String;ZZ)V

    return-void
.end method

.method private notifyToClients(Ljava/lang/String;Z)V
    .registers 6

    .line 84
    iget-object v0, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "com.android.systemui"

    .line 86
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "com.sec.android.dexsystemui"

    .line 87
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "com.android.settings"

    .line 88
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "com.samsung.android.sidegesturepad"

    .line 89
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_26

    :cond_24
    const/4 v1, 0x0

    goto :goto_27

    :cond_26
    :goto_26
    const/4 v1, 0x1

    .line 90
    :goto_27
    iget-object p0, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->listeners:Ljava/util/Set;

    new-instance v2, Lcom/samsung/android/server/wifi/db/WifiControlMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p2, v1}, Lcom/samsung/android/server/wifi/db/WifiControlMonitor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;ZZ)V

    invoke-interface {p0, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 92
    monitor-exit v0

    return-void

    :catchall_33
    move-exception p0

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw p0
.end method


# virtual methods
.method public registerListener(Lcom/samsung/android/server/wifi/db/WifiControlListener;)V
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->listeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method
