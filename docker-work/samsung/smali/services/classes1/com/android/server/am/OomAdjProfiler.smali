.class public Lcom/android/server/am/OomAdjProfiler;
.super Ljava/lang/Object;
.source "OomAdjProfiler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OomAdjProfiler$CpuTimes;
    }
.end annotation


# static fields
.field public static final MSG_UPDATE_CPU_TIME:I = 0x2a


# instance fields
.field public mLastScheduledOnBattery:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mLastScheduledScreenOff:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mLastSystemServerCpuTimeMs:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mOnBattery:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mOomAdjRunTime:Lcom/android/server/am/OomAdjProfiler$CpuTimes;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public final mOomAdjRunTimesHist:Lcom/android/internal/util/RingBuffer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Lcom/android/server/am/OomAdjProfiler$CpuTimes;",
            ">;"
        }
    .end annotation
.end field

.field public mOomAdjStartTimeUs:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mOomAdjStarted:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public final mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

.field public mScreenOff:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mSystemServerCpuTime:Lcom/android/server/am/OomAdjProfiler$CpuTimes;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mSystemServerCpuTimeUpdateScheduled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public final mSystemServerCpuTimesHist:Lcom/android/internal/util/RingBuffer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Lcom/android/server/am/OomAdjProfiler$CpuTimes;",
            ">;"
        }
    .end annotation
.end field

.field public mTotalOomAdjCalls:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mTotalOomAdjRunTimeUs:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$WGvtgxkAhtMnJr3XT1WyqVb7_14(Lcom/android/server/am/OomAdjProfiler;ZZZ)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/OomAdjProfiler;->updateSystemServerCpuTime(ZZZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmOnBattery(Lcom/android/server/am/OomAdjProfiler;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/am/OomAdjProfiler;->mOnBattery:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScreenOff(Lcom/android/server/am/OomAdjProfiler;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/am/OomAdjProfiler;->mScreenOff:Z

    return p0
.end method

.method public constructor <init>()V
    .registers 4

    .line 32
    const-class v0, Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v1, Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/OomAdjProfiler$CpuTimes;-><init>(Lcom/android/server/am/OomAdjProfiler;Lcom/android/server/am/OomAdjProfiler$CpuTimes-IA;)V

    iput-object v1, p0, Lcom/android/server/am/OomAdjProfiler;->mOomAdjRunTime:Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    .line 54
    new-instance v1, Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/OomAdjProfiler$CpuTimes;-><init>(Lcom/android/server/am/OomAdjProfiler;Lcom/android/server/am/OomAdjProfiler$CpuTimes-IA;)V

    iput-object v1, p0, Lcom/android/server/am/OomAdjProfiler;->mSystemServerCpuTime:Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    .line 61
    new-instance v1, Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/am/OomAdjProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 63
    new-instance v1, Lcom/android/internal/util/RingBuffer;

    const/16 v2, 0xa

    invoke-direct {v1, v0, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v1, p0, Lcom/android/server/am/OomAdjProfiler;->mOomAdjRunTimesHist:Lcom/android/internal/util/RingBuffer;

    .line 65
    new-instance v1, Lcom/android/internal/util/RingBuffer;

    invoke-direct {v1, v0, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v1, p0, Lcom/android/server/am/OomAdjProfiler;->mSystemServerCpuTimesHist:Lcom/android/internal/util/RingBuffer;

    return-void
.end method


# virtual methods
.method public batteryPowerChanged(Z)V
    .registers 2

    .line 74
    monitor-enter p0

    .line 75
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/am/OomAdjProfiler;->scheduleSystemServerCpuTimeUpdate()V

    .line 76
    iput-boolean p1, p0, Lcom/android/server/am/OomAdjProfiler;->mOnBattery:Z

    .line 77
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 6

    .line 150
    monitor-enter p0

    .line 151
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjProfiler;->mSystemServerCpuTimeUpdateScheduled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 153
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x2a

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 155
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjProfiler;->mLastScheduledOnBattery:Z

    iget-boolean v2, p0, Lcom/android/server/am/OomAdjProfiler;->mLastScheduledScreenOff:Z

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/am/OomAdjProfiler;->updateSystemServerCpuTime(ZZZ)V

    goto :goto_1e

    .line 157
    :cond_17
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjProfiler;->mOnBattery:Z

    iget-boolean v2, p0, Lcom/android/server/am/OomAdjProfiler;->mScreenOff:Z

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/am/OomAdjProfiler;->updateSystemServerCpuTime(ZZZ)V

    :goto_1e
    const-string v0, "System server and oomAdj runtimes (ms) in recent battery sessions (most recent first):"

    .line 160
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/android/server/am/OomAdjProfiler;->mSystemServerCpuTime:Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4b

    const-string v0, "  "

    .line 163
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "system_server="

    .line 164
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/android/server/am/OomAdjProfiler;->mSystemServerCpuTime:Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, "  "

    .line 166
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "oom_adj="

    .line 167
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/android/server/am/OomAdjProfiler;->mOomAdjRunTime:Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 170
    :cond_4b
    iget-object v0, p0, Lcom/android/server/am/OomAdjProfiler;->mSystemServerCpuTimesHist:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    .line 171
    iget-object v1, p0, Lcom/android/server/am/OomAdjProfiler;->mOomAdjRunTimesHist:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    .line 172
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    :goto_5e
    if-ltz v2, :cond_83

    const-string v3, "  "

    .line 173
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "system_server="

    .line 174
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 175
    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v3, "  "

    .line 176
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "oom_adj="

    .line 177
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 178
    aget-object v3, v1, v2

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_5e

    .line 180
    :cond_83
    iget v0, p0, Lcom/android/server/am/OomAdjProfiler;->mTotalOomAdjCalls:I

    if-eqz v0, :cond_ae

    const-string v0, "System server total oomAdj runtimes (us) since boot:"

    .line 181
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  cpu time spent="

    .line 182
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 183
    iget-wide v0, p0, Lcom/android/server/am/OomAdjProfiler;->mTotalOomAdjRunTimeUs:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, "  number of calls="

    .line 184
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 185
    iget v0, p0, Lcom/android/server/am/OomAdjProfiler;->mTotalOomAdjCalls:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "  average="

    .line 186
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 187
    iget-wide v0, p0, Lcom/android/server/am/OomAdjProfiler;->mTotalOomAdjRunTimeUs:J

    iget v2, p0, Lcom/android/server/am/OomAdjProfiler;->mTotalOomAdjCalls:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 189
    :cond_ae
    monitor-exit p0

    return-void

    :catchall_b0
    move-exception p1

    monitor-exit p0
    :try_end_b2
    .catchall {:try_start_1 .. :try_end_b2} :catchall_b0

    throw p1
.end method

.method public onWakefulnessChanged(I)V
    .registers 3

    .line 81
    monitor-enter p0

    .line 82
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/am/OomAdjProfiler;->scheduleSystemServerCpuTimeUpdate()V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 83
    :goto_9
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjProfiler;->mScreenOff:Z

    .line 84
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public oomAdjEnded()V
    .registers 5

    .line 95
    monitor-enter p0

    .line 96
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjProfiler;->mOomAdjStarted:Z

    if-nez v0, :cond_7

    .line 97
    monitor-exit p0

    return-void

    .line 99
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMicro()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/OomAdjProfiler;->mOomAdjStartTimeUs:J

    sub-long/2addr v0, v2

    .line 100
    iget-object v2, p0, Lcom/android/server/am/OomAdjProfiler;->mOomAdjRunTime:Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->addCpuTimeUs(J)V

    .line 101
    iget-wide v2, p0, Lcom/android/server/am/OomAdjProfiler;->mTotalOomAdjRunTimeUs:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/am/OomAdjProfiler;->mTotalOomAdjRunTimeUs:J

    .line 102
    iget v0, p0, Lcom/android/server/am/OomAdjProfiler;->mTotalOomAdjCalls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/OomAdjProfiler;->mTotalOomAdjCalls:I

    .line 103
    monitor-exit p0

    return-void

    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public oomAdjStarted()V
    .registers 3

    .line 88
    monitor-enter p0

    .line 89
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMicro()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/OomAdjProfiler;->mOomAdjStartTimeUs:J

    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjProfiler;->mOomAdjStarted:Z

    .line 91
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public reset()V
    .registers 3

    .line 138
    monitor-enter p0

    .line 139
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/OomAdjProfiler;->mSystemServerCpuTime:Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 140
    monitor-exit p0

    return-void

    .line 142
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/OomAdjProfiler;->mOomAdjRunTimesHist:Lcom/android/internal/util/RingBuffer;

    iget-object v1, p0, Lcom/android/server/am/OomAdjProfiler;->mOomAdjRunTime:Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    invoke-virtual {v0, v1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lcom/android/server/am/OomAdjProfiler;->mSystemServerCpuTimesHist:Lcom/android/internal/util/RingBuffer;

    iget-object v1, p0, Lcom/android/server/am/OomAdjProfiler;->mSystemServerCpuTime:Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    invoke-virtual {v0, v1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 144
    new-instance v0, Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OomAdjProfiler$CpuTimes;-><init>(Lcom/android/server/am/OomAdjProfiler;Lcom/android/server/am/OomAdjProfiler$CpuTimes-IA;)V

    iput-object v0, p0, Lcom/android/server/am/OomAdjProfiler;->mOomAdjRunTime:Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    .line 145
    new-instance v0, Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OomAdjProfiler$CpuTimes;-><init>(Lcom/android/server/am/OomAdjProfiler;Lcom/android/server/am/OomAdjProfiler$CpuTimes-IA;)V

    iput-object v0, p0, Lcom/android/server/am/OomAdjProfiler;->mSystemServerCpuTime:Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    .line 146
    monitor-exit p0

    return-void

    :catchall_2a
    move-exception v0

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method public final scheduleSystemServerCpuTimeUpdate()V
    .registers 5

    .line 107
    monitor-enter p0

    .line 108
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjProfiler;->mSystemServerCpuTimeUpdateScheduled:Z

    if-eqz v0, :cond_7

    .line 109
    monitor-exit p0

    return-void

    .line 111
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjProfiler;->mOnBattery:Z

    iput-boolean v0, p0, Lcom/android/server/am/OomAdjProfiler;->mLastScheduledOnBattery:Z

    .line 112
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjProfiler;->mScreenOff:Z

    iput-boolean v0, p0, Lcom/android/server/am/OomAdjProfiler;->mLastScheduledScreenOff:Z

    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjProfiler;->mSystemServerCpuTimeUpdateScheduled:Z

    .line 114
    new-instance v0, Lcom/android/server/am/OomAdjProfiler$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/am/OomAdjProfiler$$ExternalSyntheticLambda0;-><init>()V

    iget-boolean v1, p0, Lcom/android/server/am/OomAdjProfiler;->mLastScheduledOnBattery:Z

    .line 116
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/am/OomAdjProfiler;->mLastScheduledScreenOff:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 114
    invoke-static {v0, p0, v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x2a

    .line 117
    invoke-virtual {v0, v1}, Landroid/os/Message;->setWhat(I)Landroid/os/Message;

    .line 119
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 120
    monitor-exit p0

    return-void

    :catchall_37
    move-exception v0

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_37

    throw v0
.end method

.method public final updateSystemServerCpuTime(ZZZ)V
    .registers 8

    .line 125
    iget-object v0, p0, Lcom/android/server/am/OomAdjProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuTimeForPid(I)J

    move-result-wide v0

    .line 126
    monitor-enter p0

    if-eqz p3, :cond_13

    .line 127
    :try_start_d
    iget-boolean p3, p0, Lcom/android/server/am/OomAdjProfiler;->mSystemServerCpuTimeUpdateScheduled:Z

    if-nez p3, :cond_13

    .line 128
    monitor-exit p0

    return-void

    .line 130
    :cond_13
    iget-object p3, p0, Lcom/android/server/am/OomAdjProfiler;->mSystemServerCpuTime:Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    iget-wide v2, p0, Lcom/android/server/am/OomAdjProfiler;->mLastSystemServerCpuTimeMs:J

    sub-long v2, v0, v2

    invoke-virtual {p3, v2, v3, p1, p2}, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->addCpuTimeMs(JZZ)V

    .line 132
    iput-wide v0, p0, Lcom/android/server/am/OomAdjProfiler;->mLastSystemServerCpuTimeMs:J

    const/4 p1, 0x0

    .line 133
    iput-boolean p1, p0, Lcom/android/server/am/OomAdjProfiler;->mSystemServerCpuTimeUpdateScheduled:Z

    .line 134
    monitor-exit p0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_23

    throw p1
.end method
