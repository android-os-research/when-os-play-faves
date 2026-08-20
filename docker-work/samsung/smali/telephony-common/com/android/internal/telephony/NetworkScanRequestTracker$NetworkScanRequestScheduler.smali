.class Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;
.super Ljava/lang/Object;
.source "NetworkScanRequestTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NetworkScanRequestTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkScanRequestScheduler"
.end annotation


# instance fields
.field private blacklist mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

.field private blacklist mPendingRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLiveRequestInfo(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;)Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingRequestInfo(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;)Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mPendingRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdeleteScanAndMayNotify(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->deleteScanAndMayNotify(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoInterruptScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->doInterruptScan(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoStartScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->doStartScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoStopScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->doStopScan(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$minterruptScanDone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;Landroid/os/AsyncResult;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->interruptScanDone(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreceiveResult(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;Landroid/os/AsyncResult;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->receiveResult(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartScanDone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;Landroid/os/AsyncResult;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->startScanDone(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstopScanDone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;Landroid/os/AsyncResult;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->stopScanDone(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/telephony/NetworkScanRequestTracker;)V
    .registers 2

    .line 324
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/NetworkScanRequestTracker;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;-><init>(Lcom/android/internal/telephony/NetworkScanRequestTracker;)V

    return-void
.end method

.method private blacklist cacheScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method private blacklist commandExceptionErrorToScanError(Lcom/android/internal/telephony/CommandException$Error;)I
    .registers 4

    .line 364
    sget-object p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$2;->$SwitchMap$com$android$internal$telephony$CommandException$Error:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    const/4 v0, 0x1

    const-string v1, "ScanRequestTracker"

    packed-switch p0, :pswitch_data_58

    .line 390
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "commandExceptionErrorToScanError: Unexpected CommandExceptionError "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x2710

    return p0

    :pswitch_25
    const-string p0, "commandExceptionErrorToScanError: DEVICE_IN_USE"

    .line 387
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    return p0

    :pswitch_2c
    const-string p0, "commandExceptionErrorToScanError: INVALID_ARGUMENTS"

    .line 384
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0

    :pswitch_33
    const-string p0, "commandExceptionErrorToScanError: OPERATION_NOT_ALLOWED"

    .line 381
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_39
    const-string p0, "commandExceptionErrorToScanError: MODEM_ERR"

    .line 378
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_3f
    const-string p0, "commandExceptionErrorToScanError: INTERNAL_ERR"

    .line 375
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_45
    const-string p0, "commandExceptionErrorToScanError: NO_MEMORY"

    .line 372
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_4b
    const-string p0, "commandExceptionErrorToScanError: REQUEST_NOT_SUPPORTED"

    .line 369
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x4

    return p0

    :pswitch_52
    const-string p0, "commandExceptionErrorToScanError: RADIO_NOT_AVAILABLE"

    .line 366
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_52
        :pswitch_4b
        :pswitch_45
        :pswitch_3f
        :pswitch_39
        :pswitch_33
        :pswitch_2c
        :pswitch_25
    .end packed-switch
.end method

.method private declared-synchronized blacklist deleteScanAndMayNotify(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IZ)V
    .registers 6

    monitor-enter p0

    .line 599
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    if-eqz v0, :cond_50

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmScanId(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmScanId(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v1

    if-ne v0, v1, :cond_50

    const/4 v0, 0x0

    if-eqz p3, :cond_23

    if-nez p2, :cond_1d

    .line 602
    iget-object p3, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    const/4 v1, 0x3

    invoke-static {p3, p1, v1, p2, v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$mnotifyMessenger(Lcom/android/internal/telephony/NetworkScanRequestTracker;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IILjava/util/List;)V

    goto :goto_23

    .line 605
    :cond_1d
    iget-object p3, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    const/4 v1, 0x2

    invoke-static {p3, p1, v1, p2, v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$mnotifyMessenger(Lcom/android/internal/telephony/NetworkScanRequestTracker;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IILjava/util/List;)V

    .line 609
    :cond_23
    :goto_23
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {p2}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Landroid/os/Handler;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForModemReset(Landroid/os/Handler;)V

    .line 610
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {p2}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Landroid/os/Handler;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNotAvailable(Landroid/os/Handler;)V

    .line 611
    iput-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    .line 612
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mPendingRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    if-eqz p1, :cond_50

    .line 613
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->startNewScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Z

    .line 614
    iput-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mPendingRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;
    :try_end_50
    .catchall {:try_start_1 .. :try_end_50} :catchall_52

    .line 617
    :cond_50
    monitor-exit p0

    return-void

    :catchall_52
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized blacklist doInterruptScan(I)V
    .registers 5

    monitor-enter p0

    .line 540
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    if-eqz v0, :cond_22

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmScanId(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v0

    if-ne p1, v0, :cond_22

    .line 541
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->stopNetworkScan(Landroid/os/Message;)V

    goto :goto_3d

    :cond_22
    const-string v0, "ScanRequestTracker"

    .line 544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doInterruptScan: scan "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not exist!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3f

    .line 546
    :goto_3d
    monitor-exit p0

    return-void

    :catchall_3f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private blacklist doStartScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)V
    .registers 6

    const-string v0, "ScanRequestTracker"

    if-nez p1, :cond_a

    const-string p0, "CMD_START_NETWORK_SCAN: nsri is null"

    .line 398
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 401
    :cond_a
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v1, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$misValidScan(Lcom/android/internal/telephony/NetworkScanRequestTracker;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v1, :cond_1a

    .line 402
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {p0, p1, v3, v3, v2}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$mnotifyMessenger(Lcom/android/internal/telephony/NetworkScanRequestTracker;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IILjava/util/List;)V

    return-void

    .line 406
    :cond_1a
    invoke-virtual {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->getIsBinderDead()Z

    move-result v1

    if-eqz v1, :cond_26

    const-string p0, "CMD_START_NETWORK_SCAN: Binder has died"

    .line 407
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 410
    :cond_26
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->startNewScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 411
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->interruptLiveScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 412
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->cacheScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 413
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    const/4 v0, 0x3

    invoke-static {p0, p1, v3, v0, v2}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$mnotifyMessenger(Lcom/android/internal/telephony/NetworkScanRequestTracker;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IILjava/util/List;)V

    :cond_3e
    return-void
.end method

.method private declared-synchronized blacklist doStopScan(I)V
    .registers 6

    monitor-enter p0

    .line 505
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    if-eqz v0, :cond_22

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmScanId(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v0

    if-ne p1, v0, :cond_22

    .line 506
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    .line 507
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 506
    invoke-interface {p1, v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->stopNetworkScan(Landroid/os/Message;)V

    goto :goto_54

    .line 508
    :cond_22
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mPendingRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    if-eqz v0, :cond_39

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmScanId(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v0

    if-ne p1, v0, :cond_39

    .line 509
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mPendingRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$mnotifyMessenger(Lcom/android/internal/telephony/NetworkScanRequestTracker;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IILjava/util/List;)V

    .line 511
    iput-object v3, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mPendingRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    goto :goto_54

    :cond_39
    const-string v0, "ScanRequestTracker"

    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopScan: scan "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not exist!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catchall {:try_start_1 .. :try_end_54} :catchall_56

    .line 515
    :goto_54
    monitor-exit p0

    return-void

    :catchall_56
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized blacklist interruptLiveScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Z
    .registers 6

    monitor-enter p0

    .line 565
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mPendingRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    if-nez v0, :cond_32

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmUid(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_32

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmUid(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v0

    if-eq v0, v1, :cond_32

    .line 568
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmScanId(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->doInterruptScan(I)V

    .line 569
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mPendingRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    .line 570
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    const/4 v1, 0x2

    const/16 v2, 0x2712

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$mnotifyMessenger(Lcom/android/internal/telephony/NetworkScanRequestTracker;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IILjava/util/List;)V
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_35

    const/4 p1, 0x1

    .line 572
    monitor-exit p0

    return p1

    :cond_32
    const/4 p1, 0x0

    .line 574
    monitor-exit p0

    return p1

    :catchall_35
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private blacklist interruptScanDone(Landroid/os/AsyncResult;)V
    .registers 4

    .line 549
    iget-object p1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    if-nez p1, :cond_e

    const-string p0, "ScanRequestTracker"

    const-string p1, "EVENT_INTERRUPT_NETWORK_SCAN_DONE: nsri is null"

    .line 551
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 554
    :cond_e
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNetworkScanResult(Landroid/os/Handler;)V

    const/4 v0, 0x0

    .line 555
    invoke-direct {p0, p1, v0, v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->deleteScanAndMayNotify(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IZ)V

    return-void
.end method

.method private blacklist receiveResult(Landroid/os/AsyncResult;)V
    .registers 9

    .line 447
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    if-nez v0, :cond_e

    const-string p0, "ScanRequestTracker"

    const-string p1, "EVENT_RECEIVE_NETWORK_SCAN_RESULT: nsri is null"

    .line 449
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 452
    :cond_e
    new-instance v1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    invoke-direct {v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;-><init>()V

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmCallingPackage(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Ljava/lang/String;

    move-result-object v2

    .line 454
    invoke-virtual {v1, v2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPackage(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmPid(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v2

    .line 455
    invoke-virtual {v1, v2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmUid(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v2

    .line 456
    invoke-virtual {v1, v2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingUid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 457
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingFeatureId(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v1

    const/16 v2, 0x1d

    .line 458
    invoke-virtual {v1, v2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForFine(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v1

    .line 459
    invoke-virtual {v1, v2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForCoarse(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v1

    .line 460
    invoke-virtual {v1, v2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForEnforcement(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v1

    const-string v2, "NetworkScanTracker#onResult"

    .line 461
    invoke-virtual {v1, v2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMethod(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v1

    .line 462
    invoke-virtual {v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->build()Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;

    move-result-object v1

    .line 463
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v3, 0x1

    if-nez v2, :cond_e5

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_e5

    .line 464
    check-cast v2, Lcom/android/internal/telephony/NetworkScanResult;

    .line 465
    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmRenounceFineLocationAccess(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Z

    move-result p1

    const/4 v4, 0x0

    if-nez p1, :cond_77

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    .line 467
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 466
    invoke-static {p1, v1}, Landroid/telephony/LocationAccessPolicy;->checkLocationPermission(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    move-result-object p1

    sget-object v1, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ALLOWED:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    if-ne p1, v1, :cond_77

    move p1, v3

    goto :goto_78

    :cond_77
    move p1, v4

    :goto_78
    if-eqz p1, :cond_7c

    move p1, v3

    goto :goto_7d

    :cond_7c
    const/4 p1, 0x4

    .line 472
    :goto_7d
    iget v1, v2, Lcom/android/internal/telephony/NetworkScanResult;->scanError:I

    if-nez v1, :cond_bd

    .line 473
    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    if-eqz v1, :cond_98

    .line 474
    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    iget-object v5, v2, Lcom/android/internal/telephony/NetworkScanResult;->networkInfos:Ljava/util/List;

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->updateOperatorNameForCellInfo(Ljava/util/List;)V

    .line 478
    :cond_98
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    iget v5, v2, Lcom/android/internal/telephony/NetworkScanResult;->scanError:I

    .line 479
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->rilErrorToScanError(I)I

    move-result v5

    iget-object v6, v2, Lcom/android/internal/telephony/NetworkScanResult;->networkInfos:Ljava/util/List;

    .line 478
    invoke-static {v1, v0, p1, v5, v6}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$mnotifyMessenger(Lcom/android/internal/telephony/NetworkScanRequestTracker;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IILjava/util/List;)V

    .line 480
    iget p1, v2, Lcom/android/internal/telephony/NetworkScanResult;->scanStatus:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_fe

    .line 481
    invoke-direct {p0, v0, v4, v3}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->deleteScanAndMayNotify(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IZ)V

    .line 482
    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Landroid/os/Handler;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNetworkScanResult(Landroid/os/Handler;)V

    goto :goto_fe

    .line 485
    :cond_bd
    iget-object v4, v2, Lcom/android/internal/telephony/NetworkScanResult;->networkInfos:Ljava/util/List;

    if-eqz v4, :cond_cc

    .line 486
    iget-object v4, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    .line 487
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->rilErrorToScanError(I)I

    move-result v1

    iget-object v5, v2, Lcom/android/internal/telephony/NetworkScanResult;->networkInfos:Ljava/util/List;

    .line 486
    invoke-static {v4, v0, p1, v1, v5}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$mnotifyMessenger(Lcom/android/internal/telephony/NetworkScanRequestTracker;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IILjava/util/List;)V

    .line 489
    :cond_cc
    iget p1, v2, Lcom/android/internal/telephony/NetworkScanResult;->scanError:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->rilErrorToScanError(I)I

    move-result p1

    invoke-direct {p0, v0, p1, v3}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->deleteScanAndMayNotify(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IZ)V

    .line 490
    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Landroid/os/Handler;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNetworkScanResult(Landroid/os/Handler;)V

    goto :goto_fe

    .line 493
    :cond_e5
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v1, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$mlogEmptyResultOrException(Lcom/android/internal/telephony/NetworkScanRequestTracker;Landroid/os/AsyncResult;)V

    const/16 p1, 0x2710

    .line 494
    invoke-direct {p0, v0, p1, v3}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->deleteScanAndMayNotify(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IZ)V

    .line 495
    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Landroid/os/Handler;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNetworkScanResult(Landroid/os/Handler;)V

    :cond_fe
    :goto_fe
    return-void
.end method

.method private blacklist rilErrorToScanError(I)I
    .registers 4

    if-eqz p1, :cond_6c

    const/4 p0, 0x1

    const-string v0, "ScanRequestTracker"

    if-eq p1, p0, :cond_66

    const/4 v1, 0x6

    if-eq p1, v1, :cond_5f

    const/16 v1, 0x28

    if-eq p1, v1, :cond_59

    const/16 v1, 0x2c

    if-eq p1, v1, :cond_52

    const/16 v1, 0x36

    if-eq p1, v1, :cond_4c

    const/16 v1, 0x40

    if-eq p1, v1, :cond_45

    const/16 v1, 0x25

    if-eq p1, v1, :cond_3f

    const/16 v1, 0x26

    if-eq p1, v1, :cond_39

    .line 358
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rilErrorToScanError: Unexpected RadioError "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x2710

    return p0

    :cond_39
    const-string p1, "rilErrorToScanError: INTERNAL_ERR"

    .line 343
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_3f
    const-string p1, "rilErrorToScanError: NO_MEMORY"

    .line 340
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_45
    const-string p0, "rilErrorToScanError: DEVICE_IN_USE"

    .line 355
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    return p0

    :cond_4c
    const-string p1, "rilErrorToScanError: OPERATION_NOT_ALLOWED"

    .line 349
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_52
    const-string p0, "rilErrorToScanError: INVALID_ARGUMENTS"

    .line 352
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0

    :cond_59
    const-string p1, "rilErrorToScanError: MODEM_ERR"

    .line 346
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_5f
    const-string p0, "rilErrorToScanError: REQUEST_NOT_SUPPORTED"

    .line 337
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x4

    return p0

    :cond_66
    const-string p1, "rilErrorToScanError: RADIO_NOT_AVAILABLE"

    .line 334
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_6c
    const/4 p0, 0x0

    return p0
.end method

.method private declared-synchronized blacklist startNewScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Z
    .registers 6

    monitor-enter p0

    .line 584
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    if-nez v0, :cond_42

    .line 585
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    .line 586
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->getRequest()Landroid/telephony/NetworkScanRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    .line 587
    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 586
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Message;)V

    .line 588
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2, p1}, Lcom/android/internal/telephony/CommandsInterface;->registerForModemReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 589
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2, p1}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_45

    const/4 p1, 0x1

    .line 590
    monitor-exit p0

    return p1

    :cond_42
    const/4 p1, 0x0

    .line 592
    monitor-exit p0

    return p1

    :catchall_45
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized blacklist startScanDone(Landroid/os/AsyncResult;)V
    .registers 5

    monitor-enter p0

    .line 421
    :try_start_1
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    if-nez v0, :cond_10

    const-string p1, "ScanRequestTracker"

    const-string v0, "EVENT_START_NETWORK_SCAN_DONE: nsri is null"

    .line 423
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_64

    .line 424
    monitor-exit p0

    return-void

    .line 426
    :cond_10
    :try_start_10
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    if-eqz v1, :cond_5b

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmScanId(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    invoke-static {v2}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmScanId(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v2

    if-eq v1, v2, :cond_21

    goto :goto_5b

    .line 430
    :cond_21
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_3a

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_3a

    .line 432
    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {p1, v1, v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForNetworkScanResult(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_59

    .line 435
    :cond_3a
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v1, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$mlogEmptyResultOrException(Lcom/android/internal/telephony/NetworkScanRequestTracker;Landroid/os/AsyncResult;)V

    .line 436
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_52

    .line 437
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .line 438
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object p1

    .line 439
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->commandExceptionErrorToScanError(Lcom/android/internal/telephony/CommandException$Error;)I

    move-result p1

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->deleteScanAndMayNotify(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IZ)V

    goto :goto_59

    :cond_52
    const-string p1, "ScanRequestTracker"

    const-string v0, "EVENT_START_NETWORK_SCAN_DONE: ar.exception can not be null!"

    .line 441
    invoke-static {p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catchall {:try_start_10 .. :try_end_59} :catchall_64

    .line 444
    :goto_59
    monitor-exit p0

    return-void

    :cond_5b
    :goto_5b
    :try_start_5b
    const-string p1, "ScanRequestTracker"

    const-string v0, "EVENT_START_NETWORK_SCAN_DONE: nsri does not match mLiveRequestInfo"

    .line 427
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catchall {:try_start_5b .. :try_end_62} :catchall_64

    .line 428
    monitor-exit p0

    return-void

    :catchall_64
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private blacklist stopScanDone(Landroid/os/AsyncResult;)V
    .registers 6

    .line 518
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    const-string v1, "ScanRequestTracker"

    if-nez v0, :cond_e

    const-string p0, "EVENT_STOP_NETWORK_SCAN_DONE: nsri is null"

    .line 520
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 523
    :cond_e
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v3, 0x1

    if-nez v2, :cond_1c

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1c

    const/4 p1, 0x0

    .line 524
    invoke-direct {p0, v0, p1, v3}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->deleteScanAndMayNotify(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IZ)V

    goto :goto_38

    .line 526
    :cond_1c
    iget-object v2, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v2, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$mlogEmptyResultOrException(Lcom/android/internal/telephony/NetworkScanRequestTracker;Landroid/os/AsyncResult;)V

    .line 527
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_33

    .line 528
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .line 529
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object p1

    .line 530
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->commandExceptionErrorToScanError(Lcom/android/internal/telephony/CommandException$Error;)I

    move-result p1

    invoke-direct {p0, v0, p1, v3}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->deleteScanAndMayNotify(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IZ)V

    goto :goto_38

    :cond_33
    const-string p1, "EVENT_STOP_NETWORK_SCAN_DONE: ar.exception can not be null!"

    .line 532
    invoke-static {v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :goto_38
    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Landroid/os/Handler;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNetworkScanResult(Landroid/os/Handler;)V

    return-void
.end method
