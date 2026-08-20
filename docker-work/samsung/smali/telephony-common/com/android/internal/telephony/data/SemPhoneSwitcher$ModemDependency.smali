.class public Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;
.super Ljava/lang/Object;
.source "SemPhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/SemPhoneSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModemDependency"
.end annotation


# instance fields
.field protected blacklist dataPhoneIdBeforeChange:I

.field protected blacklist dataSubIdBeforeChange:I

.field protected blacklist dcTrackerBeforeChange:Lcom/android/internal/telephony/dataconnection/DcTracker;

.field protected blacklist mLastSentDct:I

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/data/SemPhoneSwitcher;)V
    .registers 3

    .line 1339
    iput-object p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 1340
    iput p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->dataSubIdBeforeChange:I

    .line 1341
    iput p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->dataPhoneIdBeforeChange:I

    const/4 v0, 0x0

    .line 1342
    iput-object v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->dcTrackerBeforeChange:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 1344
    iput p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->mLastSentDct:I

    return-void
.end method


# virtual methods
.method public blacklist checkPdnConnected()V
    .registers 1

    return-void
.end method

.method protected blacklist initializeNoneState(Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;)V
    .registers 2

    const/4 p0, 0x1

    .line 1497
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->setStateInitialized(Z)V

    return-void
.end method

.method protected blacklist initializeOverrideState(Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;)V
    .registers 3

    const/4 v0, 0x1

    .line 1449
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->setStateInitialized(Z)V

    .line 1451
    iget-object v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    invoke-static {v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->-$$Nest$fgetmRequestOverride(Lcom/android/internal/telephony/data/SemPhoneSwitcher;)Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->set(Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;)V

    .line 1452
    iget-object p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    iget-object p1, p1, Lcom/android/internal/telephony/data/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    invoke-static {p0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->-$$Nest$fgetmRequestOverride(Lcom/android/internal/telephony/data/SemPhoneSwitcher;)Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;

    move-result-object p0

    iget p0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->mPhoneId:I

    const-string v0, "multi_sim_datacross_slot"

    invoke-static {p1, v0, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method protected blacklist initializeRestoreState(Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;)V
    .registers 3

    const/4 v0, 0x1

    .line 1475
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->setStateInitialized(Z)V

    .line 1477
    iget-object p0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    invoke-static {p0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->-$$Nest$fgetmRequestOverride(Lcom/android/internal/telephony/data/SemPhoneSwitcher;)Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->set(Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;)V

    return-void
.end method

.method public blacklist needDdsChange(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method protected blacklist notifyNonDdsMmsMsgToDct(Z)V
    .registers 8

    .line 1396
    iget-object v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    invoke-static {v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->-$$Nest$fgetmPreferredDataReason(Lcom/android/internal/telephony/data/SemPhoneSwitcher;)Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;->OPPORTUNISTIC:Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    iget-object v0, v0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataSubId:Lcom/android/internal/telephony/SubscriptionController$WatchedInt;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController$WatchedInt;->get()I

    move-result v0

    goto :goto_17

    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    iget v0, v0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPrimaryDataSubId:I

    .line 1397
    :goto_17
    iget-object v1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    iget-object v1, v1, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 1399
    iget-object v1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->supportAutoDds()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_2f

    .line 1400
    iget-object v1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    iget v1, v1, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mAutoDdsPhoneId:I

    if-eq v1, v2, :cond_2f

    move v0, v1

    .line 1405
    :cond_2f
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 1406
    iget-object p0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    const-string p1, "notifyNonDdsMmsMsgToDct: ddsPhoneId is not valid!"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    return-void

    .line 1410
    :cond_3d
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    const-string v3, ") is null!"

    const-string v4, "notifyNonDdsMmsMsgToDct: PhoneFactory.getPhone("

    if-eqz v1, :cond_df

    .line 1411
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v1

    if-eqz p1, :cond_7d

    .line 1413
    iget p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->mLastSentDct:I

    if-ne p1, v2, :cond_d5

    if-eqz v1, :cond_d5

    const p1, 0x42074

    const-string v2, "nonDdsMmsStarted"

    .line 1415
    invoke-virtual {v1, p1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1416
    iget-object p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyNonDdsMmsMsgToDct: Start in slot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 1417
    iput v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->mLastSentDct:I

    goto :goto_d5

    .line 1421
    :cond_7d
    iget p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->mLastSentDct:I

    if-eq p1, v2, :cond_b1

    .line 1422
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-eqz p1, :cond_97

    .line 1423
    iget p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->mLastSentDct:I

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object p1

    .line 1428
    iget v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->mLastSentDct:I

    .line 1429
    iput v2, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->mLastSentDct:I

    move-object v1, p1

    goto :goto_b1

    .line 1425
    :cond_97
    iget-object p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->mLastSentDct:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    return-void

    :cond_b1
    :goto_b1
    if-eqz v1, :cond_d5

    const p1, 0x42075

    const-string v2, "nonDdsMmsEnded"

    .line 1432
    invoke-virtual {v1, p1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1433
    iget-object p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyNonDdsMmsMsgToDct: End in slot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    :cond_d5
    :goto_d5
    if-nez v1, :cond_de

    .line 1437
    iget-object p0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    const-string p1, "notifyNonDdsMmsMsgToDct: dcTracker is null!"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    :cond_de
    return-void

    .line 1441
    :cond_df
    iget-object p0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist onDataDisconnected(I)V
    .registers 2

    return-void
.end method

.method public blacklist onNwModeChanged(Landroid/os/Message;)V
    .registers 2

    return-void
.end method

.method protected blacklist precheckNoneState(Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;)Z
    .registers 4

    .line 1503
    iget-object v0, p1, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->mState:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;

    iget-object v1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    invoke-static {v1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->-$$Nest$fgetmRequestOverride(Lcom/android/internal/telephony/data/SemPhoneSwitcher;)Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->mState:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;

    if-ne v0, v1, :cond_e

    const/4 p0, 0x0

    return p0

    .line 1507
    :cond_e
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->getStateInitialized()Z

    move-result v0

    if-nez v0, :cond_17

    .line 1508
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->initializeNoneState(Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;)V

    :cond_17
    const/4 p0, 0x1

    return p0
.end method

.method protected blacklist precheckOverrideState(Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;)Z
    .registers 3

    .line 1458
    iget-object v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    invoke-static {v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->-$$Nest$fgetmRequestOverride(Lcom/android/internal/telephony/data/SemPhoneSwitcher;)Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->isWaiting()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p0, 0x0

    return p0

    .line 1460
    :cond_e
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->getStateInitialized()Z

    move-result v0

    if-nez v0, :cond_17

    .line 1461
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->initializeOverrideState(Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;)V

    :cond_17
    const/4 p0, 0x1

    return p0
.end method

.method protected blacklist precheckPdnConnected()Z
    .registers 5

    .line 1355
    iget-object v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    invoke-static {v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->-$$Nest$fgetmPreferredDataReason(Lcom/android/internal/telephony/data/SemPhoneSwitcher;)Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;->OPPORTUNISTIC:Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    iget-object v0, v0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPreferredDataSubId:Lcom/android/internal/telephony/SubscriptionController$WatchedInt;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController$WatchedInt;->get()I

    move-result v0

    goto :goto_17

    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    iget v0, v0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mPrimaryDataSubId:I

    :goto_17
    iput v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->dataSubIdBeforeChange:I

    .line 1356
    iget-object v1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    iget-object v1, v1, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->dataPhoneIdBeforeChange:I

    .line 1361
    iget-object v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->supportAutoDds()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1362
    iget-object v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    iget v1, v0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mAutoDdsPhoneId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_55

    .line 1363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "precheckPdnConnected : update dataPhoneIdBeforeChange as mAutoDdsPhoneId("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    iget v2, v2, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mAutoDdsPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 1364
    iget-object v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    iget v0, v0, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->mAutoDdsPhoneId:I

    iput v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->dataPhoneIdBeforeChange:I

    .line 1369
    :cond_55
    iget-object v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    invoke-static {v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->-$$Nest$fgetmSendRiLCommandReason(Lcom/android/internal/telephony/data/SemPhoneSwitcher;)Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;->PRIMARY_DATA_CHANGED:Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_66

    .line 1370
    iget v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->dataPhoneIdBeforeChange:I

    rsub-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->dataPhoneIdBeforeChange:I

    .line 1373
    :cond_66
    iget v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->dataPhoneIdBeforeChange:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b2

    iget v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->dataPhoneIdBeforeChange:I

    iget-object v3, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    iget v3, v3, Lcom/android/internal/telephony/data/PhoneSwitcher;->mActiveModemCount:I

    if-lt v0, v3, :cond_78

    goto :goto_b2

    .line 1377
    :cond_78
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_95

    .line 1378
    iget v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->dataPhoneIdBeforeChange:I

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->dcTrackerBeforeChange:Lcom/android/internal/telephony/dataconnection/DcTracker;

    if-nez v0, :cond_94

    .line 1385
    iget-object p0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    const-string v0, "precheckPdnConnected: dcTrackerBeforeChange is null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    return v1

    :cond_94
    return v2

    .line 1380
    :cond_95
    iget-object v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "precheckPdnConnected: PhoneFactory.getPhone("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->dataPhoneIdBeforeChange:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") is null"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    :cond_b2
    :goto_b2
    return v1
.end method

.method protected blacklist precheckRestoreState(Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;)Z
    .registers 3

    .line 1483
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->getStateInitialized()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1484
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->initializeRestoreState(Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;)V

    :cond_9
    const/4 p0, 0x1

    return p0
.end method

.method protected blacklist processNoneState(Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;)I
    .registers 3

    .line 1516
    iget-object v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    invoke-static {v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->-$$Nest$fgetmRequestOverride(Lcom/android/internal/telephony/data/SemPhoneSwitcher;)Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->set(Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;)V

    .line 1517
    iget-object p0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "multi_sim_datacross_slot"

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v0
.end method

.method protected blacklist processOverrideState(Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;)I
    .registers 2

    .line 1469
    iget-object p0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-static {p0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->-$$Nest$fgetmRequestOverride(Lcom/android/internal/telephony/data/SemPhoneSwitcher;)Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;

    move-result-object p0

    iget p0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->mPhoneId:I

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result p0

    return p0
.end method

.method public blacklist processRequestOverride(Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;)I
    .registers 4

    .line 1523
    iget-object v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    iget-object v1, v0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-static {v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->-$$Nest$fgetmRequestOverride(Lcom/android/internal/telephony/data/SemPhoneSwitcher;)Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->mPhoneId:I

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v0

    .line 1525
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->isOverride()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1526
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->precheckOverrideState(Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1527
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->processOverrideState(Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;)I

    move-result v0

    .line 1530
    :cond_1e
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->isRestore()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 1531
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->precheckRestoreState(Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 1532
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->processRestoreState(Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;)I

    move-result v0

    .line 1535
    :cond_2e
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->isNone()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 1536
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->precheckNoneState(Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 1537
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->processNoneState(Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;)I

    move-result v0

    goto :goto_52

    .line 1538
    :cond_3f
    iget-object p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    invoke-static {p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->-$$Nest$fgetmSendRiLCommandReason(Lcom/android/internal/telephony/data/SemPhoneSwitcher;)Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;

    move-result-object p1

    sget-object v1, Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;->PRIMARY_DATA_CHANGED:Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;

    if-ne p1, v1, :cond_52

    .line 1539
    iget-object p0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    invoke-static {p0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->-$$Nest$fgetmModemDependency(Lcom/android/internal/telephony/data/SemPhoneSwitcher;)Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->checkPdnConnected()V

    :cond_52
    :goto_52
    return v0
.end method

.method protected blacklist processRestoreState(Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;)I
    .registers 2

    .line 1491
    iget-object p0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-static {p0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->-$$Nest$fgetmRequestOverride(Lcom/android/internal/telephony/data/SemPhoneSwitcher;)Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;

    move-result-object p0

    iget p0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->mPhoneId:I

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result p0

    return p0
.end method

.method public blacklist setNwMode(Z)V
    .registers 2

    return-void
.end method
