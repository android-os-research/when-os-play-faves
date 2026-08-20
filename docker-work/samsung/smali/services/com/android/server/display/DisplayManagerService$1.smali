.class public Lcom/android/server/display/DisplayManagerService$1;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"

# interfaces
.implements Lcom/android/server/display/DisplayBlanker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .registers 2

    .line 381
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized requestDisplayState(IIFF)V
    .registers 16

    monitor-enter p0

    .line 394
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmRequestDisplayStateLock(Lcom/android/server/display/DisplayManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a6

    .line 395
    :try_start_8
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_a3

    .line 396
    :try_start_f
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayStates(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v2, v3, :cond_62

    .line 398
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v3}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayStates(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseIntArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    if-eq p2, v3, :cond_2c

    move v3, v5

    goto :goto_2d

    :cond_2c
    move v3, v4

    :goto_2d
    if-eqz v3, :cond_5e

    .line 401
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v6}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayStates(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseIntArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    move v7, v4

    move v8, v5

    move v9, v8

    :goto_3c
    if-ge v7, v6, :cond_60

    if-ne v7, v2, :cond_42

    move v10, p2

    goto :goto_4c

    .line 404
    :cond_42
    iget-object v10, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v10}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayStates(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseIntArray;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v10

    :goto_4c
    if-eq v10, v5, :cond_4f

    move v8, v4

    .line 408
    :cond_4f
    invoke-static {v10}, Landroid/view/Display;->isActiveState(I)Z

    move-result v10

    if-eqz v10, :cond_56

    move v9, v4

    :cond_56
    if-nez v8, :cond_5b

    if-nez v9, :cond_5b

    goto :goto_60

    :cond_5b
    add-int/lit8 v7, v7, 0x1

    goto :goto_3c

    :cond_5e
    move v8, v5

    move v9, v8

    :cond_60
    :goto_60
    move v4, v3

    goto :goto_64

    :cond_62
    move v8, v5

    move v9, v8

    .line 432
    :goto_64
    monitor-exit v1
    :try_end_65
    .catchall {:try_start_f .. :try_end_65} :catchall_a0

    if-ne p2, v5, :cond_6c

    .line 436
    :try_start_67
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1, p1, p2, p3, p4}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mrequestDisplayStateInternal(Lcom/android/server/display/DisplayManagerService;IIFF)V

    :cond_6c
    if-eqz v4, :cond_77

    .line 440
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayPowerCallbacks(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    move-result-object v1

    invoke-interface {v1, v9, v8}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->onDisplayStateChange(ZZ)V

    :cond_77
    if-nez p1, :cond_84

    if-eqz v4, :cond_84

    .line 445
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayPowerCallbacks(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    move-result-object v1

    invoke-interface {v1, p2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->onDefaultDisplayStateChange(I)V

    :cond_84
    if-eq p2, v5, :cond_8b

    .line 450
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1, p1, p2, p3, p4}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mrequestDisplayStateInternal(Lcom/android/server/display/DisplayManagerService;IIFF)V

    :cond_8b
    if-eqz p1, :cond_8e

    goto :goto_9d

    .line 456
    :cond_8e
    iget-object p3, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p3}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayPowerControllers(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseArray;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {p3, p2}, Lcom/android/server/display/DisplayPowerController;->setActualDisplayState(I)V

    .line 467
    :goto_9d
    monitor-exit v0
    :try_end_9e
    .catchall {:try_start_67 .. :try_end_9e} :catchall_a3

    .line 468
    monitor-exit p0

    return-void

    :catchall_a0
    move-exception p1

    .line 432
    :try_start_a1
    monitor-exit v1
    :try_end_a2
    .catchall {:try_start_a1 .. :try_end_a2} :catchall_a0

    :try_start_a2
    throw p1

    :catchall_a3
    move-exception p1

    .line 467
    monitor-exit v0
    :try_end_a5
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_a3

    :try_start_a5
    throw p1
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_a6

    :catchall_a6
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDisplayStateLimitForEarlyWakeUp(II)V
    .registers 9

    monitor-enter p0

    .line 475
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmRequestDisplayStateLock(Lcom/android/server/display/DisplayManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_91

    .line 476
    :try_start_8
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_8e

    .line 477
    :try_start_f
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayStateLimits(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    .line 479
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v3}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayStateLimits(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseIntArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    if-eq v3, p2, :cond_6c

    const-string v3, "DisplayManagerService"

    .line 480
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDisplayStateLimitForEarlyWakeUp : stateLimit="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    invoke-static {p2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " displayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 480
    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v3}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayStateLimits(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseIntArray;

    move-result-object v3

    invoke-virtual {v3, v2, p2}, Landroid/util/SparseIntArray;->setValueAt(II)V

    .line 484
    iget-object p2, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmLogicalDisplayMapper(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/LogicalDisplayMapper;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object p1

    .line 485
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object p1

    .line 484
    invoke-static {p2, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mupdateDisplayStateLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayDevice;)Ljava/lang/Runnable;

    move-result-object p1

    .line 491
    monitor-exit v1
    :try_end_64
    .catchall {:try_start_f .. :try_end_64} :catchall_8b

    if-eqz p1, :cond_69

    .line 493
    :try_start_66
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 495
    :cond_69
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_66 .. :try_end_6a} :catchall_8e

    .line 497
    monitor-exit p0

    return-void

    :cond_6c
    :try_start_6c
    const-string p1, "DisplayManagerService"

    .line 487
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDisplayStateLimitForEarlyWakeUp: sameRequest "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-static {p2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 487
    invoke-static {p1, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    monitor-exit v1
    :try_end_88
    .catchall {:try_start_6c .. :try_end_88} :catchall_8b

    :try_start_88
    monitor-exit v0
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_8e

    monitor-exit p0

    return-void

    :catchall_8b
    move-exception p1

    .line 491
    :try_start_8c
    monitor-exit v1
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    :try_start_8d
    throw p1

    :catchall_8e
    move-exception p1

    .line 495
    monitor-exit v0
    :try_end_90
    .catchall {:try_start_8d .. :try_end_90} :catchall_8e

    :try_start_90
    throw p1
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_91

    :catchall_91
    move-exception p1

    monitor-exit p0

    throw p1
.end method
