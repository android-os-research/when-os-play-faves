.class public Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;
.super Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Stub;
.source "SehTestHal.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "fingerprint.hidl.SehTestHal"

.field public static final TPA_DEFAULT_DELAY:I = 0x258


# instance fields
.field public final mAuthenticatorID:Landroid/util/SparseLongArray;

.field public mCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

.field public final mContext:Landroid/content/Context;

.field public mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field public mCurrentEnrollmentId:I

.field public mCurrentUserID:I

.field public final mDeviceId:J

.field public final mEnrollmentIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mH:Landroid/os/Handler;

.field public final mIsCancellation:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mIsTpaMode:Z

.field public final mRandom:Ljava/util/Random;

.field public final mRequestActionTable:Landroid/util/SparseIntArray;

.field public final mSehRequestOutput:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public mSessionId:J

.field public final mTestHal:Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;

.field public mTestHalHelper:Lcom/android/server/biometrics/sensors/SemTestHalHelper;

.field public mThread:Lcom/android/server/ServiceThread;


# direct methods
.method public static synthetic $r8$lambda$Db7i_qh5KX7rAOAwIeZPOnwDbVE(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->initActions()V

    return-void
.end method

.method public static synthetic $r8$lambda$P2vSvkkl1jZChgH4CDoRYLGKK6k(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->lambda$cancel$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$i-QLXWw1-sUrPi4xq_heD-4c4Zo(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->lambda$enrollTPA$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$qCpMnl3EM2j5WzL7AGefHIVY5kQ(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->lambda$authenticateTPA$2(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .registers 7

    .line 63
    invoke-direct {p0}, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Stub;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mIsCancellation:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mContext:Landroid/content/Context;

    .line 65
    iput-boolean p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mIsTpaMode:Z

    .line 66
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;

    invoke-direct {v0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mTestHal:Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;

    .line 67
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mSehRequestOutput:Ljava/util/ArrayList;

    .line 68
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mRandom:Ljava/util/Random;

    .line 69
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mAuthenticatorID:Landroid/util/SparseLongArray;

    .line 70
    invoke-virtual {p1}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mDeviceId:J

    .line 71
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mRequestActionTable:Landroid/util/SparseIntArray;

    .line 72
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mEnrollmentIds:Ljava/util/Set;

    const-string p1, "fingerprint.hidl.SehTestHal"

    if-eqz p3, :cond_6d

    .line 74
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;)V

    .line 100
    new-instance v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;-><init>(ILcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;)V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mTestHalHelper:Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    .line 101
    new-instance v0, Lcom/android/server/ServiceThread;

    const/4 v1, -0x2

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mThread:Lcom/android/server/ServiceThread;

    .line 103
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 104
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mH:Landroid/os/Handler;

    .line 105
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_70

    .line 107
    :cond_6d
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->initRequestTable()V

    .line 109
    :goto_70
    sget-boolean p0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz p0, :cond_90

    .line 110
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SehTestHal: constructed, "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_90
    return-void
.end method

.method private synthetic lambda$authenticateTPA$2(I)V
    .registers 6

    .line 319
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mEnrollmentIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p1, 0x8

    const/16 v0, 0x3ec

    .line 320
    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->deliverErrorEvent(II)V

    return-void

    .line 325
    :cond_10
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mTestHalHelper:Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->getAuthActionList()Ljava/util/List;

    move-result-object v0

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start authenticateTPA: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", action size = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "fingerprint.hidl.SehTestHal"

    .line 326
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3d
    :goto_3d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_89

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 330
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mIsCancellation:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_52

    goto :goto_89

    .line 334
    :cond_52
    :try_start_52
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->getDelay()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_59
    .catch Ljava/lang/InterruptedException; {:try_start_52 .. :try_end_59} :catch_5a

    goto :goto_5e

    :catch_5a
    move-exception v1

    .line 336
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 338
    :goto_5e
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->run()V

    .line 339
    sget-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v1, :cond_3d

    .line 340
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->getCallbackType()Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    move-result-object v1

    sget-object v2, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->TSP_FOD:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    if-ne v1, v2, :cond_3d

    .line 341
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->getValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3d

    .line 342
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x2710

    .line 345
    :try_start_7e
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_83
    .catch Ljava/lang/InterruptedException; {:try_start_7e .. :try_end_83} :catch_84

    goto :goto_3d

    :catch_84
    move-exception v0

    .line 347
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3d

    :cond_89
    :goto_89
    return-void
.end method

.method private synthetic lambda$cancel$1()V
    .registers 3

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mTestHal:Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->cancel()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    .line 281
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 283
    :goto_a
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mIsCancellation:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 284
    iput v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCurrentEnrollmentId:I

    return-void
.end method

.method private synthetic lambda$enrollTPA$0()V
    .registers 6

    .line 227
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    .line 228
    :goto_6
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mEnrollmentIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 229
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    goto :goto_6

    .line 231
    :cond_19
    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCurrentEnrollmentId:I

    .line 232
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mTestHalHelper:Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->getEnrollActionList()Ljava/util/List;

    move-result-object v0

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start enrollTPA: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCurrentEnrollmentId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", action size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fingerprint.hidl.SehTestHal"

    .line 233
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4a
    :goto_4a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_90

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 236
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mIsCancellation:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_5f

    goto :goto_90

    .line 240
    :cond_5f
    :try_start_5f
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->getDelay()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_66
    .catch Ljava/lang/InterruptedException; {:try_start_5f .. :try_end_66} :catch_67

    goto :goto_6b

    :catch_67
    move-exception v2

    .line 242
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 244
    :goto_6b
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->run()V

    .line 245
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->isFinishEnroll()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 246
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mEnrollmentIds:Ljava/util/Set;

    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCurrentEnrollmentId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 247
    iput v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCurrentEnrollmentId:I

    .line 248
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mAuthenticatorID:Landroid/util/SparseLongArray;

    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCurrentUserID:I

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mRandom:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/SparseLongArray;->put(IJ)V

    goto :goto_4a

    :cond_90
    :goto_90
    return-void
.end method


# virtual methods
.method public authenticate(JI)I
    .registers 5

    .line 309
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mIsTpaMode:Z

    if-eqz v0, :cond_9

    .line 310
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->authenticateTPA(JI)I

    move-result p0

    return p0

    .line 312
    :cond_9
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mTestHal:Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->authenticate(JI)I

    move-result p0

    return p0
.end method

.method public final authenticateTPA(JI)I
    .registers 6

    .line 316
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "authenticateTPA: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCurrentUserID:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "fingerprint.hidl.SehTestHal"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCurrentUserID:I

    if-eq p1, p3, :cond_26

    const/4 p0, -0x1

    return p0

    .line 318
    :cond_26
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mH:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;I)V

    const-wide/16 v0, 0x258

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p0, 0x0

    return p0
.end method

.method public cancel()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 275
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mIsTpaMode:Z

    if-eqz v0, :cond_16

    .line 276
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mIsCancellation:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 277
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mH:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    return p0

    .line 288
    :cond_16
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mTestHal:Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->cancel()I

    move-result p0

    return p0
.end method

.method public deliverAcquiredEvent(II)V
    .registers 6

    .line 122
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mIsTpaMode:Z

    if-eqz v0, :cond_10

    .line 124
    :try_start_4
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    iget-wide v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mDeviceId:J

    invoke-interface {v0, v1, v2, p1, p2}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;->onAcquired(JII)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception p0

    .line 126
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_10
    :goto_10
    return-void
.end method

.method public deliverAuthenticationResult(I)V
    .registers 8

    .line 152
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mIsTpaMode:Z

    if-eqz v0, :cond_45

    .line 154
    :try_start_4
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mEnrollmentIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 p1, 0x8

    const/16 v0, 0x3ec

    .line 155
    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->deliverErrorEvent(II)V

    return-void

    :cond_14
    if-eqz p1, :cond_26

    .line 160
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mEnrollmentIds:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_26
    move v3, p1

    .line 162
    new-instance v5, Ljava/util/ArrayList;

    const/16 p1, 0x45

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v5, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 163
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    iget-wide v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mDeviceId:J

    iget v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCurrentUserID:I

    invoke-interface/range {v0 .. v5}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;->onAuthenticated(JIILjava/util/ArrayList;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_40} :catch_41

    goto :goto_45

    :catch_41
    move-exception p0

    .line 165
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_45
    :goto_45
    return-void
.end method

.method public deliverEnrollResult(I)V
    .registers 9

    .line 142
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mIsTpaMode:Z

    if-eqz v0, :cond_15

    .line 144
    :try_start_4
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    iget-wide v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mDeviceId:J

    iget v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCurrentEnrollmentId:I

    iget v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCurrentUserID:I

    move v6, p1

    invoke-interface/range {v1 .. v6}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;->onEnrollResult(JIII)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_11

    goto :goto_15

    :catch_11
    move-exception p0

    .line 146
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_15
    :goto_15
    return-void
.end method

.method public deliverErrorEvent(II)V
    .registers 6

    .line 132
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mIsTpaMode:Z

    if-eqz v0, :cond_10

    .line 134
    :try_start_4
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    iget-wide v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mDeviceId:J

    invoke-interface {v0, v1, v2, p1, p2}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;->onError(JII)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception p0

    .line 136
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_10
    :goto_10
    return-void
.end method

.method public deliverTspEvent(I)V
    .registers 5

    .line 171
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.fingerprint.action.FINGER_ON_DISPLAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "info"

    const/4 v2, 0x2

    if-ne p1, v2, :cond_13

    const/16 p1, 0xf

    .line 173
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1b

    :cond_13
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1b

    const/16 p1, 0x10

    .line 175
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    :cond_1b
    :goto_1b
    :try_start_1b
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_20} :catch_21

    goto :goto_25

    :catch_21
    move-exception p0

    .line 180
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_25
    return-void
.end method

.method public destroy()V
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mThread:Lcom/android/server/ServiceThread;

    if-eqz v0, :cond_7

    .line 116
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_7
    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mThread:Lcom/android/server/ServiceThread;

    return-void
.end method

.method public enroll([BII)I
    .registers 5

    .line 217
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mIsTpaMode:Z

    if-eqz v0, :cond_9

    .line 218
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->enrollTPA([BII)I

    move-result p0

    return p0

    .line 220
    :cond_9
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mTestHal:Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->enroll([BII)I

    move-result p0

    return p0
.end method

.method public final enrollTPA([BII)I
    .registers 6

    .line 224
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "enrollTPA: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCurrentUserID:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "fingerprint.hidl.SehTestHal"

    invoke-static {p3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCurrentUserID:I

    if-eq p1, p2, :cond_26

    const/4 p0, -0x1

    return p0

    .line 226
    :cond_26
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mH:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;)V

    const-wide/16 v0, 0x258

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p0, 0x0

    return p0
.end method

.method public enumerate()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 293
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mTestHal:Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->enumerate()I

    move-result p0

    return p0
.end method

.method public getAuthenticatorId()J
    .registers 3

    .line 267
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mIsTpaMode:Z

    if-eqz v0, :cond_18

    .line 268
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mEnrollmentIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    const-wide/16 v0, 0x0

    goto :goto_17

    :cond_f
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mAuthenticatorID:Landroid/util/SparseLongArray;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCurrentUserID:I

    invoke-virtual {v0, p0}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v0

    :goto_17
    return-wide v0

    .line 270
    :cond_18
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mTestHal:Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->getAuthenticatorId()J

    move-result-wide v0

    return-wide v0
.end method

.method public final initActions()V
    .registers 1

    .line 361
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->initRequestTable()V

    .line 362
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mTestHalHelper:Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    if-eqz p0, :cond_a

    .line 363
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->initActions()V

    :cond_a
    return-void
.end method

.method public final initRequestTable()V
    .registers 3

    .line 368
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mRequestActionTable:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 369
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mRequestActionTable:Landroid/util/SparseIntArray;

    const/4 v0, 0x6

    const v1, 0x186c8

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public postEnroll()I
    .registers 3

    .line 258
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mIsTpaMode:Z

    if-eqz v0, :cond_a

    const-wide/16 v0, 0x0

    .line 259
    iput-wide v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mSessionId:J

    const/4 p0, 0x0

    return p0

    .line 262
    :cond_a
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mTestHal:Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->postEnroll()I

    move-result p0

    return p0
.end method

.method public postUpdateAction()V
    .registers 3

    .line 357
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mH:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public preEnroll()J
    .registers 3

    .line 208
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mIsTpaMode:Z

    if-eqz v0, :cond_d

    .line 209
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mSessionId:J

    return-wide v0

    .line 212
    :cond_d
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mTestHal:Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->preEnroll()J

    move-result-wide v0

    return-wide v0
.end method

.method public remove(II)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 298
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mTestHal:Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->remove(II)I

    move-result p0

    return p0
.end method

.method public sehRequest(IILjava/util/ArrayList;Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$sehRequestCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;",
            "Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$sehRequestCallback;",
            ")V"
        }
    .end annotation

    .line 187
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sehRequest: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "fingerprint.hidl.SehTestHal"

    invoke-static {v0, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mRequestActionTable:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mSehRequestOutput:Ljava/util/ArrayList;

    invoke-interface {p4, p3, v0}, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$sehRequestCallback;->onValues(ILjava/util/ArrayList;)V

    .line 190
    iget-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mSehRequestOutput:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    const/16 p3, 0x16

    if-ne p1, p3, :cond_3e

    const/4 p1, 0x2

    if-ne p2, p1, :cond_3e

    .line 193
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz p0, :cond_3e

    .line 194
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_3e
    return-void
.end method

.method public setActiveGroup(ILjava/lang/String;)I
    .registers 3

    .line 303
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCurrentUserID:I

    .line 304
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mTestHal:Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->setActiveGroup(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setNotify(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;)J
    .registers 2

    .line 202
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    .line 203
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mTestHal:Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->setNotify(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;)J

    move-result-wide p0

    return-wide p0
.end method
