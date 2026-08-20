.class public final Lcom/android/server/am/ProcessStatsService;
.super Lcom/android/internal/app/procstats/IProcessStats$Stub;
.source "ProcessStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ProcessStatsService$LocalService;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final MAX_HISTORIC_STATES:I = 0x8

.field public static final STATE_FILE_CHECKIN_SUFFIX:Ljava/lang/String; = ".ci"

.field public static final STATE_FILE_PREFIX:Ljava/lang/String; = "state-"

.field public static final STATE_FILE_SUFFIX:Ljava/lang/String; = ".bin"

.field public static final TAG:Ljava/lang/String; = "ProcessStatsService"

.field public static WRITE_PERIOD:J = 0x1b7740L


# instance fields
.field public final mAm:Lcom/android/server/am/ActivityManagerService;

.field public final mBaseDir:Ljava/io/File;

.field public mCommitPending:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mFile:Landroid/util/AtomicFile;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mFileLock"
        }
    .end annotation
.end field

.field public final mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public mInjectedScreenState:Ljava/lang/Boolean;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mLastMemOnlyState:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mLastWriteTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public mMemFactorLowered:Z

.field public mPendingWrite:Landroid/os/Parcel;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPendingWriteLock"
        }
    .end annotation
.end field

.field public mPendingWriteCommitted:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPendingWriteLock"
        }
    .end annotation
.end field

.field public mPendingWriteFile:Landroid/util/AtomicFile;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPendingWriteLock"
        }
    .end annotation
.end field

.field public final mPendingWriteLock:Ljava/lang/Object;

.field public final mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mShuttingDown:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$FuF4S6EUNsvrXTbzldZ3_SpCAyI(Lcom/android/server/am/ProcessStatsService;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ProcessStatsService;->lambda$scheduleRequestPssAllProcs$0(ZZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetUidProcStateStatsOverTime(Lcom/android/server/am/ProcessStatsService;J)Landroid/util/SparseArray;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ProcessStatsService;->getUidProcStateStatsOverTime(J)Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mperformWriteState(Lcom/android/server/am/ProcessStatsService;J)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ProcessStatsService;->performWriteState(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwriteStateLocked(Lcom/android/server/am/ProcessStatsService;ZZ)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(ZZ)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/File;)V
    .registers 5

    .line 124
    invoke-direct {p0}, Lcom/android/internal/app/procstats/IProcessStats$Stub;-><init>()V

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    .line 87
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    .line 90
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, -0x1

    .line 104
    iput v1, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    .line 125
    iput-object p1, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 126
    iput-object p2, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    .line 127
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 128
    monitor-enter v0

    .line 129
    :try_start_23
    new-instance p1, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    iput-object p1, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 130
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->updateFileLocked()V

    .line 131
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_23 .. :try_end_2f} :catchall_38

    .line 132
    new-instance p1, Lcom/android/server/am/ProcessStatsService$1;

    invoke-direct {p1, p0}, Lcom/android/server/am/ProcessStatsService$1;-><init>(Lcom/android/server/am/ProcessStatsService;)V

    invoke-static {p1}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    return-void

    :catchall_38
    move-exception p0

    .line 131
    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public static dumpHelp(Ljava/io/PrintWriter;)V
    .registers 2

    const-string v0, "Process stats (procstats) dump options:"

    .line 877
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    [--checkin|-c|--csv] [--csv-screen] [--csv-proc] [--csv-mem]"

    .line 878
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    [--details] [--full-details] [--current] [--hours N] [--last N]"

    .line 879
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    [--max N] --active] [--commit] [--reset] [--clear] [--write] [-h]"

    .line 880
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    [--start-testing] [--stop-testing] "

    .line 881
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    [--pretend-screen-on] [--pretend-screen-off] [--stop-pretend-screen]"

    .line 882
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    [<package.name>]"

    .line 883
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --checkin: perform a checkin: print and delete old committed states."

    .line 884
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  -c: print only state in checkin format."

    .line 885
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --csv: output data suitable for putting in a spreadsheet."

    .line 886
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --csv-screen: on, off."

    .line 887
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --csv-mem: norm, mod, low, crit."

    .line 888
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --csv-proc: pers, top, fore, vis, precept, backup,"

    .line 889
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    service, home, prev, cached"

    .line 890
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --details: dump per-package details, not just summary."

    .line 891
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --full-details: dump all timing and active state details."

    .line 892
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --current: only dump current state."

    .line 893
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --hours: aggregate over about N last hours."

    .line 894
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --last: only show the last committed stats at index N (starting at 1)."

    .line 895
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --max: for -a, max num of historical batches to print."

    .line 896
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --active: only show currently active processes/services."

    .line 897
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --commit: commit current stats to disk and reset to start new stats."

    .line 898
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --section: proc|pkg-proc|pkg-svc|pkg-asc|pkg-all|all "

    .line 899
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    options can be combined to select desired stats"

    .line 900
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --reset: reset current stats, without committing."

    .line 901
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --clear: clear all stats; does both --reset and deletes old stats."

    .line 902
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --write: write current in-memory stats to disk."

    .line 903
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --read: replace current stats with last-written stats."

    .line 904
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --start-testing: clear all stats and starting high frequency pss sampling."

    .line 905
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --stop-testing: stop high frequency pss sampling."

    .line 906
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --pretend-screen-on: pretend screen is on."

    .line 907
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --pretend-screen-off: pretend screen is off."

    .line 908
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --stop-pretend-screen: forget \"pretend screen\" and use the real state."

    .line 909
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  -a: print everything."

    .line 910
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  -h: print this help text."

    .line 911
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  <package.name>: optional name of package to filter output by."

    .line 912
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$scheduleRequestPssAllProcs$0(ZZ)V
    .registers 6

    .line 321
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 322
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 323
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 322
    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/android/server/am/AppProfiler;->requestPssAllProcsLPr(JZZ)V

    .line 324
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_18
    move-exception p0

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public static parseSectionOptions(Ljava/lang/String;)I
    .registers 7

    const-string v0, ","

    .line 552
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 553
    array-length v0, p0

    if-nez v0, :cond_c

    const/16 p0, 0x1f

    return p0

    .line 557
    :cond_c
    sget-object v0, Lcom/android/internal/app/procstats/ProcessStats;->OPTIONS_STR:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 558
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_15
    if-ge v2, v1, :cond_28

    aget-object v4, p0, v2

    .line 559
    invoke-interface {v0, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_25

    .line 561
    sget-object v5, Lcom/android/internal/app/procstats/ProcessStats;->OPTIONS:[I

    aget v4, v5, v4

    or-int/2addr v3, v4

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_28
    return v3
.end method

.method public static parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I
    .registers 12

    .line 511
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 513
    :goto_8
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v2, v4, :cond_81

    .line 514
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_19

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_1a

    :cond_19
    move v4, v1

    :goto_1a
    const/16 v5, 0x2c

    if-eq v4, v5, :cond_29

    const/16 v6, 0x2b

    if-eq v4, v6, :cond_29

    const/16 v6, 0x20

    if-eq v4, v6, :cond_29

    if-eqz v4, :cond_29

    goto :goto_7e

    :cond_29
    if-ne v4, v5, :cond_2d

    const/4 v5, 0x1

    goto :goto_2e

    :cond_2d
    move v5, v1

    :goto_2e
    const/4 v6, 0x0

    if-nez v3, :cond_34

    .line 521
    aput-boolean v5, p3, v1

    goto :goto_40

    :cond_34
    if-eqz v4, :cond_40

    .line 522
    aget-boolean v4, p3, v1

    if-eq v4, v5, :cond_40

    const-string/jumbo p0, "inconsistent separators (can\'t mix \',\' with \'+\')"

    .line 523
    aput-object p0, p4, v1

    return-object v6

    :cond_40
    :goto_40
    add-int/lit8 v4, v2, -0x1

    if-ge v3, v4, :cond_7c

    .line 527
    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move v4, v1

    .line 528
    :goto_49
    array-length v5, p0

    if-ge v4, v5, :cond_60

    .line 529
    aget-object v5, p0, v4

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 530
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v6

    goto :goto_60

    :cond_5d
    add-int/lit8 v4, v4, 0x1

    goto :goto_49

    :cond_60
    :goto_60
    if-eqz v3, :cond_7c

    .line 536
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "invalid word \""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p4, v1

    return-object v6

    :cond_7c
    add-int/lit8 v3, v2, 0x1

    :goto_7e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 543
    :cond_81
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [I

    .line 544
    :goto_87
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v1, p2, :cond_9d

    .line 545
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    mul-int/2addr p2, p1

    aput p2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_87

    :cond_9d
    return-object p0
.end method

.method public static protoToParcelFileDescriptor(Lcom/android/internal/app/procstats/ProcessStats;I)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 693
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 694
    new-instance v1, Lcom/android/server/am/ProcessStatsService$3;

    const-string v2, "ProcessStats pipe output"

    invoke-direct {v1, v2, v0, p0, p1}, Lcom/android/server/am/ProcessStatsService$3;-><init>(Ljava/lang/String;[Landroid/os/ParcelFileDescriptor;Lcom/android/internal/app/procstats/ProcessStats;I)V

    .line 707
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const/4 p0, 0x0

    .line 708
    aget-object p0, v0, p0

    return-object p0
.end method


# virtual methods
.method public addSysMemUsageLocked(JJJJJ)V
    .registers 22
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    move-object v0, p0

    .line 230
    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->addSysMemUsage(JJJJJ)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    .line 917
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ProcessStatsService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 920
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 922
    :try_start_11
    array-length v2, p3

    if-lez v2, :cond_37

    const-string v2, "--proto"

    const/4 v3, 0x0

    .line 923
    aget-object v4, p3, v3

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 924
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStatsService;->dumpProto(Ljava/io/FileDescriptor;)V
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_3e

    .line 933
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_26
    :try_start_26
    const-string v2, "--statsd"

    .line 926
    aget-object v3, p3, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 927
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStatsService;->dumpProtoForStatsd(Ljava/io/FileDescriptor;)V
    :try_end_33
    .catchall {:try_start_26 .. :try_end_33} :catchall_3e

    .line 933
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 931
    :cond_37
    :try_start_37
    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/ProcessStatsService;->dumpInner(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3e

    .line 933
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_3e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 934
    throw p0
.end method

.method public final dumpAggregatedStats(Landroid/util/proto/ProtoOutputStream;JIJ)V
    .registers 13

    mul-int/lit8 p4, p4, 0x3c

    mul-int/lit8 p4, p4, 0x3c

    mul-int/lit16 p4, p4, 0x3e8

    int-to-long v0, p4

    .line 1372
    sget-wide v2, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_PERIOD:J

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ProcessStatsService;->getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    if-nez p0, :cond_14

    return-void

    .line 1377
    :cond_14
    new-instance p4, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v0, 0x0

    invoke-direct {p4, v0}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 1378
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 1379
    invoke-virtual {p4, v0}, Lcom/android/internal/app/procstats/ProcessStats;->read(Ljava/io/InputStream;)V

    .line 1380
    iget-object p0, p4, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz p0, :cond_27

    return-void

    .line 1383
    :cond_27
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const/16 p0, 0x1f

    .line 1384
    invoke-virtual {p4, p1, p5, p6, p0}, Lcom/android/internal/app/procstats/ProcessStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1385
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZI)V
    .registers 23

    move-object v1, p1

    const-wide/16 v2, 0x3c

    mul-long v4, p2, v2

    mul-long/2addr v4, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v4, v2

    .line 851
    sget-wide v2, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_PERIOD:J

    const-wide/16 v6, 0x2

    div-long/2addr v2, v6

    sub-long/2addr v4, v2

    move-object v0, p0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/ProcessStatsService;->getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-nez v0, :cond_1c

    const-string v0, "Unable to build stats!"

    .line 854
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 857
    :cond_1c
    new-instance v2, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 858
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v3, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 859
    invoke-virtual {v2, v3}, Lcom/android/internal/app/procstats/ProcessStats;->read(Ljava/io/InputStream;)V

    .line 860
    iget-object v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v0, :cond_39

    const-string v0, "Failure reading: "

    .line 861
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_39
    if-eqz p7, :cond_43

    move-object/from16 v3, p6

    move/from16 v9, p12

    .line 865
    invoke-virtual {v2, p1, v3, v9}, Lcom/android/internal/app/procstats/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    goto :goto_69

    :cond_43
    move-object/from16 v3, p6

    move/from16 v9, p12

    if-nez p8, :cond_57

    if-eqz p9, :cond_4c

    goto :goto_57

    :cond_4c
    move-object v0, v2

    move-object v1, p1

    move-object/from16 v2, p6

    move-wide v3, p4

    move/from16 v5, p11

    .line 871
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    goto :goto_69

    :cond_57
    :goto_57
    xor-int/lit8 v5, p9, 0x1

    move-object v0, v2

    move-object v1, p1

    move-object/from16 v2, p6

    move-wide v3, p4

    move/from16 v6, p8

    move/from16 v7, p10

    move/from16 v8, p11

    move/from16 v9, p12

    .line 868
    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/app/procstats/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZZI)V

    :goto_69
    return-void
.end method

.method public final dumpFilteredProcessesCsvLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z[IZ[IZ[IJLjava/lang/String;)Z
    .registers 31
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 496
    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v8, 0x0

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    move-object/from16 v3, p8

    move-object/from16 v4, p8

    move-wide/from16 v5, p9

    move-object/from16 v7, p11

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/app/procstats/ProcessStats;->collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v10

    .line 498
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_35

    if-eqz p2, :cond_20

    .line 500
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_20
    move-object/from16 v9, p1

    move/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    move-object/from16 v14, p6

    move/from16 v15, p7

    move-object/from16 v16, p8

    move-wide/from16 v17, p9

    .line 502
    invoke-static/range {v9 .. v18}, Lcom/android/internal/app/procstats/DumpUtils;->dumpProcessListCsv(Ljava/io/PrintWriter;Ljava/util/ArrayList;Z[IZ[IZ[IJ)V

    const/4 v0, 0x1

    return v0

    :cond_35
    const/4 v0, 0x0

    return v0
.end method

.method public final dumpInner(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 36
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v0, p2

    .line 939
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 955
    fill-array-data v2, :array_768

    const/4 v11, 0x1

    new-array v3, v11, [I

    const/4 v4, 0x3

    const/4 v12, 0x0

    aput v4, v3, v12

    .line 959
    sget-object v4, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    const/16 v6, 0x1f

    if-eqz v0, :cond_3e9

    move/from16 v28, v11

    move v7, v12

    move v8, v7

    move v9, v8

    move v10, v9

    move v13, v10

    move/from16 v18, v13

    move/from16 v20, v18

    move/from16 v21, v20

    move/from16 v22, v21

    move/from16 v23, v22

    move/from16 v24, v23

    move/from16 v25, v24

    move/from16 v26, v25

    move/from16 v27, v26

    const/16 v19, 0x0

    .line 962
    :goto_38
    array-length v5, v0

    if-ge v7, v5, :cond_3d8

    .line 963
    aget-object v5, v0, v7

    const-string v12, "--checkin"

    .line 964
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4b

    move v5, v11

    move/from16 v25, v5

    :goto_48
    const/4 v11, 0x0

    goto/16 :goto_3d3

    :cond_4b
    const-string v12, "-c"

    .line 966
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_57

    move v5, v11

    move/from16 v20, v5

    goto :goto_48

    :cond_57
    const-string v12, "--csv"

    .line 968
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_62

    move v5, v11

    move v9, v5

    goto :goto_48

    :cond_62
    const-string v12, "--csv-screen"

    .line 970
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b8

    add-int/lit8 v7, v7, 0x1

    .line 972
    array-length v2, v0

    if-lt v7, v2, :cond_78

    const-string v0, "Error: argument required for --csv-screen"

    .line 973
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 974
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_78
    new-array v2, v11, [Z

    new-array v5, v11, [Ljava/lang/String;

    .line 979
    sget-object v8, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    const/4 v12, 0x4

    aget-object v11, v0, v7

    invoke-static {v8, v12, v11, v2, v5}, Lcom/android/server/am/ProcessStatsService;->parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    move-result-object v8

    if-nez v8, :cond_ac

    .line 982
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v7

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    aget-object v0, v5, v11

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 983
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_ac
    const/4 v11, 0x0

    aget-boolean v2, v2, v11

    const/4 v5, 0x1

    const/4 v11, 0x0

    move-object/from16 v32, v8

    move v8, v2

    move-object/from16 v2, v32

    goto/16 :goto_3d3

    :cond_b8
    const-string v11, "--csv-mem"

    .line 987
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10d

    add-int/lit8 v7, v7, 0x1

    .line 989
    array-length v3, v0

    if-lt v7, v3, :cond_ce

    const-string v0, "Error: argument required for --csv-mem"

    .line 990
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 991
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_ce
    const/4 v3, 0x1

    new-array v5, v3, [Z

    new-array v11, v3, [Ljava/lang/String;

    .line 996
    sget-object v12, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

    move/from16 v30, v1

    aget-object v1, v0, v7

    invoke-static {v12, v3, v1, v5, v11}, Lcom/android/server/am/ProcessStatsService;->parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    move-result-object v1

    if-nez v1, :cond_104

    .line 999
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v7

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget-object v0, v11, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1000
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_104
    const/4 v3, 0x0

    aget-boolean v26, v5, v3

    move-object v3, v1

    :goto_108
    move/from16 v1, v30

    :goto_10a
    const/4 v5, 0x1

    goto/16 :goto_48

    :cond_10d
    move/from16 v30, v1

    const-string v1, "--csv-proc"

    .line 1004
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15e

    add-int/lit8 v7, v7, 0x1

    .line 1006
    array-length v1, v0

    if-lt v7, v1, :cond_125

    const-string v0, "Error: argument required for --csv-proc"

    .line 1007
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1008
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_125
    const/4 v1, 0x1

    new-array v4, v1, [Z

    new-array v5, v1, [Ljava/lang/String;

    .line 1013
    sget-object v11, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    aget-object v12, v0, v7

    invoke-static {v11, v1, v12, v4, v5}, Lcom/android/server/am/ProcessStatsService;->parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    move-result-object v11

    if-nez v11, :cond_159

    .line 1016
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v7

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    aget-object v0, v5, v12

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1017
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_159
    const/4 v12, 0x0

    aget-boolean v28, v4, v12

    move-object v4, v11

    goto :goto_108

    :cond_15e
    const-string v1, "--details"

    .line 1021
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16e

    move/from16 v1, v30

    const/4 v5, 0x1

    const/4 v11, 0x0

    :goto_16a
    const/16 v21, 0x1

    goto/16 :goto_3d3

    :cond_16e
    const-string v1, "--full-details"

    .line 1023
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17e

    move/from16 v1, v30

    const/4 v5, 0x1

    const/4 v11, 0x0

    const/16 v22, 0x1

    goto/16 :goto_3d3

    :cond_17e
    const-string v1, "--hours"

    .line 1025
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b6

    add-int/lit8 v7, v7, 0x1

    .line 1027
    array-length v1, v0

    if-lt v7, v1, :cond_194

    const-string v0, "Error: argument required for --hours"

    .line 1028
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1029
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    .line 1033
    :cond_194
    :try_start_194
    aget-object v1, v0, v7

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13
    :try_end_19a
    .catch Ljava/lang/NumberFormatException; {:try_start_194 .. :try_end_19a} :catch_19c

    goto/16 :goto_108

    .line 1035
    :catch_19c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: --hours argument not an int -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v7

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1036
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_1b6
    const-string v1, "--last"

    .line 1039
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ee

    add-int/lit8 v7, v7, 0x1

    .line 1041
    array-length v1, v0

    if-lt v7, v1, :cond_1cc

    const-string v0, "Error: argument required for --last"

    .line 1042
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1043
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    .line 1047
    :cond_1cc
    :try_start_1cc
    aget-object v1, v0, v7

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18
    :try_end_1d2
    .catch Ljava/lang/NumberFormatException; {:try_start_1cc .. :try_end_1d2} :catch_1d4

    goto/16 :goto_108

    .line 1049
    :catch_1d4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: --last argument not an int -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v7

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1050
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_1ee
    const-string v1, "--max"

    .line 1053
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_226

    add-int/lit8 v7, v7, 0x1

    .line 1055
    array-length v1, v0

    if-lt v7, v1, :cond_204

    const-string v0, "Error: argument required for --max"

    .line 1056
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1057
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    .line 1061
    :cond_204
    :try_start_204
    aget-object v1, v0, v7

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_20a
    .catch Ljava/lang/NumberFormatException; {:try_start_204 .. :try_end_20a} :catch_20c

    goto/16 :goto_10a

    .line 1063
    :catch_20c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: --max argument not an int -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v7

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1064
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_226
    const-string v1, "--active"

    .line 1067
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_238

    move/from16 v1, v30

    const/4 v5, 0x1

    const/4 v11, 0x0

    const/16 v24, 0x1

    :goto_234
    const/16 v27, 0x1

    goto/16 :goto_3d3

    :cond_238
    const-string v1, "--current"

    .line 1070
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_245

    move/from16 v1, v30

    const/4 v5, 0x1

    const/4 v11, 0x0

    goto :goto_234

    :cond_245
    const-string v1, "--commit"

    .line 1072
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_266

    .line 1073
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1074
    :try_start_250
    iget-object v5, v14, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v10, v5, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    const/4 v11, 0x1

    or-int/2addr v10, v11

    iput v10, v5, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    .line 1075
    invoke-virtual {v14, v11, v11}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(ZZ)V

    const-string v5, "Process stats committed."

    .line 1076
    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1078
    monitor-exit v1

    goto/16 :goto_32d

    :catchall_263
    move-exception v0

    monitor-exit v1
    :try_end_265
    .catchall {:try_start_250 .. :try_end_265} :catchall_263

    throw v0

    :cond_266
    const-string v1, "--section"

    .line 1079
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_285

    add-int/lit8 v7, v7, 0x1

    .line 1081
    array-length v1, v0

    if-lt v7, v1, :cond_27c

    const-string v0, "Error: argument required for --section"

    .line 1082
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1083
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    .line 1086
    :cond_27c
    aget-object v1, v0, v7

    invoke-static {v1}, Lcom/android/server/am/ProcessStatsService;->parseSectionOptions(Ljava/lang/String;)I

    move-result v1

    move v6, v1

    goto/16 :goto_108

    :cond_285
    const-string v1, "--clear"

    .line 1087
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d3

    .line 1088
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1089
    :try_start_290
    iget-object v5, v14, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v5}, Lcom/android/internal/app/procstats/ProcessStats;->resetSafely()V

    const/4 v5, 0x0

    const/4 v10, 0x1

    .line 1090
    invoke-virtual {v14, v10, v5}, Lcom/android/server/am/ProcessStatsService;->scheduleRequestPssAllProcs(ZZ)V

    .line 1091
    iget-object v11, v14, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_29f
    .catchall {:try_start_290 .. :try_end_29f} :catchall_2d0

    .line 1093
    :try_start_29f
    invoke-virtual {v14, v5, v10, v10}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    move-result-object v11

    if-eqz v11, :cond_2bd

    .line 1095
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v10

    :goto_2aa
    if-ltz v5, :cond_2bd

    .line 1096
    new-instance v10, Ljava/io/File;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_2ba
    .catchall {:try_start_29f .. :try_end_2ba} :catchall_2c9

    add-int/lit8 v5, v5, -0x1

    goto :goto_2aa

    .line 1100
    :cond_2bd
    :try_start_2bd
    iget-object v5, v14, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const-string v5, "All process stats cleared."

    .line 1102
    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1104
    monitor-exit v1

    goto :goto_32d

    :catchall_2c9
    move-exception v0

    .line 1100
    iget-object v2, v14, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1101
    throw v0

    :catchall_2d0
    move-exception v0

    .line 1104
    monitor-exit v1
    :try_end_2d2
    .catchall {:try_start_2bd .. :try_end_2d2} :catchall_2d0

    throw v0

    :cond_2d3
    const-string v1, "--write"

    .line 1105
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2eb

    .line 1106
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1107
    :try_start_2de
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessStatsService;->writeStateSyncLocked()V

    const-string v5, "Process stats written."

    .line 1108
    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1110
    monitor-exit v1

    goto :goto_32d

    :catchall_2e8
    move-exception v0

    monitor-exit v1
    :try_end_2ea
    .catchall {:try_start_2de .. :try_end_2ea} :catchall_2e8

    throw v0

    :cond_2eb
    const-string v1, "--read"

    .line 1111
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_318

    .line 1112
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1113
    :try_start_2f6
    iget-object v5, v14, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_2fb
    .catchall {:try_start_2f6 .. :try_end_2fb} :catchall_315

    .line 1115
    :try_start_2fb
    iget-object v5, v14, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v10, v14, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v14, v5, v10}, Lcom/android/server/am/ProcessStatsService;->readLF(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z

    const-string v5, "Process stats read."

    .line 1116
    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_307
    .catchall {:try_start_2fb .. :try_end_307} :catchall_30e

    .line 1119
    :try_start_307
    iget-object v5, v14, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1121
    monitor-exit v1

    goto :goto_32d

    :catchall_30e
    move-exception v0

    .line 1119
    iget-object v2, v14, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1120
    throw v0

    :catchall_315
    move-exception v0

    .line 1121
    monitor-exit v1
    :try_end_317
    .catchall {:try_start_307 .. :try_end_317} :catchall_315

    throw v0

    :cond_318
    const-string v1, "--start-testing"

    .line 1122
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_333

    .line 1123
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/android/server/am/AppProfiler;->setTestPssMode(Z)V

    const-string v1, "Started high frequency sampling."

    .line 1124
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_32d
    move/from16 v1, v30

    const/4 v5, 0x1

    const/4 v10, 0x1

    goto/16 :goto_48

    :cond_333
    const-string v1, "--stop-testing"

    .line 1126
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_349

    .line 1127
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/server/am/AppProfiler;->setTestPssMode(Z)V

    const-string v1, "Stopped high frequency sampling."

    .line 1128
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_32d

    :cond_349
    const-string v1, "--pretend-screen-on"

    .line 1130
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35d

    .line 1131
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1132
    :try_start_354
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v5, v14, Lcom/android/server/am/ProcessStatsService;->mInjectedScreenState:Ljava/lang/Boolean;

    .line 1133
    monitor-exit v1

    goto :goto_32d

    :catchall_35a
    move-exception v0

    monitor-exit v1
    :try_end_35c
    .catchall {:try_start_354 .. :try_end_35c} :catchall_35a

    throw v0

    :cond_35d
    const-string v1, "--pretend-screen-off"

    .line 1135
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_371

    .line 1136
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1137
    :try_start_368
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v5, v14, Lcom/android/server/am/ProcessStatsService;->mInjectedScreenState:Ljava/lang/Boolean;

    .line 1138
    monitor-exit v1

    goto :goto_32d

    :catchall_36e
    move-exception v0

    monitor-exit v1
    :try_end_370
    .catchall {:try_start_368 .. :try_end_370} :catchall_36e

    throw v0

    :cond_371
    const-string v1, "--stop-pretend-screen"

    .line 1140
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_388

    .line 1141
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v11, 0x0

    .line 1142
    :try_start_37d
    iput-object v11, v14, Lcom/android/server/am/ProcessStatsService;->mInjectedScreenState:Ljava/lang/Boolean;

    .line 1143
    monitor-exit v1

    move/from16 v1, v30

    const/4 v5, 0x1

    const/4 v10, 0x1

    goto :goto_3d3

    :catchall_385
    move-exception v0

    monitor-exit v1
    :try_end_387
    .catchall {:try_start_37d .. :try_end_387} :catchall_385

    throw v0

    :cond_388
    const/4 v11, 0x0

    const-string v1, "-h"

    .line 1145
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_395

    .line 1146
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_395
    const-string v1, "-a"

    .line 1148
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a5

    move/from16 v1, v30

    const/4 v5, 0x1

    const/16 v21, 0x1

    const/16 v23, 0x1

    goto :goto_3d3

    .line 1151
    :cond_3a5
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3cc

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v1, 0x2d

    if-ne v12, v1, :cond_3cc

    .line 1152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1153
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_3cc
    move-object/from16 v19, v5

    move/from16 v1, v30

    const/4 v5, 0x1

    goto/16 :goto_16a

    :goto_3d3
    add-int/2addr v7, v5

    move v11, v5

    const/4 v12, 0x0

    goto/16 :goto_38

    :cond_3d8
    move/from16 v30, v1

    move-object v5, v2

    move-object v7, v3

    move-object v0, v4

    move v12, v6

    move v4, v8

    move v2, v13

    move/from16 v3, v18

    move-object/from16 v13, v19

    move/from16 v6, v26

    move/from16 v8, v28

    goto :goto_404

    :cond_3e9
    const/4 v11, 0x0

    move-object v5, v2

    move-object v7, v3

    move-object v0, v4

    move v12, v6

    move-object v13, v11

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    :goto_404
    if-eqz v10, :cond_407

    return-void

    :cond_407
    if-eqz v9, :cond_464

    const-string v1, "Processes running summed over"

    .line 1172
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez v4, :cond_421

    const/4 v1, 0x0

    .line 1174
    :goto_411
    array-length v2, v5

    if-ge v1, v2, :cond_421

    const-string v2, " "

    .line 1175
    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1176
    aget v2, v5, v1

    invoke-static {v15, v2}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabelCsv(Ljava/io/PrintWriter;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_411

    :cond_421
    if-nez v6, :cond_434

    const/4 v1, 0x0

    .line 1180
    :goto_424
    array-length v2, v7

    if-ge v1, v2, :cond_434

    const-string v2, " "

    .line 1181
    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1182
    aget v2, v7, v1

    invoke-static {v15, v2}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabelCsv(Ljava/io/PrintWriter;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_424

    :cond_434
    if-nez v8, :cond_44b

    const/4 v12, 0x0

    .line 1186
    :goto_437
    array-length v1, v0

    if-ge v12, v1, :cond_44b

    const-string v1, " "

    .line 1187
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1188
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    aget v2, v0, v12

    aget-object v1, v1, v2

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_437

    .line 1191
    :cond_44b
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1192
    iget-object v12, v14, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v9, v0

    move-wide/from16 v10, v16

    move-object/from16 v18, v12

    move-object v12, v13

    .line 1193
    :try_start_45c
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/am/ProcessStatsService;->dumpFilteredProcessesCsvLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z[IZ[IZ[IJLjava/lang/String;)Z

    .line 1213
    monitor-exit v18

    return-void

    :catchall_461
    move-exception v0

    monitor-exit v18
    :try_end_463
    .catchall {:try_start_45c .. :try_end_463} :catchall_461

    throw v0

    :cond_464
    if-eqz v2, :cond_48a

    const-string v0, "AGGREGATED OVER LAST "

    .line 1216
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " HOURS:"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    int-to-long v3, v2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v5, v16

    move-object v7, v13

    move/from16 v8, v20

    move/from16 v9, v21

    move/from16 v10, v22

    move/from16 v11, v23

    move v13, v12

    move/from16 v12, v24

    .line 1217
    invoke-virtual/range {v1 .. v13}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZI)V

    return-void

    :cond_48a
    if-lez v3, :cond_56c

    const-string v0, "LAST STATS AT INDEX "

    .line 1221
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ":"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1227
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1229
    :try_start_4a0
    invoke-virtual {v14, v1, v1, v2}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    move-result-object v0

    .line 1230
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v3, v1, :cond_4c1

    const-string v1, "Only have "

    .line 1231
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " data sets"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4bb
    .catchall {:try_start_4a0 .. :try_end_4bb} :catchall_565

    .line 1238
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 1234
    :cond_4c1
    :try_start_4c1
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1235
    new-instance v2, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 1236
    invoke-virtual {v14, v2, v1}, Lcom/android/server/am/ProcessStatsService;->readLF(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z
    :try_end_4da
    .catchall {:try_start_4c1 .. :try_end_4da} :catchall_565

    .line 1238
    iget-object v4, v14, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1242
    iget-object v4, v2, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v4, :cond_505

    if-nez v25, :cond_4e7

    if-eqz v20, :cond_4ec

    :cond_4e7
    const-string v1, "err,"

    .line 1243
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4ec
    const-string v1, "Failure reading "

    .line 1244
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "; "

    .line 1245
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 1248
    :cond_505
    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".ci"

    .line 1249
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v25, :cond_561

    if-eqz v20, :cond_518

    goto :goto_561

    :cond_518
    const-string v1, "COMMITTED STATS FROM "

    .line 1254
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1255
    iget-object v1, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v0, :cond_529

    const-string v0, " (checked in)"

    .line 1256
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_529
    const-string v0, ":"

    .line 1257
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-nez v21, :cond_53f

    if-eqz v22, :cond_533

    goto :goto_53f

    :cond_533
    move-object v1, v2

    move-object/from16 v2, p1

    move-object v3, v13

    move-wide/from16 v4, v16

    move/from16 v6, v24

    .line 1265
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    goto :goto_564

    :cond_53f
    :goto_53f
    const/4 v11, 0x1

    xor-int/lit8 v6, v22, 0x1

    move-object v1, v2

    move-object/from16 v2, p1

    move-object v3, v13

    move-wide/from16 v4, v16

    move/from16 v7, v21

    move/from16 v8, v23

    move/from16 v9, v24

    move v10, v12

    .line 1259
    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZZI)V

    if-eqz v23, :cond_564

    const-string v0, "  mFile="

    .line 1262
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessStatsService;->getCurrentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_564

    .line 1252
    :cond_561
    :goto_561
    invoke-virtual {v2, v15, v13, v12}, Lcom/android/internal/app/procstats/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    :cond_564
    :goto_564
    return-void

    :catchall_565
    move-exception v0

    .line 1238
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1239
    throw v0

    :cond_56c
    const/4 v11, 0x1

    if-nez v23, :cond_571

    if-eqz v25, :cond_6cd

    :cond_571
    if-nez v27, :cond_6cd

    .line 1273
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    if-nez v25, :cond_57c

    move v0, v11

    goto :goto_57d

    :cond_57c
    const/4 v0, 0x0

    :goto_57d
    const/4 v2, 0x0

    .line 1275
    :try_start_57e
    invoke-virtual {v14, v2, v2, v0}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    move-result-object v10
    :try_end_582
    .catchall {:try_start_57e .. :try_end_582} :catchall_6c6

    if-eqz v10, :cond_6ba

    if-eqz v25, :cond_588

    const/4 v0, 0x0

    goto :goto_58d

    .line 1277
    :cond_588
    :try_start_588
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_58d
    if-gez v0, :cond_590

    const/4 v0, 0x0

    :cond_590
    move v9, v0

    const/4 v1, 0x0

    .line 1281
    :goto_592
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_596
    .catchall {:try_start_588 .. :try_end_596} :catchall_6b6

    if-ge v9, v0, :cond_6b0

    .line 1284
    :try_start_598
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1285
    new-instance v2, Lcom/android/internal/app/procstats/ProcessStats;
    :try_end_5aa
    .catchall {:try_start_598 .. :try_end_5aa} :catchall_68f

    const/4 v8, 0x0

    :try_start_5ab
    invoke-direct {v2, v8}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 1286
    invoke-virtual {v14, v2, v0}, Lcom/android/server/am/ProcessStatsService;->readLF(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z

    .line 1287
    iget-object v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v3, :cond_5ea

    if-nez v25, :cond_5b9

    if-eqz v20, :cond_5be

    :cond_5b9
    const-string v0, "err,"

    .line 1288
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_5be
    const-string v0, "Failure reading "

    .line 1289
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "; "

    .line 1290
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1292
    new-instance v0, Ljava/io/File;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move/from16 v19, v8

    move v2, v9

    move-object v14, v10

    goto/16 :goto_6a8

    .line 1295
    :cond_5ea
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const-string v3, ".ci"

    .line 1296
    invoke-virtual {v7, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v25, :cond_65b

    if-eqz v20, :cond_5fe

    goto/16 :goto_65b

    :cond_5fe
    if-eqz v1, :cond_606

    .line 1302
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V
    :try_end_603
    .catchall {:try_start_5ab .. :try_end_603} :catchall_688

    move/from16 v18, v1

    goto :goto_608

    :cond_606
    move/from16 v18, v11

    :goto_608
    :try_start_608
    const-string v1, "COMMITTED STATS FROM "

    .line 1306
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1307
    iget-object v1, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v3, :cond_619

    const-string v1, " (checked in)"

    .line 1308
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_619
    const-string v1, ":"

    .line 1309
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_61e
    .catchall {:try_start_608 .. :try_end_61e} :catchall_652

    if-eqz v22, :cond_63c

    const/4 v6, 0x0

    const/16 v19, 0x0

    const/16 v26, 0x0

    move-object v1, v2

    move-object/from16 v2, p1

    move-object v3, v13

    move-wide/from16 v4, v16

    move-object v11, v7

    move/from16 v7, v19

    move/from16 v19, v8

    move/from16 v8, v26

    move/from16 v31, v9

    move/from16 v9, v24

    move-object v14, v10

    move v10, v12

    .line 1314
    :try_start_638
    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZZI)V

    goto :goto_64d

    :cond_63c
    move-object v11, v7

    move/from16 v19, v8

    move/from16 v31, v9

    move-object v14, v10

    move-object v1, v2

    move-object/from16 v2, p1

    move-object v3, v13

    move-wide/from16 v4, v16

    move/from16 v6, v24

    .line 1317
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    :try_end_64d
    .catchall {:try_start_638 .. :try_end_64d} :catchall_650

    :goto_64d
    move/from16 v1, v18

    goto :goto_664

    :catchall_650
    move-exception v0

    goto :goto_658

    :catchall_652
    move-exception v0

    move/from16 v19, v8

    move/from16 v31, v9

    move-object v14, v10

    :goto_658
    move/from16 v1, v18

    goto :goto_695

    :cond_65b
    :goto_65b
    move-object v11, v7

    move/from16 v19, v8

    move/from16 v31, v9

    move-object v14, v10

    .line 1299
    :try_start_661
    invoke-virtual {v2, v15, v13, v12}, Lcom/android/internal/app/procstats/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    :goto_664
    if-eqz v25, :cond_683

    .line 1322
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".ci"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_683
    .catchall {:try_start_661 .. :try_end_683} :catchall_686

    :cond_683
    move/from16 v2, v31

    goto :goto_6a8

    :catchall_686
    move-exception v0

    goto :goto_695

    :catchall_688
    move-exception v0

    move/from16 v19, v8

    move/from16 v31, v9

    move-object v14, v10

    goto :goto_695

    :catchall_68f
    move-exception v0

    move/from16 v31, v9

    move-object v14, v10

    const/16 v19, 0x0

    :goto_695
    :try_start_695
    const-string v2, "**** FAILURE DUMPING STATE: "

    .line 1326
    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 v2, v31

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1327
    invoke-virtual {v0, v15}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_6a8
    .catchall {:try_start_695 .. :try_end_6a8} :catchall_6b6

    :goto_6a8
    add-int/lit8 v9, v2, 0x1

    const/4 v11, 0x1

    move-object v10, v14

    move-object/from16 v14, p0

    goto/16 :goto_592

    :cond_6b0
    const/16 v19, 0x0

    move-object/from16 v14, p0

    move v11, v1

    goto :goto_6c0

    :catchall_6b6
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_6c7

    :cond_6ba
    const/16 v19, 0x0

    move-object/from16 v14, p0

    move/from16 v11, v19

    .line 1332
    :goto_6c0
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_6d1

    :catchall_6c6
    move-exception v0

    :goto_6c7
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1333
    throw v0

    :cond_6cd
    const/16 v19, 0x0

    move/from16 v11, v19

    :goto_6d1
    if-nez v25, :cond_767

    .line 1336
    iget-object v10, v14, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    if-eqz v20, :cond_6e5

    .line 1338
    :try_start_6d8
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v0, v15, v13, v12}, Lcom/android/internal/app/procstats/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    move/from16 v29, v11

    move-object v11, v10

    goto :goto_72a

    :catchall_6e1
    move-exception v0

    move-object v11, v10

    goto/16 :goto_763

    :cond_6e5
    if-eqz v11, :cond_6ea

    .line 1341
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_6ea
    const-string v0, "CURRENT STATS:"

    .line 1343
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-nez v21, :cond_702

    if-eqz v22, :cond_6f4

    goto :goto_702

    .line 1351
    :cond_6f4
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    move-object/from16 v2, p1

    move-object v3, v13

    move-wide/from16 v4, v16

    move/from16 v6, v24

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    move-object v11, v10

    goto :goto_728

    .line 1345
    :cond_702
    :goto_702
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;
    :try_end_704
    .catchall {:try_start_6d8 .. :try_end_704} :catchall_6e1

    if-nez v22, :cond_708

    const/4 v6, 0x1

    goto :goto_70a

    :cond_708
    move/from16 v6, v19

    :goto_70a
    move-object/from16 v2, p1

    move-object v3, v13

    move-wide/from16 v4, v16

    move/from16 v7, v21

    move/from16 v8, v23

    move/from16 v9, v24

    move-object v11, v10

    move v10, v12

    :try_start_717
    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZZI)V

    if-eqz v23, :cond_728

    const-string v0, "  mFile="

    .line 1348
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessStatsService;->getCurrentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_728
    :goto_728
    const/16 v29, 0x1

    .line 1355
    :goto_72a
    monitor-exit v11
    :try_end_72b
    .catchall {:try_start_717 .. :try_end_72b} :catchall_765

    if-nez v27, :cond_767

    if-eqz v29, :cond_732

    .line 1358
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_732
    const-string v0, "AGGREGATED OVER LAST 24 HOURS:"

    .line 1360
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-wide/16 v3, 0x18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v5, v16

    move-object v7, v13

    move/from16 v8, v20

    move/from16 v9, v21

    move/from16 v10, v22

    move/from16 v11, v23

    move/from16 v18, v12

    move/from16 v12, v24

    move-object/from16 v19, v13

    move/from16 v13, v18

    .line 1361
    invoke-virtual/range {v1 .. v13}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZI)V

    .line 1363
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "AGGREGATED OVER LAST 3 HOURS:"

    .line 1364
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-wide/16 v3, 0x3

    move-object/from16 v7, v19

    .line 1365
    invoke-virtual/range {v1 .. v13}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZI)V

    goto :goto_767

    .line 1355
    :goto_763
    :try_start_763
    monitor-exit v11
    :try_end_764
    .catchall {:try_start_763 .. :try_end_764} :catchall_765

    throw v0

    :catchall_765
    move-exception v0

    goto :goto_763

    :cond_767
    :goto_767
    return-void

    :array_768
    .array-data 4
        0x0
        0x4
    .end array-data
.end method

.method public final dumpProto(Ljava/io/FileDescriptor;)V
    .registers 12

    .line 1389
    new-instance v7, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v7, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1393
    iget-object p1, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1394
    :try_start_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const-wide v0, 0x10b00000001L

    .line 1395
    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1396
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    const/16 v3, 0x1f

    invoke-virtual {v2, v7, v8, v9, v3}, Lcom/android/internal/app/procstats/ProcessStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1397
    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1398
    monitor-exit p1
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_3a

    const-wide v2, 0x10b00000002L

    const/4 v4, 0x3

    move-object v0, p0

    move-object v1, v7

    move-wide v5, v8

    .line 1401
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Landroid/util/proto/ProtoOutputStream;JIJ)V

    const-wide v2, 0x10b00000003L

    const/16 v4, 0x18

    .line 1404
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Landroid/util/proto/ProtoOutputStream;JIJ)V

    .line 1406
    invoke-virtual {v7}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void

    :catchall_3a
    move-exception p0

    .line 1398
    :try_start_3b
    monitor-exit p1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public final dumpProtoForStatsd(Ljava/io/FileDescriptor;)V
    .registers 11

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/util/proto/ProtoOutputStream;

    .line 1413
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    .line 1415
    new-instance v1, Lcom/android/internal/app/procstats/ProcessStats;

    invoke-direct {v1, p1}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p0

    move-object v8, v1

    .line 1416
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ProcessStatsService;->getCommittedStatsMerged(JIZLjava/util/List;Lcom/android/internal/app/procstats/ProcessStats;)J

    const-wide/32 v2, 0xf423f

    .line 1417
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/app/procstats/ProcessStats;->dumpAggregatedProtoForStatsd([Landroid/util/proto/ProtoOutputStream;J)V

    aget-object p0, v0, p1

    .line 1419
    invoke-virtual {p0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method public final getCommittedFilesLF(IZZ)Ljava/util/ArrayList;
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mFileLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 454
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 455
    array-length v1, v0

    if-gt v1, p1, :cond_c

    goto :goto_44

    .line 458
    :cond_c
    new-instance p1, Ljava/util/ArrayList;

    array-length v1, v0

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 459
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 461
    :goto_1d
    array-length v2, v0

    if-ge v1, v2, :cond_40

    .line 462
    aget-object v2, v0, v1

    .line 463
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    if-nez p3, :cond_31

    const-string v3, ".ci"

    .line 465
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    goto :goto_3d

    :cond_31
    if-nez p2, :cond_3a

    .line 469
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    goto :goto_3d

    .line 473
    :cond_3a
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 475
    :cond_40
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object p1

    :cond_44
    :goto_44
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCommittedStats(JIZLjava/util/List;)J
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIZ",
            "Ljava/util/List<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)J"
        }
    .end annotation

    .line 610
    new-instance v6, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessStatsService;->getCommittedStatsMerged(JIZLjava/util/List;Lcom/android/internal/app/procstats/ProcessStats;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getCommittedStatsMerged(JIZLjava/util/List;Lcom/android/internal/app/procstats/ProcessStats;)J
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIZ",
            "Ljava/util/List<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Lcom/android/internal/app/procstats/ProcessStats;",
            ")J"
        }
    .end annotation

    const-string v0, "ProcessStatsService"

    .line 625
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.PACKAGE_USAGE_STATS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 631
    :try_start_13
    invoke-virtual {p0, v2, v2, v1}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_d9

    const-string/jumbo v4, "yyyy-MM-dd-HH-mm-ss"

    .line 634
    invoke-static {v4, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 635
    new-instance v5, Lcom/android/internal/app/procstats/ProcessStats;

    invoke-direct {v5, v2}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 636
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_2e
    if-ltz v2, :cond_c8

    .line 637
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_36} :catch_e1
    .catchall {:try_start_13 .. :try_end_36} :catchall_df

    :try_start_36
    const-string/jumbo v6, "state-"

    .line 640
    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x6

    const-string v7, ".bin"

    .line 642
    invoke-virtual {v1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 639
    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 643
    invoke-virtual {v6, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_c4

    .line 644
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x10000000

    invoke-static {v6, v7}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 647
    new-instance v7, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v7, v6}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 648
    invoke-virtual {v5}, Lcom/android/internal/app/procstats/ProcessStats;->reset()V

    .line 649
    invoke-virtual {v5, v7}, Lcom/android/internal/app/procstats/ProcessStats;->read(Ljava/io/InputStream;)V

    .line 650
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 651
    iget-wide v6, v5, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    cmp-long v8, v6, p1

    if-lez v8, :cond_6f

    move-wide p1, v6

    :cond_6f
    if-eqz p4, :cond_75

    .line 655
    invoke-virtual {p6, v5}, Lcom/android/internal/app/procstats/ProcessStats;->add(Lcom/android/internal/app/procstats/ProcessStats;)V

    goto :goto_7e

    :cond_75
    if-eqz p5, :cond_7e

    .line 657
    invoke-static {v5, p3}, Lcom/android/server/am/ProcessStatsService;->protoToParcelFileDescriptor(Lcom/android/internal/app/procstats/ProcessStats;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    invoke-interface {p5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 659
    :cond_7e
    :goto_7e
    iget-object v6, v5, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v6, :cond_c4

    .line 660
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure reading process stats: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_98} :catch_af
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_36 .. :try_end_98} :catch_99
    .catchall {:try_start_36 .. :try_end_98} :catchall_df

    goto :goto_c4

    :catch_99
    move-exception v6

    .line 667
    :try_start_9a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure to read and parse commit file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c4

    :catch_af
    move-exception v6

    .line 665
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure opening procstat file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c4
    :goto_c4
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_2e

    :cond_c8
    if-eqz p4, :cond_d3

    if-eqz p5, :cond_d3

    .line 671
    invoke-static {p6, p3}, Lcom/android/server/am/ProcessStatsService;->protoToParcelFileDescriptor(Lcom/android/internal/app/procstats/ProcessStats;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p3

    invoke-interface {p5, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_d3} :catch_e1
    .catchall {:try_start_9a .. :try_end_d3} :catchall_df

    .line 678
    :cond_d3
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-wide p1

    :cond_d9
    :goto_d9
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_e8

    :catchall_df
    move-exception p1

    goto :goto_e9

    :catch_e1
    move-exception p3

    :try_start_e2
    const-string p4, "Failure opening procstat file"

    .line 676
    invoke-static {v0, p4, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e7
    .catchall {:try_start_e2 .. :try_end_e7} :catchall_df

    goto :goto_d9

    :goto_e8
    return-wide p1

    .line 678
    :goto_e9
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 679
    throw p1
.end method

.method public final getCurrentFile()Ljava/io/File;
    .registers 2

    .line 341
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 343
    :try_start_5
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_11

    .line 345
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_11
    move-exception v0

    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 346
    throw v0
.end method

.method public getCurrentMemoryState()I
    .registers 2

    .line 786
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 787
    :try_start_3
    iget p0, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 788
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getCurrentStats(Ljava/util/List;)[B
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)[B"
        }
    .end annotation

    .line 569
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.PACKAGE_USAGE_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 572
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 573
    :try_start_11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 574
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 575
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-wide v2, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    const/4 v5, 0x0

    .line 576
    invoke-virtual {v4, v0, v2, v3, v5}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;JI)V

    .line 577
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_11 .. :try_end_26} :catchall_81

    .line 578
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    if-eqz p1, :cond_77

    const/4 v1, 0x1

    .line 581
    :try_start_2e
    invoke-virtual {p0, v5, v5, v1}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_77

    .line 583
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_70

    sub-int/2addr v3, v1

    :goto_39
    if-ltz v3, :cond_77

    .line 585
    :try_start_3b
    new-instance v1, Ljava/io/File;

    .line 586
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x10000000

    .line 585
    invoke-static {v1, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 587
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_4f} :catch_50
    .catchall {:try_start_3b .. :try_end_4f} :catchall_70

    goto :goto_6d

    :catch_50
    move-exception v1

    :try_start_51
    const-string v4, "ProcessStatsService"

    .line 589
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure opening procstat file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6d
    .catchall {:try_start_51 .. :try_end_6d} :catchall_70

    :goto_6d
    add-int/lit8 v3, v3, -0x1

    goto :goto_39

    :catchall_70
    move-exception p1

    .line 595
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 596
    throw p1

    .line 595
    :cond_77
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 597
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0

    return-object p0

    :catchall_81
    move-exception p0

    .line 577
    :try_start_82
    monitor-exit v1
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_81

    throw p0
.end method

.method public getMemFactorLocked()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 224
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget p0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public getMinAssociationDumpDuration()J
    .registers 3

    .line 688
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    sget-wide v0, Lcom/android/server/am/ActivityManagerConstants;->MIN_ASSOC_LOG_DURATION:J

    return-wide v0
.end method

.method public getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object p0

    return-object p0
.end method

.method public getServiceState(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;
    .registers 15

    .line 173
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 174
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/app/procstats/ProcessStats;->getServiceStateLocked(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_10
    move-exception p0

    .line 176
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;
    .registers 14

    .line 713
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.PACKAGE_USAGE_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 717
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 718
    :try_start_11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 719
    iget-object v5, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 720
    iget-object v5, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-wide v3, v5, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    const/4 v6, 0x0

    .line 721
    invoke-virtual {v5, v0, v3, v4, v6}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;JI)V

    .line 722
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v4, v3, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-wide v7, v3, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v4, v7

    .line 724
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_11 .. :try_end_2d} :catchall_10b

    .line 725
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    cmp-long v1, v4, p1

    if-gez v1, :cond_d8

    const/4 v1, 0x1

    .line 729
    :try_start_37
    invoke-virtual {p0, v6, v6, v1}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_d8

    .line 730
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_d8

    .line 731
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 732
    sget-object v4, Lcom/android/internal/app/procstats/ProcessStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/procstats/ProcessStats;

    .line 733
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 734
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_56
    if-ltz v0, :cond_d1

    .line 735
    iget-wide v7, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-wide v9, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v7, v9

    cmp-long v1, v7, p1

    if-gez v1, :cond_d1

    .line 737
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v5, Ljava/io/File;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    add-int/lit8 v0, v0, -0x1

    .line 739
    new-instance v5, Lcom/android/internal/app/procstats/ProcessStats;

    invoke-direct {v5, v6}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 740
    invoke-virtual {p0, v5, v1}, Lcom/android/server/am/ProcessStatsService;->readLF(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z

    .line 741
    iget-object v1, v5, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-nez v1, :cond_a8

    .line 742
    invoke-virtual {v4, v5}, Lcom/android/internal/app/procstats/ProcessStats;->add(Lcom/android/internal/app/procstats/ProcessStats;)V

    .line 743
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Added stats: "

    .line 744
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    iget-object v7, v5, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", over "

    .line 746
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    iget-wide v7, v5, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-wide v9, v5, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v7, v9

    invoke-static {v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v5, "ProcessStatsService"

    .line 749
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    :cond_a8
    const-string v1, "ProcessStatsService"

    .line 751
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure reading "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "; "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    .line 756
    :cond_d1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 757
    invoke-virtual {v4, v0, v6}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 760
    :cond_d8
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    .line 761
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 762
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object p2

    .line 763
    new-instance v0, Lcom/android/server/am/ProcessStatsService$4;

    const-string v1, "ProcessStats pipe output"

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/android/server/am/ProcessStatsService$4;-><init>(Lcom/android/server/am/ProcessStatsService;Ljava/lang/String;[Landroid/os/ParcelFileDescriptor;[B)V

    .line 774
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 775
    aget-object p1, p2, v6
    :try_end_ef
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_ef} :catch_f7
    .catchall {:try_start_37 .. :try_end_ef} :catchall_f5

    .line 779
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_f5
    move-exception p1

    goto :goto_105

    :catch_f7
    move-exception p1

    :try_start_f8
    const-string p2, "ProcessStatsService"

    const-string v0, "Failed building output pipe"

    .line 777
    invoke-static {p2, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ff
    .catchall {:try_start_f8 .. :try_end_ff} :catchall_f5

    .line 779
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2

    :goto_105
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 780
    throw p1

    :catchall_10b
    move-exception p0

    .line 724
    :try_start_10c
    monitor-exit v1
    :try_end_10d
    .catchall {:try_start_10c .. :try_end_10d} :catchall_10b

    throw p0
.end method

.method public final getUidProcStateStatsOverTime(J)Landroid/util/SparseArray;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/SparseArray<",
            "[J>;"
        }
    .end annotation

    .line 792
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats;

    invoke-direct {v0}, Lcom/android/internal/app/procstats/ProcessStats;-><init>()V

    .line 794
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 795
    :try_start_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 796
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 797
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-wide v2, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    .line 798
    invoke-virtual {v0, v4}, Lcom/android/internal/app/procstats/ProcessStats;->add(Lcom/android/internal/app/procstats/ProcessStats;)V

    .line 799
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-wide v5, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v3, v5

    .line 800
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_c4

    cmp-long v1, v3, p1

    const/4 v2, 0x0

    if-gez v1, :cond_a2

    .line 803
    :try_start_28
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v1, 0x1

    .line 805
    invoke-virtual {p0, v2, v2, v1}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_95

    .line 806
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_95

    .line 807
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_3f
    if-ltz v4, :cond_95

    .line 808
    iget-wide v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-wide v7, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v5, v7

    cmp-long v1, v5, p1

    if-gez v1, :cond_95

    .line 810
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v5, Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    add-int/lit8 v4, v4, -0x1

    .line 812
    new-instance v5, Lcom/android/internal/app/procstats/ProcessStats;

    invoke-direct {v5, v2}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 813
    invoke-virtual {p0, v5, v1}, Lcom/android/server/am/ProcessStatsService;->readLF(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z

    .line 814
    iget-object v1, v5, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-nez v1, :cond_6c

    .line 815
    invoke-virtual {v0, v5}, Lcom/android/internal/app/procstats/ProcessStats;->add(Lcom/android/internal/app/procstats/ProcessStats;)V

    goto :goto_3f

    :cond_6c
    const-string v1, "ProcessStatsService"

    .line 817
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure reading "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "; "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catchall {:try_start_28 .. :try_end_94} :catchall_9b

    goto :goto_3f

    .line 824
    :cond_95
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_a2

    :catchall_9b
    move-exception p1

    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 825
    throw p1

    .line 827
    :cond_a2
    :goto_a2
    iget-object p0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    .line 828
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 829
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p2

    :goto_ad
    if-ge v2, p2, :cond_c3

    .line 830
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 831
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/UidState;

    .line 832
    invoke-virtual {v1}, Lcom/android/internal/app/procstats/UidState;->getAggregatedDurationsInStates()[J

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_ad

    :cond_c3
    return-object p1

    :catchall_c4
    move-exception p0

    .line 800
    :try_start_c5
    monitor-exit v1
    :try_end_c6
    .catchall {:try_start_c5 .. :try_end_c6} :catchall_c4

    throw p0
.end method

.method public isMemFactorLowered()Z
    .registers 1

    .line 180
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStatsService;->mMemFactorLowered:Z

    return p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception p0

    .line 151
    instance-of p1, p0, Ljava/lang/SecurityException;

    if-nez p1, :cond_11

    const-string p1, "ProcessStatsService"

    const-string p2, "Process Stats Crash"

    .line 152
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    :cond_11
    throw p0
.end method

.method public final performWriteState(J)V
    .registers 11

    .line 353
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    monitor-enter v0

    .line 354
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    .line 355
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    const/4 v3, 0x0

    .line 356
    iput-boolean v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z

    if-nez v1, :cond_e

    .line 358
    monitor-exit v0

    return-void

    :cond_e
    const/4 v3, 0x0

    .line 360
    iput-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    .line 361
    iput-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    .line 362
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 363
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_60

    .line 365
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 368
    :try_start_1d
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 369
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 370
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 371
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    const-string/jumbo v0, "procstats"

    .line 373
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    add-long/2addr v6, p1

    .line 372
    invoke-static {v0, v6, v7}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_3a} :catch_3d
    .catchall {:try_start_1d .. :try_end_3a} :catchall_3b

    goto :goto_48

    :catchall_3b
    move-exception p1

    goto :goto_54

    :catch_3d
    move-exception p1

    :try_start_3e
    const-string p2, "ProcessStatsService"

    const-string v0, "Error writing process statistics"

    .line 376
    invoke-static {p2, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 377
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_48
    .catchall {:try_start_3e .. :try_end_48} :catchall_3b

    .line 379
    :goto_48
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 380
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->trimHistoricStatesWriteLF()V

    .line 381
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 379
    :goto_54
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 380
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->trimHistoricStatesWriteLF()V

    .line 381
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 382
    throw p1

    :catchall_60
    move-exception p0

    .line 363
    :try_start_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw p0
.end method

.method public publish()V
    .registers 4

    .line 838
    const-class v0, Lcom/android/internal/app/procstats/ProcessStatsInternal;

    new-instance v1, Lcom/android/server/am/ProcessStatsService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/ProcessStatsService$LocalService;-><init>(Lcom/android/server/am/ProcessStatsService;Lcom/android/server/am/ProcessStatsService$LocalService-IA;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public final readLF(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mFileLock"
        }
    .end annotation

    const-string p0, "ProcessStatsService"

    const/4 v0, 0x0

    .line 388
    :try_start_3
    invoke-virtual {p2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p2

    .line 389
    invoke-virtual {p1, p2}, Lcom/android/internal/app/procstats/ProcessStats;->read(Ljava/io/InputStream;)V

    .line 390
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V

    .line 391
    iget-object p2, p1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz p2, :cond_28

    .line 392
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring existing stats; "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_2a

    return v0

    :cond_28
    const/4 p0, 0x1

    return p0

    :catchall_2a
    move-exception p2

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "caught exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    const-string p1, "Error reading process statistics"

    .line 445
    invoke-static {p0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public final scheduleRequestPssAllProcs(ZZ)V
    .registers 5

    .line 320
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/am/ProcessStatsService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/ProcessStatsService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ProcessStatsService;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setMemFactorLocked(IZJ)Z
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 185
    iget v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p1, v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    :goto_9
    iput-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mMemFactorLowered:Z

    .line 186
    iput p1, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    .line 187
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mInjectedScreenState:Ljava/lang/Boolean;

    if-eqz v0, :cond_15

    .line 188
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    :cond_15
    if-eqz p2, :cond_19

    add-int/lit8 p1, p1, 0x4

    .line 193
    :cond_19
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget p2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    if-eq p1, p2, :cond_7d

    const/4 v0, -0x1

    if-eq p2, v0, :cond_2d

    .line 195
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    aget-wide v3, v0, p2

    iget-wide v5, p0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    sub-long v5, p3, v5

    add-long/2addr v3, v5

    aput-wide v3, v0, p2

    .line 198
    :cond_2d
    iput p1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    .line 199
    iput-wide p3, p0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    .line 200
    iget-object p0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 201
    invoke-virtual {p0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object p0

    .line 202
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p2

    sub-int/2addr p2, v2

    :goto_3c
    if-ltz p2, :cond_7c

    .line 204
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 205
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_49
    if-ltz v1, :cond_79

    .line 206
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/LongSparseArray;

    .line 207
    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    sub-int/2addr v4, v2

    :goto_56
    if-ltz v4, :cond_76

    .line 208
    invoke-virtual {v3, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 209
    iget-object v5, v5, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    .line 210
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    sub-int/2addr v6, v2

    :goto_65
    if-ltz v6, :cond_73

    .line 211
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/procstats/ServiceState;

    .line 212
    invoke-virtual {v7, p1, p3, p4}, Lcom/android/internal/app/procstats/ServiceState;->setMemFactor(IJ)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_65

    :cond_73
    add-int/lit8 v4, v4, -0x1

    goto :goto_56

    :cond_76
    add-int/lit8 v1, v1, -0x1

    goto :goto_49

    :cond_79
    add-int/lit8 p2, p2, -0x1

    goto :goto_3c

    :cond_7c
    return v2

    :cond_7d
    return v1
.end method

.method public shouldWriteNowLocked(J)Z
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 240
    iget-wide v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    sget-wide v2, Lcom/android/server/am/ProcessStatsService;->WRITE_PERIOD:J

    add-long/2addr v0, v2

    cmp-long p1, p1, v0

    if-lez p1, :cond_2b

    .line 241
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sget-wide v2, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_PERIOD:J

    add-long/2addr v0, v2

    cmp-long p1, p1, v0

    const/4 p2, 0x1

    if-lez p1, :cond_2a

    .line 243
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v2, p1, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    sget-wide v4, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_UPTIME_PERIOD:J

    add-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-lez p1, :cond_2a

    .line 245
    iput-boolean p2, p0, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    :cond_2a
    return p2

    :cond_2b
    const/4 p0, 0x0

    return p0
.end method

.method public shutdown()V
    .registers 4

    const-string v0, "ProcessStatsService"

    const-string v1, "Writing process stats before shutdown..."

    .line 253
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 255
    :try_start_a
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    .line 256
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->writeStateSyncLocked()V

    const/4 v1, 0x1

    .line 257
    iput-boolean v1, p0, Lcom/android/server/am/ProcessStatsService;->mShuttingDown:Z

    .line 258
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public final trimHistoricStatesWriteLF()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mFileLock"
        }
    .end annotation

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 481
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_b

    return-void

    .line 485
    :cond_b
    :goto_b
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_36

    .line 486
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 487
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pruning old procstats: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ProcessStatsService"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_b

    :cond_36
    return-void
.end method

.method public final updateFileLocked()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 332
    :try_start_5
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "state-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v4, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".bin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_3a

    .line 335
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 337
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    return-void

    :catchall_3a
    move-exception v0

    .line 335
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 336
    throw v0
.end method

.method public updateProcessStateHolderLocked(Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;Ljava/lang/String;IJLjava/lang/String;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;IJ)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-result-object p2

    iput-object p2, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->pkg:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 162
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {p0, p2, p6}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Lcom/android/internal/app/procstats/ProcessStats$PackageState;Ljava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object p0

    iput-object p0, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    return-void
.end method

.method public updateTrackingAssociationsLocked(IJ)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 235
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/app/procstats/ProcessStats;->updateTrackingAssociationsLocked(IJ)V

    return-void
.end method

.method public writeStateAsync()V
    .registers 3

    .line 262
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 263
    :try_start_4
    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(Z)V

    .line 264
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public final writeStateLocked(Z)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 274
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mShuttingDown:Z

    if-eqz v0, :cond_5

    return-void

    .line 277
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    const/4 v1, 0x0

    .line 278
    iput-boolean v1, p0, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    .line 279
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(ZZ)V

    return-void
.end method

.method public final writeStateLocked(ZZ)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 287
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_11

    iget-boolean v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z

    if-nez v3, :cond_3c

    .line 288
    :cond_11
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    .line 289
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 290
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-wide v1, v3, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    if-eqz p2, :cond_2a

    .line 292
    iget v6, v3, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    or-int/2addr v6, v5

    iput v6, v3, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    .line 294
    :cond_2a
    iget-object v6, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    invoke-virtual {v3, v6, v4}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 295
    new-instance v3, Landroid/util/AtomicFile;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->getCurrentFile()Ljava/io/File;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    .line 296
    iput-boolean p2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z

    :cond_3c
    if-eqz p2, :cond_49

    .line 299
    iget-object p2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {p2}, Lcom/android/internal/app/procstats/ProcessStats;->resetSafely()V

    .line 300
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->updateFileLocked()V

    .line 301
    invoke-virtual {p0, v5, v4}, Lcom/android/server/am/ProcessStatsService;->scheduleRequestPssAllProcs(ZZ)V

    .line 303
    :cond_49
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    .line 304
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    if-nez p1, :cond_64

    .line 307
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/server/am/ProcessStatsService$2;

    invoke-direct {p2, p0, v3, v4}, Lcom/android/server/am/ProcessStatsService$2;-><init>(Lcom/android/server/am/ProcessStatsService;J)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 312
    monitor-exit v0

    return-void

    .line 314
    :cond_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_3 .. :try_end_65} :catchall_69

    .line 316
    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/ProcessStatsService;->performWriteState(J)V

    return-void

    :catchall_69
    move-exception p0

    .line 314
    :try_start_6a
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw p0
.end method

.method public final writeStateSyncLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v0, 0x1

    .line 269
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(Z)V

    return-void
.end method
