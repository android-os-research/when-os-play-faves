.class public final Lcom/android/server/devicepolicy/NetworkLoggingHandler;
.super Landroid/os/Handler;
.source "NetworkLoggingHandler.java"


# static fields
.field public static final BATCH_FINALIZATION_TIMEOUT_ALARM_INTERVAL_MS:J = 0x1b7740L

.field public static final BATCH_FINALIZATION_TIMEOUT_MS:J = 0x5265c0L

.field public static final FORCE_FETCH_THROTTLE_NS:J

.field public static final LOG_NETWORK_EVENT_MSG:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final MAX_BATCHES:I = 0x5

.field public static final MAX_EVENTS_PER_BATCH:I = 0x4b0

.field public static final NETWORK_EVENT_KEY:Ljava/lang/String; = "network_event"

.field public static final NETWORK_LOGGING_TIMEOUT_ALARM_TAG:Ljava/lang/String; = "NetworkLogging.batchTimeout"

.field public static final RETRIEVED_BATCH_DISCARD_DELAY_MS:J = 0x493e0L

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public final mBatchTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field public final mBatches:Landroid/util/LongSparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/util/ArrayList<",
            "Landroid/app/admin/NetworkEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field public mCurrentBatchToken:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public final mDpm:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public mId:J

.field public mLastFinalizationNanos:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mLastRetrievedBatchToken:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mNetworkEvents:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/admin/NetworkEvent;",
            ">;"
        }
    .end annotation
.end field

.field public mPaused:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mTargetUserId:I


# direct methods
.method public static synthetic $r8$lambda$mNgodSPil4nAx4z4bfEh8ShRuGk(Lcom/android/server/devicepolicy/NetworkLoggingHandler;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->lambda$retrieveFullLogBatch$0(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmNetworkEvents(Lcom/android/server/devicepolicy/NetworkLoggingHandler;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mfinalizeBatchAndBuildAdminMessageLocked(Lcom/android/server/devicepolicy/NetworkLoggingHandler;)Landroid/os/Bundle;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->finalizeBatchAndBuildAdminMessageLocked()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mnotifyDeviceOwnerOrProfileOwner(Lcom/android/server/devicepolicy/NetworkLoggingHandler;Landroid/os/Bundle;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->notifyDeviceOwnerOrProfileOwner(Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 45
    const-class v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    .line 67
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->FORCE_FETCH_THROTTLE_NS:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V
    .registers 10

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    .line 120
    invoke-direct/range {v0 .. v5}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;-><init>(Landroid/os/Looper;Lcom/android/server/devicepolicy/DevicePolicyManagerService;JI)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/android/server/devicepolicy/DevicePolicyManagerService;JI)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 126
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-wide/16 v0, -0x1

    .line 69
    iput-wide v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mLastFinalizationNanos:J

    .line 79
    new-instance p1, Lcom/android/server/devicepolicy/NetworkLoggingHandler$1;

    invoke-direct {p1, p0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler$1;-><init>(Lcom/android/server/devicepolicy/NetworkLoggingHandler;)V

    iput-object p1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatchTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 98
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    .line 105
    new-instance p1, Landroid/util/LongSparseArray;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    const/4 p1, 0x0

    .line 109
    iput-boolean p1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mPaused:Z

    .line 127
    iput-object p2, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mDpm:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 128
    iget-object p1, p2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mAlarmManager:Landroid/app/AlarmManager;

    .line 129
    iput-wide p3, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mId:J

    .line 130
    iput p5, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mTargetUserId:I

    return-void
.end method

.method private synthetic lambda$retrieveFullLogBatch$0(J)V
    .registers 7

    .line 300
    monitor-enter p0

    .line 301
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-lez v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    cmp-long v0, v2, p1

    if-gtz v0, :cond_1a

    .line 302
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->removeAt(I)V

    goto :goto_1

    .line 304
    :cond_1a
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1c

    throw p1
.end method


# virtual methods
.method public final buildAdminMessageLocked()Landroid/os/Bundle;
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 267
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 268
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 269
    iget-wide v2, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mCurrentBatchToken:J

    const-string p0, "android.app.extra.EXTRA_NETWORK_LOGS_TOKEN"

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p0, "android.app.extra.EXTRA_NETWORK_LOGS_COUNT"

    .line 270
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public declared-synchronized discardLogs()V
    .registers 3

    monitor-enter p0

    .line 220
    :try_start_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    .line 222
    sget-object v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    const-string v1, "Discarded all network logs"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 223
    monitor-exit p0

    return-void

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final finalizeBatchAndBuildAdminMessageLocked()Landroid/os/Bundle;
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 228
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mLastFinalizationNanos:J

    .line 230
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7e

    .line 232
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-wide/16 v2, 0x1

    if-eqz v1, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/NetworkEvent;

    .line 233
    iget-wide v4, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mId:J

    invoke-virtual {v1, v4, v5}, Landroid/app/admin/NetworkEvent;->setId(J)V

    .line 234
    iget-wide v4, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mId:J

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v1, v4, v6

    if-nez v1, :cond_4f

    .line 235
    sget-object v1, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reached maximum id value; wrapping around ."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mCurrentBatchToken:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x0

    .line 236
    iput-wide v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mId:J

    goto :goto_14

    :cond_4f
    add-long/2addr v4, v2

    .line 238
    iput-wide v4, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mId:J

    goto :goto_14

    .line 242
    :cond_53
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_62

    .line 244
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 246
    :cond_62
    iget-wide v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mCurrentBatchToken:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mCurrentBatchToken:J

    .line 247
    iget-object v2, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    iget-object v3, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1, v3}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    .line 249
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mPaused:Z

    if-nez v0, :cond_96

    .line 250
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->buildAdminMessageLocked()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_97

    .line 255
    :cond_7e
    sget-object v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Was about to finalize the batch, but there were no events to send to the DPC, the batchToken of last available batch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mCurrentBatchToken:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_96
    const/4 v0, 0x0

    .line 259
    :goto_97
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->scheduleBatchFinalization()V

    return-object v0
.end method

.method public forceBatchFinalization()J
    .registers 6

    .line 176
    monitor-enter p0

    .line 177
    :try_start_1
    iget-wide v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mLastFinalizationNanos:J

    sget-wide v2, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->FORCE_FETCH_THROTTLE_NS:J

    add-long/2addr v0, v2

    .line 178
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1c

    .line 180
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    monitor-exit p0

    return-wide v0

    .line 182
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->finalizeBatchAndBuildAdminMessageLocked()Landroid/os/Bundle;

    move-result-object v0

    .line 183
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_27

    if-eqz v0, :cond_26

    .line 185
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->notifyDeviceOwnerOrProfileOwner(Landroid/os/Bundle;)V

    :cond_26
    return-wide v2

    :catchall_27
    move-exception v0

    .line 183
    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 135
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    .line 153
    sget-object p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    const-string p1, "NetworkLoggingHandler received an unknown of message."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 137
    :cond_d
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "network_event"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/admin/NetworkEvent;

    if-eqz p1, :cond_3b

    const/4 v0, 0x0

    .line 140
    monitor-enter p0

    .line 141
    :try_start_1e
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object p1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v1, 0x4b0

    if-lt p1, v1, :cond_31

    .line 143
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->finalizeBatchAndBuildAdminMessageLocked()Landroid/os/Bundle;

    move-result-object v0

    .line 145
    :cond_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_1e .. :try_end_32} :catchall_38

    if-eqz v0, :cond_3b

    .line 147
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->notifyDeviceOwnerOrProfileOwner(Landroid/os/Bundle;)V

    goto :goto_3b

    :catchall_38
    move-exception p1

    .line 145
    :try_start_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw p1

    :cond_3b
    :goto_3b
    return-void
.end method

.method public final notifyDeviceOwnerOrProfileOwner(Landroid/os/Bundle;)V
    .registers 7

    .line 277
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 278
    sget-object p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    const-string p1, "Shouldn\'t be called with NetworkLoggingHandler lock held"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 281
    :cond_e
    sget-object v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending network logging batch broadcast to device owner or profile owner, batchToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, -0x1

    const-string v4, "android.app.extra.EXTRA_NETWORK_LOGS_TOKEN"

    .line 283
    invoke-virtual {p1, v4, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 281
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mDpm:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget p0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mTargetUserId:I

    const-string v1, "android.app.action.NETWORK_LOGS_AVAILABLE"

    invoke-virtual {v0, v1, p1, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendDeviceOwnerOrProfileOwnerCommand(Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method public declared-synchronized pause()V
    .registers 3

    monitor-enter p0

    .line 191
    :try_start_1
    sget-object v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    const-string v1, "Paused network logging"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 192
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mPaused:Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 193
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resume()V
    .registers 5

    .line 197
    monitor-enter p0

    .line 198
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mPaused:Z

    if-nez v0, :cond_e

    .line 199
    sget-object v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    const-string v1, "Attempted to resume network logging, but logging is not paused."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    monitor-exit p0

    return-void

    .line 203
    :cond_e
    sget-object v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resumed network logging. Current batch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mCurrentBatchToken:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", LastRetrievedBatch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mLastRetrievedBatchToken:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 205
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mPaused:Z

    .line 209
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-lez v0, :cond_4b

    iget-wide v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mLastRetrievedBatchToken:J

    iget-wide v2, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mCurrentBatchToken:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4b

    .line 210
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->scheduleBatchFinalization()V

    .line 211
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->buildAdminMessageLocked()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_4c

    :cond_4b
    const/4 v0, 0x0

    .line 213
    :goto_4c
    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_1 .. :try_end_4d} :catchall_53

    if-eqz v0, :cond_52

    .line 215
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->notifyDeviceOwnerOrProfileOwner(Landroid/os/Bundle;)V

    :cond_52
    return-void

    :catchall_53
    move-exception v0

    .line 213
    :try_start_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v0
.end method

.method public declared-synchronized retrieveFullLogBatch(J)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroid/app/admin/NetworkEvent;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 289
    :try_start_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_23

    if-gez v0, :cond_c

    const/4 p1, 0x0

    .line 292
    monitor-exit p0

    return-object p1

    .line 299
    :cond_c
    :try_start_c
    new-instance v1, Lcom/android/server/devicepolicy/NetworkLoggingHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/devicepolicy/NetworkLoggingHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/devicepolicy/NetworkLoggingHandler;J)V

    const-wide/32 v2, 0x493e0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 307
    iput-wide p1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mLastRetrievedBatchToken:J

    .line 308
    iget-object p1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    invoke-virtual {p1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_23

    monitor-exit p0

    return-object p1

    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public scheduleBatchFinalization()V
    .registers 14

    .line 160
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c0

    add-long v6, v0, v2

    .line 163
    iget-object v4, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v11, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatchTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    const/4 v5, 0x2

    const-wide/32 v8, 0x1b7740

    const-string v10, "NetworkLogging.batchTimeout"

    move-object v12, p0

    invoke-virtual/range {v4 .. v12}, Landroid/app/AlarmManager;->setWindow(IJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 166
    sget-object p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    const-string v0, "Scheduled a new batch finalization alarm 5400000ms from now."

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
