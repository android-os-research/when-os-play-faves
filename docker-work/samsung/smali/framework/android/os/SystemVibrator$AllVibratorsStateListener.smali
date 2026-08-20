.class Landroid/os/SystemVibrator$AllVibratorsStateListener;
.super Ljava/lang/Object;
.source "SystemVibrator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemVibrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AllVibratorsStateListener"
.end annotation


# instance fields
.field private final blacklist mDelegate:Landroid/os/Vibrator$OnVibratorStateChangedListener;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mInitializedMask:I

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mVibratingMask:I

.field private final blacklist mVibratorListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/SystemVibrator$SingleVibratorStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/os/Vibrator$OnVibratorStateChangedListener;

    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mLock:Ljava/lang/Object;

    .line 563
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mVibratorListeners:Landroid/util/SparseArray;

    .line 574
    iput-object p1, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mExecutor:Ljava/util/concurrent/Executor;

    .line 575
    iput-object p2, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mDelegate:Landroid/os/Vibrator$OnVibratorStateChangedListener;

    .line 576
    return-void
.end method


# virtual methods
.method blacklist hasRegisteredListeners()Z
    .registers 3

    .line 579
    iget-object v0, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 580
    :try_start_3
    iget-object v1, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mVibratorListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return v1

    .line 581
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method synthetic blacklist lambda$onVibrating$0$android-os-SystemVibrator$AllVibratorsStateListener(IZ)V
    .registers 10
    .param p1, "vibratorIdx"    # I
    .param p2, "vibrating"    # Z

    .line 622
    iget-object v0, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 623
    :try_start_3
    iget-object v1, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mVibratorListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    shl-int v1, v2, v1

    sub-int/2addr v1, v2

    .line 624
    .local v1, "allInitializedMask":I
    shl-int v3, v2, p1

    .line 625
    .local v3, "vibratorMask":I
    iget v4, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mInitializedMask:I

    and-int v5, v4, v3

    const/4 v6, 0x0

    if-nez v5, :cond_24

    .line 627
    or-int/2addr v4, v3

    iput v4, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mInitializedMask:I

    .line 628
    iget v4, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mVibratingMask:I

    if-eqz p2, :cond_1f

    move v5, v3

    goto :goto_20

    :cond_1f
    move v5, v6

    :goto_20
    or-int/2addr v4, v5

    iput v4, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mVibratingMask:I

    goto :goto_32

    .line 631
    :cond_24
    iget v4, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mVibratingMask:I

    and-int v5, v4, v3

    if-eqz v5, :cond_2c

    move v5, v2

    goto :goto_2d

    :cond_2c
    move v5, v6

    .line 632
    .local v5, "prevVibrating":Z
    :goto_2d
    if-eq v5, p2, :cond_32

    .line 633
    xor-int/2addr v4, v3

    iput v4, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mVibratingMask:I

    .line 636
    .end local v5    # "prevVibrating":Z
    :cond_32
    :goto_32
    iget v4, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mInitializedMask:I

    if-eq v4, v1, :cond_38

    .line 638
    monitor-exit v0

    return-void

    .line 640
    :cond_38
    iget v4, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mVibratingMask:I

    if-eqz v4, :cond_3d

    goto :goto_3e

    :cond_3d
    move v2, v6

    :goto_3e
    move v1, v2

    .line 641
    .end local v3    # "vibratorMask":I
    .local v1, "anyVibrating":Z
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_46

    .line 642
    iget-object v0, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mDelegate:Landroid/os/Vibrator$OnVibratorStateChangedListener;

    invoke-interface {v0, v1}, Landroid/os/Vibrator$OnVibratorStateChangedListener;->onVibratorStateChanged(Z)V

    .line 643
    return-void

    .line 641
    .end local v1    # "anyVibrating":Z
    :catchall_46
    move-exception v1

    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v1
.end method

.method blacklist onVibrating(IZ)V
    .registers 5
    .param p1, "vibratorIdx"    # I
    .param p2, "vibrating"    # Z

    .line 620
    iget-object v0, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/os/SystemVibrator$AllVibratorsStateListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/os/SystemVibrator$AllVibratorsStateListener$$ExternalSyntheticLambda0;-><init>(Landroid/os/SystemVibrator$AllVibratorsStateListener;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 644
    return-void
.end method

.method blacklist register(Landroid/os/VibratorManager;)V
    .registers 11
    .param p1, "vibratorManager"    # Landroid/os/VibratorManager;

    .line 585
    invoke-virtual {p1}, Landroid/os/VibratorManager;->getVibratorIds()[I

    move-result-object v0

    .line 586
    .local v0, "vibratorIds":[I
    iget-object v1, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 587
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    :try_start_8
    array-length v3, v0

    if-ge v2, v3, :cond_33

    .line 588
    aget v3, v0, v2

    .line 589
    .local v3, "vibratorId":I
    new-instance v4, Landroid/os/SystemVibrator$SingleVibratorStateListener;

    invoke-direct {v4, p0, v2}, Landroid/os/SystemVibrator$SingleVibratorStateListener;-><init>(Landroid/os/SystemVibrator$AllVibratorsStateListener;I)V
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_35

    .line 591
    .local v4, "listener":Landroid/os/SystemVibrator$SingleVibratorStateListener;
    :try_start_12
    invoke-virtual {p1, v3}, Landroid/os/VibratorManager;->getVibrator(I)Landroid/os/Vibrator;

    move-result-object v5

    iget-object v6, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v5, v6, v4}, Landroid/os/Vibrator;->addVibratorStateListener(Ljava/util/concurrent/Executor;Landroid/os/Vibrator$OnVibratorStateChangedListener;)V

    .line 593
    iget-object v5, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mVibratorListeners:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_20
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_20} :catch_24
    .catchall {:try_start_12 .. :try_end_20} :catchall_35

    .line 603
    nop

    .line 587
    .end local v3    # "vibratorId":I
    .end local v4    # "listener":Landroid/os/SystemVibrator$SingleVibratorStateListener;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 594
    .restart local v3    # "vibratorId":I
    .restart local v4    # "listener":Landroid/os/SystemVibrator$SingleVibratorStateListener;
    :catch_24
    move-exception v5

    .line 596
    .local v5, "e":Ljava/lang/RuntimeException;
    :try_start_25
    invoke-virtual {p0, p1}, Landroid/os/SystemVibrator$AllVibratorsStateListener;->unregister(Landroid/os/VibratorManager;)V
    :try_end_28
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_28} :catch_29
    .catchall {:try_start_25 .. :try_end_28} :catchall_35

    .line 601
    goto :goto_31

    .line 597
    :catch_29
    move-exception v6

    .line 598
    .local v6, "e1":Ljava/lang/RuntimeException;
    :try_start_2a
    const-string v7, "Vibrator"

    const-string v8, "Failed to unregister listener while recovering from a failed register call"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 602
    .end local v6    # "e1":Ljava/lang/RuntimeException;
    :goto_31
    nop

    .end local v0    # "vibratorIds":[I
    .end local p0    # "this":Landroid/os/SystemVibrator$AllVibratorsStateListener;
    .end local p1    # "vibratorManager":Landroid/os/VibratorManager;
    throw v5

    .line 605
    .end local v2    # "i":I
    .end local v3    # "vibratorId":I
    .end local v4    # "listener":Landroid/os/SystemVibrator$SingleVibratorStateListener;
    .end local v5    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "vibratorIds":[I
    .restart local p0    # "this":Landroid/os/SystemVibrator$AllVibratorsStateListener;
    .restart local p1    # "vibratorManager":Landroid/os/VibratorManager;
    :cond_33
    monitor-exit v1

    .line 606
    return-void

    .line 605
    :catchall_35
    move-exception v2

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_35

    throw v2
.end method

.method blacklist unregister(Landroid/os/VibratorManager;)V
    .registers 7
    .param p1, "vibratorManager"    # Landroid/os/VibratorManager;

    .line 609
    iget-object v0, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 610
    :try_start_3
    iget-object v1, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mVibratorListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .local v1, "i":I
    :goto_9
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_28

    .line 611
    iget-object v2, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mVibratorListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 612
    .local v2, "vibratorId":I
    iget-object v3, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mVibratorListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/SystemVibrator$SingleVibratorStateListener;

    .line 613
    .local v3, "listener":Landroid/os/SystemVibrator$SingleVibratorStateListener;
    invoke-virtual {p1, v2}, Landroid/os/VibratorManager;->getVibrator(I)Landroid/os/Vibrator;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Vibrator;->removeVibratorStateListener(Landroid/os/Vibrator$OnVibratorStateChangedListener;)V

    .line 614
    iget-object v4, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mVibratorListeners:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 615
    .end local v2    # "vibratorId":I
    .end local v3    # "listener":Landroid/os/SystemVibrator$SingleVibratorStateListener;
    goto :goto_9

    .line 616
    .end local v1    # "i":I
    :cond_28
    monitor-exit v0

    .line 617
    return-void

    .line 616
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1
.end method
