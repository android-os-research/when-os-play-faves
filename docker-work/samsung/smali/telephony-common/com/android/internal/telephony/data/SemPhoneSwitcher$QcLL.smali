.class public Lcom/android/internal/telephony/data/SemPhoneSwitcher$QcLL;
.super Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;
.source "SemPhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/SemPhoneSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "QcLL"
.end annotation


# instance fields
.field blacklist mNeedDdsChange:Z

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/data/SemPhoneSwitcher;)V
    .registers 2

    .line 1551
    iput-object p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$QcLL;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    .line 1552
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;-><init>(Lcom/android/internal/telephony/data/SemPhoneSwitcher;)V

    const/4 p1, 0x0

    .line 1554
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$QcLL;->mNeedDdsChange:Z

    return-void
.end method


# virtual methods
.method public blacklist checkPdnConnected()V
    .registers 5

    .line 1595
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->precheckPdnConnected()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1597
    :cond_7
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$QcLL;->mNeedDdsChange:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$QcLL;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    invoke-static {v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->-$$Nest$fgetmSendRiLCommandReason(Lcom/android/internal/telephony/data/SemPhoneSwitcher;)Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;->PRIMARY_DATA_CHANGED:Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;

    if-ne v0, v1, :cond_92

    .line 1598
    :cond_15
    iget-object v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->dcTrackerBeforeChange:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isPdnConnected(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$QcLL;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    invoke-static {v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->-$$Nest$fgetmMsimSubMode(Lcom/android/internal/telephony/data/SemPhoneSwitcher;)I

    move-result v0

    if-eq v0, v1, :cond_92

    iget-object v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->dcTrackerBeforeChange:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v2, "mms"

    .line 1600
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isPdnConnected(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->dcTrackerBeforeChange:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v2, "xcap"

    .line 1601
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isPdnConnected(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 1602
    :cond_3c
    iget-object v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$QcLL;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    invoke-static {v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->-$$Nest$fgetmRequestOverride(Lcom/android/internal/telephony/data/SemPhoneSwitcher;)Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$DelayReason;->PDN_DISCONNECTING:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$DelayReason;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->set(Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$DelayReason;)V

    .line 1605
    iget-object v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$QcLL;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    iget v2, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->dataPhoneIdBeforeChange:I

    add-int/lit16 v2, v2, 0x1f4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_92

    .line 1607
    iget-object v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$QcLL;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    iput-boolean v1, v0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mNeedSyncDisconnect:Z

    .line 1609
    iget-object v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->dcTrackerBeforeChange:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getInstance()Lcom/android/internal/telephony/data/PhoneSwitcher;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->dataPhoneIdBeforeChange:I

    add-int/lit16 v2, v2, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->registerForAllDataDisconnected(Landroid/os/Handler;I)V

    .line 1610
    iget-object v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->dcTrackerBeforeChange:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v1, "disconnectPdnBeforeDdsChange"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 1611
    iget-object v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$QcLL;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    iget v1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->dataPhoneIdBeforeChange:I

    add-int/lit16 v1, v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1612
    iget-object v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$QcLL;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPdnConnected: PDN connected in Slot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->dataPhoneIdBeforeChange:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    :cond_92
    return-void
.end method

.method protected blacklist initializeOverrideState(Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;)V
    .registers 4

    .line 1620
    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->initializeOverrideState(Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;)V

    .line 1623
    iget p1, p1, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->mPhoneId:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$QcLL;->needDdsChange(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$QcLL;->mNeedDdsChange:Z

    .line 1624
    iget-object p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$QcLL;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initializeOverrideState: mNeedDdsChange = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$QcLL;->mNeedDdsChange:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist needDdsChange(I)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_5

    return v0

    .line 1576
    :cond_5
    iget-boolean v1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$QcLL;->mNeedDdsChange:Z

    if-eqz v1, :cond_a

    return v1

    .line 1580
    :cond_a
    iget-object v1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$QcLL;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getTm()Landroid/telephony/TelephonyManager;

    const-string v1, "ril.simoperator"

    const-string v2, "ETC"

    invoke-static {p1, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_51

    const-string v2, "CTC"

    .line 1581
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 1582
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_51

    .line 1583
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result p1

    .line 1584
    invoke-static {p1}, Landroid/telephony/ServiceState;->isPsOnlyTech(I)Z

    move-result v1

    if-nez v1, :cond_51

    .line 1585
    iget-object p0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$QcLL;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "needDdsChange: CDMA radioTech = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_51
    return v0
.end method

.method public blacklist onDataDisconnected(I)V
    .registers 4

    .line 1559
    iget-object p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$QcLL;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/internal/telephony/data/PhoneSwitcher;->mNeedSyncDisconnect:Z

    .line 1561
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$QcLL;->mNeedDdsChange:Z

    if-eqz v0, :cond_2a

    .line 1562
    sget-object v0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;->MODEM_REQUESTED:Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->-$$Nest$fputmSendRiLCommandReason(Lcom/android/internal/telephony/data/SemPhoneSwitcher;Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;)V

    .line 1563
    iget-object p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$QcLL;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataDisconnected: mSendRiLCommandReason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$QcLL;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    invoke-static {p0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->-$$Nest$fgetmSendRiLCommandReason(Lcom/android/internal/telephony/data/SemPhoneSwitcher;)Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    :cond_2a
    return-void
.end method

.method protected blacklist processNoneState(Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;)I
    .registers 4

    .line 1653
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$QcLL;->mNeedDdsChange:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1655
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->notifyNonDdsMmsMsgToDct(Z)V

    .line 1657
    :cond_8
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$QcLL;->mNeedDdsChange:Z

    .line 1659
    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->processNoneState(Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;)I

    move-result p0

    return p0
.end method

.method protected blacklist processOverrideState(Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;)I
    .registers 4

    .line 1628
    iget-object p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$QcLL;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    iget-object v0, p1, Lcom/android/internal/telephony/data/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-static {p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->-$$Nest$fgetmRequestOverride(Lcom/android/internal/telephony/data/SemPhoneSwitcher;)Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;

    move-result-object p1

    iget p1, p1, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->mPhoneId:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result p1

    .line 1631
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$QcLL;->checkPdnConnected()V

    .line 1632
    iget-object v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$QcLL;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    invoke-static {v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->-$$Nest$fgetmRequestOverride(Lcom/android/internal/telephony/data/SemPhoneSwitcher;)Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->isWaiting()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1f

    return v1

    .line 1634
    :cond_1f
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$QcLL;->mNeedDdsChange:Z

    if-nez v0, :cond_28

    const/4 p1, 0x1

    .line 1636
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$ModemDependency;->notifyNonDdsMmsMsgToDct(Z)V

    move p1, v1

    :cond_28
    return p1
.end method

.method protected blacklist processRestoreState(Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;)I
    .registers 4

    .line 1644
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$QcLL;->mNeedDdsChange:Z

    if-nez v0, :cond_1d

    .line 1645
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->clear()V

    .line 1646
    iget-object p0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$QcLL;->this$0:Lcom/android/internal/telephony/data/SemPhoneSwitcher;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processRestoreState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher;->log(Ljava/lang/String;)V

    :cond_1d
    const/4 p0, -0x1

    return p0
.end method
