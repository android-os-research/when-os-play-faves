.class public final Lcom/android/server/job/JobStore;
.super Ljava/lang/Object;
.source "JobStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobStore$JobSet;,
        Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final JOBS_FILE_VERSION:I = 0x1

.field public static final JOB_PERSIST_DELAY:J = 0x7d0L

.field public static final TAG:Ljava/lang/String; = "JobStore"

.field public static final XML_TAG_EXTRAS:Ljava/lang/String; = "extras"

.field public static final XML_TAG_ONEOFF:Ljava/lang/String; = "one-off"

.field public static final XML_TAG_PARAMS_CONSTRAINTS:Ljava/lang/String; = "constraints"

.field public static final XML_TAG_PERIODIC:Ljava/lang/String; = "periodic"

.field public static sSingleton:Lcom/android/server/job/JobStore;

.field public static final sSingletonLock:Ljava/lang/Object;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mEventLogger:Landroid/util/SystemConfigFileCommitEventLogger;

.field public final mIoHandler:Landroid/os/Handler;

.field public final mJobSet:Lcom/android/server/job/JobStore$JobSet;

.field public final mJobsFile:Landroid/util/AtomicFile;

.field public final mLock:Ljava/lang/Object;

.field public mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

.field public mRtcGood:Z

.field public mWriteInProgress:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mWriteScheduleLock"
        }
    .end annotation
.end field

.field public final mWriteRunnable:Ljava/lang/Runnable;

.field public final mWriteScheduleLock:Ljava/lang/Object;

.field public mWriteScheduled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mWriteScheduleLock"
        }
    .end annotation
.end field

.field public final mXmlTimestamp:J


# direct methods
.method public static synthetic $r8$lambda$L5XOoOQPv5Wz9pQBx-LURhM8Heg(JLjava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/job/JobStore;->lambda$getRtcCorrectedJobsLocked$0(JLjava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmEventLogger(Lcom/android/server/job/JobStore;)Landroid/util/SystemConfigFileCommitEventLogger;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/JobStore;->mEventLogger:Landroid/util/SystemConfigFileCommitEventLogger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmJobsFile(Lcom/android/server/job/JobStore;)Landroid/util/AtomicFile;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/JobStore;->mJobsFile:Landroid/util/AtomicFile;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWriteInProgress(Lcom/android/server/job/JobStore;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/job/JobStore;->mWriteInProgress:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmWriteInProgress(Lcom/android/server/job/JobStore;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/job/JobStore;->mWriteInProgress:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmWriteScheduled(Lcom/android/server/job/JobStore;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/job/JobStore;->mWriteScheduled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmaybeWriteStatusToDiskAsync(Lcom/android/server/job/JobStore;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/job/JobStore;->maybeWriteStatusToDiskAsync()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/job/JobStore;->DEBUG:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$smconvertRtcBoundsToElapsed(Landroid/util/Pair;J)Landroid/util/Pair;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/job/JobStore;->convertRtcBoundsToElapsed(Landroid/util/Pair;J)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smisSyncJob(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/job/JobStore;->isSyncJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 88
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/job/JobStore;->DEBUG:Z

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/job/JobStore;->sSingletonLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Ljava/io/File;)V
    .registers 6

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/JobStore;->mIoHandler:Landroid/os/Handler;

    .line 115
    new-instance v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    invoke-direct {v0}, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    .line 442
    new-instance v0, Lcom/android/server/job/JobStore$1;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobStore$1;-><init>(Lcom/android/server/job/JobStore;)V

    iput-object v0, p0, Lcom/android/server/job/JobStore;->mWriteRunnable:Ljava/lang/Runnable;

    .line 142
    iput-object p2, p0, Lcom/android/server/job/JobStore;->mLock:Ljava/lang/Object;

    .line 143
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    .line 144
    iput-object p1, p0, Lcom/android/server/job/JobStore;->mContext:Landroid/content/Context;

    .line 146
    new-instance p1, Ljava/io/File;

    const-string/jumbo p2, "system"

    invoke-direct {p1, p3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 147
    new-instance p2, Ljava/io/File;

    const-string/jumbo p3, "job"

    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 149
    new-instance p1, Landroid/util/SystemConfigFileCommitEventLogger;

    const-string/jumbo p3, "jobs"

    invoke-direct {p1, p3}, Landroid/util/SystemConfigFileCommitEventLogger;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/job/JobStore;->mEventLogger:Landroid/util/SystemConfigFileCommitEventLogger;

    .line 150
    new-instance p3, Landroid/util/AtomicFile;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "jobs.xml"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p3, v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Landroid/util/SystemConfigFileCommitEventLogger;)V

    iput-object p3, p0, Lcom/android/server/job/JobStore;->mJobsFile:Landroid/util/AtomicFile;

    .line 152
    new-instance p1, Lcom/android/server/job/JobStore$JobSet;

    invoke-direct {p1}, Lcom/android/server/job/JobStore$JobSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 165
    invoke-virtual {p3}, Landroid/util/AtomicFile;->getLastModifiedTime()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/android/server/job/JobStore;->mXmlTimestamp:J

    .line 166
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    cmp-long p2, v0, p2

    if-lez p2, :cond_67

    const/4 p2, 0x1

    goto :goto_68

    :cond_67
    const/4 p2, 0x0

    :goto_68
    iput-boolean p2, p0, Lcom/android/server/job/JobStore;->mRtcGood:Z

    .line 168
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobStore;->readJobMapFromDisk(Lcom/android/server/job/JobStore$JobSet;Z)V

    return-void
.end method

.method public static convertRtcBoundsToElapsed(Landroid/util/Pair;J)Landroid/util/Pair;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;J)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 680
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 681
    iget-object v2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_23

    .line 682
    iget-object v2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-long/2addr v2, p1

    goto :goto_24

    :cond_23
    move-wide v2, v4

    .line 684
    :goto_24
    iget-object v6, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v6, v6, v8

    if-gez v6, :cond_44

    .line 685
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-long v8, p1, v0

    .line 687
    :cond_44
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static initAndGet(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/JobStore;
    .registers 5

    .line 119
    sget-object v0, Lcom/android/server/job/JobStore;->sSingletonLock:Ljava/lang/Object;

    monitor-enter v0

    .line 120
    :try_start_3
    sget-object v1, Lcom/android/server/job/JobStore;->sSingleton:Lcom/android/server/job/JobStore;

    if-nez v1, :cond_1a

    .line 121
    new-instance v1, Lcom/android/server/job/JobStore;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 122
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getLock()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v2, p0, v3}, Lcom/android/server/job/JobStore;-><init>(Landroid/content/Context;Ljava/lang/Object;Ljava/io/File;)V

    sput-object v1, Lcom/android/server/job/JobStore;->sSingleton:Lcom/android/server/job/JobStore;

    .line 124
    :cond_1a
    sget-object p0, Lcom/android/server/job/JobStore;->sSingleton:Lcom/android/server/job/JobStore;

    monitor-exit v0

    return-object p0

    :catchall_1e
    move-exception p0

    .line 125
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public static initAndGetForTesting(Landroid/content/Context;Ljava/io/File;)Lcom/android/server/job/JobStore;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 133
    new-instance v0, Lcom/android/server/job/JobStore;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/job/JobStore;-><init>(Landroid/content/Context;Ljava/lang/Object;Ljava/io/File;)V

    .line 134
    invoke-virtual {v0}, Lcom/android/server/job/JobStore;->clearForTesting()V

    return-object v0
.end method

.method public static intArrayToString([I)Ljava/lang/String;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 414
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 415
    array-length v1, p0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_17

    aget v3, p0, v2

    .line 416
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 418
    :cond_17
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isSyncJob(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 2

    .line 691
    const-class v0, Lcom/android/server/content/SyncJobService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 692
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$getRtcCorrectedJobsLocked$0(JLjava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 16

    .line 191
    invoke-virtual {p4}, Lcom/android/server/job/controllers/JobStatus;->getPersistedUtcTimes()Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 194
    invoke-static {v0, p0, p1}, Lcom/android/server/job/JobStore;->convertRtcBoundsToElapsed(Landroid/util/Pair;J)Landroid/util/Pair;

    move-result-object p0

    .line 195
    new-instance p1, Lcom/android/server/job/controllers/JobStatus;

    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 196
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x0

    .line 197
    invoke-virtual {p4}, Lcom/android/server/job/controllers/JobStatus;->getLastSuccessfulRunTime()J

    move-result-wide v7

    invoke-virtual {p4}, Lcom/android/server/job/controllers/JobStatus;->getLastFailedRunTime()J

    move-result-wide v9

    move-object v0, p1

    move-object v1, p4

    invoke-direct/range {v0 .. v10}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJIJJ)V

    .line 198
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked()V

    .line 199
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_33
    return-void
.end method

.method public static stringToIntArray(Ljava/lang/String;)[I
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 429
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    new-array p0, v1, [I

    return-object p0

    :cond_a
    const-string v0, ","

    .line 430
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 431
    array-length v0, p0

    new-array v0, v0, [I

    .line 432
    :goto_13
    array-length v2, p0

    if-ge v1, v2, :cond_21

    .line 433
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_21
    return-object v0
.end method


# virtual methods
.method public add(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 4

    .line 212
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore$JobSet;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    .line 213
    iget-object v1, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobStore$JobSet;->add(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 214
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isPersisted()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 215
    invoke-virtual {p0}, Lcom/android/server/job/JobStore;->maybeWriteStatusToDiskAsync()V

    .line 217
    :cond_14
    sget-boolean p0, Lcom/android/server/job/JobStore;->DEBUG:Z

    if-eqz p0, :cond_2e

    .line 218
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Added job status to store: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JobStore"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    return v0
.end method

.method public addForTesting(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 228
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobStore$JobSet;->add(Lcom/android/server/job/controllers/JobStatus;)Z

    return-void
.end method

.method public clear()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore$JobSet;->clear()V

    .line 278
    invoke-virtual {p0}, Lcom/android/server/job/JobStore;->maybeWriteStatusToDiskAsync()V

    return-void
.end method

.method public clearForTesting()V
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 286
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {p0}, Lcom/android/server/job/JobStore$JobSet;->clear()V

    return-void
.end method

.method public clockNowValidToInflate(J)Z
    .registers 5

    .line 176
    iget-wide v0, p0, Lcom/android/server/job/JobStore;->mXmlTimestamp:J

    cmp-long p0, p1, v0

    if-ltz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public containsJob(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 2

    .line 232
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobStore$JobSet;->contains(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    return p0
.end method

.method public countJobsForUid(I)I
    .registers 2

    .line 244
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobStore$JobSet;->countJobsForUid(I)I

    move-result p0

    return p0
.end method

.method public forEachJob(ILjava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 330
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobStore$JobSet;->forEachJob(ILjava/util/function/Consumer;)V

    return-void
.end method

.method public forEachJob(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 321
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/JobStore$JobSet;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 326
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobStore$JobSet;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public forEachJobForSourceUid(ILjava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 334
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobStore$JobSet;->forEachJobForSourceUid(ILjava/util/function/Consumer;)V

    return-void
.end method

.method public getJobByUidAndJobId(II)Lcom/android/server/job/controllers/JobStatus;
    .registers 3

    .line 311
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobStore$JobSet;->get(II)Lcom/android/server/job/controllers/JobStatus;

    move-result-object p0

    return-object p0
.end method

.method public getJobsByUid(I)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation

    .line 302
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobStore$JobSet;->getJobsByUid(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getJobsByUser(I)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation

    .line 294
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobStore$JobSet;->getJobsByUser(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPersistStats()Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;
    .registers 1

    .line 240
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    return-object p0
.end method

.method public getRtcCorrectedJobsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 186
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 190
    new-instance v2, Lcom/android/server/job/JobStore$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1, p1, p2}, Lcom/android/server/job/JobStore$$ExternalSyntheticLambda0;-><init>(JLjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v2}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public jobTimesInflatedValid()Z
    .registers 1

    .line 172
    iget-boolean p0, p0, Lcom/android/server/job/JobStore;->mRtcGood:Z

    return p0
.end method

.method public final maybeWriteStatusToDiskAsync()V
    .registers 6

    .line 351
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 352
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/job/JobStore;->mWriteScheduled:Z

    if-nez v1, :cond_1e

    .line 353
    sget-boolean v1, Lcom/android/server/job/JobStore;->DEBUG:Z

    if-eqz v1, :cond_12

    const-string v1, "JobStore"

    const-string v2, "Scheduling persist of jobs to disk."

    .line 354
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_12
    iget-object v1, p0, Lcom/android/server/job/JobStore;->mIoHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/job/JobStore;->mWriteRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v1, 0x1

    .line 357
    iput-boolean v1, p0, Lcom/android/server/job/JobStore;->mWriteScheduled:Z

    .line 359
    :cond_1e
    monitor-exit v0

    return-void

    :catchall_20
    move-exception p0

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public readJobMapFromDisk(Lcom/android/server/job/JobStore$JobSet;Z)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 364
    new-instance v0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;-><init>(Lcom/android/server/job/JobStore;Lcom/android/server/job/JobStore$JobSet;Z)V

    invoke-virtual {v0}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->run()V

    return-void
.end method

.method public remove(Lcom/android/server/job/controllers/JobStatus;Z)Z
    .registers 4

    .line 254
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore$JobSet;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 256
    sget-boolean p0, Lcom/android/server/job/JobStore;->DEBUG:Z

    if-eqz p0, :cond_22

    .line 257
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Couldn\'t remove job: didn\'t exist: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JobStore"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    const/4 p0, 0x0

    return p0

    :cond_24
    if-eqz p2, :cond_2f

    .line 261
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isPersisted()Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 262
    invoke-virtual {p0}, Lcom/android/server/job/JobStore;->maybeWriteStatusToDiskAsync()V

    :cond_2f
    return v0
.end method

.method public removeJobsOfUnlistedUsers([I)V
    .registers 2

    .line 272
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobStore$JobSet;->removeJobsOfUnlistedUsers([I)V

    return-void
.end method

.method public size()I
    .registers 1

    .line 236
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {p0}, Lcom/android/server/job/JobStore$JobSet;->size()I

    move-result p0

    return p0
.end method

.method public waitForWriteToCompleteForTesting(J)Z
    .registers 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 388
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long v2, v0, p1

    .line 390
    iget-object v4, p0, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    monitor-enter v4

    .line 391
    :goto_9
    :try_start_9
    iget-boolean v5, p0, Lcom/android/server/job/JobStore;->mWriteScheduled:Z

    if-nez v5, :cond_11

    iget-boolean v5, p0, Lcom/android/server/job/JobStore;->mWriteInProgress:Z

    if-eqz v5, :cond_24

    .line 392
    :cond_11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    cmp-long v7, v5, v2

    if-ltz v7, :cond_1c

    const/4 p0, 0x0

    .line 395
    monitor-exit v4
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_27

    return p0

    .line 398
    :cond_1c
    :try_start_1c
    iget-object v7, p0, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    sub-long/2addr v5, v0

    add-long/2addr v5, p1

    invoke-virtual {v7, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_23} :catch_24
    .catchall {:try_start_1c .. :try_end_23} :catchall_27

    goto :goto_9

    .line 404
    :catch_24
    :cond_24
    :try_start_24
    monitor-exit v4

    const/4 p0, 0x1

    return p0

    :catchall_27
    move-exception p0

    monitor-exit v4
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public writeStatusToDiskForTesting()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 370
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 371
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/job/JobStore;->mWriteScheduled:Z

    if-nez v1, :cond_11

    const/4 v1, 0x1

    .line 375
    iput-boolean v1, p0, Lcom/android/server/job/JobStore;->mWriteScheduled:Z

    .line 376
    iget-object p0, p0, Lcom/android/server/job/JobStore;->mWriteRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 377
    monitor-exit v0

    return-void

    .line 372
    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "An asynchronous write is already scheduled."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_19
    move-exception p0

    .line 377
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p0
.end method
