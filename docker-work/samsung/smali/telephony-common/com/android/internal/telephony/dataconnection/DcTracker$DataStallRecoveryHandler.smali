.class Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;
.super Ljava/lang/Object;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataStallRecoveryHandler"
.end annotation


# instance fields
.field private blacklist mDataStallStartMs:J

.field private blacklist mIsValidNetwork:Z

.field private blacklist mLastAction:I

.field private blacklist mLastActionReported:Z

.field private blacklist mTimeLastRecoveryStartMs:J

.field private blacklist mWasDataStall:Z

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetRecoveryAction(Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->getRecoveryAction()I

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .registers 2

    .line 6787
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6788
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->reset()V

    return-void
.end method

.method private blacklist broadcastDataStallDetected(I)V
    .registers 4

    .line 6875
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DATA_STALL_DETECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6876
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    const-string v1, "recoveryAction"

    .line 6877
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6878
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist checkRecovery()Z
    .registers 6

    .line 6887
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->getElapsedTimeSinceRecoveryMs()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->getMinDurationBetweenRecovery()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gez v0, :cond_15

    .line 6888
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v0, "skip back to back data stall recovery"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    return v1

    .line 6893
    :cond_15
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    const/4 v3, 0x1

    if-eq v0, v2, :cond_30

    .line 6894
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->getRecoveryAction()I

    move-result v0

    if-le v0, v3, :cond_30

    .line 6895
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v0, "skip data stall recovery as there is an active call"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    return v1

    .line 6900
    :cond_30
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmDataConnections(Lcom/android/internal/telephony/dataconnection/DcTracker;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_69

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 6901
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isActive()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isValidationRequired()Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 6902
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getPreciseDataConnectionState()Landroid/telephony/PreciseDataConnectionState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/PreciseDataConnectionState;->getState()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_3e

    .line 6903
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v0, "skip data stall recovery as validation connection is suspened state"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    return v1

    .line 6910
    :cond_69
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmAttached(Lcom/android/internal/telephony/dataconnection/DcTracker;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_7f

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataAllowed(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;)Z

    move-result p0

    if-eqz p0, :cond_7f

    move v1, v3

    :cond_7f
    return v1
.end method

.method private blacklist getElapsedTimeSinceRecoveryMs()J
    .registers 5

    .line 6841
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->mTimeLastRecoveryStartMs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private blacklist getMinDurationBetweenRecovery()J
    .registers 4

    .line 6835
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmResolver(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "min_duration_between_recovery_steps"

    const-wide/32 v1, 0x2bf20

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist getRecoveryAction()I
    .registers 5

    .line 6846
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmResolver(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "radio.data.stall.recovery.action"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 6849
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->supportDualLte()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 6850
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmResolver(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 6851
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6850
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 6855
    :cond_34
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRecoveryAction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    return v0
.end method

.method private blacklist isRecoveryAlreadyStarted()Z
    .registers 1

    .line 6882
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->getRecoveryAction()I

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private blacklist isTestbedSim()Z
    .registers 2

    .line 7028
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 7029
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmTelephonyManager(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "00101"

    .line 7031
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method private blacklist putRecoveryAction(I)V
    .registers 5

    .line 6864
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->supportDualLte()Z

    move-result v0

    const-string v1, "radio.data.stall.recovery.action"

    if-eqz v0, :cond_29

    .line 6865
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmResolver(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 6866
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6865
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_32

    .line 6868
    :cond_29
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmResolver(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 6871
    :goto_32
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putRecoveryAction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist setNetworkValidationState(Z)V
    .registers 8

    if-eqz p1, :cond_7

    .line 6798
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->mWasDataStall:Z

    if-nez v0, :cond_7

    return-void

    .line 6802
    :cond_7
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->mWasDataStall:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2d

    .line 6803
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->mWasDataStall:Z

    .line 6804
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->mDataStallStartMs:J

    .line 6805
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data stall: start time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->mDataStallStartMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    return-void

    .line 6809
    :cond_2d
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->mLastActionReported:Z

    if-nez v0, :cond_6c

    .line 6810
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->mDataStallStartMs:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    .line 6812
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data stall: lastaction = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->mLastAction:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isRecovered = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mTimeDuration = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 6815
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->mLastAction:I

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2, v3, p1, v0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->onDataStallEvent(ILcom/android/internal/telephony/Phone;ZI)V

    .line 6817
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->mLastActionReported:Z

    :cond_6c
    if-eqz p1, :cond_73

    const/4 p1, 0x0

    .line 6821
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->mLastActionReported:Z

    .line 6822
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->mWasDataStall:Z

    :cond_73
    return-void
.end method

.method private blacklist triggerRecovery()V
    .registers 3

    .line 6916
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->mTimeLastRecoveryStartMs:J

    .line 6917
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const v0, 0x42012

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public blacklist doRecovery()V
    .registers 9

    .line 6921
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isAnyDataConnected()Z

    move-result v0

    if-eqz v0, :cond_1e8

    .line 6923
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->getRecoveryAction()I

    move-result v0

    .line 6924
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v1

    .line 6925
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 6926
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    .line 6925
    invoke-virtual {v2, v3, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeSignalStrengthEvent(II)V

    .line 6927
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 6928
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    .line 6927
    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeDataStallEvent(II)V

    .line 6929
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->mLastAction:I

    const/4 v1, 0x0

    .line 6930
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->mLastActionReported:Z

    .line 6931
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->broadcastDataStallDetected(I)V

    .line 6933
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmDataStallDetectionLogs(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/LocalLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad Network Detection Recovery Action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz v0, :cond_1bc

    const/4 v2, 0x2

    if-eq v0, v1, :cond_158

    const-string v1, "LGT"

    const-string v3, "KTT"

    const-string v4, "SKT"

    const/4 v5, 0x3

    if-eq v0, v2, :cond_d3

    if-ne v0, v5, :cond_bc

    const v0, 0xc3c9

    .line 6983
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmSentSinceLastRecv(Lcom/android/internal/telephony/dataconnection/DcTracker;)J

    move-result-wide v6

    invoke-static {v0, v6, v7}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 6985
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v2, "restarting radio"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 6987
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b2

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 6988
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b2

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 6989
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 6990
    :cond_b2
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$msaveCSDiagnosisData(Lcom/android/internal/telephony/dataconnection/DcTracker;I)V

    .line 6998
    :cond_b7
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->reset()V

    goto/16 :goto_1e1

    .line 7001
    :cond_bc
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doRecovery: Invalid recoveryAction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d3
    const v0, 0xc3c8

    .line 6959
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmSentSinceLastRecv(Lcom/android/internal/telephony/dataconnection/DcTracker;)J

    move-result-wide v6

    invoke-static {v0, v6, v7}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 6961
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v6, "doRecovery() re-register"

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 6963
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11c

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 6964
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11c

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 6965
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_121

    .line 6966
    :cond_11c
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$msaveCSDiagnosisData(Lcom/android/internal/telephony/dataconnection/DcTracker;I)V

    .line 6972
    :cond_121
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    if-eqz v0, :cond_147

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 6973
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallTracker;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_147

    .line 6974
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v1, "doRecovery() Don\'t use re-register during Call"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 6975
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->putRecoveryAction(I)V

    goto/16 :goto_1e1

    .line 6979
    :cond_147
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->reRegisterNetwork(Landroid/os/Message;)V

    .line 6980
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->putRecoveryAction(I)V

    goto/16 :goto_1e1

    :cond_158
    const v0, 0xc3c7

    .line 6945
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmSentSinceLastRecv(Lcom/android/internal/telephony/dataconnection/DcTracker;)J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 6947
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v1, "doRecovery() cleanup all connections"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 6948
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v3, 0x11

    invoke-static {v3}, Landroid/telephony/data/ApnSetting;->getApnTypeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(Lcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 6950
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v3, 0x4000

    invoke-static {v3}, Landroid/telephony/data/ApnSetting;->getApnTypeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(Lcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 6952
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const v3, 0x8000

    invoke-static {v3}, Landroid/telephony/data/ApnSetting;->getApnTypeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(Lcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 6954
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v3, 0x10000

    invoke-static {v3}, Landroid/telephony/data/ApnSetting;->getApnTypeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(Lcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 6956
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->putRecoveryAction(I)V

    goto :goto_1e1

    :cond_1bc
    const v0, 0xc3c6

    .line 6938
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmSentSinceLastRecv(Lcom/android/internal/telephony/dataconnection/DcTracker;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 6940
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v2, "doRecovery() get data call list"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 6941
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmDataServiceManager(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->requestDataCallList(Landroid/os/Message;)V

    .line 6942
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->putRecoveryAction(I)V

    .line 7004
    :goto_1e1
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fputmSentSinceLastRecv(Lcom/android/internal/telephony/dataconnection/DcTracker;J)V

    :cond_1e8
    return-void
.end method

.method public blacklist isAggressiveRecovery()Z
    .registers 3

    .line 6827
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->getRecoveryAction()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_f

    const/4 v1, 0x2

    if-eq p0, v1, :cond_f

    const/4 v1, 0x3

    if-ne p0, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :cond_f
    :goto_f
    return v0
.end method

.method public blacklist isNoRxDataStallDetectionEnabled()Z
    .registers 2

    .line 7068
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmDataStallNoRxEnabled(Lcom/android/internal/telephony/dataconnection/DcTracker;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->isRecoveryOnBadNetworkEnabled()Z

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public blacklist isRecoveryOnBadNetworkEnabled()Z
    .registers 6

    const-string v0, "ro.product_ship"

    .line 7037
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 7038
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v2, "com.salab.issuetracker"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$misPackageInstalled(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_38

    if-nez v1, :cond_38

    .line 7041
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disable Recovery on noship binary, isNoship : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isUTDevice : "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    return v2

    :cond_38
    const-string v0, "ril.testmode"

    const-string v1, ""

    .line 7045
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "labtest"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    return v2

    :cond_49
    const-string v0, "ril.cpreset"

    .line 7049
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_65

    .line 7050
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmIsRecoveryOnBadNetwork(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/LocalLog;

    move-result-object v0

    const-string v1, "C.Reset"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 7051
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v0, "Disable Recovery On Bad Network while Radio is not available"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    return v2

    .line 7056
    :cond_65
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->isTestbedSim()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 7057
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v0, "Disable Recovery on 00101 sim case"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    return v2

    .line 7063
    :cond_73
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmResolver(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "data_stall_recovery_on_bad_network"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_82

    move v2, v1

    :cond_82
    return v2
.end method

.method public blacklist processNetworkStatusChanged(Z)V
    .registers 3

    .line 7009
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->setNetworkValidationState(Z)V

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    .line 7011
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->mIsValidNetwork:Z

    .line 7012
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->reset()V

    goto :goto_29

    .line 7014
    :cond_c
    iget-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->mIsValidNetwork:Z

    if-nez p1, :cond_16

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->isRecoveryAlreadyStarted()Z

    move-result p1

    if-eqz p1, :cond_29

    :cond_16
    const/4 p1, 0x0

    .line 7015
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->mIsValidNetwork:Z

    .line 7018
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->checkRecovery()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 7019
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v0, "trigger data stall recovery"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 7020
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->triggerRecovery()V

    :cond_29
    :goto_29
    return-void
.end method

.method public blacklist reset()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 6792
    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->mTimeLastRecoveryStartMs:J

    const/4 v0, 0x0

    .line 6793
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->putRecoveryAction(I)V

    return-void
.end method
