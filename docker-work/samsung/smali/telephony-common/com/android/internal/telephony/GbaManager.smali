.class public Lcom/android/internal/telephony/GbaManager;
.super Ljava/lang/Object;
.source "GbaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/GbaManager$GbaServiceConnection;,
        Lcom/android/internal/telephony/GbaManager$GbaDeathRecipient;,
        Lcom/android/internal/telephony/GbaManager$GbaManagerHandler;
    }
.end annotation


# static fields
.field private static final blacklist DBG:Z

.field public static final blacklist MAX_RETRY:I = 0x5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final blacklist REQUEST_TIMEOUT_MS:I = 0x1388
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final blacklist RETRY_TIME_MS:I = 0xbb8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final blacklist sGbaManagers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/GbaManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/IBootstrapAuthenticationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mDeathRecipient:Lcom/android/internal/telephony/GbaManager$GbaDeathRecipient;

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mIGbaService:Landroid/telephony/gba/IGbaService;

.field private final blacklist mLogTag:Ljava/lang/String;

.field private final blacklist mRcsStats:Lcom/android/internal/telephony/metrics/RcsStats;

.field private blacklist mReleaseTime:I

.field private final blacklist mRequestQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Landroid/telephony/gba/GbaAuthRequest;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRetryTimes:I

.field private final blacklist mServiceCallback:Landroid/telephony/IBootstrapAuthenticationCallback;

.field private blacklist mServiceConnection:Lcom/android/internal/telephony/GbaManager$GbaServiceConnection;

.field private blacklist mServicePackageName:Ljava/lang/String;

.field private final blacklist mSubId:I

.field private blacklist mTargetBindingPackageName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallbacks(Lcom/android/internal/telephony/GbaManager;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/GbaManager;->mCallbacks:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeathRecipient(Lcom/android/internal/telephony/GbaManager;)Lcom/android/internal/telephony/GbaManager$GbaDeathRecipient;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/GbaManager;->mDeathRecipient:Lcom/android/internal/telephony/GbaManager$GbaDeathRecipient;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/android/internal/telephony/GbaManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/GbaManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRcsStats(Lcom/android/internal/telephony/GbaManager;)Lcom/android/internal/telephony/metrics/RcsStats;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/GbaManager;->mRcsStats:Lcom/android/internal/telephony/metrics/RcsStats;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRequestQueue(Lcom/android/internal/telephony/GbaManager;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/GbaManager;->mRequestQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRetryTimes(Lcom/android/internal/telephony/GbaManager;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/GbaManager;->mRetryTimes:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubId(Lcom/android/internal/telephony/GbaManager;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/GbaManager;->mSubId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDeathRecipient(Lcom/android/internal/telephony/GbaManager;Lcom/android/internal/telephony/GbaManager$GbaDeathRecipient;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/GbaManager;->mDeathRecipient:Lcom/android/internal/telephony/GbaManager$GbaDeathRecipient;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIGbaService(Lcom/android/internal/telephony/GbaManager;Landroid/telephony/gba/IGbaService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/GbaManager;->mIGbaService:Landroid/telephony/gba/IGbaService;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRetryTimes(Lcom/android/internal/telephony/GbaManager;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/telephony/GbaManager;->mRetryTimes:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTargetBindingPackageName(Lcom/android/internal/telephony/GbaManager;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/GbaManager;->mTargetBindingPackageName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearCallbacksAndNotifyFailure(Lcom/android/internal/telephony/GbaManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/GbaManager;->clearCallbacksAndNotifyFailure()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misServiceConnetable(Lcom/android/internal/telephony/GbaManager;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/GbaManager;->isServiceConnetable()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlogd(Lcom/android/internal/telephony/GbaManager;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GbaManager;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mloge(Lcom/android/internal/telephony/GbaManager;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GbaManager;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogv(Lcom/android/internal/telephony/GbaManager;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GbaManager;->logv(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mprocessRequests(Lcom/android/internal/telephony/GbaManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/GbaManager;->processRequests()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrebindService(Lcom/android/internal/telephony/GbaManager;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GbaManager;->rebindService(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreleaseServiceAsNeeded(Lcom/android/internal/telephony/GbaManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GbaManager;->releaseServiceAsNeeded(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mretryBind(Lcom/android/internal/telephony/GbaManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/GbaManager;->retryBind()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munbindService(Lcom/android/internal/telephony/GbaManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/GbaManager;->unbindService()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 50
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/internal/telephony/GbaManager;->DBG:Z

    .line 87
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/GbaManager;->sGbaManagers:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;ILjava/lang/String;ILcom/android/internal/telephony/metrics/RcsStats;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lcom/android/internal/telephony/GbaManager;->mRetryTimes:I

    .line 82
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mRequestQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 85
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mCallbacks:Landroid/util/SparseArray;

    .line 262
    new-instance v0, Lcom/android/internal/telephony/GbaManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/GbaManager$1;-><init>(Lcom/android/internal/telephony/GbaManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mServiceCallback:Landroid/telephony/IBootstrapAuthenticationCallback;

    .line 198
    iput-object p1, p0, Lcom/android/internal/telephony/GbaManager;->mContext:Landroid/content/Context;

    .line 199
    iput p2, p0, Lcom/android/internal/telephony/GbaManager;->mSubId:I

    .line 200
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "GbaManager["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/GbaManager;->mLogTag:Ljava/lang/String;

    .line 202
    iput-object p3, p0, Lcom/android/internal/telephony/GbaManager;->mServicePackageName:Ljava/lang/String;

    .line 203
    iput p4, p0, Lcom/android/internal/telephony/GbaManager;->mReleaseTime:I

    .line 205
    new-instance p2, Landroid/os/HandlerThread;

    invoke-direct {p2, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 207
    new-instance p1, Lcom/android/internal/telephony/GbaManager$GbaManagerHandler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/internal/telephony/GbaManager$GbaManagerHandler;-><init>(Lcom/android/internal/telephony/GbaManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/internal/telephony/GbaManager;->mHandler:Landroid/os/Handler;

    .line 209
    iget p2, p0, Lcom/android/internal/telephony/GbaManager;->mReleaseTime:I

    if-gez p2, :cond_56

    const/4 p2, 0x1

    .line 210
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 212
    :cond_56
    iput-object p5, p0, Lcom/android/internal/telephony/GbaManager;->mRcsStats:Lcom/android/internal/telephony/metrics/RcsStats;

    return-void
.end method

.method private blacklist bindService()V
    .registers 6

    .line 407
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_70

    iget v0, p0, Lcom/android/internal/telephony/GbaManager;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_70

    .line 412
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/telephony/GbaManager;->getServicePackage()Ljava/lang/String;

    move-result-object v0

    .line 413
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v0, "Can\'t find the binding package"

    .line 414
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GbaManager;->loge(Ljava/lang/String;)V

    return-void

    .line 418
    :cond_1d
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.telephony.gba.GbaService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 419
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    :try_start_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to bind "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GbaManager;->logv(Ljava/lang/String;)V

    .line 423
    new-instance v2, Lcom/android/internal/telephony/GbaManager$GbaServiceConnection;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/GbaManager$GbaServiceConnection;-><init>(Lcom/android/internal/telephony/GbaManager;Lcom/android/internal/telephony/GbaManager$GbaServiceConnection-IA;)V

    iput-object v2, p0, Lcom/android/internal/telephony/GbaManager;->mServiceConnection:Lcom/android/internal/telephony/GbaManager$GbaServiceConnection;

    .line 424
    iget-object v3, p0, Lcom/android/internal/telephony/GbaManager;->mContext:Landroid/content/Context;

    const v4, 0x4000001

    invoke-virtual {v3, v1, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_57

    const-string v0, "Cannot bind to the service."

    .line 426
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GbaManager;->logd(Ljava/lang/String;)V

    .line 427
    invoke-direct {p0}, Lcom/android/internal/telephony/GbaManager;->retryBind()V

    return-void

    .line 430
    :cond_57
    iput-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mTargetBindingPackageName:Ljava/lang/String;
    :try_end_59
    .catch Ljava/lang/SecurityException; {:try_start_27 .. :try_end_59} :catch_5a

    goto :goto_6f

    :catch_5a
    move-exception v0

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindService failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GbaManager;->loge(Ljava/lang/String;)V

    :goto_6f
    return-void

    :cond_70
    :goto_70
    const-string v0, "Can\'t bind service with invalid sub Id."

    .line 408
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GbaManager;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist clearCallbacksAndNotifyFailure()V
    .registers 7

    .line 361
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mCallbacks:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 362
    :goto_5
    :try_start_5
    iget-object v3, p0, Lcom/android/internal/telephony/GbaManager;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_37

    .line 363
    iget-object v3, p0, Lcom/android/internal/telephony/GbaManager;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/IBootstrapAuthenticationCallback;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_3e

    .line 365
    :try_start_15
    iget-object v4, p0, Lcom/android/internal/telephony/GbaManager;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-interface {v3, v4, v1}, Landroid/telephony/IBootstrapAuthenticationCallback;->onAuthenticationFailure(II)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1e} :catch_1f
    .catchall {:try_start_15 .. :try_end_1e} :catchall_3e

    goto :goto_34

    :catch_1f
    move-exception v3

    .line 368
    :try_start_20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/GbaManager;->logd(Ljava/lang/String;)V

    :goto_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 371
    :cond_37
    iget-object p0, p0, Lcom/android/internal/telephony/GbaManager;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 372
    monitor-exit v0

    return-void

    :catchall_3e
    move-exception p0

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_20 .. :try_end_40} :catchall_3e

    throw p0
.end method

.method public static blacklist getInstance(I)Lcom/android/internal/telephony/GbaManager;
    .registers 2

    .line 233
    sget-object v0, Lcom/android/internal/telephony/GbaManager;->sGbaManagers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 234
    :try_start_3
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/GbaManager;

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 235
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method private blacklist isServiceConnetable()Z
    .registers 2

    .line 386
    monitor-enter p0

    .line 387
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mTargetBindingPackageName:Ljava/lang/String;

    if-nez v0, :cond_14

    iget v0, p0, Lcom/android/internal/telephony/GbaManager;->mReleaseTime:I

    if-gez v0, :cond_12

    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mServicePackageName:Ljava/lang/String;

    .line 388
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    monitor-exit p0

    return v0

    :catchall_17
    move-exception v0

    .line 389
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v0
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .registers 2

    .line 528
    iget-object p0, p0, Lcom/android/internal/telephony/GbaManager;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 532
    iget-object p0, p0, Lcom/android/internal/telephony/GbaManager;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logv(Ljava/lang/String;)V
    .registers 3

    .line 522
    sget-boolean v0, Lcom/android/internal/telephony/GbaManager;->DBG:Z

    if-eqz v0, :cond_9

    .line 523
    iget-object p0, p0, Lcom/android/internal/telephony/GbaManager;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public static blacklist make(Landroid/content/Context;ILjava/lang/String;I)Lcom/android/internal/telephony/GbaManager;
    .registers 11

    .line 220
    new-instance v6, Lcom/android/internal/telephony/GbaManager;

    .line 221
    invoke-static {}, Lcom/android/internal/telephony/metrics/RcsStats;->getInstance()Lcom/android/internal/telephony/metrics/RcsStats;

    move-result-object v5

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/GbaManager;-><init>(Landroid/content/Context;ILjava/lang/String;ILcom/android/internal/telephony/metrics/RcsStats;)V

    .line 222
    sget-object p0, Lcom/android/internal/telephony/GbaManager;->sGbaManagers:Landroid/util/SparseArray;

    monitor-enter p0

    .line 223
    :try_start_11
    invoke-virtual {p0, p1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 224
    monitor-exit p0

    return-object v6

    :catchall_16
    move-exception p1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_16

    throw p1
.end method

.method private blacklist processRequests()V
    .registers 6

    .line 315
    invoke-virtual {p0}, Lcom/android/internal/telephony/GbaManager;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 317
    :goto_6
    :try_start_6
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mRequestQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8d

    .line 318
    new-instance v0, Landroid/telephony/gba/GbaAuthRequest;

    iget-object v1, p0, Lcom/android/internal/telephony/GbaManager;->mRequestQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/gba/GbaAuthRequest;

    invoke-direct {v0, v1}, Landroid/telephony/gba/GbaAuthRequest;-><init>(Landroid/telephony/gba/GbaAuthRequest;)V

    .line 319
    iget-object v1, p0, Lcom/android/internal/telephony/GbaManager;->mCallbacks:Landroid/util/SparseArray;

    monitor-enter v1
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1e} :catch_3f

    .line 320
    :try_start_1e
    iget-object v2, p0, Lcom/android/internal/telephony/GbaManager;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/telephony/gba/GbaAuthRequest;->getToken()I

    move-result v3

    invoke-virtual {v0}, Landroid/telephony/gba/GbaAuthRequest;->getCallback()Landroid/telephony/IBootstrapAuthenticationCallback;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 321
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_1e .. :try_end_2c} :catchall_3c

    .line 322
    :try_start_2c
    iget-object v1, p0, Lcom/android/internal/telephony/GbaManager;->mServiceCallback:Landroid/telephony/IBootstrapAuthenticationCallback;

    invoke-virtual {v0, v1}, Landroid/telephony/gba/GbaAuthRequest;->setCallback(Landroid/telephony/IBootstrapAuthenticationCallback;)V

    .line 323
    iget-object v1, p0, Lcom/android/internal/telephony/GbaManager;->mIGbaService:Landroid/telephony/gba/IGbaService;

    invoke-interface {v1, v0}, Landroid/telephony/gba/IGbaService;->authenticationRequest(Landroid/telephony/gba/GbaAuthRequest;)V

    .line 324
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mRequestQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_3b} :catch_3f

    goto :goto_6

    :catchall_3c
    move-exception v0

    .line 321
    :try_start_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    :try_start_3e
    throw v0
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_3f} :catch_3f

    :catch_3f
    move-exception v0

    .line 328
    iget-object v1, p0, Lcom/android/internal/telephony/GbaManager;->mDeathRecipient:Lcom/android/internal/telephony/GbaManager$GbaDeathRecipient;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GbaManager$GbaDeathRecipient;->binderDied()V

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GbaManager;->logd(Ljava/lang/String;)V

    goto :goto_8d

    .line 332
    :cond_5a
    :goto_5a
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mRequestQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8d

    .line 333
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mRequestQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/gba/GbaAuthRequest;

    .line 335
    :try_start_6a
    invoke-virtual {v0}, Landroid/telephony/gba/GbaAuthRequest;->getCallback()Landroid/telephony/IBootstrapAuthenticationCallback;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/gba/GbaAuthRequest;->getToken()I

    move-result v0

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/telephony/IBootstrapAuthenticationCallback;->onAuthenticationFailure(II)V
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_76} :catch_77

    goto :goto_5a

    :catch_77
    move-exception v0

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GbaManager;->logd(Ljava/lang/String;)V

    goto :goto_5a

    :cond_8d
    :goto_8d
    const/16 v0, 0x1388

    .line 343
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GbaManager;->releaseServiceAsNeeded(I)V

    return-void
.end method

.method private blacklist rebindService(Z)V
    .registers 3

    if-nez p1, :cond_26

    .line 450
    invoke-virtual {p0}, Lcom/android/internal/telephony/GbaManager;->isServiceConnected()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 451
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Service "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GbaManager;->getServicePackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " already bound or being bound."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GbaManager;->logv(Ljava/lang/String;)V

    return-void

    .line 455
    :cond_26
    invoke-direct {p0}, Lcom/android/internal/telephony/GbaManager;->unbindService()V

    .line 456
    invoke-direct {p0}, Lcom/android/internal/telephony/GbaManager;->bindService()V

    return-void
.end method

.method private blacklist releaseServiceAsNeeded(I)V
    .registers 6

    .line 347
    invoke-virtual {p0}, Lcom/android/internal/telephony/GbaManager;->getReleaseTime()I

    move-result v0

    if-gez v0, :cond_7

    return-void

    :cond_7
    if-le v0, p1, :cond_a

    move p1, v0

    .line 354
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 355
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 357
    :cond_18
    iget-object p0, p0, Lcom/android/internal/telephony/GbaManager;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private blacklist retryBind()V
    .registers 5

    .line 438
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "wait for pending retry."

    .line 439
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GbaManager;->logv(Ljava/lang/String;)V

    return-void

    .line 443
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "starting retry:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/GbaManager;->mRetryTimes:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GbaManager;->logv(Ljava/lang/String;)V

    .line 445
    iget-object p0, p0, Lcom/android/internal/telephony/GbaManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private blacklist unbindService()V
    .registers 3

    .line 393
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mDeathRecipient:Lcom/android/internal/telephony/GbaManager$GbaDeathRecipient;

    if-eqz v0, :cond_7

    .line 394
    invoke-virtual {v0}, Lcom/android/internal/telephony/GbaManager$GbaDeathRecipient;->unlinkToDeath()V

    .line 396
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mServiceConnection:Lcom/android/internal/telephony/GbaManager$GbaServiceConnection;

    if-eqz v0, :cond_17

    const-string v0, "unbind service."

    .line 397
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GbaManager;->logv(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/GbaManager;->mServiceConnection:Lcom/android/internal/telephony/GbaManager$GbaServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_17
    const/4 v0, 0x0

    .line 400
    iput-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mDeathRecipient:Lcom/android/internal/telephony/GbaManager$GbaDeathRecipient;

    .line 401
    iput-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mIGbaService:Landroid/telephony/gba/IGbaService;

    .line 402
    iput-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mServiceConnection:Lcom/android/internal/telephony/GbaManager$GbaServiceConnection;

    .line 403
    iput-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mTargetBindingPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist bootstrapAuthenticationRequest(Landroid/telephony/gba/GbaAuthRequest;)V
    .registers 4

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bootstrapAuthenticationRequest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GbaManager;->logv(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Lcom/android/internal/telephony/GbaManager;->getServicePackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_46

    const-string v0, "do not support!"

    .line 246
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GbaManager;->logd(Ljava/lang/String;)V

    .line 248
    :try_start_23
    invoke-virtual {p1}, Landroid/telephony/gba/GbaAuthRequest;->getCallback()Landroid/telephony/IBootstrapAuthenticationCallback;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/gba/GbaAuthRequest;->getToken()I

    move-result p1

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/telephony/IBootstrapAuthenticationCallback;->onAuthenticationFailure(II)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2f} :catch_30

    goto :goto_45

    :catch_30
    move-exception p1

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception to call service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GbaManager;->loge(Ljava/lang/String;)V

    :goto_45
    return-void

    .line 256
    :cond_46
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mRequestQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 257
    iget-object p1, p0, Lcom/android/internal/telephony/GbaManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_59

    .line 258
    iget-object p0, p0, Lcom/android/internal/telephony/GbaManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_59
    return-void
.end method

.method public blacklist destroy()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 513
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 514
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 515
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mRequestQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 516
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 517
    invoke-direct {p0}, Lcom/android/internal/telephony/GbaManager;->unbindService()V

    .line 518
    sget-object v0, Lcom/android/internal/telephony/GbaManager;->sGbaManagers:Landroid/util/SparseArray;

    iget p0, p0, Lcom/android/internal/telephony/GbaManager;->mSubId:I

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public blacklist getHandler()Landroid/os/Handler;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 507
    iget-object p0, p0, Lcom/android/internal/telephony/GbaManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public blacklist getReleaseTime()I
    .registers 2

    .line 500
    monitor-enter p0

    .line 501
    :try_start_1
    iget v0, p0, Lcom/android/internal/telephony/GbaManager;->mReleaseTime:I

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    .line 502
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public blacklist getServicePackage()Ljava/lang/String;
    .registers 2

    .line 477
    monitor-enter p0

    .line 478
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mServicePackageName:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    .line 479
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public blacklist isServiceConnected()Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 379
    monitor-enter p0

    .line 380
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mIGbaService:Landroid/telephony/gba/IGbaService;

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Landroid/telephony/gba/IGbaService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mServicePackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/GbaManager;->mTargetBindingPackageName:Ljava/lang/String;

    .line 381
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    monitor-exit p0

    return v0

    :catchall_1e
    move-exception v0

    .line 382
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public blacklist overrideReleaseTime(I)Z
    .registers 4

    .line 484
    monitor-enter p0

    .line 485
    :try_start_1
    iget v0, p0, Lcom/android/internal/telephony/GbaManager;->mReleaseTime:I

    if-eq v0, p1, :cond_36

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service release time is changed from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/GbaManager;->mReleaseTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GbaManager;->logv(Ljava/lang/String;)V

    .line 488
    iput p1, p0, Lcom/android/internal/telephony/GbaManager;->mReleaseTime:I

    .line 489
    iget-object p1, p0, Lcom/android/internal/telephony/GbaManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_33

    .line 490
    iget-object p1, p0, Lcom/android/internal/telephony/GbaManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_33
    const/4 p1, 0x1

    .line 492
    monitor-exit p0

    return p1

    .line 494
    :cond_36
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_39
    move-exception p1

    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_39

    throw p1
.end method

.method public blacklist overrideServicePackage(Ljava/lang/String;)Z
    .registers 4

    .line 461
    monitor-enter p0

    .line 462
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager;->mServicePackageName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service package name is changed from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/GbaManager;->mServicePackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GbaManager;->logv(Ljava/lang/String;)V

    .line 465
    iput-object p1, p0, Lcom/android/internal/telephony/GbaManager;->mServicePackageName:Ljava/lang/String;

    .line 466
    iget-object p1, p0, Lcom/android/internal/telephony/GbaManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_37

    .line 467
    iget-object p1, p0, Lcom/android/internal/telephony/GbaManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_37
    const/4 p1, 0x1

    .line 469
    monitor-exit p0

    return p1

    .line 471
    :cond_3a
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_3d
    move-exception p1

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_3d

    throw p1
.end method
