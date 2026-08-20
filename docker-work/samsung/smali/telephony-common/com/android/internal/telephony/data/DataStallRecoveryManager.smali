.class public Lcom/android/internal/telephony/data/DataStallRecoveryManager;
.super Landroid/os/Handler;
.source "DataStallRecoveryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/data/DataStallRecoveryManager$DataStallRecoveryManagerCallback;
    }
.end annotation


# static fields
.field public static final blacklist RECOVERY_ACTION_CLEANUP:I = 0x1

.field public static final blacklist RECOVERY_ACTION_GET_DATA_CALL_LIST:I = 0x0

.field public static final blacklist RECOVERY_ACTION_RADIO_RESTART:I = 0x3

.field public static final blacklist RECOVERY_ACTION_REREGISTER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist RECOVERY_ACTION_RESET_MODEM:I = 0x4


# instance fields
.field private final blacklist mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

.field private final blacklist mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

.field private blacklist mDataStallRecoveryDelayMillisArray:[J

.field private blacklist mDataStallRecoveryManagerCallback:Lcom/android/internal/telephony/data/DataStallRecoveryManager$DataStallRecoveryManagerCallback;

.field private blacklist mDataStallStartMs:J

.field private blacklist mDataStalled:Z

.field private blacklist mIsAttemptedAllSteps:Z

.field private blacklist mIsInternetNetworkConnected:Z

.field private blacklist mIsValidNetwork:Z

.field private blacklist mLastAction:I

.field private blacklist mLastActionReported:Z

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mLogTag:Ljava/lang/String;

.field private blacklist mMobileDataChangedToEnabledDuringDataStall:Z

.field private blacklist mNetworkCheckTimerStarted:Z

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mRadioPowerState:I

.field private blacklist mRadioStateChangedDuringDataStall:Z

.field private blacklist mRecovryAction:I

.field private blacklist mSkipRecoveryActionArray:[Z

.field private blacklist mTimeLastRecoveryStartMs:J

.field private final blacklist mWwanDataServiceManager:Lcom/android/internal/telephony/data/DataServiceManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$Cdbu4LjMoxQu16XRfCGDwlu1QFE(Lcom/android/internal/telephony/data/DataStallRecoveryManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->lambda$cleanUpDataNetwork$0()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsInternetNetworkConnected(Lcom/android/internal/telephony/data/DataStallRecoveryManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mIsInternetNetworkConnected:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogl(Lcom/android/internal/telephony/data/DataStallRecoveryManager;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monInternetValidationStatusChanged(Lcom/android/internal/telephony/data/DataStallRecoveryManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->onInternetValidationStatusChanged(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monMobileDataEnabledChanged(Lcom/android/internal/telephony/data/DataStallRecoveryManager;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->onMobileDataEnabledChanged(Z)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataServiceManager;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataStallRecoveryManager$DataStallRecoveryManagerCallback;)V
    .registers 7

    .line 220
    invoke-direct {p0, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 138
    new-instance p4, Lcom/android/internal/telephony/LocalLog;

    const/16 v0, 0x80

    invoke-direct {p4, v0}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object p4, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    const/4 p4, 0x0

    .line 166
    iput-boolean p4, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mNetworkCheckTimerStarted:Z

    .line 221
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 222
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DSRM-"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLogTag:Ljava/lang/String;

    const-string p4, "DataStallRecoveryManager created."

    .line 223
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->log(Ljava/lang/String;)V

    .line 224
    iput-object p2, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    .line 225
    iput-object p3, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mWwanDataServiceManager:Lcom/android/internal/telephony/data/DataServiceManager;

    .line 226
    invoke-virtual {p2}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataConfigManager()Lcom/android/internal/telephony/data/DataConfigManager;

    move-result-object p3

    iput-object p3, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 228
    invoke-virtual {p2}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object p2

    new-instance p3, Lcom/android/internal/telephony/data/DataStallRecoveryManager$1;

    new-instance p4, Lcom/android/internal/telephony/data/DataStallRecoveryManager$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/data/DataStallRecoveryManager;)V

    invoke-direct {p3, p0, p4}, Lcom/android/internal/telephony/data/DataStallRecoveryManager$1;-><init>(Lcom/android/internal/telephony/data/DataStallRecoveryManager;Ljava/util/concurrent/Executor;)V

    .line 229
    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/data/DataSettingsManager;->registerCallback(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V

    .line 239
    iput-object p5, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStallRecoveryManagerCallback:Lcom/android/internal/telephony/data/DataStallRecoveryManager$DataStallRecoveryManagerCallback;

    .line 240
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getRadioPowerState()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRadioPowerState:I

    .line 241
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->updateDataStallRecoveryConfigs()V

    .line 243
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->registerAllEvents()V

    return-void
.end method

.method private blacklist broadcastDataStallDetected(I)V
    .registers 4

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastDataStallDetected recoveryAction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->log(Ljava/lang/String;)V

    .line 466
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DATA_STALL_DETECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 467
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    const-string v1, "recoveryAction"

    .line 468
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 469
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private blacklist cancelNetworkCheckTimer()V
    .registers 2

    const-string v0, "cancelNetworkCheckTimer()"

    .line 516
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->log(Ljava/lang/String;)V

    .line 517
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mNetworkCheckTimerStarted:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    .line 518
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mNetworkCheckTimerStarted:Z

    const/4 v0, 0x2

    .line 519
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_10
    return-void
.end method

.method private blacklist cleanUpDataNetwork()V
    .registers 3

    const-string v0, "cleanUpDataNetwork: notify clean up data network"

    .line 480
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->log(Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStallRecoveryManagerCallback:Lcom/android/internal/telephony/data/DataStallRecoveryManager$DataStallRecoveryManagerCallback;

    new-instance v1, Lcom/android/internal/telephony/data/DataStallRecoveryManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/data/DataStallRecoveryManager;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method private blacklist doRecovery()V
    .registers 6

    .line 639
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->getRecoveryAction()I

    move-result v0

    .line 640
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v1

    const/4 v2, 0x0

    .line 644
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->isRecoveryNeeded(Z)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 645
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->cancelNetworkCheckTimer()V

    .line 646
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->startNetworkCheckTimer(I)V

    return-void

    .line 650
    :cond_1c
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 651
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeSignalStrengthEvent(II)V

    .line 652
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v1, v3, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeDataStallEvent(II)V

    .line 653
    iput v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLastAction:I

    .line 654
    iput-boolean v2, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLastActionReported:Z

    .line 655
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->broadcastDataStallDetected(I)V

    .line 656
    iput-boolean v2, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mNetworkCheckTimerStarted:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_8b

    const/4 v2, 0x3

    if-eq v0, v1, :cond_7f

    const/4 v3, 0x4

    if-eq v0, v2, :cond_73

    if-ne v0, v3, :cond_58

    const-string v0, "doRecovery(): modem reset"

    .line 675
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    .line 676
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->rebootModem()V

    .line 677
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->resetAction()V

    .line 678
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mIsAttemptedAllSteps:Z

    goto :goto_96

    .line 681
    :cond_58
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doRecovery: Invalid recoveryAction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    invoke-static {v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->recoveryActionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_73
    const-string v0, "doRecovery(): restarting radio"

    .line 670
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    .line 671
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->setRecoveryAction(I)V

    .line 672
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->powerOffRadio()V

    goto :goto_96

    :cond_7f
    const-string v0, "doRecovery(): cleanup all connections"

    .line 665
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    .line 666
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->cleanUpDataNetwork()V

    .line 667
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->setRecoveryAction(I)V

    goto :goto_96

    :cond_8b
    const-string v0, "doRecovery(): get data call list"

    .line 660
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    .line 661
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->getDataCallList()V

    .line 662
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->setRecoveryAction(I)V

    .line 686
    :goto_96
    iget v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLastAction:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->startNetworkCheckTimer(I)V

    return-void
.end method

.method private blacklist getDataCallList()V
    .registers 2

    const-string v0, "getDataCallList: request data call list"

    .line 474
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->log(Ljava/lang/String;)V

    .line 475
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mWwanDataServiceManager:Lcom/android/internal/telephony/data/DataServiceManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataServiceManager;->requestDataCallList(Landroid/os/Message;)V

    return-void
.end method

.method private blacklist getDataStallRecoveryDelayMillis(I)J
    .registers 2

    .line 309
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStallRecoveryDelayMillisArray:[J

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method private blacklist getElapsedTimeSinceRecoveryMs()J
    .registers 5

    .line 456
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mTimeLastRecoveryStartMs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private blacklist getRecoveredReason(Z)I
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 624
    :cond_4
    iget-boolean p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRadioStateChangedDuringDataStall:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_15

    .line 625
    iget p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLastAction:I

    if-gt p0, v0, :cond_f

    const/4 p1, 0x2

    goto :goto_10

    :cond_f
    move p1, v0

    :goto_10
    if-le p0, v0, :cond_13

    goto :goto_1a

    :cond_13
    move v0, p1

    goto :goto_1a

    .line 631
    :cond_15
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mMobileDataChangedToEnabledDuringDataStall:Z

    if-eqz p0, :cond_1a

    const/4 v0, 0x3

    :cond_1a
    :goto_1a
    return v0
.end method

.method private blacklist isRecoveryAlreadyStarted()Z
    .registers 1

    .line 447
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->getRecoveryAction()I

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private blacklist isRecoveryNeeded(Z)Z
    .registers 8

    const-string v0, "enter: isRecoveryNeeded()"

    .line 532
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logv(Ljava/lang/String;)V

    .line 535
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mIsAttemptedAllSteps:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    const-string p1, "skip retrying continue recovery action"

    .line 536
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    return v1

    .line 541
    :cond_10
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->getElapsedTimeSinceRecoveryMs()J

    move-result-wide v2

    iget v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLastAction:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->getDataStallRecoveryDelayMillis(I)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_26

    if-eqz p1, :cond_26

    const-string p1, "skip back to back data stall recovery"

    .line 543
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    return v1

    .line 548
    :cond_26
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object p1

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    const/4 v2, 0x1

    if-eq p1, v0, :cond_3d

    .line 549
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->getRecoveryAction()I

    move-result p1

    if-le p1, v2, :cond_3d

    const-string p1, "skip data stall recovery as there is an active call"

    .line 550
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    return v1

    .line 555
    :cond_3d
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result p1

    if-gt p1, v2, :cond_4f

    const-string p1, "skip data stall recovery as in poor signal condition"

    .line 556
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    return v1

    .line 560
    :cond_4f
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetworkController;->isInternetDataAllowed()Z

    move-result p1

    if-nez p1, :cond_5d

    const-string p1, "skip data stall recovery as data not allowed."

    .line 561
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    return v1

    .line 565
    :cond_5d
    iget-boolean p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mIsInternetNetworkConnected:Z

    if-nez p1, :cond_67

    const-string p1, "skip data stall recovery as data not connected"

    .line 566
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    return v1

    :cond_67
    return v2
.end method

.method private synthetic blacklist lambda$cleanUpDataNetwork$0()V
    .registers 1

    .line 482
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStallRecoveryManagerCallback:Lcom/android/internal/telephony/data/DataStallRecoveryManager$DataStallRecoveryManagerCallback;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager$DataStallRecoveryManagerCallback;->onDataStallReestablishInternet()V

    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 2

    .line 756
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 774
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logl(Ljava/lang/String;)V
    .registers 2

    .line 783
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->log(Ljava/lang/String;)V

    .line 784
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist logv(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method private blacklist onDataConfigUpdated()V
    .registers 1

    .line 324
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->updateDataStallRecoveryConfigs()V

    return-void
.end method

.method private blacklist onInternetValidationStatusChanged(I)V
    .registers 4

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInternetValidationStatusChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataUtils;->validationStatusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1e

    move p1, v1

    goto :goto_1f

    :cond_1e
    move p1, v0

    .line 363
    :goto_1f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->setNetworkValidationState(Z)V

    if-eqz p1, :cond_28

    .line 365
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->reset()V

    goto :goto_4d

    .line 367
    :cond_28
    iget-boolean p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mIsValidNetwork:Z

    if-nez p1, :cond_32

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->isRecoveryAlreadyStarted()Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 368
    :cond_32
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mIsValidNetwork:Z

    .line 369
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->isRecoveryNeeded(Z)Z

    move-result p1

    if-eqz p1, :cond_4d

    const-string p1, "trigger data stall recovery"

    .line 370
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->log(Ljava/lang/String;)V

    .line 371
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mTimeLastRecoveryStartMs:J

    const/4 p1, 0x2

    .line 372
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4d
    :goto_4d
    return-void
.end method

.method private blacklist onMobileDataEnabledChanged(Z)V
    .registers 4

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMobileDataEnabledChanged: DataEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",DataStalled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStalled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    .line 336
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStalled:Z

    if-eqz v0, :cond_27

    if-eqz p1, :cond_27

    const/4 p1, 0x1

    .line 337
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mMobileDataChangedToEnabledDuringDataStall:Z

    :cond_27
    return-void
.end method

.method private blacklist powerOffRadio()V
    .registers 2

    const-string v0, "powerOffRadio: Restart radio"

    .line 487
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->log(Ljava/lang/String;)V

    .line 488
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->powerOffRadioSafely()V

    return-void
.end method

.method private static blacklist radioPowerStateToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_25

    const/4 v0, 0x1

    if-eq p0, v0, :cond_22

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1f

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1f
    const-string p0, "RADIO_POWER_UNAVAILABLE"

    return-object p0

    :cond_22
    const-string p0, "RADIO_POWER_ON"

    return-object p0

    :cond_25
    const-string p0, "RADIO_POWER_OFF"

    return-object p0
.end method

.method private blacklist rebootModem()V
    .registers 2

    const-string v0, "rebootModem: reboot modem"

    .line 493
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->log(Ljava/lang/String;)V

    .line 494
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Phone;->rebootModem(Landroid/os/Message;)V

    return-void
.end method

.method private static blacklist recoveredReasonToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_2b

    const/4 v0, 0x1

    if-eq p0, v0, :cond_28

    const/4 v0, 0x2

    if-eq p0, v0, :cond_25

    const/4 v0, 0x3

    if-eq p0, v0, :cond_22

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_22
    const-string p0, "RECOVERED_REASON_USER"

    return-object p0

    :cond_25
    const-string p0, "RECOVERED_REASON_MODEM"

    return-object p0

    :cond_28
    const-string p0, "RECOVERED_REASON_DSRM"

    return-object p0

    :cond_2b
    const-string p0, "RECOVERED_REASON_NONE"

    return-object p0
.end method

.method private static blacklist recoveryActionToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_2b

    const/4 v0, 0x1

    if-eq p0, v0, :cond_28

    const/4 v0, 0x3

    if-eq p0, v0, :cond_25

    const/4 v0, 0x4

    if-eq p0, v0, :cond_22

    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_22
    const-string p0, "RECOVERY_ACTION_RESET_MODEM"

    return-object p0

    :cond_25
    const-string p0, "RECOVERY_ACTION_RADIO_RESTART"

    return-object p0

    :cond_28
    const-string p0, "RECOVERY_ACTION_CLEANUP"

    return-object p0

    :cond_2b
    const-string p0, "RECOVERY_ACTION_GET_DATA_CALL_LIST"

    return-object p0
.end method

.method private blacklist registerAllEvents()V
    .registers 4

    .line 248
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/data/DataConfigManager;->registerForConfigUpdate(Landroid/os/Handler;I)V

    .line 249
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    new-instance v1, Lcom/android/internal/telephony/data/DataStallRecoveryManager$2;

    new-instance v2, Lcom/android/internal/telephony/data/DataStallRecoveryManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/data/DataStallRecoveryManager;)V

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/data/DataStallRecoveryManager$2;-><init>(Lcom/android/internal/telephony/data/DataStallRecoveryManager;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->registerDataNetworkControllerCallback(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    .line 270
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private blacklist reset()V
    .registers 4

    const/4 v0, 0x1

    .line 345
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mIsValidNetwork:Z

    const/4 v0, 0x0

    .line 346
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mIsAttemptedAllSteps:Z

    .line 347
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRadioStateChangedDuringDataStall:Z

    .line 348
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mMobileDataChangedToEnabledDuringDataStall:Z

    .line 349
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->cancelNetworkCheckTimer()V

    const-wide/16 v1, 0x0

    .line 350
    iput-wide v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mTimeLastRecoveryStartMs:J

    .line 351
    iput v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLastAction:I

    .line 352
    iput v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRecovryAction:I

    return-void
.end method

.method private blacklist resetAction()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 380
    iput-wide v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mTimeLastRecoveryStartMs:J

    const/4 v0, 0x0

    .line 381
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mMobileDataChangedToEnabledDuringDataStall:Z

    .line 382
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRadioStateChangedDuringDataStall:Z

    .line 383
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->setRecoveryAction(I)V

    return-void
.end method

.method private blacklist setNetworkValidationState(Z)V
    .registers 8

    if-eqz p1, :cond_7

    .line 580
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStalled:Z

    if-nez v0, :cond_7

    return-void

    .line 584
    :cond_7
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStalled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2f

    .line 585
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStalled:Z

    .line 586
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStallStartMs:J

    .line 587
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "data stall: start time = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStallStartMs:J

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataUtils;->elapsedTimeToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    return-void

    .line 591
    :cond_2f
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLastActionReported:Z

    if-nez v0, :cond_7e

    .line 592
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->getRecoveredReason(Z)I

    move-result v0

    .line 593
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStallStartMs:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    .line 594
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data stall: lastaction = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLastAction:I

    .line 596
    invoke-static {v4}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->recoveryActionToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", isRecovered = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", reason = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    invoke-static {v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->recoveredReasonToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", TimeDuration = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 594
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logl(Ljava/lang/String;)V

    .line 603
    iget v3, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLastAction:I

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v3, v4, p1, v2, v0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->onDataStallEvent(ILcom/android/internal/telephony/Phone;ZII)V

    .line 605
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLastActionReported:Z

    :cond_7e
    if-eqz p1, :cond_85

    const/4 p1, 0x0

    .line 609
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLastActionReported:Z

    .line 610
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStalled:Z

    :cond_85
    return-void
.end method

.method private blacklist shouldSkipRecoveryAction(I)Z
    .registers 2

    .line 319
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mSkipRecoveryActionArray:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method private blacklist startNetworkCheckTimer(I)V
    .registers 5

    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    return-void

    .line 505
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startNetworkCheckTimer(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->getDataStallRecoveryDelayMillis(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->log(Ljava/lang/String;)V

    .line 506
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mNetworkCheckTimerStarted:Z

    if-nez v0, :cond_3a

    const/4 v0, 0x1

    .line 507
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mNetworkCheckTimerStarted:Z

    .line 508
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mTimeLastRecoveryStartMs:J

    const/4 v0, 0x2

    .line 510
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->getDataStallRecoveryDelayMillis(I)J

    move-result-wide v1

    .line 509
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3a
    return-void
.end method

.method private blacklist updateDataStallRecoveryConfigs()V
    .registers 2

    .line 298
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getDataStallRecoveryDelayMillis()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStallRecoveryDelayMillisArray:[J

    .line 299
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getDataStallRecoveryShouldSkipArray()[Z

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mSkipRecoveryActionArray:[Z

    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 795
    new-instance v0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 796
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/internal/telephony/data/DataStallRecoveryManager;

    .line 797
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 796
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 798
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 800
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsValidNetwork="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mIsValidNetwork:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 801
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsInternetNetworkConnected="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mIsInternetNetworkConnected:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 802
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDataStalled="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStalled:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 803
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastAction="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLastAction:I

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->recoveryActionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 804
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsAttemptedAllSteps="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mIsAttemptedAllSteps:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 805
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDataStallStartMs="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStallStartMs:J

    invoke-static {v1, v2}, Lcom/android/internal/telephony/data/DataUtils;->elapsedTimeToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 806
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRadioPowerState="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRadioPowerState:I

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->radioPowerStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 807
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastActionReported="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLastActionReported:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 808
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTimeLastRecoveryStartMs="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mTimeLastRecoveryStartMs:J

    .line 809
    invoke-static {v1, v2}, Lcom/android/internal/telephony/data/DataUtils;->elapsedTimeToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 808
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 810
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRecoveryAction()="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->getRecoveryAction()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->recoveryActionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 811
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRadioStateChangedDuringDataStall="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRadioStateChangedDuringDataStall:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 812
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMobileDataChangedToEnabledDuringDataStall="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mMobileDataChangedToEnabledDuringDataStall:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 815
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataStallRecoveryDelayMillisArray="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStallRecoveryDelayMillisArray:[J

    .line 817
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 815
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 818
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SkipRecoveryActionArray="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mSkipRecoveryActionArray:[Z

    invoke-static {v1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 819
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string p2, ""

    .line 820
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "Local logs:"

    .line 822
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 823
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 824
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 825
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 826
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    return-void
.end method

.method public blacklist getRecoveryAction()I
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRecoveryAction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRecovryAction:I

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->recoveryActionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->log(Ljava/lang/String;)V

    .line 395
    iget p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRecovryAction:I

    return p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->logv(Ljava/lang/String;)V

    .line 276
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_47

    const/4 v2, 0x2

    if-eq v0, v2, :cond_43

    const/4 v2, 0x3

    if-eq v0, v2, :cond_34

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->loge(Ljava/lang/String;)V

    goto :goto_4a

    .line 284
    :cond_34
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getRadioPowerState()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRadioPowerState:I

    .line 285
    iget-boolean p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mDataStalled:Z

    if-eqz p1, :cond_4a

    .line 287
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRadioStateChangedDuringDataStall:Z

    goto :goto_4a

    .line 281
    :cond_43
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->doRecovery()V

    goto :goto_4a

    .line 278
    :cond_47
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->onDataConfigUpdated()V

    :cond_4a
    :goto_4a
    return-void
.end method

.method public blacklist setRecoveryAction(I)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 405
    iput p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRecovryAction:I

    .line 410
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mMobileDataChangedToEnabledDuringDataStall:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_b

    if-ge p1, v1, :cond_b

    .line 412
    iput v1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRecovryAction:I

    .line 416
    :cond_b
    iget-boolean p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRadioStateChangedDuringDataStall:Z

    const/4 v0, 0x4

    const/4 v2, 0x1

    if-eqz p1, :cond_17

    iget p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRadioPowerState:I

    if-ne p1, v2, :cond_17

    .line 418
    iput v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRecovryAction:I

    .line 421
    :cond_17
    iget p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRecovryAction:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->shouldSkipRecoveryAction(I)Z

    move-result p1

    if-eqz p1, :cond_39

    .line 422
    iget p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRecovryAction:I

    if-eqz p1, :cond_36

    if-eq p1, v2, :cond_32

    if-eq p1, v1, :cond_2e

    if-eq p1, v0, :cond_2a

    goto :goto_39

    .line 433
    :cond_2a
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->resetAction()V

    goto :goto_39

    .line 430
    :cond_2e
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->setRecoveryAction(I)V

    goto :goto_39

    .line 427
    :cond_32
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->setRecoveryAction(I)V

    goto :goto_39

    .line 424
    :cond_36
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->setRecoveryAction(I)V

    .line 438
    :cond_39
    :goto_39
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setRecoveryAction: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->mRecovryAction:I

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->recoveryActionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->log(Ljava/lang/String;)V

    return-void
.end method
