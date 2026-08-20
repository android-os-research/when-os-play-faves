.class public final Lcom/android/server/aod/AODManagerService$LocalService;
.super Lcom/samsung/android/aod/AODManagerInternal;
.source "AODManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/aod/AODManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/aod/AODManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/aod/AODManagerService;)V
    .registers 2

    .line 1442
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-direct {p0}, Lcom/samsung/android/aod/AODManagerInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/aod/AODManagerService;Lcom/android/server/aod/AODManagerService$LocalService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService$LocalService;-><init>(Lcom/android/server/aod/AODManagerService;)V

    return-void
.end method


# virtual methods
.method public isAODAnalogLiveClock()Z
    .registers 4

    .line 1473
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isAODAnalogLiveClock: mIsAODAnalogLiveClock : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->-$$Nest$fgetmIsAODAnalogLiveClock(Lcom/android/server/aod/AODManagerService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {p0}, Lcom/android/server/aod/AODManagerService;->-$$Nest$fgetmIsAODAnalogLiveClock(Lcom/android/server/aod/AODManagerService;)Z

    move-result p0

    return p0
.end method

.method public screenTurningOn(Lcom/samsung/android/aod/AODManager$AODChangeListener;)V
    .registers 5

    .line 1446
    invoke-static {}, Lcom/android/server/aod/AODConfig;->isNeedsScreenTurningOnDelayed()Z

    move-result v0

    if-eqz v0, :cond_8e

    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-$$Nest$sfgetAOD_SCREEN_TURNING_ON_TIMEOUT()I

    move-result v0

    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-$$Nest$sfgetDEBUG_TURNING_ON_DELAYED()I

    move-result v1

    add-int/2addr v0, v1

    if-eqz v0, :cond_8e

    .line 1448
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->-$$Nest$fgetmAODHandler(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/AODManagerService$AODHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v1}, Lcom/android/server/aod/AODManagerService;->-$$Nest$fgetmScreenTurningOnRunnable(Lcom/android/server/aod/AODManagerService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1449
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->-$$Nest$fgetmAODHandler(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/AODManagerService$AODHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v1}, Lcom/android/server/aod/AODManagerService;->-$$Nest$fgetmScreenTurningOnRunnable(Lcom/android/server/aod/AODManagerService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1452
    :cond_32
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "screenTurningOn post"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-$$Nest$sfgetDEBUG_TURNING_ON_DELAYED()I

    move-result v0

    if-eqz v0, :cond_5f

    .line 1454
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "screenTurningOn post - add delay +"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-$$Nest$sfgetDEBUG_TURNING_ON_DELAYED()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    :cond_5f
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->-$$Nest$fgetmScreenTurningOnLock(Lcom/android/server/aod/AODManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1457
    :try_start_66
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v1, p1}, Lcom/android/server/aod/AODManagerService;->-$$Nest$fputmAODChangeListener(Lcom/android/server/aod/AODManagerService;Lcom/samsung/android/aod/AODManager$AODChangeListener;)V

    .line 1458
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_66 .. :try_end_6c} :catchall_8b

    .line 1459
    iget-object p1, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {p1}, Lcom/android/server/aod/AODManagerService;->-$$Nest$fgetmAODHandler(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/AODManagerService$AODHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->-$$Nest$fgetmScreenTurningOnRunnable(Lcom/android/server/aod/AODManagerService;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-$$Nest$sfgetAOD_SCREEN_TURNING_ON_TIMEOUT()I

    move-result v1

    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-$$Nest$sfgetDEBUG_TURNING_ON_DELAYED()I

    move-result v2

    add-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1460
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {p0}, Lcom/android/server/aod/AODManagerService;->-$$Nest$mwakeUpInternal(Lcom/android/server/aod/AODManagerService;)V

    goto :goto_a8

    :catchall_8b
    move-exception p0

    .line 1458
    :try_start_8c
    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    throw p0

    .line 1462
    :cond_8e
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "screenTurningOn directly"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_9e

    .line 1464
    invoke-interface {p1}, Lcom/samsung/android/aod/AODManager$AODChangeListener;->readyToScreenTurningOn()V

    goto :goto_a8

    .line 1466
    :cond_9e
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "screenTurningOn : Do nothing, There is no Listener"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a8
    return-void
.end method
