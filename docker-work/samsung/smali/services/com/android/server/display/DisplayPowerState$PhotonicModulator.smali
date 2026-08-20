.class public final Lcom/android/server/display/DisplayPowerState$PhotonicModulator;
.super Ljava/lang/Thread;
.source "DisplayPowerState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PhotonicModulator"
.end annotation


# static fields
.field public static final INITIAL_BACKLIGHT_FLOAT:F = NaNf

.field public static final INITIAL_SCREEN_STATE:I


# instance fields
.field public mActualBacklight:F

.field public mActualSdrBacklight:F

.field public mActualState:I

.field public mBacklightChangeInProgress:Z

.field public final mLock:Ljava/lang/Object;

.field public mPendingBacklight:F

.field public mPendingSdrBacklight:F

.field public mPendingState:I

.field public mStateChangeInProgress:Z

.field public final synthetic this$0:Lcom/android/server/display/DisplayPowerState;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerState;)V
    .registers 3

    .line 452
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    const-string p1, "PhotonicModulator"

    .line 453
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 441
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 443
    iput p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 444
    iput v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:F

    .line 445
    iput v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingSdrBacklight:F

    .line 446
    iput p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualState:I

    .line 447
    iput v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualBacklight:F

    .line 448
    iput v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualSdrBacklight:F

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 5

    .line 483
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 484
    :try_start_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "Photonic Modulator State:"

    .line 485
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingBacklight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingSdrBacklight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingSdrBacklight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mActualState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualState:I

    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mActualBacklight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualBacklight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mActualSdrBacklight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualSdrBacklight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStateChangeInProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mStateChangeInProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mBacklightChangeInProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mBacklightChangeInProgress:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 494
    monitor-exit v0

    return-void

    :catchall_c5
    move-exception p0

    monitor-exit v0
    :try_end_c7
    .catchall {:try_start_3 .. :try_end_c7} :catchall_c5

    throw p0
.end method

.method public run()V
    .registers 10

    .line 506
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 507
    :try_start_3
    iget v1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    .line 508
    iget v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualState:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_d

    move v2, v3

    goto :goto_e

    :cond_d
    move v2, v4

    .line 509
    :goto_e
    iget v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:F

    .line 510
    iget v6, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingSdrBacklight:F

    .line 511
    iget v7, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualBacklight:F

    cmpl-float v7, v5, v7

    if-nez v7, :cond_21

    iget v7, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualSdrBacklight:F

    cmpl-float v7, v6, v7

    if-eqz v7, :cond_1f

    goto :goto_21

    :cond_1f
    move v7, v4

    goto :goto_22

    :cond_21
    :goto_21
    move v7, v3

    :goto_22
    if-nez v2, :cond_2b

    .line 515
    iget-object v8, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v8}, Lcom/android/server/display/DisplayPowerState;->-$$Nest$mpostScreenUpdateThreadSafe(Lcom/android/server/display/DisplayPowerState;)V

    .line 516
    iput-boolean v4, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mStateChangeInProgress:Z

    :cond_2b
    if-nez v7, :cond_2f

    .line 519
    iput-boolean v4, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mBacklightChangeInProgress:Z

    :cond_2f
    if-eqz v1, :cond_39

    .line 521
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_39

    move v8, v3

    goto :goto_3a

    :cond_39
    move v8, v4

    :goto_3a
    if-nez v2, :cond_40

    if-eqz v7, :cond_3f

    goto :goto_40

    :cond_3f
    move v3, v4

    :cond_40
    :goto_40
    if-eqz v8, :cond_5c

    if-nez v3, :cond_45

    goto :goto_5c

    .line 533
    :cond_45
    iput v1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualState:I

    .line 534
    iput v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualBacklight:F

    .line 535
    iput v6, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualSdrBacklight:F

    .line 536
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_6e

    .line 544
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState;->-$$Nest$fgetmBlanker(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/DisplayBlanker;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v2}, Lcom/android/server/display/DisplayPowerState;->-$$Nest$fgetmDisplayId(Lcom/android/server/display/DisplayPowerState;)I

    move-result v2

    invoke-interface {v0, v2, v1, v5, v6}, Lcom/android/server/display/DisplayBlanker;->requestDisplayState(IIFF)V

    goto :goto_0

    .line 525
    :cond_5c
    :goto_5c
    :try_start_5c
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_61
    .catch Ljava/lang/InterruptedException; {:try_start_5c .. :try_end_61} :catch_62
    .catchall {:try_start_5c .. :try_end_61} :catchall_6e

    goto :goto_6c

    .line 527
    :catch_62
    :try_start_62
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerState;->-$$Nest$fgetmStopped(Lcom/android/server/display/DisplayPowerState;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 528
    monitor-exit v0

    return-void

    .line 531
    :cond_6c
    :goto_6c
    monitor-exit v0

    goto :goto_0

    :catchall_6e
    move-exception p0

    .line 536
    monitor-exit v0
    :try_end_70
    .catchall {:try_start_62 .. :try_end_70} :catchall_6e

    throw p0
.end method

.method public setState(IFF)Z
    .registers 9

    .line 457
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 458
    :try_start_3
    iget v1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v1, :cond_b

    move v1, v2

    goto :goto_c

    :cond_b
    move v1, v3

    .line 459
    :goto_c
    iget v4, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:F

    cmpl-float v4, p2, v4

    if-nez v4, :cond_1b

    iget v4, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingSdrBacklight:F

    cmpl-float v4, p3, v4

    if-eqz v4, :cond_19

    goto :goto_1b

    :cond_19
    move v4, v3

    goto :goto_1c

    :cond_1b
    :goto_1b
    move v4, v2

    :goto_1c
    if-nez v1, :cond_20

    if-eqz v4, :cond_4f

    .line 467
    :cond_20
    iput p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    .line 468
    iput p2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:F

    .line 469
    iput p3, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingSdrBacklight:F

    .line 470
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mStateChangeInProgress:Z

    if-nez p1, :cond_31

    iget-boolean p2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mBacklightChangeInProgress:Z

    if-eqz p2, :cond_2f

    goto :goto_31

    :cond_2f
    move p2, v3

    goto :goto_32

    :cond_31
    :goto_31
    move p2, v2

    :goto_32
    if-nez v1, :cond_39

    if-eqz p1, :cond_37

    goto :goto_39

    :cond_37
    move p1, v3

    goto :goto_3a

    :cond_39
    :goto_39
    move p1, v2

    .line 471
    :goto_3a
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mStateChangeInProgress:Z

    if-nez v4, :cond_45

    .line 472
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mBacklightChangeInProgress:Z

    if-eqz p1, :cond_43

    goto :goto_45

    :cond_43
    move p1, v3

    goto :goto_46

    :cond_45
    :goto_45
    move p1, v2

    :goto_46
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mBacklightChangeInProgress:Z

    if-nez p2, :cond_4f

    .line 475
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 478
    :cond_4f
    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mStateChangeInProgress:Z

    if-nez p0, :cond_54

    goto :goto_55

    :cond_54
    move v2, v3

    :goto_55
    monitor-exit v0

    return v2

    :catchall_57
    move-exception p0

    .line 479
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_57

    throw p0
.end method
