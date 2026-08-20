.class Lcom/android/server/sip/SipService$SipAutoReg;
.super Landroid/net/sip/SipSessionAdapter;
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
    name = "SipAutoReg"
.end annotation


# static fields
.field private static final blacklist MIN_KEEPALIVE_SUCCESS_COUNT:I = 0xa

.field private static final blacklist SAR_DBG:Z = true


# instance fields
.field private blacklist SAR_TAG:Ljava/lang/String;

.field private blacklist mBackoff:I

.field private blacklist mErrorCode:I

.field private blacklist mErrorMessage:Ljava/lang/String;

.field private blacklist mExpiryTime:J

.field private blacklist mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

.field private blacklist mKeepAliveSuccessCount:I

.field private blacklist mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

.field private blacklist mRegistered:Z

.field private blacklist mRunning:Z

.field private blacklist mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

.field final synthetic blacklist this$0:Lcom/android/server/sip/SipService;


# direct methods
.method private constructor blacklist <init>(Lcom/android/server/sip/SipService;)V
    .registers 2

    .line 801
    iput-object p1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    invoke-direct {p0}, Landroid/net/sip/SipSessionAdapter;-><init>()V

    .line 809
    new-instance p1, Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-direct {p1}, Lcom/android/server/sip/SipSessionListenerProxy;-><init>()V

    iput-object p1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    .line 810
    const/4 p1, 0x1

    iput p1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mBackoff:I

    .line 815
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRunning:Z

    .line 817
    iput p1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSuccessCount:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/server/sip/SipService;Lcom/android/server/sip/SipService$SipAutoReg-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService$SipAutoReg;-><init>(Lcom/android/server/sip/SipService;)V

    return-void
.end method

.method private blacklist backoffDuration()I
    .registers 4

    .line 1012
    iget v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mBackoff:I

    mul-int/lit8 v1, v0, 0xa

    .line 1013
    .local v1, "duration":I
    const/16 v2, 0xe10

    if-le v1, v2, :cond_b

    .line 1014
    const/16 v1, 0xe10

    goto :goto_f

    .line 1016
    :cond_b
    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mBackoff:I

    .line 1018
    :goto_f
    return v1
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 1123
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->SAR_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 1127
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->SAR_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    return-void
.end method

.method private blacklist loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 1131
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->SAR_TAG:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1132
    return-void
.end method

.method private blacklist notCurrentSession(Landroid/net/sip/ISipSession;)Z
    .registers 5
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    .line 1033
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_16

    .line 1034
    move-object v0, p1

    check-cast v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->setListener(Landroid/net/sip/ISipSessionListener;)V

    .line 1035
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v0}, Lcom/android/server/sip/SipService;->-$$Nest$fgetmMyWakeLock(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    .line 1036
    return v1

    .line 1038
    :cond_16
    iget-boolean v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRunning:Z

    xor-int/2addr v0, v1

    return v0
.end method

.method private blacklist restart(I)V
    .registers 4
    .param p1, "duration"    # I

    .line 1006
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restart: duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s later."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->log(Ljava/lang/String;)V

    .line 1007
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v0}, Lcom/android/server/sip/SipService;->-$$Nest$fgetmTimer(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipWakeupTimer;->cancel(Ljava/lang/Runnable;)V

    .line 1008
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v0}, Lcom/android/server/sip/SipService;->-$$Nest$fgetmTimer(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;

    move-result-object v0

    mul-int/lit16 v1, p1, 0x3e8

    invoke-virtual {v0, v1, p0}, Lcom/android/server/sip/SipWakeupTimer;->set(ILjava/lang/Runnable;)V

    .line 1009
    return-void
.end method

.method private blacklist restartLater()V
    .registers 2

    .line 1117
    const-string v0, "restartLater"

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->loge(Ljava/lang/String;)V

    .line 1118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRegistered:Z

    .line 1119
    invoke-direct {p0}, Lcom/android/server/sip/SipService$SipAutoReg;->backoffDuration()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->restart(I)V

    .line 1120
    return-void
.end method

.method private blacklist startKeepAliveProcess(I)V
    .registers 5
    .param p1, "interval"    # I

    .line 840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startKeepAliveProcess: interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->log(Ljava/lang/String;)V

    .line 841
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-nez v0, :cond_23

    .line 842
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->duplicate()Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    goto :goto_26

    .line 844
    :cond_23
    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->stopKeepAliveProcess()V

    .line 847
    :goto_26
    :try_start_26
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0, p1, p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startKeepAliveProcess(ILcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V
    :try_end_2b
    .catch Ljavax/sip/SipException; {:try_start_26 .. :try_end_2b} :catch_2c

    .line 850
    goto :goto_41

    .line 848
    :catch_2c
    move-exception v0

    .line 849
    .local v0, "e":Ljavax/sip/SipException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 851
    .end local v0    # "e":Ljavax/sip/SipException;
    :goto_41
    return-void
.end method

.method private blacklist stopKeepAliveProcess()V
    .registers 2

    .line 854
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-eqz v0, :cond_a

    .line 855
    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->stopKeepAliveProcess()V

    .line 856
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 858
    :cond_a
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSuccessCount:I

    .line 859
    return-void
.end method


# virtual methods
.method public blacklist isRegistered()Z
    .registers 2

    .line 986
    iget-boolean v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRegistered:Z

    return v0
.end method

.method public blacklist onError(ILjava/lang/String;)V
    .registers 5
    .param p1, "errorCode"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 912
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

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->loge(Ljava/lang/String;)V

    .line 914
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->onResponse(Z)V

    .line 915
    return-void
.end method

.method public blacklist onKeepAliveIntervalChanged()V
    .registers 4

    .line 934
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-eqz v0, :cond_26

    .line 935
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v0}, Lcom/android/server/sip/SipService;->-$$Nest$mgetKeepAliveInterval(Lcom/android/server/sip/SipService;)I

    move-result v0

    .line 937
    .local v0, "newInterval":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeepAliveIntervalChanged: interval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService$SipAutoReg;->log(Ljava/lang/String;)V

    .line 939
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSuccessCount:I

    .line 940
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->startKeepAliveProcess(I)V

    .line 942
    .end local v0    # "newInterval":I
    :cond_26
    return-void
.end method

.method public blacklist onRegistering(Landroid/net/sip/ISipSession;)V
    .registers 4
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    .line 1023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRegistering: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->log(Ljava/lang/String;)V

    .line 1024
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v0

    .line 1025
    :try_start_19
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService$SipAutoReg;->notCurrentSession(Landroid/net/sip/ISipSession;)Z

    move-result v1

    if-eqz v1, :cond_21

    monitor-exit v0

    return-void

    .line 1027
    :cond_21
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRegistered:Z

    .line 1028
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v1, p1}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistering(Landroid/net/sip/ISipSession;)V

    .line 1029
    monitor-exit v0

    .line 1030
    return-void

    .line 1029
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_19 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public blacklist onRegistrationDone(Landroid/net/sip/ISipSession;I)V
    .registers 8
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "duration"    # I

    .line 1043
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRegistrationDone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->log(Ljava/lang/String;)V

    .line 1044
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v0

    .line 1045
    :try_start_19
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService$SipAutoReg;->notCurrentSession(Landroid/net/sip/ISipSession;)Z

    move-result v1

    if-eqz v1, :cond_21

    monitor-exit v0

    return-void

    .line 1047
    :cond_21
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationDone(Landroid/net/sip/ISipSession;I)V

    .line 1049
    if-lez p2, :cond_73

    .line 1050
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    mul-int/lit16 v3, p2, 0x3e8

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mExpiryTime:J

    .line 1053
    iget-boolean v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRegistered:Z

    if-nez v1, :cond_69

    .line 1054
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRegistered:Z

    .line 1056
    add-int/lit8 p2, p2, -0x3c

    .line 1057
    const/16 v1, 0x3c

    if-ge p2, v1, :cond_41

    .line 1058
    const/16 p2, 0x3c

    .line 1060
    :cond_41
    invoke-direct {p0, p2}, Lcom/android/server/sip/SipService$SipAutoReg;->restart(I)V

    .line 1062
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v1

    .line 1063
    .local v1, "localProfile":Landroid/net/sip/SipProfile;
    iget-object v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-nez v2, :cond_69

    iget-object v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v2}, Lcom/android/server/sip/SipService;->-$$Nest$fgetmLocalIp(Lcom/android/server/sip/SipService;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/sip/SipService;->-$$Nest$misBehindNAT(Lcom/android/server/sip/SipService;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_60

    .line 1064
    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getSendKeepAlive()Z

    move-result v2

    if-eqz v2, :cond_69

    .line 1065
    :cond_60
    iget-object v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v2}, Lcom/android/server/sip/SipService;->-$$Nest$mgetKeepAliveInterval(Lcom/android/server/sip/SipService;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/sip/SipService$SipAutoReg;->startKeepAliveProcess(I)V

    .line 1068
    .end local v1    # "localProfile":Landroid/net/sip/SipProfile;
    :cond_69
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v1}, Lcom/android/server/sip/SipService;->-$$Nest$fgetmMyWakeLock(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    goto :goto_82

    .line 1070
    :cond_73
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRegistered:Z

    .line 1071
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mExpiryTime:J

    .line 1072
    const-string v1, "Refresh registration immediately"

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService$SipAutoReg;->log(Ljava/lang/String;)V

    .line 1073
    invoke-virtual {p0}, Lcom/android/server/sip/SipService$SipAutoReg;->run()V

    .line 1075
    :goto_82
    monitor-exit v0

    .line 1076
    return-void

    .line 1075
    :catchall_84
    move-exception v1

    monitor-exit v0
    :try_end_86
    .catchall {:try_start_19 .. :try_end_86} :catchall_84

    throw v1
.end method

.method public blacklist onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .registers 6
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 1081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRegistrationFailed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1082
    invoke-static {p2}, Landroid/net/sip/SipErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1081
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->log(Ljava/lang/String;)V

    .line 1083
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v0

    .line 1084
    :try_start_31
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService$SipAutoReg;->notCurrentSession(Landroid/net/sip/ISipSession;)Z

    move-result v1

    if-eqz v1, :cond_39

    monitor-exit v0

    return-void

    .line 1086
    :cond_39
    sparse-switch p2, :sswitch_data_60

    .line 1093
    invoke-direct {p0}, Lcom/android/server/sip/SipService$SipAutoReg;->restartLater()V

    goto :goto_48

    .line 1089
    :sswitch_40
    const-string v1, "   pause auto-registration"

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService$SipAutoReg;->log(Ljava/lang/String;)V

    .line 1090
    invoke-virtual {p0}, Lcom/android/server/sip/SipService$SipAutoReg;->stop()V

    .line 1096
    :goto_48
    iput p2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mErrorCode:I

    .line 1097
    iput-object p3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mErrorMessage:Ljava/lang/String;

    .line 1098
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    .line 1099
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v1}, Lcom/android/server/sip/SipService;->-$$Nest$fgetmMyWakeLock(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    .line 1100
    monitor-exit v0

    .line 1101
    return-void

    .line 1100
    :catchall_5c
    move-exception v1

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_31 .. :try_end_5e} :catchall_5c

    throw v1

    nop

    :sswitch_data_60
    .sparse-switch
        -0xc -> :sswitch_40
        -0x8 -> :sswitch_40
    .end sparse-switch
.end method

.method public blacklist onRegistrationTimeout(Landroid/net/sip/ISipSession;)V
    .registers 4
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    .line 1105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRegistrationTimeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->log(Ljava/lang/String;)V

    .line 1106
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v0

    .line 1107
    :try_start_19
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService$SipAutoReg;->notCurrentSession(Landroid/net/sip/ISipSession;)Z

    move-result v1

    if-eqz v1, :cond_21

    monitor-exit v0

    return-void

    .line 1109
    :cond_21
    const/4 v1, -0x5

    iput v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mErrorCode:I

    .line 1110
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v1, p1}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationTimeout(Landroid/net/sip/ISipSession;)V

    .line 1111
    invoke-direct {p0}, Lcom/android/server/sip/SipService$SipAutoReg;->restartLater()V

    .line 1112
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v1}, Lcom/android/server/sip/SipService;->-$$Nest$fgetmMyWakeLock(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    .line 1113
    monitor-exit v0

    .line 1114
    return-void

    .line 1113
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_19 .. :try_end_39} :catchall_37

    throw v1
.end method

.method public blacklist onResponse(Z)V
    .registers 7
    .param p1, "portChanged"    # Z

    .line 864
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v0

    .line 865
    if-eqz p1, :cond_6d

    .line 866
    :try_start_5
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v1}, Lcom/android/server/sip/SipService;->-$$Nest$mgetKeepAliveInterval(Lcom/android/server/sip/SipService;)I

    move-result v1

    .line 867
    .local v1, "interval":I
    iget v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSuccessCount:I

    const/16 v3, 0xa

    if-ge v2, v3, :cond_44

    .line 869
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResponse: keepalive doesn\'t work with interval "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", past success count="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSuccessCount:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/sip/SipService$SipAutoReg;->log(Ljava/lang/String;)V

    .line 873
    if-le v1, v3, :cond_6c

    .line 874
    iget-object v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    iget-object v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 875
    invoke-virtual {v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v3

    .line 874
    invoke-static {v2, v3, v1}, Lcom/android/server/sip/SipService;->-$$Nest$mrestartPortMappingLifetimeMeasurement(Lcom/android/server/sip/SipService;Landroid/net/sip/SipProfile;I)V

    .line 876
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSuccessCount:I

    goto :goto_6c

    .line 880
    :cond_44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keep keepalive going with interval "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", past success count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSuccessCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/sip/SipService$SipAutoReg;->log(Ljava/lang/String;)V

    .line 884
    iget v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSuccessCount:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSuccessCount:I

    .line 886
    .end local v1    # "interval":I
    :cond_6c
    :goto_6c
    goto :goto_7e

    .line 889
    :cond_6d
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    iget-object v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 890
    invoke-virtual {v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v2

    .line 889
    invoke-static {v1, v2}, Lcom/android/server/sip/SipService;->-$$Nest$mstartPortMappingLifetimeMeasurement(Lcom/android/server/sip/SipService;Landroid/net/sip/SipProfile;)V

    .line 891
    iget v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSuccessCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSuccessCount:I

    .line 894
    :goto_7e
    iget-boolean v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRunning:Z

    if-eqz v1, :cond_9c

    if-nez p1, :cond_85

    goto :goto_9c

    .line 899
    :cond_85
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 903
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v1}, Lcom/android/server/sip/SipService;->-$$Nest$fgetmMyWakeLock(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v1, v2}, Lcom/android/server/sip/SipWakeLock;->acquire(Ljava/lang/Object;)V

    .line 904
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/16 v2, 0xe10

    invoke-virtual {v1, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->register(I)V

    .line 905
    monitor-exit v0

    .line 906
    return-void

    .line 894
    :cond_9c
    :goto_9c
    monitor-exit v0

    return-void

    .line 905
    :catchall_9e
    move-exception v1

    monitor-exit v0
    :try_end_a0
    .catchall {:try_start_5 .. :try_end_a0} :catchall_9e

    throw v1
.end method

.method public whitelist test-api run()V
    .registers 4

    .line 992
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v0

    .line 993
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRunning:Z

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    .line 995
    :cond_9
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mErrorCode:I

    .line 996
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mErrorMessage:Ljava/lang/String;

    .line 997
    const-string v1, "run: registering"

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService$SipAutoReg;->log(Ljava/lang/String;)V

    .line 998
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v1}, Lcom/android/server/sip/SipService;->-$$Nest$fgetmNetworkType(Lcom/android/server/sip/SipService;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2f

    .line 999
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v1}, Lcom/android/server/sip/SipService;->-$$Nest$fgetmMyWakeLock(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v1, v2}, Lcom/android/server/sip/SipWakeLock;->acquire(Ljava/lang/Object;)V

    .line 1000
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/16 v2, 0xe10

    invoke-virtual {v1, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->register(I)V

    .line 1002
    :cond_2f
    monitor-exit v0

    .line 1003
    return-void

    .line 1002
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public blacklist setListener(Landroid/net/sip/ISipSessionListener;)V
    .registers 8
    .param p1, "listener"    # Landroid/net/sip/ISipSessionListener;

    .line 945
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v0

    .line 946
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v1, p1}, Lcom/android/server/sip/SipSessionListenerProxy;->setListener(Landroid/net/sip/ISipSessionListener;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_89

    .line 949
    :try_start_8
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-nez v1, :cond_e

    .line 950
    const/4 v1, 0x0

    goto :goto_12

    .line 951
    :cond_e
    invoke-virtual {v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getState()I

    move-result v1

    :goto_12
    nop

    .line 952
    .local v1, "state":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_79

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1a

    goto :goto_79

    .line 955
    :cond_1a
    iget-boolean v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRegistered:Z

    if-eqz v2, :cond_2e

    .line 956
    iget-wide v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mExpiryTime:J

    .line 957
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v2, v2

    .line 958
    .local v2, "duration":I
    iget-object v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v4, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v3, v4, v2}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationDone(Landroid/net/sip/ISipSession;I)V

    .line 959
    .end local v2    # "duration":I
    goto :goto_80

    :cond_2e
    iget v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mErrorCode:I

    if-eqz v2, :cond_47

    .line 960
    const/4 v3, -0x5

    if-ne v2, v3, :cond_3d

    .line 961
    iget-object v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v2, v3}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationTimeout(Landroid/net/sip/ISipSession;)V

    goto :goto_80

    .line 963
    :cond_3d
    iget-object v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v4, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v5, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v3, v4, v2, v5}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    goto :goto_80

    .line 966
    :cond_47
    iget-object v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v2}, Lcom/android/server/sip/SipService;->-$$Nest$fgetmNetworkType(Lcom/android/server/sip/SipService;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5c

    .line 967
    iget-object v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/16 v4, -0xa

    const-string v5, "no data connection"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    goto :goto_80

    .line 970
    :cond_5c
    iget-boolean v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRunning:Z

    if-nez v2, :cond_6b

    .line 971
    iget-object v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/4 v4, -0x4

    const-string v5, "registration not running"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    goto :goto_80

    .line 975
    :cond_6b
    iget-object v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/16 v4, -0x9

    .line 977
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 975
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    goto :goto_80

    .line 954
    :cond_79
    :goto_79
    iget-object v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v2, v3}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistering(Landroid/net/sip/ISipSession;)V
    :try_end_80
    .catchall {:try_start_8 .. :try_end_80} :catchall_81

    .line 981
    .end local v1    # "state":I
    :goto_80
    goto :goto_87

    .line 979
    :catchall_81
    move-exception v1

    .line 980
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_82
    const-string v2, "setListener: "

    invoke-direct {p0, v2, v1}, Lcom/android/server/sip/SipService$SipAutoReg;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 982
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_87
    monitor-exit v0

    .line 983
    return-void

    .line 982
    :catchall_89
    move-exception v1

    monitor-exit v0
    :try_end_8b
    .catchall {:try_start_82 .. :try_end_8b} :catchall_89

    throw v1
.end method

.method public blacklist start(Lcom/android/server/sip/SipSessionGroup;)V
    .registers 4
    .param p1, "group"    # Lcom/android/server/sip/SipSessionGroup;

    .line 820
    iget-boolean v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRunning:Z

    if-nez v0, :cond_5e

    .line 821
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRunning:Z

    .line 822
    iput v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mBackoff:I

    .line 823
    nop

    .line 824
    invoke-virtual {p1, p0}, Lcom/android/server/sip/SipSessionGroup;->createSession(Landroid/net/sip/ISipSessionListener;)Landroid/net/sip/ISipSession;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iput-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 826
    if-nez v0, :cond_15

    return-void

    .line 831
    :cond_15
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v0}, Lcom/android/server/sip/SipService;->-$$Nest$fgetmMyWakeLock(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0, v1}, Lcom/android/server/sip/SipWakeLock;->acquire(Ljava/lang/Object;)V

    .line 832
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->unregister()V

    .line 833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SipAutoReg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 834
    invoke-virtual {v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/sip/SipService;->obfuscateSipUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->SAR_TAG:Ljava/lang/String;

    .line 835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start: group="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->log(Ljava/lang/String;)V

    .line 837
    :cond_5e
    return-void
.end method

.method public blacklist stop()V
    .registers 4

    .line 918
    iget-boolean v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRunning:Z

    if-nez v0, :cond_5

    return-void

    .line 919
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRunning:Z

    .line 920
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v1}, Lcom/android/server/sip/SipService;->-$$Nest$fgetmMyWakeLock(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v1, v2}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    .line 921
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-eqz v1, :cond_2d

    .line 922
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->setListener(Landroid/net/sip/ISipSessionListener;)V

    .line 923
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v1}, Lcom/android/server/sip/SipService;->-$$Nest$fgetmNetworkType(Lcom/android/server/sip/SipService;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2d

    iget-boolean v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRegistered:Z

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->unregister()V

    .line 926
    :cond_2d
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v1}, Lcom/android/server/sip/SipService;->-$$Nest$fgetmTimer(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/sip/SipWakeupTimer;->cancel(Ljava/lang/Runnable;)V

    .line 927
    invoke-direct {p0}, Lcom/android/server/sip/SipService$SipAutoReg;->stopKeepAliveProcess()V

    .line 929
    iput-boolean v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRegistered:Z

    .line 930
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionListenerProxy;->getListener()Landroid/net/sip/ISipSessionListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->setListener(Landroid/net/sip/ISipSessionListener;)V

    .line 931
    return-void
.end method
