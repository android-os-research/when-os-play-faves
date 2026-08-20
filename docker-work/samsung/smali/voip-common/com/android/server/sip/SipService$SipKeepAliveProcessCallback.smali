.class Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;
.super Ljava/lang/Object;
.source "SipService.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SipKeepAliveProcessCallback"
.end annotation


# static fields
.field private static final blacklist MIN_INTERVAL:I = 0x5

.field private static final blacklist NAT_MEASUREMENT_RETRY_INTERVAL:I = 0x78

.field private static final blacklist PASS_THRESHOLD:I = 0xa

.field private static final blacklist SKAI_DBG:Z = true

.field private static final blacklist SKAI_TAG:Ljava/lang/String; = "SipKeepAliveProcessCallback"


# instance fields
.field private blacklist mGroup:Lcom/android/server/sip/SipService$SipSessionGroupExt;

.field private blacklist mInterval:I

.field private blacklist mLocalProfile:Landroid/net/sip/SipProfile;

.field private blacklist mMaxInterval:I

.field private blacklist mMinInterval:I

.field private blacklist mPassCount:I

.field private blacklist mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

.field final synthetic blacklist this$0:Lcom/android/server/sip/SipService;


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/sip/SipService;Landroid/net/sip/SipProfile;II)V
    .registers 5
    .param p2, "localProfile"    # Landroid/net/sip/SipProfile;
    .param p3, "minInterval"    # I
    .param p4, "maxInterval"    # I

    .line 647
    iput-object p1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 648
    iput p4, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mMaxInterval:I

    .line 649
    iput p3, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mMinInterval:I

    .line 650
    iput-object p2, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mLocalProfile:Landroid/net/sip/SipProfile;

    .line 651
    return-void
.end method

.method private blacklist checkTermination()Z
    .registers 3

    .line 718
    iget v0, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mMaxInterval:I

    iget v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mMinInterval:I

    sub-int/2addr v0, v1

    const/4 v1, 0x5

    if-ge v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 789
    const-string v0, "SipKeepAliveProcessCallback"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 793
    const-string v0, "SipKeepAliveProcessCallback"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    return-void
.end method

.method private blacklist loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 797
    const-string v0, "SipKeepAliveProcessCallback"

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 798
    return-void
.end method

.method private blacklist restart()V
    .registers 4

    .line 702
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v0

    .line 704
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    .line 706
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restart: interval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->log(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_39

    .line 708
    :try_start_21
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->stopKeepAliveProcess()V

    .line 709
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mPassCount:I

    .line 710
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget v2, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mInterval:I

    invoke-virtual {v1, v2, p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startKeepAliveProcess(ILcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V
    :try_end_30
    .catch Ljavax/sip/SipException; {:try_start_21 .. :try_end_30} :catch_31
    .catchall {:try_start_21 .. :try_end_30} :catchall_39

    .line 713
    goto :goto_37

    .line 711
    :catch_31
    move-exception v1

    .line 712
    .local v1, "e":Ljavax/sip/SipException;
    :try_start_32
    const-string v2, "restart"

    invoke-direct {p0, v2, v1}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 714
    .end local v1    # "e":Ljavax/sip/SipException;
    :goto_37
    monitor-exit v0

    .line 715
    return-void

    .line 714
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_39

    throw v1
.end method

.method private blacklist restartLater()V
    .registers 5

    .line 781
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v0

    .line 782
    const/16 v1, 0x78

    .line 783
    .local v1, "interval":I
    :try_start_5
    iget-object v2, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v2}, Lcom/android/server/sip/SipService;->-$$Nest$fgetmTimer(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/server/sip/SipWakeupTimer;->cancel(Ljava/lang/Runnable;)V

    .line 784
    iget-object v2, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v2}, Lcom/android/server/sip/SipService;->-$$Nest$fgetmTimer(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;

    move-result-object v2

    mul-int/lit16 v3, v1, 0x3e8

    invoke-virtual {v2, v3, p0}, Lcom/android/server/sip/SipWakeupTimer;->set(ILjava/lang/Runnable;)V

    .line 785
    .end local v1    # "interval":I
    monitor-exit v0

    .line 786
    return-void

    .line 785
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1b

    throw v1
.end method


# virtual methods
.method public blacklist onError(ILjava/lang/String;)V
    .registers 5
    .param p1, "errorCode"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError: errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " desc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->loge(Ljava/lang/String;)V

    .line 770
    invoke-direct {p0}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->restartLater()V

    .line 771
    return-void
.end method

.method public blacklist onResponse(Z)V
    .registers 5
    .param p1, "portChanged"    # Z

    .line 724
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v0

    .line 725
    if-nez p1, :cond_57

    .line 726
    :try_start_5
    iget v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mPassCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mPassCount:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_11

    monitor-exit v0

    return-void

    .line 729
    :cond_11
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v1}, Lcom/android/server/sip/SipService;->-$$Nest$fgetmKeepAliveInterval(Lcom/android/server/sip/SipService;)I

    move-result v1

    if-lez v1, :cond_22

    .line 730
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v1}, Lcom/android/server/sip/SipService;->-$$Nest$fgetmKeepAliveInterval(Lcom/android/server/sip/SipService;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/sip/SipService;->-$$Nest$fputmLastGoodKeepAliveInterval(Lcom/android/server/sip/SipService;I)V

    .line 732
    :cond_22
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    iget v2, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mInterval:I

    iput v2, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mMinInterval:I

    invoke-static {v1, v2}, Lcom/android/server/sip/SipService;->-$$Nest$fputmKeepAliveInterval(Lcom/android/server/sip/SipService;I)V

    .line 734
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResponse: portChanged="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mKeepAliveInterval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v2}, Lcom/android/server/sip/SipService;->-$$Nest$fgetmKeepAliveInterval(Lcom/android/server/sip/SipService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->log(Ljava/lang/String;)V

    .line 737
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v1}, Lcom/android/server/sip/SipService;->-$$Nest$monKeepAliveIntervalChanged(Lcom/android/server/sip/SipService;)V

    goto :goto_5b

    .line 740
    :cond_57
    iget v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mInterval:I

    iput v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mMaxInterval:I

    .line 742
    :goto_5b
    invoke-direct {p0}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->checkTermination()Z

    move-result v1

    if-eqz v1, :cond_88

    .line 744
    invoke-virtual {p0}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->stop()V

    .line 749
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    iget v2, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mMinInterval:I

    invoke-static {v1, v2}, Lcom/android/server/sip/SipService;->-$$Nest$fputmKeepAliveInterval(Lcom/android/server/sip/SipService;I)V

    .line 751
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResponse: checkTermination mKeepAliveInterval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v2}, Lcom/android/server/sip/SipService;->-$$Nest$fgetmKeepAliveInterval(Lcom/android/server/sip/SipService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->log(Ljava/lang/String;)V

    goto :goto_bc

    .line 756
    :cond_88
    iget v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mMaxInterval:I

    iget v2, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mMinInterval:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mInterval:I

    .line 758
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResponse: mKeepAliveInterval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v2}, Lcom/android/server/sip/SipService;->-$$Nest$fgetmKeepAliveInterval(Lcom/android/server/sip/SipService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new mInterval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->log(Ljava/lang/String;)V

    .line 761
    invoke-direct {p0}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->restart()V

    .line 763
    :goto_bc
    monitor-exit v0

    .line 764
    return-void

    .line 763
    :catchall_be
    move-exception v1

    monitor-exit v0
    :try_end_c0
    .catchall {:try_start_5 .. :try_end_c0} :catchall_be

    throw v1
.end method

.method public whitelist test-api run()V
    .registers 2

    .line 776
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v0}, Lcom/android/server/sip/SipService;->-$$Nest$fgetmTimer(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipWakeupTimer;->cancel(Ljava/lang/Runnable;)V

    .line 777
    invoke-direct {p0}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->restart()V

    .line 778
    return-void
.end method

.method public blacklist start()V
    .registers 7

    .line 654
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v0

    .line 655
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-eqz v1, :cond_9

    .line 656
    monitor-exit v0

    return-void

    .line 659
    :cond_9
    iget v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mMaxInterval:I

    iget v2, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mMinInterval:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mInterval:I

    .line 660
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mPassCount:I

    .line 663
    const/16 v2, 0xa

    if-lt v1, v2, :cond_73

    invoke-direct {p0}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->checkTermination()Z

    move-result v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_9f

    if-eqz v1, :cond_20

    goto :goto_73

    .line 670
    :cond_20
    :try_start_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start: interval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->log(Ljava/lang/String;)V

    .line 672
    new-instance v1, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    iget-object v2, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    iget-object v3, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mLocalProfile:Landroid/net/sip/SipProfile;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/android/server/sip/SipService$SipSessionGroupExt;-><init>(Lcom/android/server/sip/SipService;Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/ISipSessionListener;)V

    iput-object v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mGroup:Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 675
    new-instance v2, Lcom/android/server/sip/SipWakeupTimer;

    iget-object v3, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v3}, Lcom/android/server/sip/SipService;->-$$Nest$fgetmContext(Lcom/android/server/sip/SipService;)Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v5}, Lcom/android/server/sip/SipService;->-$$Nest$fgetmExecutor(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipService$MyExecutor;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Lcom/android/server/sip/SipWakeupTimer;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v1, v2}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->setWakeupTimer(Lcom/android/server/sip/SipWakeupTimer;)V

    .line 677
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mGroup:Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 678
    invoke-virtual {v1, v4}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->createSession(Landroid/net/sip/ISipSessionListener;)Landroid/net/sip/ISipSession;

    move-result-object v1

    check-cast v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iput-object v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 679
    iget v2, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mInterval:I

    invoke-virtual {v1, v2, p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startKeepAliveProcess(ILcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V
    :try_end_67
    .catchall {:try_start_20 .. :try_end_67} :catchall_68

    .line 682
    goto :goto_71

    .line 680
    :catchall_68
    move-exception v1

    .line 681
    .local v1, "t":Ljava/lang/Throwable;
    const/4 v2, -0x4

    :try_start_6a
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->onError(ILjava/lang/String;)V

    .line 683
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_71
    monitor-exit v0

    .line 684
    return-void

    .line 664
    :cond_73
    :goto_73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start: measurement aborted; interval=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mMinInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mMaxInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->log(Ljava/lang/String;)V

    .line 666
    monitor-exit v0

    return-void

    .line 683
    :catchall_9f
    move-exception v1

    monitor-exit v0
    :try_end_a1
    .catchall {:try_start_6a .. :try_end_a1} :catchall_9f

    throw v1
.end method

.method public blacklist stop()V
    .registers 4

    .line 687
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v0

    .line 688
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    .line 689
    invoke-virtual {v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->stopKeepAliveProcess()V

    .line 690
    iput-object v2, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 692
    :cond_d
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mGroup:Lcom/android/server/sip/SipService$SipSessionGroupExt;

    if-eqz v1, :cond_16

    .line 693
    invoke-virtual {v1}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->close()V

    .line 694
    iput-object v2, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->mGroup:Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 696
    :cond_16
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v1}, Lcom/android/server/sip/SipService;->-$$Nest$fgetmTimer(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/sip/SipWakeupTimer;->cancel(Ljava/lang/Runnable;)V

    .line 697
    const-string v1, "stop"

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->log(Ljava/lang/String;)V

    .line 698
    monitor-exit v0

    .line 699
    return-void

    .line 698
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method
