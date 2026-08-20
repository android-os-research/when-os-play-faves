.class public Lcom/android/server/BinderCallsStatsService$LifeCycle;
.super Lcom/android/server/SystemService;
.source "BinderCallsStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BinderCallsStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LifeCycle"
.end annotation


# instance fields
.field public mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

.field public mService:Lcom/android/server/BinderCallsStatsService;

.field public mWorkSourceProvider:Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;


# direct methods
.method public static synthetic $r8$lambda$hvy-U7p0-QvaiORVXohyYkxYgPI(Lcom/android/server/BinderCallsStatsService$LifeCycle;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/BinderCallsStatsService$LifeCycle;->lambda$onBootPhase$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 289
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onBootPhase$0()V
    .registers 1

    .line 342
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$LifeCycle;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->init()V

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 4

    const/16 v0, 0x1f4

    if-ne v0, p1, :cond_3c

    .line 314
    const-class p1, Lcom/android/internal/os/CachedDeviceState$Readonly;

    invoke-virtual {p0, p1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/os/CachedDeviceState$Readonly;

    .line 316
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$LifeCycle;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BinderCallsStats;->setDeviceState(Lcom/android/internal/os/CachedDeviceState$Readonly;)V

    .line 317
    iget-object p1, p0, Lcom/android/server/BinderCallsStatsService$LifeCycle;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/os/BinderCallsStats;->enablePackageStats(Z)V

    .line 319
    const-class p1, Landroid/os/BatteryStatsInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryStatsInternal;

    .line 321
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$LifeCycle;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    new-instance v1, Lcom/android/server/BinderCallsStatsService$LifeCycle$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/BinderCallsStatsService$LifeCycle$1;-><init>(Lcom/android/server/BinderCallsStatsService$LifeCycle;Landroid/os/BatteryStatsInternal;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BinderCallsStats;->setCallStatsObserver(Lcom/android/internal/os/BinderInternal$CallStatsObserver;)V

    .line 337
    iget-object p1, p0, Lcom/android/server/BinderCallsStatsService$LifeCycle;->mWorkSourceProvider:Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;->systemReady(Landroid/content/Context;)V

    .line 338
    iget-object p1, p0, Lcom/android/server/BinderCallsStatsService$LifeCycle;->mService:Lcom/android/server/BinderCallsStatsService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/BinderCallsStatsService;->systemReady(Landroid/content/Context;)V

    goto :goto_4c

    :cond_3c
    const/16 v0, 0x3e8

    if-ne v0, p1, :cond_4c

    .line 341
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/BinderCallsStatsService$LifeCycle$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/BinderCallsStatsService$LifeCycle$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/BinderCallsStatsService$LifeCycle;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4c
    :goto_4c
    return-void
.end method

.method public onStart()V
    .registers 5

    .line 294
    new-instance v0, Lcom/android/internal/os/BinderCallsStats;

    new-instance v1, Lcom/android/internal/os/BinderCallsStats$Injector;

    invoke-direct {v1}, Lcom/android/internal/os/BinderCallsStats$Injector;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/internal/os/BinderCallsStats;-><init>(Lcom/android/internal/os/BinderCallsStats$Injector;)V

    iput-object v0, p0, Lcom/android/server/BinderCallsStatsService$LifeCycle;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 295
    new-instance v0, Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;

    invoke-direct {v0}, Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;-><init>()V

    iput-object v0, p0, Lcom/android/server/BinderCallsStatsService$LifeCycle;->mWorkSourceProvider:Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;

    .line 296
    new-instance v0, Lcom/android/server/BinderCallsStatsService;

    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$LifeCycle;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    iget-object v2, p0, Lcom/android/server/BinderCallsStatsService$LifeCycle;->mWorkSourceProvider:Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/server/BinderCallsStatsService;-><init>(Lcom/android/internal/os/BinderCallsStats;Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;)V

    iput-object v0, p0, Lcom/android/server/BinderCallsStatsService$LifeCycle;->mService:Lcom/android/server/BinderCallsStatsService;

    .line 298
    const-class v0, Lcom/android/server/BinderCallsStatsService$Internal;

    new-instance v1, Lcom/android/server/BinderCallsStatsService$Internal;

    iget-object v2, p0, Lcom/android/server/BinderCallsStatsService$LifeCycle;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/BinderCallsStatsService$Internal;-><init>(Lcom/android/internal/os/BinderCallsStats;Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 299
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$LifeCycle;->mService:Lcom/android/server/BinderCallsStatsService;

    const-string v1, "binder_calls_stats"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v0, "persist.sys.binder_calls_detailed_tracking"

    const/4 v1, 0x0

    .line 300
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4c

    const-string v0, "BinderCallsStatsService"

    const-string v1, "Enabled CPU usage tracking for binder calls. Controlled by persist.sys.binder_calls_detailed_tracking or via dumpsys binder_calls_stats --enable-detailed-tracking"

    .line 304
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$LifeCycle;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BinderCallsStats;->setDetailedTracking(Z)V

    :cond_4c
    return-void
.end method
