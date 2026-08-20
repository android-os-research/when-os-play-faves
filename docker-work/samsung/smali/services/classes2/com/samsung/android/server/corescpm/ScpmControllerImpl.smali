.class public Lcom/samsung/android/server/corescpm/ScpmControllerImpl;
.super Landroid/content/BroadcastReceiver;
.source "ScpmControllerImpl.java"

# interfaces
.implements Lcom/samsung/android/server/corescpm/ScpmController;


# static fields
.field public static final CLEAR_DATA_DELAY:J = 0x2bf20L

.field public static final LAZY_BOOT_COMPLETED_TIMEOUT_DELAY:J

.field public static final RETRY_NUMBER:I = 0x3

.field public static final RETRY_TIMES:J

.field public static final sControllers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;",
            "Lcom/samsung/android/server/corescpm/ScpmController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mConsumerInfo:Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;

.field public mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public mLogger:Lcom/samsung/android/server/util/CoreLogger;

.field public final mOnLazyBootCompletedTimeout:Ljava/lang/Runnable;

.field public mRetryNumber:I

.field public mStarted:Z

.field public mToken:Ljava/lang/String;

.field public final mTryRegister:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$HK1PX0TUGksSTLqcl2N-vvVeqnY(Lcom/samsung/android/server/corescpm/ScpmControllerImpl;Ljava/util/Set;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->lambda$registerScpm$0(Ljava/util/Set;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nnPS0Ny0hPd_WjI1LG2I_aJ-4cQ(Lcom/samsung/android/server/corescpm/ScpmControllerImpl;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->onLazyBootCompletedTimeout()V

    return-void
.end method

.method public static synthetic $r8$lambda$ocon5MAoVbLjrtG32JDZXxCFctc(Lcom/samsung/android/server/corescpm/ScpmControllerImpl;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->tryRegister()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 6

    .line 65
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->sControllers:Ljava/util/Map;

    .line 83
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    const/16 v1, 0x14

    if-eqz v0, :cond_f

    move v2, v1

    goto :goto_11

    :cond_f
    const/16 v2, 0x3c

    :goto_11
    int-to-long v2, v2

    const-wide/32 v4, 0xea60

    mul-long/2addr v2, v4

    sput-wide v2, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->LAZY_BOOT_COMPLETED_TIMEOUT_DELAY:J

    if-eqz v0, :cond_1c

    const/16 v1, 0xa

    :cond_1c
    int-to-long v0, v1

    mul-long/2addr v0, v4

    .line 88
    sput-wide v0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->RETRY_TIMES:J

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;)V
    .registers 4

    .line 106
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 90
    new-instance v0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/corescpm/ScpmControllerImpl;)V

    iput-object v0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mOnLazyBootCompletedTimeout:Ljava/lang/Runnable;

    .line 91
    new-instance v0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/corescpm/ScpmControllerImpl;)V

    iput-object v0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mTryRegister:Ljava/lang/Runnable;

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mLock:Ljava/lang/Object;

    const/4 v0, 0x3

    .line 104
    iput v0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mRetryNumber:I

    .line 107
    iget-object v0, p1, Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;->mPackageName:Ljava/lang/String;

    const-string v1, "PackageName"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 108
    iget-object v0, p1, Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;->mReceiverPackageName:Ljava/lang/String;

    const-string v1, "ReceiverPackageName"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 109
    iget-object v0, p1, Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;->mAppId:Ljava/lang/String;

    const-string v1, "AppId"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    iget-object v0, p1, Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;->mVersion:Ljava/lang/String;

    const-string v1, "Version"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 111
    iput-object p1, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mConsumerInfo:Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;

    return-void
.end method

.method public static declared-synchronized getScpmController(Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;)Lcom/samsung/android/server/corescpm/ScpmController;
    .registers 4

    const-class v0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;

    monitor-enter v0

    .line 74
    :try_start_3
    sget-object v1, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->sControllers:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/corescpm/ScpmController;

    if-nez v2, :cond_15

    .line 76
    new-instance v2, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;-><init>(Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;)V

    .line 77
    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    .line 79
    :cond_15
    monitor-exit v0

    return-object v2

    :catchall_17
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private synthetic lambda$registerScpm$0(Ljava/util/Set;)V
    .registers 6

    .line 135
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

    .line 136
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.scpm.policy.CLEAR_DATA"

    .line 137
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.samsung.android.scpm.policy.UPDATE."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_13

    .line 141
    :cond_34
    iget-object p1, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    iget-object p1, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mOnLazyBootCompletedTimeout:Ljava/lang/Runnable;

    sget-wide v0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->LAZY_BOOT_COMPLETED_TIMEOUT_DELAY:J

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public final callScpmApi(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5

    .line 285
    iget-object v0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mConsumerInfo:Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;

    iget-object p0, p0, Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p0, p3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 5

    .line 291
    iget-object v0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 292
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SCPMv2 Token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mToken:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 293
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public getFileDescriptor(Ljava/lang/String;)Ljava/io/FileDescriptor;
    .registers 5

    .line 148
    iget-object v0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_3
    iget-boolean v1, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mStarted:Z

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 150
    monitor-exit v0

    return-object v2

    .line 152
    :cond_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1a

    .line 154
    :try_start_b
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->getFileDescriptorInternal(Ljava/lang/String;)Ljava/io/FileDescriptor;

    move-result-object p0
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_10

    return-object p0

    :catchall_10
    move-exception p1

    .line 156
    iget-object p0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    const/4 v0, 0x6

    const-string v1, "Failed to getFileDescriptor from SCPM."

    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    :catchall_1a
    move-exception p0

    .line 152
    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public final getFileDescriptorInternal(Ljava/lang/String;)Ljava/io/FileDescriptor;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 162
    invoke-virtual {p0}, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->register()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-nez v0, :cond_10

    .line 163
    iget-object p0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    const-string p1, "getFileDescriptor: token is null"

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;)V

    return-object v1

    .line 166
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.samsung.android.scpm.policy/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mToken:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 167
    iget-object v0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "r"

    invoke-virtual {v0, p1, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-nez v0, :cond_89

    .line 169
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 170
    iget-object v3, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mToken:Ljava/lang/String;

    const-string/jumbo v4, "token"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "getLastError"

    .line 171
    invoke-virtual {p0, p1, v3, v0}, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->callScpmApi(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_5b

    .line 173
    iget-object p0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    const-string p1, "getFileDescriptor: bundle is null"

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;)V

    return-object v1

    .line 176
    :cond_5b
    iget-object p0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFileDescriptor: code="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, -0x1

    const-string/jumbo v4, "rcode"

    .line 177
    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", msg="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "rmsg"

    .line 178
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 176
    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;)V

    return-object v1

    .line 181
    :cond_89
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public final onLazyBootCompleted()V
    .registers 4

    .line 231
    iget-object v0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 232
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mToken:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 233
    monitor-exit v0

    return-void

    .line 235
    :cond_9
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_14

    .line 236
    iget-object v0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mTryRegister:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_14
    move-exception p0

    .line 235
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public final onLazyBootCompletedTimeout()V
    .registers 4

    .line 226
    iget-object v0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    const/4 v1, 0x5

    const-string/jumbo v2, "onLazyBootCompletedTimeout"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->onLazyBootCompleted()V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    if-nez p2, :cond_c

    .line 187
    iget-object p0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    const/4 p1, 0x6

    const-string/jumbo p2, "onReceive, intent is null"

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;)V

    return-void

    .line 190
    :cond_c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 191
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x5

    if-eqz p2, :cond_20

    .line 192
    iget-object p0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    const-string/jumbo p1, "onReceive, action is empty"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;)V

    return-void

    :cond_20
    const-string p2, "."

    .line 196
    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    add-int/lit8 v1, p2, 0x1

    .line 198
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ltz p2, :cond_4e

    if-ne v1, v2, :cond_32

    goto :goto_4e

    .line 202
    :cond_32
    iget-object p2, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceive, action="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v3, v0}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;)V

    goto :goto_65

    .line 200
    :cond_4e
    :goto_4e
    iget-object p2, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive, action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;)V

    :goto_65
    const-string p2, "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

    .line 205
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_78

    .line 206
    iget-object p1, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mOnLazyBootCompletedTimeout:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 207
    invoke-virtual {p0}, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->onLazyBootCompleted()V

    return-void

    :cond_78
    const-string p2, "com.samsung.android.scpm.policy.CLEAR_DATA"

    .line 211
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9e

    .line 213
    iget-object p2, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter p2

    const/4 p1, 0x0

    .line 214
    :try_start_84
    iput-object p1, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mToken:Ljava/lang/String;

    .line 215
    monitor-exit p2
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_9b

    .line 216
    iput v3, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mRetryNumber:I

    .line 217
    iget-object p1, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mTryRegister:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 218
    iget-object p1, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mTryRegister:Ljava/lang/Runnable;

    const-wide/32 v0, 0x2bf20

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_9b
    move-exception p0

    .line 215
    :try_start_9c
    monitor-exit p2
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_9b

    throw p0

    .line 222
    :cond_9e
    iget-object p0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mCallback:Ljava/util/function/Consumer;

    const-string p2, "com.samsung.android.scpm.policy.UPDATE."

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final register()Z
    .registers 10

    .line 258
    iget-object v0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 259
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mToken:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    .line 260
    monitor-exit v0

    return v2

    .line 262
    :cond_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9f

    .line 263
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "packageName"

    .line 264
    iget-object v3, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mConsumerInfo:Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;

    iget-object v3, v3, Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appId"

    .line 265
    iget-object v3, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mConsumerInfo:Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;

    iget-object v3, v3, Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "version"

    .line 266
    iget-object v3, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mConsumerInfo:Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;

    iget-object v3, v3, Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "receiverPackageName"

    .line 267
    iget-object v3, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mConsumerInfo:Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;

    iget-object v3, v3, Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;->mReceiverPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    sget-object v1, Lcom/samsung/android/server/corescpm/ScpmApiContract;->URI:Landroid/net/Uri;

    const-string/jumbo v3, "register"

    invoke-virtual {p0, v1, v3, v0}, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->callScpmApi(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_4c

    .line 270
    iget-object p0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    const/4 v0, 0x6

    const-string v2, "Fail to register, bundle is null"

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;)V

    return v1

    :cond_4c
    const-string/jumbo v3, "token"

    .line 273
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 274
    iget-object v4, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    const/4 v5, 0x4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Register, result="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "result"

    const/4 v8, 0x2

    .line 275
    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", code="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "rcode"

    const/4 v8, -0x1

    .line 276
    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", msg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "rmsg"

    .line 277
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 274
    invoke-virtual {v4, v5, v0}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;)V

    .line 278
    iget-object v4, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 279
    :try_start_94
    iput-object v3, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mToken:Ljava/lang/String;

    if-eqz v3, :cond_99

    goto :goto_9a

    :cond_99
    move v2, v1

    .line 280
    :goto_9a
    monitor-exit v4

    return v2

    :catchall_9c
    move-exception p0

    .line 281
    monitor-exit v4
    :try_end_9e
    .catchall {:try_start_94 .. :try_end_9e} :catchall_9c

    throw p0

    :catchall_9f
    move-exception p0

    .line 262
    :try_start_a0
    monitor-exit v0
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_9f

    throw p0
.end method

.method public registerScpm(Landroid/content/Context;Landroid/os/Handler;Ljava/util/Set;Ljava/util/function/Consumer;Lcom/samsung/android/server/util/CoreLogger;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/server/util/CoreLogger;",
            ")V"
        }
    .end annotation

    const-string v0, "Context"

    .line 118
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Handler"

    .line 119
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Policies"

    .line 120
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Callback"

    .line 121
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Logger"

    .line 122
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_1c
    iget-boolean v1, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mStarted:Z

    if-eqz v1, :cond_22

    .line 125
    monitor-exit v0

    return-void

    .line 127
    :cond_22
    iput-object p1, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mContext:Landroid/content/Context;

    .line 128
    iput-object p2, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mHandler:Landroid/os/Handler;

    .line 129
    iput-object p4, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mCallback:Ljava/util/function/Consumer;

    .line 130
    iput-object p5, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    const/4 p1, 0x1

    .line 131
    iput-boolean p1, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mStarted:Z

    .line 132
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_1c .. :try_end_2e} :catchall_37

    .line 134
    new-instance p1, Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p3}, Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/corescpm/ScpmControllerImpl;Ljava/util/Set;)V

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_37
    move-exception p0

    .line 132
    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw p0
.end method

.method public final tryRegister()V
    .registers 5

    .line 241
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->register()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 242
    iget-object v0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mCallback:Ljava/util/function/Consumer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    return-void

    :catchall_d
    move-exception v0

    .line 246
    iget-object v1, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    const/4 v2, 0x5

    const-string v3, "Failed to tryRegister"

    invoke-virtual {v1, v2, v3, v0}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 249
    :cond_16
    iget v0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mRetryNumber:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mRetryNumber:I

    if-lez v0, :cond_2f

    .line 250
    iget-object v0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mTryRegister:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 251
    iget-object v0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mTryRegister:Ljava/lang/Runnable;

    sget-wide v1, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->RETRY_TIMES:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 254
    :cond_2f
    iget-object p0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    const/4 v0, 0x6

    const-string v1, "SCPM registration fails"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;)V

    return-void
.end method
