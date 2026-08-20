.class public Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "TvInteractiveAppManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->registerBroadcastReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)V
    .registers 2

    .line 316
    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$1;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildTvInteractiveAppServiceList([Ljava/lang/String;)V
    .registers 6

    .line 318
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v0

    .line 319
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$1;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 320
    :try_start_b
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$1;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)I

    move-result v2

    if-eq v2, v0, :cond_23

    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$1;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmRunningProfiles(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 321
    :cond_23
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$1;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, v0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mbuildTvInteractiveAppServiceListLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I[Ljava/lang/String;)V

    .line 323
    :cond_28
    monitor-exit v1

    return-void

    :catchall_2a
    move-exception p0

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_b .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .registers 4

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    .line 331
    invoke-virtual {p0, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$1;->buildTvInteractiveAppServiceList([Ljava/lang/String;)V

    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;)V
    .registers 3

    .line 341
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->isReplacing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 342
    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$1;->buildTvInteractiveAppServiceList([Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;)V
    .registers 3

    .line 354
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->isReplacing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 355
    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$1;->buildTvInteractiveAppServiceList([Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public onSomePackagesChanged()V
    .registers 2

    .line 362
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->isReplacing()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    .line 370
    invoke-virtual {p0, v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$1;->buildTvInteractiveAppServiceList([Ljava/lang/String;)V

    return-void
.end method
