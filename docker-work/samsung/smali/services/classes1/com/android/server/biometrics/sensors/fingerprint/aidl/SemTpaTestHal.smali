.class public Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;
.super Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal;
.source "SemTpaTestHal.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;


# static fields
.field public static final TAG:Ljava/lang/String; = "fingerprint.aidl.SemTpaTestHal"

.field public static final TPA_DEFAULT_DELAY:I = 0x258


# instance fields
.field public mActionDelayLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mAuthenticatorID:Landroid/util/SparseLongArray;

.field public mChallenge:J

.field public final mContext:Landroid/content/Context;

.field public mCurrentEnrollmentId:I

.field public final mEnrolledIds:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mISessionCallback:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

.field public final mRequestActionTable:Landroid/util/SparseIntArray;

.field public mSehFingerprint:Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;

.field public mTestHalHelper:Lcom/android/server/biometrics/sensors/SemTestHalHelper;

.field public mThread:Lcom/android/server/ServiceThread;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mTspDelayLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public static synthetic $r8$lambda$IojgP4i2EHHm8PWLfoQUNvoPjQ0(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->initActions()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmActionDelayLatch(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mActionDelayLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAuthenticatorID(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;)Landroid/util/SparseLongArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mAuthenticatorID:Landroid/util/SparseLongArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmChallenge(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mChallenge:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentEnrollmentId(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;)I
    .registers 1

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mCurrentEnrollmentId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRequestActionTable(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;)Landroid/util/SparseIntArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mRequestActionTable:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTestHalHelper(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;)Lcom/android/server/biometrics/sensors/SemTestHalHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mTestHalHelper:Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTspDelayLatch(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mTspDelayLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmActionDelayLatch(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;Ljava/util/concurrent/CountDownLatch;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mActionDelayLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmChallenge(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mChallenge:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentEnrollmentId(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mCurrentEnrollmentId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTspDelayLatch(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;Ljava/util/concurrent/CountDownLatch;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mTspDelayLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcreateICancellationSignal(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;Landroid/os/CancellationSignal;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->createICancellationSignal(Landroid/os/CancellationSignal;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 65
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mContext:Landroid/content/Context;

    .line 67
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mRequestActionTable:Landroid/util/SparseIntArray;

    .line 68
    new-instance p1, Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    const/4 v0, 0x2

    invoke-direct {p1, v0, p0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;-><init>(ILcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;)V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mTestHalHelper:Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    .line 70
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mEnrolledIds:Ljava/util/Set;

    .line 71
    new-instance p1, Landroid/util/SparseLongArray;

    invoke-direct {p1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mAuthenticatorID:Landroid/util/SparseLongArray;

    return-void
.end method


# virtual methods
.method public final createICancellationSignal(Landroid/os/CancellationSignal;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 3

    .line 490
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$3;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;Landroid/os/CancellationSignal;)V

    return-object v0
.end method

.method public createSession(IILandroid/hardware/biometrics/fingerprint/ISessionCallback;)Landroid/hardware/biometrics/fingerprint/ISession;
    .registers 6

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createSession, sensorId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " userId: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "fingerprint.aidl.SemTpaTestHal"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mThread:Lcom/android/server/ServiceThread;

    if-nez p1, :cond_25

    .line 151
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->start()V

    .line 153
    :cond_25
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mISessionCallback:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    .line 154
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p1

    .line 156
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;Landroid/os/Handler;Landroid/hardware/biometrics/fingerprint/ISessionCallback;I)V

    return-object v0
.end method

.method public deliverAcquiredEvent(II)V
    .registers 3

    .line 83
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mISessionCallback:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlConversionUtils;->toAidlAcquiredInfo(I)B

    move-result p1

    invoke-interface {p0, p1, p2}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onAcquired(BI)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception p0

    .line 85
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_e
    return-void
.end method

.method public deliverAuthenticationResult(I)V
    .registers 3

    .line 110
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mEnrolledIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p1, 0x8

    const/16 v0, 0x3ec

    .line 111
    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->deliverErrorEvent(II)V

    return-void

    :cond_10
    if-eqz p1, :cond_30

    .line 117
    :try_start_12
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mISessionCallback:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mEnrolledIds:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0x45

    new-array v0, v0, [B

    .line 118
    invoke-static {v0}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toHardwareAuthToken([B)Landroid/hardware/keymaster/HardwareAuthToken;

    move-result-object v0

    .line 117
    invoke-interface {p1, p0, v0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onAuthenticationSucceeded(ILandroid/hardware/keymaster/HardwareAuthToken;)V

    goto :goto_3a

    .line 120
    :cond_30
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mISessionCallback:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    invoke-interface {p0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onAuthenticationFailed()V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_35} :catch_36
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_35} :catch_36

    goto :goto_3a

    :catch_36
    move-exception p0

    .line 123
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3a
    return-void
.end method

.method public deliverEnrollResult(I)V
    .registers 3

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mISessionCallback:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mCurrentEnrollmentId:I

    invoke-interface {v0, p0, p1}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onEnrollmentProgress(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception p0

    .line 104
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_c
    return-void
.end method

.method public deliverEnumerate(III)V
    .registers 4

    return-void
.end method

.method public deliverErrorEvent(II)V
    .registers 3

    .line 93
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mISessionCallback:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlConversionUtils;->toAidlError(I)B

    move-result p1

    invoke-interface {p0, p1, p2}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onError(BI)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception p0

    .line 95
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_e
    return-void
.end method

.method public deliverTspEvent(I)V
    .registers 5

    .line 129
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.fingerprint.action.FINGER_ON_DISPLAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "info"

    const/4 v2, 0x2

    if-ne p1, v2, :cond_13

    const/16 p1, 0xf

    .line 131
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1b

    :cond_13
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1b

    const/16 p1, 0x10

    .line 133
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 136
    :cond_1b
    :goto_1b
    :try_start_1b
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_20} :catch_21

    goto :goto_25

    :catch_21
    move-exception p0

    .line 138
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_25
    return-void
.end method

.method public destroy()V
    .registers 2

    .line 449
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->quitThread()V

    const/4 v0, 0x0

    .line 450
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mSehFingerprint:Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;

    return-void
.end method

.method public getSehFingerprint()Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;
    .registers 2

    .line 454
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mSehFingerprint:Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;

    if-nez v0, :cond_b

    .line 455
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$2;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mSehFingerprint:Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;

    .line 479
    :cond_b
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mSehFingerprint:Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;

    return-object p0
.end method

.method public final initActions()V
    .registers 3

    .line 442
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mTestHalHelper:Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->initActions()V

    .line 443
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mRequestActionTable:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 444
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mRequestActionTable:Landroid/util/SparseIntArray;

    const/4 v0, 0x6

    const v1, 0x186c8

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public injectTestHalHelper(Lcom/android/server/biometrics/sensors/SemTestHalHelper;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mTestHalHelper:Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    return-void
.end method

.method public final quitThread()V
    .registers 2

    .line 483
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mThread:Lcom/android/server/ServiceThread;

    if-eqz v0, :cond_a

    .line 484
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    .line 485
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mThread:Lcom/android/server/ServiceThread;

    :cond_a
    return-void
.end method

.method public setTpaRequestCommandAction([Ljava/lang/String;)V
    .registers 4

    .line 435
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mRequestActionTable:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_30

    :catch_14
    move-exception p0

    .line 437
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setTpaRequestCommandAction: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "fingerprint.aidl.SemTpaTestHal"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_30
    return-void
.end method

.method public start()V
    .registers 5

    .line 420
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->initActions()V

    .line 421
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->quitThread()V

    .line 422
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "fingerprint.aidl.SemTpaTestHal"

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mThread:Lcom/android/server/ServiceThread;

    .line 423
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method public updateAction()V
    .registers 3

    .line 427
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mThread:Lcom/android/server/ServiceThread;

    if-nez v0, :cond_5

    return-void

    .line 430
    :cond_5
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
