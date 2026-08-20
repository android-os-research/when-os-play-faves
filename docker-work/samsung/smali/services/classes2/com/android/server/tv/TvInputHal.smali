.class final Lcom/android/server/tv/TvInputHal;
.super Ljava/lang/Object;
.source "TvInputHal.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tv/TvInputHal$Callback;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final ERROR_NO_INIT:I = -0x1

.field public static final ERROR_STALE_CONFIG:I = -0x2

.field public static final ERROR_UNKNOWN:I = -0x3

.field public static final EVENT_DEVICE_AVAILABLE:I = 0x1

.field public static final EVENT_DEVICE_UNAVAILABLE:I = 0x2

.field public static final EVENT_FIRST_FRAME_CAPTURED:I = 0x4

.field public static final EVENT_STREAM_CONFIGURATION_CHANGED:I = 0x3

.field public static final SUCCESS:I

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mCallback:Lcom/android/server/tv/TvInputHal$Callback;

.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public final mPendingMessageQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field public mPtr:J

.field public final mStreamConfigGenerations:Landroid/util/SparseIntArray;

.field public final mStreamConfigs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Landroid/media/tv/TvStreamConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 38
    const-class v0, Lcom/android/server/tv/TvInputHal;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/tv/TvInputHal;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/tv/TvInputHal$Callback;)V
    .registers 4

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHal;->mLock:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 69
    iput-wide v0, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    .line 72
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigGenerations:Landroid/util/SparseIntArray;

    .line 73
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigs:Landroid/util/SparseArray;

    .line 158
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHal;->mPendingMessageQueue:Ljava/util/Queue;

    .line 76
    iput-object p1, p0, Lcom/android/server/tv/TvInputHal;->mCallback:Lcom/android/server/tv/TvInputHal$Callback;

    .line 77
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/android/server/tv/TvInputHal;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private static native nativeAddOrUpdateStream(JIILandroid/view/Surface;)I
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeGetStreamConfigs(JII)[Landroid/media/tv/TvStreamConfig;
.end method

.method private native nativeOpen(Landroid/os/MessageQueue;)J
.end method

.method private static native nativeRemoveStream(JII)I
.end method


# virtual methods
.method public addOrUpdateStream(ILandroid/view/Surface;Landroid/media/tv/TvStreamConfig;)I
    .registers 9

    .line 87
    iget-object v0, p0, Lcom/android/server/tv/TvInputHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_3
    iget-wide v1, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_e

    const/4 p0, -0x1

    .line 89
    monitor-exit v0

    return p0

    .line 91
    :cond_e
    iget-object v1, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigGenerations:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 92
    invoke-virtual {p3}, Landroid/media/tv/TvStreamConfig;->getGeneration()I

    move-result v3

    if-eq v1, v3, :cond_1e

    const/4 p0, -0x2

    .line 93
    monitor-exit v0

    return p0

    .line 95
    :cond_1e
    iget-wide v3, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    invoke-virtual {p3}, Landroid/media/tv/TvStreamConfig;->getStreamId()I

    move-result p0

    invoke-static {v3, v4, p1, p0, p2}, Lcom/android/server/tv/TvInputHal;->nativeAddOrUpdateStream(JIILandroid/view/Surface;)I

    move-result p0

    if-nez p0, :cond_2c

    .line 96
    monitor-exit v0

    return v2

    :cond_2c
    const/4 p0, -0x3

    .line 98
    monitor-exit v0

    return p0

    :catchall_2f
    move-exception p0

    .line 100
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public close()V
    .registers 6

    .line 121
    iget-object v0, p0, Lcom/android/server/tv/TvInputHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_3
    iget-wide v1, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_e

    .line 123
    invoke-static {v1, v2}, Lcom/android/server/tv/TvInputHal;->nativeClose(J)V

    .line 125
    :cond_e
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public final deviceAvailableFromNative(Landroid/media/tv/TvInputHardwareInfo;)V
    .registers 3

    .line 139
    iget-object p0, p0, Lcom/android/server/tv/TvInputHal;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final deviceUnavailableFromNative(I)V
    .registers 4

    .line 143
    iget-object p0, p0, Lcom/android/server/tv/TvInputHal;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final firstFrameCapturedFromNative(II)V
    .registers 4

    .line 152
    iget-object p0, p0, Lcom/android/server/tv/TvInputHal;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    .line 153
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 152
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 6

    .line 162
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_54

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4c

    const/4 v2, 0x3

    if-eq v0, v2, :cond_30

    const/4 v2, 0x4

    if-eq v0, v2, :cond_26

    .line 209
    sget-object p0, Lcom/android/server/tv/TvInputHal;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 202
    :cond_26
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 203
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 204
    iget-object p0, p0, Lcom/android/server/tv/TvInputHal;->mCallback:Lcom/android/server/tv/TvInputHal$Callback;

    invoke-interface {p0, v0, p1}, Lcom/android/server/tv/TvInputHal$Callback;->onFirstFrameCaptured(II)V

    goto :goto_74

    .line 188
    :cond_30
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 189
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 190
    iget-object v2, p0, Lcom/android/server/tv/TvInputHal;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 194
    :try_start_37
    invoke-virtual {p0, v0}, Lcom/android/server/tv/TvInputHal;->retrieveStreamConfigsLocked(I)V

    .line 195
    iget-object v3, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigs:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/media/tv/TvStreamConfig;

    .line 196
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_37 .. :try_end_43} :catchall_49

    .line 197
    iget-object p0, p0, Lcom/android/server/tv/TvInputHal;->mCallback:Lcom/android/server/tv/TvInputHal$Callback;

    invoke-interface {p0, v0, v3, p1}, Lcom/android/server/tv/TvInputHal$Callback;->onStreamConfigurationChanged(I[Landroid/media/tv/TvStreamConfig;I)V

    goto :goto_74

    :catchall_49
    move-exception p0

    .line 196
    :try_start_4a
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw p0

    .line 178
    :cond_4c
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 182
    iget-object p0, p0, Lcom/android/server/tv/TvInputHal;->mCallback:Lcom/android/server/tv/TvInputHal$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/tv/TvInputHal$Callback;->onDeviceUnavailable(I)V

    goto :goto_74

    .line 165
    :cond_54
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/media/tv/TvInputHardwareInfo;

    .line 166
    iget-object v0, p0, Lcom/android/server/tv/TvInputHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 167
    :try_start_5b
    invoke-virtual {p1}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/tv/TvInputHal;->retrieveStreamConfigsLocked(I)V

    .line 171
    iget-object v2, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigs:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/tv/TvStreamConfig;

    .line 172
    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_5b .. :try_end_6f} :catchall_75

    .line 173
    iget-object p0, p0, Lcom/android/server/tv/TvInputHal;->mCallback:Lcom/android/server/tv/TvInputHal$Callback;

    invoke-interface {p0, p1, v2}, Lcom/android/server/tv/TvInputHal$Callback;->onDeviceAvailable(Landroid/media/tv/TvInputHardwareInfo;[Landroid/media/tv/TvStreamConfig;)V

    :goto_74
    return v1

    :catchall_75
    move-exception p0

    .line 172
    :try_start_76
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw p0
.end method

.method public init()V
    .registers 4

    .line 81
    iget-object v0, p0, Lcom/android/server/tv/TvInputHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_3
    iget-object v1, p0, Lcom/android/server/tv/TvInputHal;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/tv/TvInputHal;->nativeOpen(Landroid/os/MessageQueue;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    .line 83
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public removeStream(ILandroid/media/tv/TvStreamConfig;)I
    .registers 8

    .line 104
    iget-object v0, p0, Lcom/android/server/tv/TvInputHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_3
    iget-wide v1, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_e

    const/4 p0, -0x1

    .line 106
    monitor-exit v0

    return p0

    .line 108
    :cond_e
    iget-object v1, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigGenerations:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 109
    invoke-virtual {p2}, Landroid/media/tv/TvStreamConfig;->getGeneration()I

    move-result v3

    if-eq v1, v3, :cond_1e

    const/4 p0, -0x2

    .line 110
    monitor-exit v0

    return p0

    .line 112
    :cond_1e
    iget-wide v3, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    invoke-virtual {p2}, Landroid/media/tv/TvStreamConfig;->getStreamId()I

    move-result p0

    invoke-static {v3, v4, p1, p0}, Lcom/android/server/tv/TvInputHal;->nativeRemoveStream(JII)I

    move-result p0

    if-nez p0, :cond_2c

    .line 113
    monitor-exit v0

    return v2

    :cond_2c
    const/4 p0, -0x3

    .line 115
    monitor-exit v0

    return p0

    :catchall_2f
    move-exception p0

    .line 117
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public final retrieveStreamConfigsLocked(I)V
    .registers 6

    .line 129
    iget-object v0, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigGenerations:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 130
    iget-object v1, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigs:Landroid/util/SparseArray;

    iget-wide v2, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    invoke-static {v2, v3, p1, v0}, Lcom/android/server/tv/TvInputHal;->nativeGetStreamConfigs(JII)[Landroid/media/tv/TvStreamConfig;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 131
    iget-object p0, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigGenerations:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public final streamConfigsChangedFromNative(II)V
    .registers 4

    .line 147
    iget-object p0, p0, Lcom/android/server/tv/TvInputHal;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 148
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
