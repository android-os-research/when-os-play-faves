.class public Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;
.super Ljava/lang/Object;
.source "WifiSafeModeObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$Listener;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final facade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private isRegistered:Z

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private final observer:Landroid/database/ContentObserver;


# direct methods
.method static bridge synthetic -$$Nest$fgetlisteners(Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->listeners:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlock(Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Landroid/os/Handler;)V
    .registers 5

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->lock:Ljava/lang/Object;

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->listeners:Ljava/util/Set;

    .line 37
    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->context:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->facade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 40
    new-instance p1, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$1;

    invoke-direct {p1, p0, p3}, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$1;-><init>(Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->observer:Landroid/database/ContentObserver;

    return-void
.end method

.method private registerObserver()V
    .registers 5

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->isRegistered:Z

    .line 71
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->facade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->context:Landroid/content/Context;

    const-string v2, "safe_wifi"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->observer:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private unregisterObserver()V
    .registers 3

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->isRegistered:Z

    .line 77
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->facade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->observer:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->unregisterContentObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public isWifiSafeModeEnabled()Z
    .registers 4

    .line 81
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->facade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->context:Landroid/content/Context;

    const-string v1, "safe_wifi"

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_f

    move v2, v0

    :cond_f
    return v2
.end method

.method public registerListener(Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$Listener;)V
    .registers 3

    .line 52
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->isRegistered:Z

    if-nez v0, :cond_7

    .line 53
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->registerObserver()V

    .line 55
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->listeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_11

    throw p0
.end method

.method public unregisterListener(Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$Listener;)V
    .registers 4

    .line 61
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 62
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->listeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 63
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_15

    .line 64
    iget-object p1, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->listeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 65
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->unregisterObserver()V

    :cond_14
    return-void

    :catchall_15
    move-exception p0

    .line 63
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p0
.end method
