.class public final Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EarlyWakeUpManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$EarlyWakeUpHandler;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final EARLY_WAKEUP_TIMEOUT_MILLIS:I = 0xbb8

.field public static final MSG_EARLY_WAKEUP_TIMEOUT:I = 0x1

.field public static final TAG_EARLY_WAKEUP:Ljava/lang/String; = "[ew] "


# instance fields
.field public mAppliedLocked:Z

.field public mEarlyDisplayEnabled:Z

.field public mEarlyDisplayReadyLocked:Z

.field public mEarlyLightSensorEnabled:Z

.field public final mEarlyLightSensorReadyListener:Ljava/lang/Runnable;

.field public mEarlyLightSensorReadyLocked:Z

.field public final mEarlyWakeUpLock:Ljava/lang/Object;

.field public final mHandler:Landroid/os/Handler;

.field public final mHandlerThread:Landroid/os/HandlerThread;

.field public mHoldingSuspendBlocker:Z

.field public mLastEnableRequestedTime:J

.field public final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmEarlyWakeUpLock(Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyWakeUpLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmEarlyDisplayReadyLocked(Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyDisplayReadyLocked:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEarlyLightSensorReadyLocked(Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyLightSensorReadyLocked:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateSuspendBlockerLocked(Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->updateSuspendBlockerLocked()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .registers 4

    .line 5226
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5210
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyWakeUpLock:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 5221
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyLightSensorReadyLocked:Z

    .line 5222
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyDisplayReadyLocked:Z

    .line 5290
    new-instance v0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$1;-><init>(Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyLightSensorReadyListener:Ljava/lang/Runnable;

    .line 5227
    new-instance v0, Landroid/os/HandlerThread;

    invoke-static {p1}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetTAG(Lcom/android/server/display/DisplayPowerController;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x4

    invoke-direct {v0, p1, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 5228
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 5230
    new-instance p1, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$EarlyWakeUpHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$EarlyWakeUpHandler;-><init>(Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final clearEnableRequestTimeout()V
    .registers 3

    .line 5406
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetTAG(Lcom/android/server/display/DisplayPowerController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[ew] clearEnableRequestTimeout -"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5408
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 6

    .line 5440
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyWakeUpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5441
    :try_start_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "[ew] EarlyWakeUpManager:"

    .line 5442
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAppliedLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mAppliedLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mEarlyLightSensorEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyLightSensorEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mEarlyDisplayEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyDisplayEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastEnableRequestedTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mLastEnableRequestedTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  now="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mHoldingSuspendBlocker="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mHoldingSuspendBlocker:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mEarlyLightSensorReadyLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyLightSensorReadyLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mEarlyDisplayReadyLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyDisplayReadyLocked:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5451
    monitor-exit v0

    return-void

    :catchall_bf
    move-exception p0

    monitor-exit v0
    :try_end_c1
    .catchall {:try_start_3 .. :try_end_c1} :catchall_bf

    throw p0
.end method

.method public final isCandidateForAutoBrightness()Z
    .registers 3

    .line 5387
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmPowerRequest(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v0

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmProximity(Lcom/android/server/display/DisplayPowerController;)I

    move-result p0

    if-eq p0, v1, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1
.end method

.method public final isLastRequestExpired(J)Z
    .registers 7

    .line 5398
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mLastEnableRequestedTime:J

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    cmp-long p0, p1, v0

    if-ltz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public final resetEnableRequestTimeout()V
    .registers 7

    .line 5412
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetTAG(Lcom/android/server/display/DisplayPowerController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[ew] resetEnableRequestTimeout +"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5414
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5415
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mLastEnableRequestedTime:J

    const-wide/16 v4, 0xbb8

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    return-void
.end method

.method public final setEarlyDisplayEnabledLocked(ZI)V
    .registers 4

    .line 5326
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyDisplayEnabled:Z

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_e

    .line 5331
    invoke-virtual {p0, p2}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->supportEarlyDisplayEnableLocked(I)Z

    move-result p2

    if-nez p2, :cond_e

    return-void

    .line 5336
    :cond_e
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyDisplayEnabled:Z

    const/4 p2, 0x0

    .line 5343
    iput-boolean p2, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyDisplayReadyLocked:Z

    .line 5345
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager$2;-><init>(Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;Z)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setEarlyLightSensorEnabledLocked(Z)V
    .registers 3

    .line 5303
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->supportEarlyLightSensorEnableLocked()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    if-eqz p1, :cond_10

    .line 5308
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->isCandidateForAutoBrightness()Z

    move-result v0

    if-nez v0, :cond_10

    return-void

    .line 5317
    :cond_10
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyLightSensorEnabled:Z

    if-ne p1, v0, :cond_15

    return-void

    .line 5320
    :cond_15
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyLightSensorEnabled:Z

    const/4 v0, 0x0

    .line 5321
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyLightSensorReadyLocked:Z

    .line 5322
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmAutomaticBrightnessController(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/AutomaticBrightnessController;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyLightSensorReadyListener:Ljava/lang/Runnable;

    invoke-virtual {v0, p1, p0}, Lcom/android/server/display/AutomaticBrightnessController;->setEarlyLightSensorEnabled(ZLjava/lang/Runnable;)Z

    return-void
.end method

.method public final supportEarlyDisplayEnableLocked(I)Z
    .registers 2

    .line 5375
    invoke-static {p1}, Landroid/view/Display;->isDozeState(I)Z

    move-result p0

    if-nez p0, :cond_11

    sget-boolean p0, Lcom/android/server/power/PowerManagerUtil;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-nez p0, :cond_11

    sget-boolean p0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_AOD_LIVE_CLOCK:Z

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method public final supportEarlyLightSensorEnableLocked()Z
    .registers 1

    .line 5365
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmAutomaticBrightnessController(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/AutomaticBrightnessController;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    goto :goto_b

    :cond_a
    const/4 p0, 0x1

    :goto_b
    return p0
.end method

.method public update(ZI)V
    .registers 9

    .line 5234
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyWakeUpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5236
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p2, v3, :cond_1a

    .line 5246
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v3}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmLogicalDisplay(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/LogicalDisplay;

    move-result-object v3

    .line 5247
    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1a

    move v3, v4

    goto :goto_1b

    :cond_1a
    move v3, v5

    :goto_1b
    if-eqz v3, :cond_37

    .line 5250
    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mAppliedLocked:Z

    if-eqz v3, :cond_29

    invoke-virtual {p0, v1, v2}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->isLastRequestExpired(J)Z

    move-result v3

    if-nez v3, :cond_29

    move v3, v4

    goto :goto_2a

    :cond_29
    move v3, v5

    :goto_2a
    if-nez p1, :cond_2e

    if-eqz v3, :cond_37

    :cond_2e
    if-eqz p1, :cond_35

    .line 5256
    iput-wide v1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mLastEnableRequestedTime:J

    .line 5257
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->resetEnableRequestTimeout()V

    :cond_35
    move p1, v4

    goto :goto_38

    :cond_37
    move p1, v5

    .line 5262
    :goto_38
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mAppliedLocked:Z

    if-eq p1, v1, :cond_6c

    .line 5263
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetTAG(Lcom/android/server/display/DisplayPowerController;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ew] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_5f

    .line 5267
    invoke-virtual {p0, v4}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->setEarlyLightSensorEnabledLocked(Z)V

    .line 5270
    invoke-virtual {p0, v4, p2}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->setEarlyDisplayEnabledLocked(ZI)V

    goto :goto_65

    .line 5273
    :cond_5f
    invoke-virtual {p0, v5}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->setEarlyLightSensorEnabledLocked(Z)V

    .line 5276
    invoke-virtual {p0, v5, p2}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->setEarlyDisplayEnabledLocked(ZI)V

    :goto_65
    if-nez p1, :cond_6a

    .line 5280
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->clearEnableRequestTimeout()V

    .line 5283
    :cond_6a
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mAppliedLocked:Z

    .line 5286
    :cond_6c
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->updateSuspendBlockerLocked()V

    .line 5287
    monitor-exit v0

    return-void

    :catchall_71
    move-exception p0

    monitor-exit v0
    :try_end_73
    .catchall {:try_start_3 .. :try_end_73} :catchall_71

    throw p0
.end method

.method public final updateSuspendBlockerLocked()V
    .registers 4

    .line 5420
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mAppliedLocked:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyDisplayReadyLocked:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mEarlyLightSensorReadyLocked:Z

    if-nez v0, :cond_f

    goto :goto_11

    :cond_f
    move v0, v1

    goto :goto_12

    :cond_11
    :goto_11
    move v0, v2

    :goto_12
    if-eqz v0, :cond_35

    .line 5425
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mHoldingSuspendBlocker:Z

    if-nez v0, :cond_55

    .line 5426
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetTAG(Lcom/android/server/display/DisplayPowerController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[ew] acquireSuspendBlocker: +"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5428
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmCallbacks(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmSuspendBlockerIdEarlyWakeup(Lcom/android/server/display/DisplayPowerController;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker(Ljava/lang/String;)V

    .line 5429
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mHoldingSuspendBlocker:Z

    goto :goto_55

    .line 5431
    :cond_35
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mHoldingSuspendBlocker:Z

    if-eqz v0, :cond_55

    .line 5432
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetTAG(Lcom/android/server/display/DisplayPowerController;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "[ew] releaseSuspendBlocker: -"

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5434
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->mHoldingSuspendBlocker:Z

    .line 5435
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmCallbacks(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmSuspendBlockerIdEarlyWakeup(Lcom/android/server/display/DisplayPowerController;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker(Ljava/lang/String;)V

    :cond_55
    :goto_55
    return-void
.end method
