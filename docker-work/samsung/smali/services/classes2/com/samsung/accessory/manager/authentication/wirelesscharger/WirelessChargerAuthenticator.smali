.class public Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;
.super Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;
.source "WirelessChargerAuthenticator.java"

# interfaces
.implements Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;
    }
.end annotation


# static fields
.field public static final AUTH_PREPARE_TIMEOUT:J = 0x6978L

.field public static final AUTH_TIMEOUT:J = 0xea60L

.field public static final DBG:Z

.field public static final ERROR_RESTART_TIME_MS:I = 0xc8

.field public static final ERROR_RESTART_TIME_MS_TIMEOUT:I = 0x12c

.field public static final MAX_RETRIES_ON_AUTHENTICATION_FAILURE:I = 0x1

.field public static final MAX_RETRIES_WHEN_CONNECTIVITY_BUSY:I = 0x2

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public WIRELESSCHARGER_CONNECTED:I

.field public WIRELESSCHARGER_DISCONNECTED:I

.field public auth_result:I

.field public final mAuthenticationHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mAuthenticationStarted:Z

.field public mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

.field public mContext:Landroid/content/Context;

.field public mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

.field public mFailuresCount:I

.field public mIsFactoryBinary:Z

.field public volatile mIsShutingdown:Z

.field public mLastAttachTime:J

.field public volatile mLastAuthenticationTime:J

.field public mLastDetachTime:J

.field public mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

.field public mPowerManager:Landroid/os/PowerManager;

.field public volatile mPreparing:Z

.field public final mResult:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/samsung/accessory/manager/authentication/AuthenticationResult;",
            ">;"
        }
    .end annotation
.end field

.field public mRetryCounterFactoryTest:I

.field public mRetryCounterWhenBusy:I

.field public mSafetyDetachTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mSystemReady:Z

.field public mUriData:[B

.field public mWirelessChargerAttachedWhenNanos:J

.field public mWirelessChargerAuthHandler:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;

.field public mWirelessChargerAuthWakeLock:Landroid/os/PowerManager$WakeLock;

.field public wirelessChargerState:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAuthenticationTask(Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;)Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;
    .registers 1

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFailuresCount(Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;)I
    .registers 1

    iget p0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mFailuresCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWirelessChargerAuthHandler(Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;)Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAuthHandler:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmFailuresCount(Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mFailuresCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRetryCounterWhenBusy(Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mRetryCounterWhenBusy:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleAuthResponse(Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;Landroid/os/Message;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->handleAuthResponse(Landroid/os/Message;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleAuthStart(Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->handleAuthStart(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minitialize(Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->initialize()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscheduleAuthenticationTimeOuts(Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;J)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->scheduleAuthenticationTimeOuts(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetWirelessChargerVerified(Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;ILcom/samsung/accessory/manager/authentication/AuthenticationResult;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->setWirelessChargerVerified(ILcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartAuthentication(Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;ZJ)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->startAuthentication(ZJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SAccessoryManager_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->TAG:Ljava/lang/String;

    .line 35
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;)V
    .registers 7

    .line 278
    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;-><init>()V

    const-wide/16 v0, 0x0

    .line 52
    iput-wide v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mLastAuthenticationTime:J

    .line 53
    iput-wide v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mLastAttachTime:J

    .line 54
    iput-wide v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mLastDetachTime:J

    .line 55
    iput-wide v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAttachedWhenNanos:J

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mRetryCounterWhenBusy:I

    .line 60
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mRetryCounterFactoryTest:I

    .line 61
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mFailuresCount:I

    const/4 v1, 0x0

    .line 62
    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mUriData:[B

    .line 63
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->WIRELESSCHARGER_CONNECTED:I

    const/4 v2, 0x1

    .line 64
    iput v2, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->WIRELESSCHARGER_DISCONNECTED:I

    const/4 v2, -0x2

    .line 65
    iput v2, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->auth_result:I

    .line 68
    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mSystemReady:Z

    .line 70
    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mIsShutingdown:Z

    .line 71
    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mPreparing:Z

    .line 73
    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mIsFactoryBinary:Z

    .line 74
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->WIRELESSCHARGER_DISCONNECTED:I

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->wirelessChargerState:I

    .line 76
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mResult:Ljava/util/concurrent/atomic/AtomicReference;

    .line 77
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    .line 78
    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 279
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mContext:Landroid/content/Context;

    .line 280
    iput-object p3, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    .line 282
    new-instance p1, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;

    invoke-direct {p1, p0, p2}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;-><init>(Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAuthHandler:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;

    return-void
.end method


# virtual methods
.method public addRecord(II)V
    .registers 5

    .line 411
    iget-object p2, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result p2

    const/16 v0, 0x3c

    if-le p2, v0, :cond_f

    iget-object p2, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 412
    :cond_f
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 412
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    const-string p1, " Current WirelessChargerAuthenticator state:"

    .line 423
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 425
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    if-eqz p1, :cond_27

    .line 427
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  auth reason = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getReason()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_27
    const-string p1, "  Historical authentication: "

    .line 432
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 433
    :goto_2d
    iget-object p3, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result p3

    if-ge p1, p3, :cond_54

    .line 434
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2d

    .line 438
    :cond_54
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mLastAuthenticationTime = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mLastAuthenticationTime:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 442
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mLastAttachTime = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mLastAttachTime:J

    invoke-static {v0, v1}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 443
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mLastDetachTime = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mLastDetachTime:J

    invoke-static {v0, v1}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final handleAuthResponse(Landroid/os/Message;)V
    .registers 11

    .line 182
    sget-object v0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->TAG:Ljava/lang/String;

    const-string v1, "handleAuthResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 189
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    .line 190
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 192
    invoke-virtual {p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getResultBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "reason"

    .line 193
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 194
    iput v1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->auth_result:I

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "auth reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3d

    :goto_3a
    move v2, v3

    goto/16 :goto_a7

    :cond_3d
    if-ne v1, v3, :cond_40

    goto :goto_3a

    :cond_40
    const/16 v4, 0xb

    if-eq v1, v4, :cond_a2

    const/16 v4, 0x1e

    if-ne v1, v4, :cond_49

    goto :goto_a2

    :cond_49
    const/16 v0, 0x1f

    const/4 v4, 0x2

    if-ne v1, v0, :cond_57

    .line 209
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->removeAuthenticationTimeOuts()V

    .line 210
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAuthHandler:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_3a

    :cond_57
    const/16 v0, 0xc

    if-ne v1, v0, :cond_64

    .line 213
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->removeAuthenticationTimeOuts()V

    .line 214
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAuthHandler:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_3a

    :cond_64
    const/16 v0, 0xd

    const/4 v5, 0x5

    if-ne v1, v0, :cond_90

    .line 217
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mRetryCounterWhenBusy:I

    if-ge v0, v4, :cond_85

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAuthHandler:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;

    .line 218
    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 219
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mRetryCounterWhenBusy:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mRetryCounterWhenBusy:I

    const/4 v4, 0x1

    const-wide/32 v5, 0xea60

    const-wide/16 v7, 0x1388

    move-object v3, p0

    .line 221
    invoke-virtual/range {v3 .. v8}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->startAuthentication(ZJJ)V

    goto :goto_a7

    .line 223
    :cond_85
    iput v2, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mRetryCounterWhenBusy:I

    .line 224
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->removeAuthenticationTimeOuts()V

    .line 225
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAuthHandler:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_3a

    :cond_90
    const/16 v0, 0x5a

    if-ne v1, v0, :cond_a7

    const-wide/16 v3, 0x12c

    .line 230
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAuthHandler:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 231
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->startAuthentication(ZJ)V

    goto :goto_a7

    :cond_a2
    :goto_a2
    const-string v3, "do nothing.."

    .line 206
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a7
    :goto_a7
    if-eqz v2, :cond_b1

    .line 236
    invoke-virtual {p0, v1, p1}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->setWirelessChargerVerified(ILcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    const-wide/16 v0, 0x0

    .line 237
    invoke-virtual {p0, v0, v1}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->stopAuthentication(J)V

    .line 240
    :cond_b1
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public final handleAuthStart(Z)V
    .registers 6

    .line 244
    sget-object v0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->TAG:Ljava/lang/String;

    const-string v1, "handleAuthStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 248
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-interface {v1, v2}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;->getSessionState(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)I

    move-result v1

    const/4 v2, 0x7

    const/4 v3, 0x1

    if-eq v1, v2, :cond_26

    if-eq v1, v3, :cond_26

    const-string/jumbo p1, "session is busy"

    .line 251
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :cond_26
    if-eqz p1, :cond_2f

    const-wide/16 v0, 0x6978

    .line 257
    invoke-virtual {p0, v0, v1}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->scheduleAuthenticationTimeOuts(J)V

    .line 258
    iput-boolean v3, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mPreparing:Z

    .line 261
    :cond_2f
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 263
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-interface {v0, v1}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;->getSessionState(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)I

    move-result v0

    if-ne v0, v2, :cond_54

    .line 264
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x4

    const-string v2, "connectivity_type"

    .line 265
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 266
    iput-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 267
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 268
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    invoke-interface {v0, p1, v3}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;->start(Landroid/os/Message;Z)V

    goto :goto_5d

    .line 271
    :cond_54
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 272
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    invoke-interface {v0, p1, v3}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;->start(Landroid/os/Message;Z)V

    .line 275
    :goto_5d
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public final initialize()V
    .registers 6

    .line 285
    sget-object v0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->TAG:Ljava/lang/String;

    const-string v1, "Initialize wirelesscharger authenticator"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mIsFactoryBinary:Z

    .line 290
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x1

    .line 291
    invoke-virtual {v1, v2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    .line 292
    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 293
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mPowerManager:Landroid/os/PowerManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "DetachTimeoutWakeLock"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mSafetyDetachTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 295
    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 296
    new-instance v0, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-direct {v0}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;-><init>()V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    .line 297
    iput-boolean v2, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mSystemReady:Z

    .line 298
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    invoke-interface {p0}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;->authenticationReady()V

    return-void
.end method

.method public final isAuthenticationReady()Z
    .registers 2

    .line 402
    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mSystemReady:Z

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mIsShutingdown:Z

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public onAuthenticationComplted(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V
    .registers 4

    .line 85
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAuthHandler:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 86
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 87
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAuthHandler:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onAuthenticationStarted()V
    .registers 3

    .line 92
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAuthHandler:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;

    new-instance v1, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$1;

    invoke-direct {v1, p0}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$1;-><init>(Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAuthenticationStarting(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .registers 4

    .line 121
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAuthHandler:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;

    new-instance v1, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$3;-><init>(Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAuthenticationStopped(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .registers 3

    .line 107
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAuthHandler:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;

    new-instance v0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$2;

    invoke-direct {v0, p0}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$2;-><init>(Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onWirelessChargerConnected(JZ)V
    .registers 8

    const-wide/16 v0, 0x0

    if-eqz p3, :cond_27

    .line 304
    iget-boolean p1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mAuthenticationStarted:Z

    if-eqz p1, :cond_10

    .line 305
    sget-object p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->TAG:Ljava/lang/String;

    const-string p1, "Authentication already starts"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    const/4 p1, 0x1

    .line 308
    iput-boolean p1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mAuthenticationStarted:Z

    .line 310
    iget p2, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->WIRELESSCHARGER_CONNECTED:I

    iput p2, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->wirelessChargerState:I

    .line 311
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAttachedWhenNanos:J

    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mLastAttachTime:J

    .line 313
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->startAuthentication(ZJ)V

    goto :goto_50

    .line 316
    :cond_27
    iget p3, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->WIRELESSCHARGER_DISCONNECTED:I

    iput p3, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->wirelessChargerState:I

    .line 317
    iget-wide v2, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAttachedWhenNanos:J

    cmp-long p3, v2, v0

    if-eqz p3, :cond_3b

    sub-long/2addr p1, v2

    const-wide/32 v2, 0x1dcd6500

    cmp-long p1, p1, v2

    if-gez p1, :cond_3b

    const-wide/16 v0, 0x1f4

    .line 321
    :cond_3b
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mSafetyDetachTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 p2, 0x3e8

    invoke-virtual {p1, p2, p3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 322
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mLastDetachTime:J

    const/4 p1, 0x0

    .line 323
    iput p1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mFailuresCount:I

    .line 324
    iput-boolean p1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mAuthenticationStarted:Z

    .line 325
    invoke-virtual {p0, v0, v1}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->stopAuthentication(J)V

    :goto_50
    return-void
.end method

.method public removeAuthenticationTimeOuts()V
    .registers 2

    const/4 v0, 0x0

    .line 356
    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mPreparing:Z

    .line 357
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAuthHandler:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final scheduleAuthenticationTimeOuts(J)V
    .registers 4

    .line 351
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->removeAuthenticationTimeOuts()V

    .line 352
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAuthHandler:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final setWirelessChargerVerified(ILcom/samsung/accessory/manager/authentication/AuthenticationResult;)V
    .registers 11

    .line 369
    sget-object p2, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setWirelessChargerVerified"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_77

    const/4 v0, 0x1

    const/4 v1, 0x5

    move v2, p2

    :goto_10
    if-ltz v1, :cond_77

    if-nez v2, :cond_77

    .line 375
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-virtual {v2}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->wirelesscharger_open()I

    move-result v2

    new-array v3, v0, [B

    aput-byte v0, v3, p2

    new-array v4, v0, [B

    const/4 v5, 0x2

    aput-byte v5, v4, p2

    .line 379
    sget-object v5, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "reason = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", open batt_misc ret = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v2, :cond_4c

    const-string/jumbo p1, "open fail"

    .line 381
    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x66

    :cond_4c
    if-nez p1, :cond_5a

    const-string/jumbo v2, "write success"

    .line 385
    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-virtual {v2, v3}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ioctl_longDataWrite_batt([B)I

    goto :goto_69

    :cond_5a
    const/16 v2, 0x65

    if-eq p1, v2, :cond_69

    const-string/jumbo v2, "write fail"

    .line 388
    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-virtual {v2, v4}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ioctl_longDataWrite_batt([B)I

    :cond_69
    :goto_69
    const-string v2, "close batt_misc"

    .line 391
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-virtual {v2}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ccic_close()I

    add-int/lit8 v1, v1, -0x1

    move v2, v0

    goto :goto_10

    .line 396
    :cond_77
    invoke-virtual {p0, p1, p2}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->addRecord(II)V

    const/4 p1, -0x2

    .line 397
    iput p1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->auth_result:I

    .line 398
    iput-boolean p2, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mAuthenticationStarted:Z

    return-void
.end method

.method public final startAuthentication(ZJ)V
    .registers 6

    .line 330
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->isAuthenticationReady()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 332
    :cond_7
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAuthHandler:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 333
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 334
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 335
    iput p1, v0, Landroid/os/Message;->what:I

    .line 336
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAuthHandler:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;

    invoke-virtual {p0, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final startAuthentication(ZJJ)V
    .registers 8

    .line 340
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->isAuthenticationReady()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 342
    :cond_7
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAuthHandler:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p1, :cond_12

    .line 344
    invoke-virtual {p0, p2, p3}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->scheduleAuthenticationTimeOuts(J)V

    .line 347
    :cond_12
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAuthHandler:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1, p4, p5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final stopAuthentication(J)V
    .registers 5

    .line 361
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->removeAuthenticationTimeOuts()V

    .line 362
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAuthHandler:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 365
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAuthHandler:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public systemReady()V
    .registers 2

    .line 407
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mWirelessChargerAuthHandler:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
