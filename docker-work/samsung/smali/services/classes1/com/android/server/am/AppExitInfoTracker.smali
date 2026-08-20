.class public final Lcom/android/server/am/AppExitInfoTracker;
.super Ljava/lang/Object;
.source "AppExitInfoTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;,
        Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;,
        Lcom/android/server/am/AppExitInfoTracker$KillHandler;,
        Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;,
        Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;,
        Lcom/android/server/am/AppExitInfoTracker$LmkdKillListener;
    }
.end annotation


# static fields
.field public static final APP_EXIT_INFO_FILE:Ljava/lang/String; = "procexitinfo"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final APP_EXIT_INFO_PERSIST_INTERVAL:J

.field public static final APP_EXIT_INFO_STATSD_LOG_DEBOUNCE:J

.field public static final APP_EXIT_RAW_INFO_POOL_SIZE:I = 0x8

.field public static final APP_EXIT_STORE_DIR:Ljava/lang/String; = "procexitstore"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final APP_TRACE_FILE_SUFFIX:Ljava/lang/String; = ".gz"

.field public static final FOREACH_ACTION_NONE:I = 0x0

.field public static final FOREACH_ACTION_REMOVE_ITEM:I = 0x1

.field public static final FOREACH_ACTION_STOP_ITERATION:I = 0x2

.field public static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field public final mActiveAppStateSummary:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "[B>;>;"
        }
    .end annotation
.end field

.field public final mActiveAppTraces:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation
.end field

.field public mAppExitInfoHistoryListSize:I

.field public mAppExitInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mAppExitInfoPersistTask:Ljava/lang/Runnable;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mAppExitInfoSourceLmkd:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

.field public final mAppExitInfoSourceZygote:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

.field public final mAppTraceRetriever:Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;

.field public mAps:Lcom/android/server/appprelauncher/AppPrelaunchManagerService;

.field public final mData:Lcom/android/internal/app/ProcessMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;",
            ">;"
        }
    .end annotation
.end field

.field public final mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

.field public mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

.field public mLastAppExitInfoPersistTimestamp:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public mProcExitInfoFile:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mProcExitStoreDir:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mRawRecordsPool:Landroid/util/Pools$SynchronizedPool;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/app/ApplicationExitInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mService:Lcom/android/server/am/ActivityManagerService;

.field public final mTmpInfoList:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ApplicationExitInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mTmpInfoList2:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ApplicationExitInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0oSXMpOjZ6ocnXAbxnlw3HPIwoU(Lcom/android/server/am/AppExitInfoTracker;ILjava/util/ArrayList;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/am/AppExitInfoTracker;->lambda$updateExitInfoIfNecessaryLocked$3(ILjava/util/ArrayList;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$1dBcoK5YhPMc_75TM8Y0s1OmOLU(Landroid/util/ArraySet;Ljava/io/File;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->lambda$pruneAnrTracesIfNecessaryLocked$13(Landroid/util/ArraySet;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$2W84y5cGeBOz-WBdh3po5eoP0bw(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/am/AppExitInfoTracker;->lambda$persistProcessExitInfo$6(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ExK9eoz18b2wGHYLdZD2fTjGXXc(Lcom/android/server/am/AppExitInfoTracker;ILjava/util/ArrayList;ILjava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/AppExitInfoTracker;->lambda$getExitInfo$4(ILjava/util/ArrayList;ILjava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HgA0fEpOdGFLYq7N-Ie2IlCzgmo(Lcom/android/server/am/AppExitInfoTracker$LmkdKillListener;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/am/AppExitInfoTracker;->lambda$setLmkdKillListener$1(Lcom/android/server/am/AppExitInfoTracker$LmkdKillListener;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QtGjdiNrWzhVuhHpvggi-YMnFfE(Landroid/util/ArraySet;Ljava/lang/Integer;Landroid/app/ApplicationExitInfo;)Ljava/lang/Integer;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/am/AppExitInfoTracker;->lambda$pruneAnrTracesIfNecessaryLocked$14(Landroid/util/ArraySet;Ljava/lang/Integer;Landroid/app/ApplicationExitInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TxKpkI38Q_PB6ErnmkKlBSuvDlY(Lcom/android/server/am/AppExitInfoTracker;Ljava/io/PrintWriter;Landroid/icu/text/SimpleDateFormat;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/AppExitInfoTracker;->lambda$dumpHistoryProcessExitInfo$7(Ljava/io/PrintWriter;Landroid/icu/text/SimpleDateFormat;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$X15wSZCxs6uJu-6UHjzIrTBbrLQ(ILjava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/am/AppExitInfoTracker;->lambda$removeByUserIdLocked$11(ILjava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$audzFwkF31erTagj1P7dfHEFWqI(Ljava/io/File;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/am/AppExitInfoTracker;->lambda$removeByUserIdLocked$10(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bEfcwXk52A4IvL0J2y07Xn2xdK0(Ljava/lang/String;II)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/am/AppExitInfoTracker;->lambda$sendAppKillReason$2(Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$e2KBSP-qASMO-qKJB36Gn_Ra_9g(Landroid/util/ArraySet;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/am/AppExitInfoTracker;->lambda$pruneAnrTracesIfNecessaryLocked$15(Landroid/util/ArraySet;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gh_SYwUB-n0eYbhPwnPuIlKJsH4(Landroid/app/ApplicationExitInfo;Landroid/app/ApplicationExitInfo;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->lambda$getExitInfo$5(Landroid/app/ApplicationExitInfo;Landroid/app/ApplicationExitInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lPNHZgwq4Ut2haStYryRnuBfNi4(Landroid/util/ArraySet;Ljava/io/File;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->lambda$pruneAnrTracesIfNecessaryLocked$16(Landroid/util/ArraySet;Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$thGY1BaPVdbvCjnuXyO5sOVl-YQ(ILjava/lang/Integer;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->lambda$removeByUserIdLocked$9(ILjava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$z-sWXn4GuRhvIFHHFHfIP2afCfE(Lcom/android/server/am/AppExitInfoTracker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/AppExitInfoTracker;->lambda$onSystemReady$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$zErcYZL3vGMpzjH6eqWu4ACO34c(Ljava/io/File;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/am/AppExitInfoTracker;->lambda$handleLogAnrTrace$12(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zZjI1SbHtxek36sFZkd0ENgxs5E(ILjava/lang/Integer;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->lambda$removeByUserIdLocked$8(ILjava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/am/AppExitInfoTracker;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/am/AppExitInfoTracker;)Lcom/android/server/am/ActivityManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetExitInfoLocked(Lcom/android/server/am/AppExitInfoTracker;Ljava/lang/String;II)Landroid/app/ApplicationExitInfo;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/AppExitInfoTracker;->getExitInfoLocked(Ljava/lang/String;II)Landroid/app/ApplicationExitInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mperformLogToStatsdLocked(Lcom/android/server/am/AppExitInfoTracker;Landroid/app/ApplicationExitInfo;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->performLogToStatsdLocked(Landroid/app/ApplicationExitInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateExitInfoIfNecessaryLocked(Lcom/android/server/am/AppExitInfoTracker;IILjava/lang/Integer;Ljava/lang/Integer;)Z
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/AppExitInfoTracker;->updateExitInfoIfNecessaryLocked(IILjava/lang/Integer;Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smfindAndRemoveFromSparse2dArray(Landroid/util/SparseArray;II)Ljava/lang/Object;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/am/AppExitInfoTracker;->findAndRemoveFromSparse2dArray(Landroid/util/SparseArray;II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 111
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/AppExitInfoTracker;->APP_EXIT_INFO_PERSIST_INTERVAL:J

    .line 125
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/AppExitInfoTracker;->APP_EXIT_INFO_STATSD_LOG_DEBOUNCE:J

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    .line 160
    iput-wide v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mLastAppExitInfoPersistTimestamp:J

    .line 185
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 191
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    .line 197
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList2:Ljava/util/ArrayList;

    .line 216
    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-direct {v1, p0}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;-><init>(Lcom/android/server/am/AppExitInfoTracker;)V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    .line 222
    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    const-string/jumbo v2, "zygote"

    invoke-direct {v1, p0, v2, v0}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;-><init>(Lcom/android/server/am/AppExitInfoTracker;Ljava/lang/String;Ljava/lang/Integer;)V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceZygote:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    .line 228
    new-instance v0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    const/4 v1, 0x3

    .line 229
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "lmkd"

    invoke-direct {v0, p0, v2, v1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;-><init>(Lcom/android/server/am/AppExitInfoTracker;Ljava/lang/String;Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceLmkd:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    .line 241
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    .line 252
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    .line 258
    new-instance v0, Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;-><init>(Lcom/android/server/am/AppExitInfoTracker;)V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppTraceRetriever:Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;

    .line 261
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    .line 262
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mRawRecordsPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method public static copyToGzFile(Ljava/io/File;Ljava/io/File;JJ)Z
    .registers 13

    const/4 v0, 0x0

    .line 1191
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_5e

    .line 1192
    :try_start_b
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_54

    const/16 v3, 0x2000

    :try_start_1c
    new-array v4, v3, [B

    .line 1195
    invoke-virtual {v1, p2, p3}, Ljava/io/BufferedInputStream;->skip(J)J

    :goto_21
    const-wide/16 p2, 0x0

    cmp-long p2, p4, p2

    if-lez p2, :cond_3a

    int-to-long v5, v3

    .line 1197
    invoke-static {v5, v6, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int p3, v5

    invoke-virtual {v1, v4, v0, p3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result p3

    if-gez p3, :cond_34

    goto :goto_3a

    .line 1201
    :cond_34
    invoke-virtual {v2, v4, v0, p3}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
    :try_end_37
    .catchall {:try_start_1c .. :try_end_37} :catchall_4a

    int-to-long p2, p3

    sub-long/2addr p4, p2

    goto :goto_21

    .line 1204
    :cond_3a
    :goto_3a
    :try_start_3a
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_54

    :try_start_3d
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_5e

    if-nez p2, :cond_49

    .line 1210
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_49

    const/4 v0, 0x1

    :cond_49
    return v0

    :catchall_4a
    move-exception p2

    .line 1190
    :try_start_4b
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_4f

    goto :goto_53

    :catchall_4f
    move-exception p3

    :try_start_50
    invoke-virtual {p2, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_53
    throw p2
    :try_end_54
    .catchall {:try_start_50 .. :try_end_54} :catchall_54

    :catchall_54
    move-exception p2

    :try_start_55
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_59

    goto :goto_5d

    :catchall_59
    move-exception p3

    :try_start_5a
    invoke-virtual {p2, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5d
    throw p2
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5e} :catch_5e

    :catch_5e
    move-exception p2

    .line 1205
    sget-boolean p3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz p3, :cond_81

    .line 1206
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Error in copying ANR trace from "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " to "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_81
    return v0
.end method

.method public static findAndRemoveFromSparse2dArray(Landroid/util/SparseArray;II)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/util/SparseArray<",
            "TU;>;U:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;II)TU;"
        }
    .end annotation

    .line 1329
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    const/4 v0, 0x0

    if-ltz p1, :cond_26

    .line 1331
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-nez v1, :cond_10

    return-object v0

    .line 1335
    :cond_10
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p2

    if-ltz p2, :cond_26

    .line 1337
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 1338
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1339
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-nez p2, :cond_26

    .line 1340
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_26
    return-object v0
.end method

.method public static forEachSparse2dArray(Landroid/util/SparseArray;Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/util/SparseArray<",
            "TU;>;U:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;",
            "Ljava/util/function/Consumer<",
            "TU;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_28

    .line 1285
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_28

    .line 1286
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-nez v1, :cond_13

    goto :goto_25

    .line 1290
    :cond_13
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_19
    if-ltz v2, :cond_25

    .line 1291
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_19

    :cond_25
    :goto_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_28
    return-void
.end method

.method private synthetic lambda$dumpHistoryProcessExitInfo$7(Ljava/io/PrintWriter;Landroid/icu/text/SimpleDateFormat;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .registers 11

    const-string v2, "  "

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    .line 882
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/AppExitInfoTracker;->dumpHistoryProcessExitInfoLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;Landroid/icu/text/SimpleDateFormat;)V

    const/4 p0, 0x0

    .line 883
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getExitInfo$4(ILjava/util/ArrayList;ILjava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .registers 6

    .line 603
    invoke-virtual {p5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    if-eqz p1, :cond_16

    .line 605
    iget-object p4, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->clear()V

    .line 606
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1, p0, p3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->toListLocked(Ljava/util/List;I)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_16
    const/4 p0, 0x0

    .line 608
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$getExitInfo$5(Landroid/app/ApplicationExitInfo;Landroid/app/ApplicationExitInfo;)I
    .registers 4

    .line 612
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$handleLogAnrTrace$12(Ljava/io/File;)V
    .registers 1

    .line 1172
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private synthetic lambda$onSystemReady$0()V
    .registers 3

    const-string/jumbo v0, "sys.lmk.reportkills"

    const/4 v1, 0x0

    .line 289
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "persist.sys.lmk.reportkills"

    .line 288
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0}, Lcom/android/server/am/AppExitInfoTracker;->loadExistingProcessExitInfo()V

    return-void
.end method

.method public static synthetic lambda$persistProcessExitInfo$6(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .registers 10

    const-wide v0, 0x20b00000002L

    .line 790
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    const-wide v4, 0x10900000001L

    .line 791
    invoke-virtual {p0, v4, v5, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 792
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v4, 0x0

    move v5, v4

    :goto_17
    if-ge v5, p1, :cond_25

    .line 794
    invoke-virtual {p2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    invoke-virtual {v6, p0, v0, v1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 796
    :cond_25
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 797
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$pruneAnrTracesIfNecessaryLocked$13(Landroid/util/ArraySet;Ljava/io/File;)Z
    .registers 3

    .line 1220
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "anr_"

    .line 1221
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, ".gz"

    .line 1222
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    if-eqz v0, :cond_1c

    .line 1224
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1c
    return v0
.end method

.method public static synthetic lambda$pruneAnrTracesIfNecessaryLocked$14(Landroid/util/ArraySet;Ljava/lang/Integer;Landroid/app/ApplicationExitInfo;)Ljava/lang/Integer;
    .registers 3

    .line 1236
    invoke-virtual {p2}, Landroid/app/ApplicationExitInfo;->getTraceFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 1238
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_d
    const/4 p0, 0x0

    .line 1240
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$pruneAnrTracesIfNecessaryLocked$15(Landroid/util/ArraySet;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .registers 5

    .line 1233
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_6
    if-ltz p1, :cond_19

    .line 1234
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    .line 1235
    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda6;-><init>(Landroid/util/ArraySet;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->forEachRecordLocked(Ljava/util/function/BiFunction;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_6

    :cond_19
    const/4 p0, 0x0

    .line 1243
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$pruneAnrTracesIfNecessaryLocked$16(Landroid/util/ArraySet;Ljava/io/File;)V
    .registers 2

    .line 1246
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic lambda$removeByUserIdLocked$10(Ljava/io/File;)V
    .registers 1

    .line 1039
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public static synthetic lambda$removeByUserIdLocked$11(ILjava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .registers 5

    .line 1041
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    :goto_6
    if-ltz p1, :cond_22

    .line 1042
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p0, :cond_1f

    .line 1043
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    invoke-virtual {p0}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->destroyLocked()V

    .line 1044
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_22

    :cond_1f
    add-int/lit8 p1, p1, -0x1

    goto :goto_6

    .line 1048
    :cond_22
    :goto_22
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p0

    if-nez p0, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$removeByUserIdLocked$8(ILjava/lang/Integer;)Z
    .registers 2

    .line 1037
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    if-ne p1, p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static synthetic lambda$removeByUserIdLocked$9(ILjava/lang/Integer;)Z
    .registers 2

    .line 1039
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    if-ne p1, p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static synthetic lambda$sendAppKillReason$2(Ljava/lang/String;II)V
    .registers 3

    .line 476
    invoke-static {p0, p1, p2}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationStop(Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic lambda$setLmkdKillListener$1(Lcom/android/server/am/AppExitInfoTracker$LmkdKillListener;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 3

    .line 354
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/android/server/am/AppExitInfoTracker$LmkdKillListener;->onLmkdKillOccurred(II)V

    return-void
.end method

.method private synthetic lambda$updateExitInfoIfNecessaryLocked$3(ILjava/util/ArrayList;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .registers 10

    .line 559
    invoke-virtual {p7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    const/4 p7, 0x0

    .line 561
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez p6, :cond_e

    return-object v0

    .line 563
    :cond_e
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x1

    .line 564
    invoke-virtual {p6, p3, v1, p2}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->getExitInfoLocked(IILjava/util/ArrayList;)V

    .line 565
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-nez p3, :cond_1c

    return-object v0

    .line 568
    :cond_1c
    invoke-virtual {p2, p7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/ApplicationExitInfo;

    .line 569
    invoke-virtual {p3}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result p6

    if-eq p6, p1, :cond_2c

    .line 570
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    return-object v0

    .line 574
    :cond_2c
    invoke-virtual {p0, p3, p4, p5}, Lcom/android/server/am/AppExitInfoTracker;->updateExistingExitInfoRecordLocked(Landroid/app/ApplicationExitInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    const/4 p0, 0x2

    .line 576
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static putToSparse2dArray(Landroid/util/SparseArray;IILjava/lang/Object;Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/util/SparseArray<",
            "TU;>;U:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;IITU;",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/util/function/Consumer<",
            "TU;>;)V"
        }
    .end annotation

    .line 1260
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_10

    .line 1263
    invoke-interface {p4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/util/SparseArray;

    .line 1264
    invoke-virtual {p0, p1, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_17

    .line 1266
    :cond_10
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    move-object p4, p0

    check-cast p4, Landroid/util/SparseArray;

    .line 1268
    :goto_17
    invoke-virtual {p4, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p0

    if-ltz p0, :cond_2a

    if-eqz p5, :cond_26

    .line 1271
    invoke-virtual {p4, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p5, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1273
    :cond_26
    invoke-virtual {p4, p0, p3}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    goto :goto_2d

    .line 1275
    :cond_2a
    invoke-virtual {p4, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_2d
    return-void
.end method

.method public static removeFromSparse2dArray(Landroid/util/SparseArray;Ljava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/util/SparseArray<",
            "TU;>;U:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Consumer<",
            "TU;>;)V"
        }
    .end annotation

    .line 1303
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_54

    if-eqz p1, :cond_18

    .line 1304
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 1305
    :cond_18
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-nez v1, :cond_21

    goto :goto_51

    .line 1309
    :cond_21
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_27
    if-ltz v2, :cond_48

    if-eqz p2, :cond_39

    .line 1310
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    :cond_39
    if-eqz p3, :cond_42

    .line 1312
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1314
    :cond_42
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_45
    add-int/lit8 v2, v2, -0x1

    goto :goto_27

    .line 1317
    :cond_48
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_51

    .line 1318
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_51
    :goto_51
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_54
    return-void
.end method


# virtual methods
.method public final addExitInfoInnerLocked(Ljava/lang/String;ILandroid/app/ApplicationExitInfo;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 908
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    if-nez v0, :cond_3b

    .line 910
    new-instance v0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    iget v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoHistoryListSize:I

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;-><init>(Lcom/android/server/am/AppExitInfoTracker;I)V

    .line 911
    invoke-virtual {p3}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 912
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {p3}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 914
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->-$$Nest$fputmUid(Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;I)V

    goto :goto_36

    .line 917
    :cond_2f
    invoke-virtual {p3}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->-$$Nest$fputmUid(Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;I)V

    .line 919
    :cond_36
    :goto_36
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 921
    :cond_3b
    invoke-virtual {v0, p3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->addExitInfoLocked(Landroid/app/ApplicationExitInfo;)V

    return-void
.end method

.method public final addExitInfoLocked(Landroid/app/ApplicationExitInfo;)Landroid/app/ApplicationExitInfo;
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 485
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_11

    const-string p0, "ActivityManager"

    const-string p1, "Skipping saving the exit info due to ongoing loading from storage"

    .line 486
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 490
    :cond_11
    new-instance v0, Landroid/app/ApplicationExitInfo;

    invoke-direct {v0, p1}, Landroid/app/ApplicationExitInfo;-><init>(Landroid/app/ApplicationExitInfo;)V

    .line 491
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageList()[Ljava/lang/String;

    move-result-object v1

    .line 492
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result p1

    .line 493
    invoke-static {p1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 494
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {v2, p1}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 496
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_30
    const/4 v2, 0x0

    move v3, v2

    .line 499
    :goto_32
    array-length v4, v1

    if-ge v3, v4, :cond_3d

    .line 500
    aget-object v4, v1, v3

    invoke-virtual {p0, v4, p1, v0}, Lcom/android/server/am/AppExitInfoTracker;->addExitInfoInnerLocked(Ljava/lang/String;ILandroid/app/ApplicationExitInfo;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 503
    :cond_3d
    invoke-virtual {p0, v2}, Lcom/android/server/am/AppExitInfoTracker;->schedulePersistProcessExitInfo(Z)V

    return-object v0
.end method

.method public clearHistoryProcessExitInfo(Ljava/lang/String;I)V
    .registers 9

    .line 853
    const-class v0, Lcom/android/server/os/NativeTombstoneManager;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/os/NativeTombstoneManager;

    .line 855
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    .line 857
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1e

    .line 858
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 859
    :try_start_16
    invoke-virtual {p0, p2}, Lcom/android/server/am/AppExitInfoTracker;->removeByUserIdLocked(I)V

    .line 860
    monitor-exit v2

    goto :goto_3d

    :catchall_1b
    move-exception p0

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1b

    throw p0

    .line 862
    :cond_1e
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v4, 0x20000

    invoke-virtual {v1, p1, v4, v5, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    .line 864
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    .line 865
    iget-object v4, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 866
    :try_start_38
    invoke-virtual {p0, p1, v1, v3, p2}, Lcom/android/server/am/AppExitInfoTracker;->removePackageLocked(Ljava/lang/String;IZI)V

    .line 867
    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_4c

    move-object v1, v2

    .line 870
    :goto_3d
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/os/NativeTombstoneManager;->purge(Ljava/util/Optional;Ljava/util/Optional;)V

    .line 871
    invoke-virtual {p0, v3}, Lcom/android/server/am/AppExitInfoTracker;->schedulePersistProcessExitInfo(Z)V

    return-void

    :catchall_4c
    move-exception p0

    .line 867
    :try_start_4d
    monitor-exit v4
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw p0
.end method

.method public clearProcessExitInfo(Z)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 834
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 835
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    if-eqz v1, :cond_13

    .line 836
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 837
    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    :cond_13
    if-eqz p1, :cond_1c

    .line 839
    iget-object p1, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitInfoFile:Ljava/io/File;

    if-eqz p1, :cond_1c

    .line 840
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 842
    :cond_1c
    iget-object p1, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V

    .line 843
    iget-object p1, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 844
    iget-object p1, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 845
    invoke-virtual {p0}, Lcom/android/server/am/AppExitInfoTracker;->pruneAnrTracesIfNecessaryLocked()V

    .line 846
    monitor-exit v0

    return-void

    :catchall_34
    move-exception p0

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public dumpHistoryProcessExitInfo(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 10

    const-string v0, "ACTIVITY MANAGER PROCESS EXIT INFO (dumpsys activity exit-info)"

    .line 875
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 876
    new-instance v6, Landroid/icu/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v6, v0}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 877
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 878
    :try_start_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Last Timestamp of Persistence Into Persistent Storage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mLastAppExitInfoPersistTimestamp:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 879
    invoke-virtual {v6, v2}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 878
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 880
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 881
    new-instance p2, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda12;

    invoke-direct {p2, p0, p1, v6}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/am/AppExitInfoTracker;Ljava/io/PrintWriter;Landroid/icu/text/SimpleDateFormat;)V

    invoke-virtual {p0, p2}, Lcom/android/server/am/AppExitInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)V

    goto :goto_55

    .line 886
    :cond_3e
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/util/SparseArray;

    if-eqz v5, :cond_55

    const-string v3, "  "

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    .line 888
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/AppExitInfoTracker;->dumpHistoryProcessExitInfoLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;Landroid/icu/text/SimpleDateFormat;)V

    .line 891
    :cond_55
    :goto_55
    monitor-exit v0

    return-void

    :catchall_57
    move-exception p0

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_10 .. :try_end_59} :catchall_57

    throw p0
.end method

.method public final dumpHistoryProcessExitInfoLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;Landroid/icu/text/SimpleDateFormat;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;",
            ">;",
            "Landroid/icu/text/SimpleDateFormat;",
            ")V"
        }
    .end annotation

    .line 898
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "package: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 899
    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 p3, 0x0

    :goto_1d
    if-ge p3, p0, :cond_57

    .line 901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Historical Process Exit for uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 902
    invoke-virtual {p4, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p5}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/icu/text/SimpleDateFormat;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1d

    :cond_57
    return-void
.end method

.method public final forEachPackageLocked(Ljava/util/function/BiFunction;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;",
            ">;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4d

    .line 969
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object p0

    .line 970
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_e
    if-ltz v0, :cond_4d

    .line 971
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    invoke-interface {p1, v2, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v1, :cond_2e

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2c

    goto :goto_4a

    :cond_2c
    const/4 v0, 0x0

    goto :goto_4a

    .line 973
    :cond_2e
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 974
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_39
    if-ltz v3, :cond_47

    .line 975
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    invoke-virtual {v4}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->destroyLocked()V

    add-int/lit8 v3, v3, -0x1

    goto :goto_39

    .line 977
    :cond_47
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :goto_4a
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    :cond_4d
    return-void
.end method

.method public getExitInfo(Ljava/lang/String;IIILjava/util/ArrayList;)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/ArrayList<",
            "Landroid/app/ApplicationExitInfo;",
            ">;)V"
        }
    .end annotation

    .line 587
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 589
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_54

    .line 590
    :try_start_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 593
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    if-eqz p0, :cond_4c

    .line 595
    invoke-virtual {p0, p3, p4, p5}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->getExitInfoLocked(IILjava/util/ArrayList;)V

    goto :goto_4c

    .line 599
    :cond_1b
    iget-object p1, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList2:Ljava/util/ArrayList;

    .line 600
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 602
    new-instance v3, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p2, p1, p3}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/AppExitInfoTracker;ILjava/util/ArrayList;I)V

    invoke-virtual {p0, v3}, Lcom/android/server/am/AppExitInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)V

    .line 611
    new-instance p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda4;

    invoke-direct {p0}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 613
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p4, :cond_3a

    .line 615
    invoke-static {p0, p4}, Ljava/lang/Math;->min(II)I

    move-result p0

    :cond_3a
    const/4 p2, 0x0

    :goto_3b
    if-ge p2, p0, :cond_49

    .line 618
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/ApplicationExitInfo;

    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_3b

    .line 620
    :cond_49
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 622
    :cond_4c
    :goto_4c
    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_7 .. :try_end_4d} :catchall_51

    .line 624
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_51
    move-exception p0

    .line 622
    :try_start_52
    monitor-exit v2
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    :try_start_53
    throw p0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_54

    :catchall_54
    move-exception p0

    .line 624
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 625
    throw p0
.end method

.method public final getExitInfoLocked(Ljava/lang/String;II)Landroid/app/ApplicationExitInfo;
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 635
    iget-object v6, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    .line 636
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v6

    .line 637
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/AppExitInfoTracker;->getExitInfo(Ljava/lang/String;IIILjava/util/ArrayList;)V

    .line 639
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_1c

    const/4 p0, 0x0

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ApplicationExitInfo;

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    .line 640
    :goto_1d
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    return-object p0
.end method

.method public getProcessStateSummary(II)[B
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1108
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1109
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {v1, p1}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 1111
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1113
    :cond_f
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    if-gez p1, :cond_1a

    const/4 p0, 0x0

    .line 1115
    monitor-exit v0

    return-object p0

    .line 1117
    :cond_1a
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    monitor-exit v0

    return-object p0

    :catchall_2a
    move-exception p0

    .line 1118
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public handleLogAnrTrace(II[Ljava/lang/String;Ljava/io/File;JJ)V
    .registers 20
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, p3

    .line 1137
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_c4

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    goto/16 :goto_c4

    .line 1140
    :cond_11
    invoke-virtual {p4}, Ljava/io/File;->length()J

    move-result-wide v3

    sub-long v7, p7, p5

    cmp-long v5, p5, v3

    if-gez v5, :cond_c4

    cmp-long v3, p7, v3

    if-gtz v3, :cond_c4

    const-wide/16 v3, 0x0

    cmp-long v3, v7, v3

    if-gtz v3, :cond_27

    goto/16 :goto_c4

    .line 1146
    :cond_27
    new-instance v9, Ljava/io/File;

    iget-object v3, v0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitStoreDir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".gz"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v9, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v3, p4

    move-object v4, v9

    move-wide/from16 v5, p5

    .line 1149
    invoke-static/range {v3 .. v8}, Lcom/android/server/am/AppExitInfoTracker;->copyToGzFile(Ljava/io/File;Ljava/io/File;JJ)Z

    move-result v3

    if-eqz v3, :cond_c4

    .line 1151
    iget-object v3, v0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1152
    :try_start_50
    iget-object v4, v0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    move v5, p2

    invoke-virtual {v4, p2}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_5e

    .line 1154
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_5f

    :cond_5e
    move v4, v5

    .line 1156
    :goto_5f
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v5, :cond_89

    const-string v5, "ActivityManager"

    .line 1157
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Stored ANR traces of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "/u"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_89
    const/4 v5, 0x0

    const/4 v6, 0x1

    move v7, v5

    .line 1161
    :goto_8c
    array-length v8, v2

    if-ge v7, v8, :cond_a5

    .line 1162
    iget-object v8, v0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    aget-object v10, v2, v7

    invoke-virtual {v8, v10, v4}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    if-eqz v8, :cond_a2

    .line 1164
    invoke-virtual {v8, p1, v9}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->appendTraceIfNecessaryLocked(ILjava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_a2

    move v6, v5

    :cond_a2
    add-int/lit8 v7, v7, 0x1

    goto :goto_8c

    :cond_a5
    if-eqz v6, :cond_bf

    .line 1171
    iget-object v0, v0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda0;-><init>()V

    new-instance v5, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda1;-><init>()V

    move-object p2, v0

    move p3, v4

    move p4, p1

    move-object/from16 p5, v9

    move-object/from16 p6, v2

    move-object/from16 p7, v5

    invoke-static/range {p2 .. p7}, Lcom/android/server/am/AppExitInfoTracker;->putToSparse2dArray(Landroid/util/SparseArray;IILjava/lang/Object;Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V

    .line 1174
    :cond_bf
    monitor-exit v3

    goto :goto_c4

    :catchall_c1
    move-exception v0

    monitor-exit v3
    :try_end_c3
    .catchall {:try_start_50 .. :try_end_c3} :catchall_c1

    throw v0

    :cond_c4
    :goto_c4
    return-void
.end method

.method public handleNoteAppKillLocked(Landroid/app/ApplicationExitInfo;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 423
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageUid()I

    move-result v1

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v2

    .line 422
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/AppExitInfoTracker;->getExitInfoLocked(Ljava/lang/String;II)Landroid/app/ApplicationExitInfo;

    move-result-object v0

    if-nez v0, :cond_17

    .line 426
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->addExitInfoLocked(Landroid/app/ApplicationExitInfo;)Landroid/app/ApplicationExitInfo;

    move-result-object v0

    goto :goto_37

    .line 429
    :cond_17
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    .line 430
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getSubReason()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setSubReason(I)V

    const/4 v1, 0x0

    .line 431
    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setStatus(I)V

    .line 432
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationExitInfo;->setTimestamp(J)V

    .line 433
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setDescription(Ljava/lang/String;)V

    .line 436
    :goto_37
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MNO_TMO_DEVICE_REPORTING:Z

    if-eqz v1, :cond_50

    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->getStatus()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 437
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v2

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result p1

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/am/AppExitInfoTracker;->sendAppKillReason(Ljava/lang/String;II)V

    :cond_50
    const/4 p1, 0x1

    .line 440
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/AppExitInfoTracker;->scheduleLogToStatsdLocked(Landroid/app/ApplicationExitInfo;Z)V

    return-void
.end method

.method public handleNoteProcessDiedLocked(Landroid/app/ApplicationExitInfo;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-eqz p1, :cond_92

    .line 386
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_3d

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update process exit info for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    .line 387
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_3d
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 392
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageUid()I

    move-result v1

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v2

    .line 391
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/AppExitInfoTracker;->getExitInfoLocked(Ljava/lang/String;II)Landroid/app/ApplicationExitInfo;

    move-result-object v0

    .line 395
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceZygote:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    .line 396
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v2

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v3

    .line 395
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->remove(II)Landroid/util/Pair;

    move-result-object v1

    .line 397
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceLmkd:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    .line 398
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v3

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v4

    .line 397
    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->remove(II)Landroid/util/Pair;

    move-result-object v2

    .line 399
    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->removeIsolatedUidLocked(I)I

    if-nez v0, :cond_78

    .line 402
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->addExitInfoLocked(Landroid/app/ApplicationExitInfo;)Landroid/app/ApplicationExitInfo;

    move-result-object v0

    :cond_78
    const/4 p1, 0x0

    if-eqz v2, :cond_84

    const/4 v1, 0x3

    .line 407
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 406
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/am/AppExitInfoTracker;->updateExistingExitInfoRecordLocked(Landroid/app/ApplicationExitInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_92

    :cond_84
    if-eqz v1, :cond_8e

    .line 409
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/am/AppExitInfoTracker;->updateExistingExitInfoRecordLocked(Landroid/app/ApplicationExitInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_92

    :cond_8e
    const/4 p1, 0x0

    .line 411
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/AppExitInfoTracker;->scheduleLogToStatsdLocked(Landroid/app/ApplicationExitInfo;Z)V

    :cond_92
    :goto_92
    return-void
.end method

.method public handleZygoteSigChld(III)V
    .registers 6

    .line 371
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_2e

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got SIGCHLD from zygote: pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    .line 372
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_2e
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/AppExitInfoTracker;->scheduleChildProcDied(III)V

    return-void
.end method

.method public init(Lcom/android/server/am/ActivityManagerService;)V
    .registers 6

    .line 266
    iput-object p1, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 267
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "ActivityManager:killHandler"

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 269
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 270
    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/server/am/AppExitInfoTracker$KillHandler;-><init>(Lcom/android/server/am/AppExitInfoTracker;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    .line 272
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/android/server/SystemServiceManager;->ensureSystemDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "procexitstore"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitStoreDir:Ljava/io/File;

    .line 273
    invoke-static {v0}, Landroid/os/FileUtils;->createDir(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 274
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to create "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitStoreDir:Ljava/io/File;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 277
    :cond_47
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitStoreDir:Ljava/io/File;

    const-string/jumbo v2, "procexitinfo"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitInfoFile:Ljava/io/File;

    .line 279
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e0027

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoHistoryListSize:I

    return-void
.end method

.method public isFresh(J)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1728
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x493e0

    add-long/2addr p1, v2

    cmp-long p0, p1, v0

    if-ltz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public loadExistingProcessExitInfo()V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 711
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitInfoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_f

    .line 712
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_f
    const/4 v0, 0x0

    .line 718
    :try_start_10
    new-instance v2, Landroid/util/AtomicFile;

    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitInfoFile:Ljava/io/File;

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 719
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    .line 720
    new-instance v2, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v2, v0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 721
    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    :goto_24
    const/4 v4, -0x1

    if-eq v3, v4, :cond_49

    if-eq v3, v1, :cond_32

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2d

    goto :goto_41

    :cond_2d
    int-to-long v3, v3

    .line 732
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/am/AppExitInfoTracker;->loadPackagesFromProto(Landroid/util/proto/ProtoInputStream;J)V

    goto :goto_41

    .line 726
    :cond_32
    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_35} :catch_51
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_35} :catch_51
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_10 .. :try_end_35} :catch_51
    .catchall {:try_start_10 .. :try_end_35} :catchall_4f

    const-wide v4, 0x10300000001L

    .line 728
    :try_start_3a
    invoke-virtual {v2, v4, v5}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/AppExitInfoTracker;->mLastAppExitInfoPersistTimestamp:J

    .line 729
    monitor-exit v3
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_46

    .line 723
    :goto_41
    :try_start_41
    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_45} :catch_51
    .catch Ljava/lang/IllegalArgumentException; {:try_start_41 .. :try_end_45} :catch_51
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_41 .. :try_end_45} :catch_51
    .catchall {:try_start_41 .. :try_end_45} :catchall_4f

    goto :goto_24

    :catchall_46
    move-exception v2

    .line 729
    :try_start_47
    monitor-exit v3
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    :try_start_48
    throw v2
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_49} :catch_51
    .catch Ljava/lang/IllegalArgumentException; {:try_start_48 .. :try_end_49} :catch_51
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_48 .. :try_end_49} :catch_51
    .catchall {:try_start_48 .. :try_end_49} :catchall_4f

    :cond_49
    if-eqz v0, :cond_6b

    .line 741
    :goto_4b
    :try_start_4b
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_6b

    goto :goto_6b

    :catchall_4f
    move-exception p0

    goto :goto_7b

    :catch_51
    move-exception v2

    :try_start_52
    const-string v3, "ActivityManager"

    .line 737
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in loading historical app exit info from persistent storage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catchall {:try_start_52 .. :try_end_68} :catchall_4f

    if-eqz v0, :cond_6b

    goto :goto_4b

    .line 746
    :catch_6b
    :cond_6b
    :goto_6b
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 747
    :try_start_6e
    invoke-virtual {p0}, Lcom/android/server/am/AppExitInfoTracker;->pruneAnrTracesIfNecessaryLocked()V

    .line 748
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 749
    monitor-exit v2

    return-void

    :catchall_78
    move-exception p0

    monitor-exit v2
    :try_end_7a
    .catchall {:try_start_6e .. :try_end_7a} :catchall_78

    throw p0

    :goto_7b
    if-eqz v0, :cond_80

    .line 741
    :try_start_7d
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_80

    .line 745
    :catch_80
    :cond_80
    throw p0
.end method

.method public final loadPackagesFromProto(Landroid/util/proto/ProtoInputStream;J)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/proto/WireTypeMismatchException;
        }
    .end annotation

    .line 754
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide p2

    const-string v0, ""

    .line 756
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    :goto_a
    const/4 v2, -0x1

    if-eq v1, v2, :cond_3f

    const/4 v2, 0x1

    if-eq v1, v2, :cond_31

    const/4 v2, 0x2

    if-eq v1, v2, :cond_14

    goto :goto_3a

    .line 764
    :cond_14
    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    iget v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoHistoryListSize:I

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;-><init>(Lcom/android/server/am/AppExitInfoTracker;I)V

    const-wide v2, 0x20b00000002L

    .line 766
    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->readFromProto(Landroid/util/proto/ProtoInputStream;J)I

    move-result v2

    .line 767
    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 768
    :try_start_27
    iget-object v4, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4, v0, v2, v1}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 769
    monitor-exit v3

    goto :goto_3a

    :catchall_2e
    move-exception p0

    monitor-exit v3
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_2e

    throw p0

    :cond_31
    const-wide v0, 0x10900000001L

    .line 761
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    .line 758
    :goto_3a
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    goto :goto_a

    .line 773
    :cond_3f
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoInputStream;->end(J)V

    return-void
.end method

.method public obtainRawRecord(Lcom/android/server/am/ProcessRecord;J)Landroid/app/ApplicationExitInfo;
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1054
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mRawRecordsPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationExitInfo;

    if-nez v0, :cond_f

    .line 1056
    new-instance v0, Landroid/app/ApplicationExitInfo;

    invoke-direct {v0}, Landroid/app/ApplicationExitInfo;-><init>()V

    .line 1059
    :cond_f
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter p0

    :try_start_14
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1060
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    .line 1061
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v1

    goto :goto_28

    :cond_27
    move v1, v2

    .line 1062
    :goto_28
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/ApplicationExitInfo;->setPid(I)V

    .line 1063
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v3}, Landroid/app/ApplicationExitInfo;->setRealUid(I)V

    .line 1064
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v3}, Landroid/app/ApplicationExitInfo;->setPackageUid(I)V

    if-lez v1, :cond_3e

    goto :goto_42

    .line 1065
    :cond_3e
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    :goto_42
    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setDefiningUid(I)V

    .line 1066
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setProcessName(Ljava/lang/String;)V

    .line 1067
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setConnectionGroup(I)V

    .line 1068
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setPackageName(Ljava/lang/String;)V

    .line 1069
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setPackageList([Ljava/lang/String;)V

    .line 1070
    invoke-virtual {v0, v2}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    .line 1071
    invoke-virtual {v0, v2}, Landroid/app/ApplicationExitInfo;->setSubReason(I)V

    .line 1072
    invoke-virtual {v0, v2}, Landroid/app/ApplicationExitInfo;->setStatus(I)V

    .line 1073
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getReportedProcState()I

    move-result v1

    invoke-static {v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setImportance(I)V

    .line 1074
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getLastPss()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationExitInfo;->setPss(J)V

    .line 1075
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getLastRss()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationExitInfo;->setRss(J)V

    .line 1076
    invoke-virtual {v0, p2, p3}, Landroid/app/ApplicationExitInfo;->setTimestamp(J)V

    .line 1077
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->hasReportedForegroundServices()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/ApplicationExitInfo;->setHasForegroundServices(Z)V

    .line 1078
    monitor-exit p0
    :try_end_96
    .catchall {:try_start_14 .. :try_end_96} :catchall_9a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-object v0

    :catchall_9a
    move-exception p1

    :try_start_9b
    monitor-exit p0
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p1
.end method

.method public onPackageRemoved(Ljava/lang/String;IZ)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-eqz p1, :cond_38

    .line 658
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 659
    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 658
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 660
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz v0, :cond_25

    .line 662
    :try_start_13
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceZygote:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    invoke-virtual {v2, p2, p3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->removeByUidLocked(IZ)V

    .line 663
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceLmkd:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    invoke-virtual {v2, p2, p3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->removeByUidLocked(IZ)V

    .line 664
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {v2, p2, p3}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->removeAppUid(IZ)V

    goto :goto_25

    :catchall_23
    move-exception p0

    goto :goto_36

    :cond_25
    :goto_25
    if-eqz p3, :cond_29

    const/4 p3, -0x1

    goto :goto_2d

    .line 667
    :cond_29
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    .line 666
    :goto_2d
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/am/AppExitInfoTracker;->removePackageLocked(Ljava/lang/String;IZI)V

    const/4 p1, 0x1

    .line 668
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->schedulePersistProcessExitInfo(Z)V

    .line 669
    monitor-exit v1

    goto :goto_38

    :goto_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_13 .. :try_end_37} :catchall_23

    throw p0

    :cond_38
    :goto_38
    return-void
.end method

.method public onSystemReady()V
    .registers 3

    .line 284
    invoke-virtual {p0}, Lcom/android/server/am/AppExitInfoTracker;->registerForUserRemoval()V

    .line 285
    invoke-virtual {p0}, Lcom/android/server/am/AppExitInfoTracker;->registerForPackageRemoval()V

    .line 286
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/am/AppExitInfoTracker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 292
    sget-boolean v0, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;->DISABLE_PREL:Z

    if-nez v0, :cond_20

    .line 293
    const-class v0, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAps:Lcom/android/server/appprelauncher/AppPrelaunchManagerService;

    :cond_20
    return-void
.end method

.method public onUserRemoved(I)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 646
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceZygote:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->removeByUserId(I)V

    .line 647
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceLmkd:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->removeByUserId(I)V

    .line 648
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->removeByUserId(I)V

    .line 649
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 650
    :try_start_12
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->removeByUserIdLocked(I)V

    const/4 p1, 0x1

    .line 651
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->schedulePersistProcessExitInfo(Z)V

    .line 652
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public final performLogToStatsdLocked(Landroid/app/ApplicationExitInfo;)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 946
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->isLoggedInStatsd()Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    :cond_7
    const/4 p0, 0x1

    .line 949
    invoke-virtual {p1, p0}, Landroid/app/ApplicationExitInfo;->setLoggedInStatsd(Z)V

    .line 950
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 951
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getProcessName()Ljava/lang/String;

    move-result-object v0

    .line 952
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v0, 0x0

    goto :goto_2d

    :cond_1b
    if-eqz v0, :cond_2d

    if-eqz p0, :cond_2d

    .line 955
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 957
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_2d
    :goto_2d
    move-object v3, v0

    const/16 v1, 0x175

    .line 960
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageUid()I

    move-result v2

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v4

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getSubReason()I

    move-result v5

    .line 961
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getImportance()I

    move-result v6

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPss()J

    move-result-wide v7

    long-to-int v7, v7

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getRss()J

    move-result-wide v8

    long-to-int v8, v8

    .line 962
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->hasForegroundServices()Z

    move-result v9

    .line 959
    invoke-static/range {v1 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IIIIIZ)V

    return-void
.end method

.method public persistProcessExitInfo()V
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 781
    new-instance v0, Landroid/util/AtomicFile;

    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitInfoFile:Ljava/io/File;

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 783
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 785
    :try_start_c
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_10} :catch_37

    .line 786
    :try_start_10
    new-instance v5, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v5, v4}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-wide v6, 0x10300000001L

    .line 787
    invoke-virtual {v5, v6, v7, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 788
    iget-object v6, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_20} :catch_35

    .line 789
    :try_start_20
    new-instance v7, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda19;

    invoke-direct {v7, v5}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda19;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {p0, v7}, Lcom/android/server/am/AppExitInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)V

    .line 799
    iput-wide v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mLastAppExitInfoPersistTimestamp:J

    .line 800
    monitor-exit v6
    :try_end_2b
    .catchall {:try_start_20 .. :try_end_2b} :catchall_32

    .line 801
    :try_start_2b
    invoke-virtual {v5}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 802
    invoke-virtual {v0, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_31} :catch_35

    goto :goto_52

    :catchall_32
    move-exception v1

    .line 800
    :try_start_33
    monitor-exit v6
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    :try_start_34
    throw v1
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_35} :catch_35

    :catch_35
    move-exception v1

    goto :goto_39

    :catch_37
    move-exception v1

    move-object v4, v3

    :goto_39
    const-string v2, "ActivityManager"

    .line 804
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to write historical app exit info into persistent storage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    invoke-virtual {v0, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 807
    :goto_52
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 808
    :try_start_55
    iput-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    .line 809
    monitor-exit v0

    return-void

    :catchall_59
    move-exception p0

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_55 .. :try_end_5b} :catchall_59

    throw p0
.end method

.method public final pruneAnrTracesIfNecessaryLocked()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1218
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1219
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitStoreDir:Ljava/io/File;

    new-instance v2, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda9;

    invoke-direct {v2, v0}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda9;-><init>(Landroid/util/ArraySet;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 1228
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    return-void

    .line 1232
    :cond_17
    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda10;

    invoke-direct {v1, v0}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda10;-><init>(Landroid/util/ArraySet;)V

    invoke-virtual {p0, v1}, Lcom/android/server/am/AppExitInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)V

    .line 1246
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda11;

    invoke-direct {v2, v0}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda11;-><init>(Landroid/util/ArraySet;)V

    invoke-static {v1, v2}, Lcom/android/server/am/AppExitInfoTracker;->forEachSparse2dArray(Landroid/util/SparseArray;Ljava/util/function/Consumer;)V

    .line 1249
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2f
    if-ltz v1, :cond_44

    .line 1250
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitStoreDir:Ljava/io/File;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_2f

    :cond_44
    return-void
.end method

.method public recycleRawRecord(Landroid/app/ApplicationExitInfo;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 1085
    invoke-virtual {p1, v0}, Landroid/app/ApplicationExitInfo;->setProcessName(Ljava/lang/String;)V

    .line 1086
    invoke-virtual {p1, v0}, Landroid/app/ApplicationExitInfo;->setDescription(Ljava/lang/String;)V

    .line 1087
    invoke-virtual {p1, v0}, Landroid/app/ApplicationExitInfo;->setPackageList([Ljava/lang/String;)V

    .line 1089
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mRawRecordsPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {p0, p1}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method public final registerForPackageRemoval()V
    .registers 5

    .line 687
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 688
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    .line 689
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 690
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/AppExitInfoTracker$2;

    invoke-direct {v2, p0}, Lcom/android/server/am/AppExitInfoTracker$2;-><init>(Lcom/android/server/am/AppExitInfoTracker;)V

    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final registerForUserRemoval()V
    .registers 5

    .line 674
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_REMOVED"

    .line 675
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 676
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/AppExitInfoTracker$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/AppExitInfoTracker$1;-><init>(Lcom/android/server/am/AppExitInfoTracker;)V

    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final removeByUserIdLocked(I)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1a

    .line 1030
    iget-object p1, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V

    .line 1031
    iget-object p1, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 1032
    iget-object p1, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 1033
    invoke-virtual {p0}, Lcom/android/server/am/AppExitInfoTracker;->pruneAnrTracesIfNecessaryLocked()V

    return-void

    .line 1036
    :cond_1a
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda13;

    invoke-direct {v1, p1}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda13;-><init>(I)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lcom/android/server/am/AppExitInfoTracker;->removeFromSparse2dArray(Landroid/util/SparseArray;Ljava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 1038
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda14;

    invoke-direct {v1, p1}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda14;-><init>(I)V

    new-instance v3, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda15;

    invoke-direct {v3}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda15;-><init>()V

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/am/AppExitInfoTracker;->removeFromSparse2dArray(Landroid/util/SparseArray;Ljava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 1040
    new-instance v0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda16;

    invoke-direct {v0, p1}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda16;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppExitInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public final removePackageLocked(Ljava/lang/String;IZI)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    if-eqz p3, :cond_30

    .line 993
    iget-object p3, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 994
    iget-object p3, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p2

    if-ltz p2, :cond_30

    .line 996
    iget-object p3, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/SparseArray;

    .line 997
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1d
    if-ltz v0, :cond_2b

    .line 998
    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_1d

    .line 1000
    :cond_2b
    iget-object p3, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1003
    :cond_30
    iget-object p2, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object p2

    .line 1004
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/SparseArray;

    if-nez p3, :cond_3f

    return-void

    :cond_3f
    const/4 v0, -0x1

    if-ne p4, v0, :cond_60

    .line 1009
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_48
    if-ltz p2, :cond_56

    .line 1010
    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    invoke-virtual {p4}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->destroyLocked()V

    add-int/lit8 p2, p2, -0x1

    goto :goto_48

    .line 1012
    :cond_56
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8b

    .line 1014
    :cond_60
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_66
    if-ltz p0, :cond_82

    .line 1015
    invoke-virtual {p3, p0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, p4, :cond_7f

    .line 1016
    invoke-virtual {p3, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    invoke-virtual {p4}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->destroyLocked()V

    .line 1017
    invoke-virtual {p3, p0}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_82

    :cond_7f
    add-int/lit8 p0, p0, -0x1

    goto :goto_66

    .line 1021
    :cond_82
    :goto_82
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p0

    if-nez p0, :cond_8b

    .line 1022
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8b
    :goto_8b
    return-void
.end method

.method public final scheduleChildProcDied(III)V
    .registers 5

    .line 365
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 v0, 0x1006

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 366
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public scheduleLogAnrTrace(II[Ljava/lang/String;Ljava/io/File;JJ)V
    .registers 18

    move-object v0, p0

    .line 1126
    iget-object v1, v0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    new-instance v2, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/am/AppExitInfoTracker;)V

    .line 1127
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1128
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object v5, p3

    move-object v6, p4

    .line 1126
    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final scheduleLogToStatsdLocked(Landroid/app/ApplicationExitInfo;Z)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 926
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->isLoggedInStatsd()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 931
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAps:Lcom/android/server/appprelauncher/AppPrelaunchManagerService;

    if-eqz v0, :cond_16

    .line 932
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageUid()I

    move-result v1

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getReasonsAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;->handlePrelaunchedAppDied(ILjava/lang/String;)V

    :cond_16
    const/16 v0, 0x1009

    if-eqz p2, :cond_23

    .line 936
    iget-object p2, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 937
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->performLogToStatsdLocked(Landroid/app/ApplicationExitInfo;)V

    goto :goto_36

    .line 938
    :cond_23
    iget-object p2, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_36

    .line 939
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    sget-wide v0, Lcom/android/server/am/AppExitInfoTracker;->APP_EXIT_INFO_STATSD_LOG_DEBOUNCE:J

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_36
    :goto_36
    return-void
.end method

.method public scheduleNoteAppKill(IIIILjava/lang/String;)V
    .registers 8

    .line 327
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 331
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v0

    .line 332
    :try_start_e
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 333
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_45

    if-nez v1, :cond_41

    .line 335
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz p0, :cond_44

    const-string p0, "ActivityManager"

    .line 336
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Skipping saving the kill reason for pid "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "(uid="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") since its process record is not found"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 340
    :cond_41
    invoke-virtual {p0, v1, p3, p4, p5}, Lcom/android/server/am/AppExitInfoTracker;->scheduleNoteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    :cond_44
    :goto_44
    return-void

    :catchall_45
    move-exception p0

    .line 333
    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw p0
.end method

.method public scheduleNoteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V
    .registers 7

    .line 311
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    if-eqz p1, :cond_2c

    .line 314
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_10

    goto :goto_2c

    .line 318
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/AppExitInfoTracker;->obtainRawRecord(Lcom/android/server/am/ProcessRecord;J)Landroid/app/ApplicationExitInfo;

    move-result-object p1

    .line 319
    invoke-virtual {p1, p2}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    .line 320
    invoke-virtual {p1, p3}, Landroid/app/ApplicationExitInfo;->setSubReason(I)V

    .line 321
    invoke-virtual {p1, p4}, Landroid/app/ApplicationExitInfo;->setDescription(Ljava/lang/String;)V

    .line 322
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    const/16 p2, 0x1008

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public scheduleNoteLmkdProcKilled(II)V
    .registers 4

    .line 360
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    const/16 v0, 0x1005

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 361
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public scheduleNoteProcessDied(Lcom/android/server/am/ProcessRecord;)V
    .registers 6

    if-eqz p1, :cond_23

    .line 298
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_7

    goto :goto_23

    .line 302
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_10

    return-void

    .line 305
    :cond_10
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    const/16 v1, 0x1007

    .line 306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/am/AppExitInfoTracker;->obtainRawRecord(Lcom/android/server/am/ProcessRecord;J)Landroid/app/ApplicationExitInfo;

    move-result-object p0

    .line 305
    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 306
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_23
    :goto_23
    return-void
.end method

.method public schedulePersistProcessExitInfo(Z)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 817
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 818
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    if-eqz v1, :cond_9

    if-eqz p1, :cond_2b

    :cond_9
    if-eqz v1, :cond_14

    .line 820
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 822
    :cond_14
    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/am/AppExitInfoTracker;)V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    .line 823
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    if-eqz p1, :cond_26

    const-wide/16 v2, 0x0

    goto :goto_28

    .line 824
    :cond_26
    sget-wide v2, Lcom/android/server/am/AppExitInfoTracker;->APP_EXIT_INFO_PERSIST_INTERVAL:J

    .line 823
    :goto_28
    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 826
    :cond_2b
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p0

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public sendAppKillReason(Ljava/lang/String;II)V
    .registers 5

    const/4 p0, 0x0

    packed-switch p3, :pswitch_data_1e

    goto :goto_a

    :pswitch_5
    const/4 p0, 0x1

    goto :goto_a

    :pswitch_7
    const/4 p0, 0x2

    goto :goto_a

    :pswitch_9
    const/4 p0, 0x3

    :goto_a
    :pswitch_a
    const-string p3, "ActivityManager"

    const-string v0, "TMO killProcesses"

    .line 473
    invoke-static {p3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    sget-object p3, Lcom/android/server/am/AppStateBroadcaster;->mObjHandler:Landroid/os/Handler;

    if-eqz p3, :cond_1d

    .line 475
    new-instance v0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1d
    return-void

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_a
        :pswitch_a
        :pswitch_5
        :pswitch_5
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method public setLmkdKillListener(Lcom/android/server/am/AppExitInfoTracker$LmkdKillListener;)V
    .registers 4

    .line 352
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 353
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceLmkd:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/am/AppExitInfoTracker$LmkdKillListener;)V

    invoke-virtual {p0, v1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->setOnProcDiedListener(Ljava/util/function/BiConsumer;)V

    .line 355
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public setProcessStateSummary(II[B)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1097
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1098
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {v1, p1}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 1100
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_f
    move v2, p1

    .line 1102
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    new-instance v5, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda0;-><init>()V

    const/4 v6, 0x0

    move v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/AppExitInfoTracker;->putToSparse2dArray(Landroid/util/SparseArray;IILjava/lang/Object;Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V

    .line 1103
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public final updateExistingExitInfoRecordLocked(Landroid/app/ApplicationExitInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    if-eqz p1, :cond_73

    .line 514
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/AppExitInfoTracker;->isFresh(J)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_73

    :cond_d
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_5e

    .line 520
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/system/OsConstants;->WIFEXITED(I)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 521
    invoke-virtual {p1, v1}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    .line 522
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Landroid/system/OsConstants;->WEXITSTATUS(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/app/ApplicationExitInfo;->setStatus(I)V

    :goto_29
    move v0, v1

    goto :goto_5e

    .line 524
    :cond_2b
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/system/OsConstants;->WIFSIGNALED(I)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 525
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v2

    if-nez v2, :cond_4b

    const/4 v2, 0x2

    .line 526
    invoke-virtual {p1, v2}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    .line 527
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Landroid/system/OsConstants;->WTERMSIG(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/app/ApplicationExitInfo;->setStatus(I)V

    goto :goto_5e

    .line 528
    :cond_4b
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5e

    .line 529
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Landroid/system/OsConstants;->WTERMSIG(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/app/ApplicationExitInfo;->setStatus(I)V

    goto :goto_29

    :cond_5e
    :goto_5e
    if-eqz p3, :cond_6f

    .line 535
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    .line 536
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p3, 0x3

    if-ne p2, p3, :cond_6f

    goto :goto_70

    :cond_6f
    move v1, v0

    .line 540
    :goto_70
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/AppExitInfoTracker;->scheduleLogToStatsdLocked(Landroid/app/ApplicationExitInfo;Z)V

    :cond_73
    :goto_73
    return-void
.end method

.method public final updateExitInfoIfNecessaryLocked(IILjava/lang/Integer;Ljava/lang/Integer;)Z
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 551
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {v0, p2}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 553
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :cond_c
    move v2, p2

    .line 555
    iget-object p2, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    .line 556
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 558
    new-instance v7, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda8;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p2

    move v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/am/AppExitInfoTracker;ILjava/util/ArrayList;ILjava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {p0, v7}, Lcom/android/server/am/AppExitInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)V

    .line 578
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_28

    const/4 p0, 0x1

    goto :goto_29

    :cond_28
    const/4 p0, 0x0

    :goto_29
    return p0
.end method
