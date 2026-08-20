.class public final Lcom/android/server/am/PhantomProcessList;
.super Ljava/lang/Object;
.source "PhantomProcessList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/PhantomProcessList$Injector;
    }
.end annotation


# static fields
.field public static final CGROUP_PATH_PREFIXES:[Ljava/lang/String;

.field public static final CGROUP_PID_PREFIX:Ljava/lang/String; = "/pid_"

.field public static final CGROUP_PROCS:Ljava/lang/String; = "/cgroup.procs"

.field public static final CGROUP_V1:I = 0x0

.field public static final CGROUP_V2:I = 0x1

.field public static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field public final mAppPhantomProcessMap:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/PhantomProcessRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mCgroupProcsFds:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field public mCgroupVersion:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mDataBuffer:[B
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mInjector:Lcom/android/server/am/PhantomProcessList$Injector;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mKillHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public final mPhantomProcesses:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/PhantomProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mPhantomProcessesPidFds:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/PhantomProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mPhantomToAppProcessMap:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public final mTempPhantomProcesses:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/PhantomProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mTrimPhantomProcessScheduled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mUpdateSeq:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mZombiePhantomProcesses:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/PhantomProcessRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$DV2oO0oBIWu9yWxcWhpeHYoWXn4(Lcom/android/server/am/PhantomProcessList;Lcom/android/server/am/PhantomProcessRecord;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/PhantomProcessList;->onPhantomProcessKilledLocked(Lcom/android/server/am/PhantomProcessRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TSwelukdwFuHqPH3F_JONI95Vcc(Lcom/android/server/am/PhantomProcessRecord;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/am/PhantomProcessList;->lambda$removePhantomProcessesWithNoParentLocked$2(Lcom/android/server/am/PhantomProcessRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hpwNNTyxzGWZAqmB6EftBRf3tx4(Lcom/android/server/am/PhantomProcessList;Ljava/io/FileDescriptor;I)I
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/PhantomProcessList;->onPhantomProcessFdEvent(Ljava/io/FileDescriptor;I)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$tgmEIA6TmZ9ZDQedlFy9g6UNN8c(Lcom/android/server/am/PhantomProcessList;Lcom/android/server/am/PhantomProcessRecord;Lcom/android/server/am/PhantomProcessRecord;)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/PhantomProcessList;->lambda$trimPhantomProcessesIfNecessary$0(Lcom/android/server/am/PhantomProcessRecord;Lcom/android/server/am/PhantomProcessRecord;)I

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "/acct/uid_"

    const-string v1, "/sys/fs/cgroup/uid_"

    .line 121
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/PhantomProcessList;->CGROUP_PATH_PREFIXES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 3

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mLock:Ljava/lang/Object;

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    .line 83
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcessesPidFds:Landroid/util/SparseArray;

    .line 89
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mTempPhantomProcesses:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomToAppProcessMap:Landroid/util/SparseArray;

    .line 101
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mCgroupProcsFds:Landroid/util/SparseArray;

    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 104
    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mDataBuffer:[B

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lcom/android/server/am/PhantomProcessList;->mTrimPhantomProcessScheduled:Z

    .line 128
    iput v0, p0, Lcom/android/server/am/PhantomProcessList;->mCgroupVersion:I

    .line 132
    iput-object p1, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 133
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    sget-object p1, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    iput-object p1, p0, Lcom/android/server/am/PhantomProcessList;->mKillHandler:Landroid/os/Handler;

    .line 134
    new-instance p1, Lcom/android/server/am/PhantomProcessList$Injector;

    invoke-direct {p1}, Lcom/android/server/am/PhantomProcessList$Injector;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/PhantomProcessList;->mInjector:Lcom/android/server/am/PhantomProcessList$Injector;

    .line 135
    invoke-virtual {p0}, Lcom/android/server/am/PhantomProcessList;->probeCgroupVersion()V

    return-void
.end method

.method public static getProcessName(I)Ljava/lang/String;
    .registers 3

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/proc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/cmdline"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/os/ProcStatsUtil;->readTerminatedProcFile(Ljava/lang/String;B)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1f

    const/4 p0, 0x0

    return-object p0

    :cond_1f
    const/16 v0, 0x2f

    .line 234
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_35

    .line 235
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_35

    add-int/lit8 v0, v0, 0x1

    .line 236
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_35
    return-object p0
.end method

.method public static synthetic lambda$removePhantomProcessesWithNoParentLocked$2(Lcom/android/server/am/PhantomProcessRecord;)V
    .registers 3

    const-string v0, "Trimming Orphan processes"

    const/4 v1, 0x1

    .line 526
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/PhantomProcessRecord;->killLocked(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$trimPhantomProcessesIfNecessary$0(Lcom/android/server/am/PhantomProcessRecord;Lcom/android/server/am/PhantomProcessRecord;)I
    .registers 9

    .line 444
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    iget v1, p1, Lcom/android/server/am/PhantomProcessRecord;->mPpid:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 445
    iget-object p0, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    iget v1, p2, Lcom/android/server/am/PhantomProcessRecord;->mPpid:I

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-nez v0, :cond_2a

    if-nez p0, :cond_2a

    .line 447
    iget-wide p0, p1, Lcom/android/server/am/PhantomProcessRecord;->mKnownSince:J

    iget-wide v4, p2, Lcom/android/server/am/PhantomProcessRecord;->mKnownSince:J

    cmp-long p2, p0, v4

    if-eqz p2, :cond_29

    cmp-long p0, p0, v4

    if-gez p0, :cond_28

    move v2, v3

    :cond_28
    return v2

    :cond_29
    return v1

    :cond_2a
    if-nez v0, :cond_2d

    return v3

    :cond_2d
    if-nez p0, :cond_30

    return v2

    .line 459
    :cond_30
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v5

    if-eq v4, v5, :cond_4c

    .line 460
    iget-object p1, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result p1

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result p0

    sub-int/2addr p1, p0

    return p1

    .line 462
    :cond_4c
    iget-wide p0, p1, Lcom/android/server/am/PhantomProcessRecord;->mKnownSince:J

    iget-wide v4, p2, Lcom/android/server/am/PhantomProcessRecord;->mKnownSince:J

    cmp-long p2, p0, v4

    if-eqz p2, :cond_5a

    cmp-long p0, p0, v4

    if-gez p0, :cond_59

    move v2, v3

    :cond_59
    return v2

    :cond_5a
    return v1
.end method

.method private synthetic lambda$trimPhantomProcessesIfNecessary$1(Lcom/android/server/am/PhantomProcessRecord;Lcom/android/server/am/PhantomProcessRecord;)I
    .registers 8

    .line 475
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    iget v1, p1, Lcom/android/server/am/PhantomProcessRecord;->mPpid:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_e

    return v1

    .line 480
    :cond_e
    iget-object p0, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    iget v2, p2, Lcom/android/server/am/PhantomProcessRecord;->mPpid:I

    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object p0

    const/4 v2, -0x1

    if-nez p0, :cond_1c

    return v2

    .line 485
    :cond_1c
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v4

    if-eq v3, v4, :cond_38

    .line 486
    iget-object p1, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result p1

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result p0

    sub-int/2addr p1, p0

    return p1

    .line 488
    :cond_38
    iget-wide p0, p1, Lcom/android/server/am/PhantomProcessRecord;->mKnownSince:J

    iget-wide v3, p2, Lcom/android/server/am/PhantomProcessRecord;->mKnownSince:J

    cmp-long p2, p0, v3

    if-eqz p2, :cond_47

    cmp-long p0, p0, v3

    if-gez p0, :cond_45

    goto :goto_46

    :cond_45
    move v1, v2

    :goto_46
    return v1

    :cond_47
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final addChildPidLocked(Lcom/android/server/am/ProcessRecord;II)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock",
            "mService.mPidsSelfLocked"
        }
    .end annotation

    if-eq p3, p2, :cond_6a

    .line 245
    iget-object p3, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {p3, p2}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object p3

    if-eqz p3, :cond_33

    .line 248
    iget-boolean p0, p3, Lcom/android/server/am/ProcessRecord;->appZygote:Z

    if-nez p0, :cond_6a

    .line 250
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz p0, :cond_6a

    .line 251
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " appears in the cgroup.procs of "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    .line 257
    :cond_33
    iget-object p3, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomToAppProcessMap:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p3

    if-ltz p3, :cond_4c

    .line 259
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomToAppProcessMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    if-ne p1, v0, :cond_46

    return-void

    .line 264
    :cond_46
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomToAppProcessMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p3, p1}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    goto :goto_51

    .line 266
    :cond_4c
    iget-object p3, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomToAppProcessMap:Landroid/util/SparseArray;

    invoke-virtual {p3, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 270
    :goto_51
    invoke-static {p2}, Landroid/os/Process;->getUidForPid(I)I

    move-result p1

    .line 271
    iget-object p3, p0, Lcom/android/server/am/PhantomProcessList;->mInjector:Lcom/android/server/am/PhantomProcessList$Injector;

    invoke-virtual {p3, p2}, Lcom/android/server/am/PhantomProcessList$Injector;->getProcessName(I)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_65

    if-gez p1, :cond_60

    goto :goto_65

    :cond_60
    const/4 v0, 0x1

    .line 276
    invoke-virtual {p0, p3, p1, p2, v0}, Lcom/android/server/am/PhantomProcessList;->getOrCreatePhantomProcessIfNeededLocked(Ljava/lang/String;IIZ)Lcom/android/server/am/PhantomProcessRecord;

    goto :goto_6a

    .line 273
    :cond_65
    :goto_65
    iget-object p0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomToAppProcessMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->delete(I)V

    :cond_6a
    :goto_6a
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    .line 629
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "All Active App Child Processes:"

    .line 630
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/server/am/PhantomProcessList;->dumpPhantomeProcessLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;)V

    const-string v1, "All Zombie App Child Processes:"

    .line 632
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/server/am/PhantomProcessList;->dumpPhantomeProcessLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 634
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public dumpPhantomeProcessLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/PhantomProcessRecord;",
            ">;)V"
        }
    .end annotation

    .line 639
    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result p0

    if-nez p0, :cond_7

    return-void

    .line 643
    :cond_7
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 644
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 645
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p3, 0x0

    :goto_11
    if-ge p3, p0, :cond_47

    .line 647
    invoke-virtual {p4, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/PhantomProcessRecord;

    .line 648
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  proc #"

    .line 649
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 650
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ": "

    .line 651
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 652
    invoke-virtual {v0}, Lcom/android/server/am/PhantomProcessRecord;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 653
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/PhantomProcessRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_11

    :cond_47
    return-void
.end method

.method public forEachPhantomProcessOfApp(Lcom/android/server/am/ProcessRecord;Ljava/util/function/Function;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/util/function/Function<",
            "Lcom/android/server/am/PhantomProcessRecord;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 586
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 587
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_35

    .line 589
    iget-object p0, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    .line 590
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    .line 591
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1d
    if-ltz p1, :cond_35

    .line 592
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/PhantomProcessRecord;

    .line 593
    invoke-interface {p2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_32

    goto :goto_35

    :cond_32
    add-int/lit8 p1, p1, -0x1

    goto :goto_1d

    .line 598
    :cond_35
    :goto_35
    monitor-exit v0

    return-void

    :catchall_37
    move-exception p0

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw p0
.end method

.method public getCgroupFilePath(II)Ljava/lang/String;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/PhantomProcessList;->CGROUP_PATH_PREFIXES:[Ljava/lang/String;

    iget p0, p0, Lcom/android/server/am/PhantomProcessList;->mCgroupVersion:I

    aget-object p0, v1, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/pid_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/cgroup.procs"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOrCreatePhantomProcessIfNeededLocked(Ljava/lang/String;IIZ)Lcom/android/server/am/PhantomProcessRecord;
    .registers 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 301
    invoke-virtual {p0, p3}, Lcom/android/server/am/PhantomProcessList;->isAppProcess(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 306
    :cond_8
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_3e

    .line 308
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/PhantomProcessRecord;

    .line 309
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/PhantomProcessRecord;->equals(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_1f

    return-object v0

    .line 313
    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stale "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", removing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {p0, v0}, Lcom/android/server/am/PhantomProcessList;->onPhantomProcessKilledLocked(Lcom/android/server/am/PhantomProcessRecord;)V

    goto :goto_5a

    .line 317
    :cond_3e
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_5a

    .line 319
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PhantomProcessRecord;

    .line 320
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/am/PhantomProcessRecord;->equals(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_55

    return-object v2

    .line 325
    :cond_55
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_5a
    :goto_5a
    if-nez p4, :cond_5d

    return-object v1

    .line 333
    :cond_5d
    iget-object p4, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomToAppProcessMap:Landroid/util/SparseArray;

    invoke-virtual {p4, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/am/ProcessRecord;

    if-eqz p4, :cond_c4

    .line 338
    :try_start_67
    invoke-virtual {p4}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p4

    .line 339
    new-instance v0, Lcom/android/server/am/PhantomProcessRecord;

    iget-object v7, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v8, Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda1;

    invoke-direct {v8, p0}, Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/PhantomProcessList;)V

    move-object v2, v0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/PhantomProcessRecord;-><init>(Ljava/lang/String;IIILcom/android/server/am/ActivityManagerService;Ljava/util/function/Consumer;)V

    .line 342
    iget p1, p0, Lcom/android/server/am/PhantomProcessList;->mUpdateSeq:I

    iput p1, v0, Lcom/android/server/am/PhantomProcessRecord;->mUpdateSeq:I

    .line 343
    iget-object p1, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {p1, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 344
    iget-object p1, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    invoke-virtual {p1, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    if-nez p1, :cond_99

    .line 346
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 347
    iget-object p2, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    invoke-virtual {p2, p4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 349
    :cond_99
    invoke-virtual {p1, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 350
    iget-object p1, v0, Lcom/android/server/am/PhantomProcessRecord;->mPidFd:Ljava/io/FileDescriptor;

    if-eqz p1, :cond_c0

    .line 351
    iget-object p1, p0, Lcom/android/server/am/PhantomProcessList;->mKillHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object p1

    iget-object p2, v0, Lcom/android/server/am/PhantomProcessRecord;->mPidFd:Ljava/io/FileDescriptor;

    const/4 p3, 0x5

    new-instance p4, Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda2;

    invoke-direct {p4, p0}, Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/PhantomProcessList;)V

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/MessageQueue;->addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 354
    iget-object p1, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcessesPidFds:Landroid/util/SparseArray;

    iget-object p2, v0, Lcom/android/server/am/PhantomProcessRecord;->mPidFd:Ljava/io/FileDescriptor;

    invoke-virtual {p2}, Ljava/io/FileDescriptor;->getInt$()I

    move-result p2

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 356
    :cond_c0
    invoke-virtual {p0}, Lcom/android/server/am/PhantomProcessList;->scheduleTrimPhantomProcessesLocked()V
    :try_end_c3
    .catch Ljava/lang/IllegalStateException; {:try_start_67 .. :try_end_c3} :catch_c4

    return-object v0

    :catch_c4
    :cond_c4
    return-object v1
.end method

.method public final isAppProcess(I)Z
    .registers 3

    .line 366
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v0

    .line 367
    :try_start_5
    iget-object p0, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object p0

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    monitor-exit v0

    return p0

    :catchall_14
    move-exception p0

    .line 368
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public killPhantomProcessGroupLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/PhantomProcessRecord;IILjava/lang/String;)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 561
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 562
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    iget v2, p2, Lcom/android/server/am/PhantomProcessRecord;->mPpid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    const/4 v2, 0x1

    if-ltz v1, :cond_41

    .line 564
    iget-object p0, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    .line 565
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    .line 566
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_1b
    if-ltz v1, :cond_41

    .line 567
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/PhantomProcessRecord;

    if-ne v3, p2, :cond_29

    .line 569
    invoke-virtual {v3, p5, v2}, Lcom/android/server/am/PhantomProcessRecord;->killLocked(Ljava/lang/String;Z)V

    goto :goto_3e

    .line 571
    :cond_29
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caused by siling process: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/PhantomProcessRecord;->killLocked(Ljava/lang/String;Z)V

    :goto_3e
    add-int/lit8 v1, v1, -0x1

    goto :goto_1b

    .line 575
    :cond_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_57

    .line 577
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Caused by child process: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, p3, p4, v2}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    return-void

    :catchall_57
    move-exception p0

    .line 575
    :try_start_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw p0
.end method

.method public lookForPhantomProcessesLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomToAppProcessMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 142
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 144
    :try_start_9
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v1
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_30

    .line 145
    :try_start_e
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService$PidMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_18
    if-ltz v2, :cond_28

    .line 146
    iget-object v3, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityManagerService$PidMap;->valueAt(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    .line 147
    invoke-virtual {p0, v3}, Lcom/android/server/am/PhantomProcessList;->lookForPhantomProcessesLocked(Lcom/android/server/am/ProcessRecord;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 149
    :cond_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_e .. :try_end_29} :catchall_2d

    .line 151
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :catchall_2d
    move-exception p0

    .line 149
    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    :try_start_2f
    throw p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p0

    .line 151
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 152
    throw p0
.end method

.method public final lookForPhantomProcessesLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock",
            "mService.mPidsSelfLocked"
        }
    .end annotation

    .line 157
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->appZygote:Z

    if-nez v0, :cond_a3

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v0

    if-nez v0, :cond_a3

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v0

    if-eqz v0, :cond_12

    goto/16 :goto_a3

    .line 161
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    .line 162
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mCgroupProcsFds:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    const-string v2, "ActivityManager"

    if-nez v1, :cond_50

    .line 164
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/PhantomProcessList;->getCgroupFilePath(II)Ljava/lang/String;

    move-result-object v1

    .line 166
    :try_start_2a
    iget-object v3, p0, Lcom/android/server/am/PhantomProcessList;->mInjector:Lcom/android/server/am/PhantomProcessList$Injector;

    invoke-virtual {v3, v1}, Lcom/android/server/am/PhantomProcessList$Injector;->openCgroupProcs(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_30
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_30} :catch_36
    .catch Ljava/lang/SecurityException; {:try_start_2a .. :try_end_30} :catch_36

    .line 174
    iget-object v3, p0, Lcom/android/server/am/PhantomProcessList;->mCgroupProcsFds:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_50

    :catch_36
    move-exception p0

    .line 168
    sget-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz p1, :cond_4f

    .line 169
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to open "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4f
    return-void

    .line 176
    :cond_50
    :goto_50
    iget-object v3, p0, Lcom/android/server/am/PhantomProcessList;->mDataBuffer:[B

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move v7, v6

    .line 182
    :cond_56
    :try_start_56
    iget-object v8, p0, Lcom/android/server/am/PhantomProcessList;->mInjector:Lcom/android/server/am/PhantomProcessList$Injector;

    array-length v9, v3

    invoke-virtual {v8, v1, v3, v6, v9}, Lcom/android/server/am/PhantomProcessList$Injector;->readCgroupProcs(Ljava/io/InputStream;[BII)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_61

    goto :goto_7c

    :cond_61
    int-to-long v9, v8

    add-long/2addr v4, v9

    move v9, v6

    :goto_64
    if-ge v9, v8, :cond_79

    .line 188
    aget-byte v10, v3, v9

    const/16 v11, 0xa

    if-ne v10, v11, :cond_71

    .line 190
    invoke-virtual {p0, p1, v7, v0}, Lcom/android/server/am/PhantomProcessList;->addChildPidLocked(Lcom/android/server/am/ProcessRecord;II)V

    move v7, v6

    goto :goto_76

    :cond_71
    mul-int/lit8 v7, v7, 0xa

    add-int/lit8 v10, v10, -0x30

    add-int/2addr v7, v10

    :goto_76
    add-int/lit8 v9, v9, 0x1

    goto :goto_64

    .line 196
    :cond_79
    array-length v9, v3

    if-ge v8, v9, :cond_56

    :goto_7c
    if-eqz v7, :cond_81

    .line 203
    invoke-virtual {p0, p1, v7, v0}, Lcom/android/server/am/PhantomProcessList;->addChildPidLocked(Lcom/android/server/am/ProcessRecord;II)V

    :cond_81
    neg-long v3, v4

    .line 206
    invoke-virtual {v1, v3, v4}, Ljava/io/InputStream;->skip(J)J
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_85} :catch_86

    goto :goto_a3

    :catch_86
    move-exception v3

    .line 208
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in reading cgroup procs from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 210
    iget-object p0, p0, Lcom/android/server/am/PhantomProcessList;->mCgroupProcsFds:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->delete(I)V

    :cond_a3
    :goto_a3
    return-void
.end method

.method public onAppDied(I)V
    .registers 4

    .line 282
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 283
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mCgroupProcsFds:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_1b

    .line 285
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mCgroupProcsFds:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 286
    iget-object p0, p0, Lcom/android/server/am/PhantomProcessList;->mCgroupProcsFds:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 287
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 289
    :cond_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public final onPhantomProcessFdEvent(Ljava/io/FileDescriptor;I)I
    .registers 5

    .line 372
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 373
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcessesPidFds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/PhantomProcessRecord;

    const/4 p1, 0x0

    if-nez p0, :cond_14

    .line 375
    monitor-exit v0

    return p1

    :cond_14
    const/4 v1, 0x1

    and-int/2addr p2, v1

    if-eqz p2, :cond_1c

    .line 378
    invoke-virtual {p0, v1}, Lcom/android/server/am/PhantomProcessRecord;->onProcDied(Z)V

    goto :goto_21

    :cond_1c
    const-string p2, "Process error"

    .line 381
    invoke-virtual {p0, p2, v1}, Lcom/android/server/am/PhantomProcessRecord;->killLocked(Ljava/lang/String;Z)V

    .line 383
    :goto_21
    monitor-exit v0

    return p1

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public final onPhantomProcessKilledLocked(Lcom/android/server/am/PhantomProcessRecord;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 389
    iget-object v0, p1, Lcom/android/server/am/PhantomProcessRecord;->mPidFd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 390
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mKillHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/am/PhantomProcessRecord;->mPidFd:Ljava/io/FileDescriptor;

    .line 391
    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeOnFileDescriptorEventListener(Ljava/io/FileDescriptor;)V

    .line 392
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcessesPidFds:Landroid/util/SparseArray;

    iget-object v1, p1, Lcom/android/server/am/PhantomProcessRecord;->mPidFd:Ljava/io/FileDescriptor;

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 393
    iget-object v0, p1, Lcom/android/server/am/PhantomProcessRecord;->mPidFd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 395
    :cond_29
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 396
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/am/PhantomProcessRecord;->mPpid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_3b

    return-void

    .line 400
    :cond_3b
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 401
    iget v2, p1, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 402
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_53

    .line 403
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 405
    :cond_53
    iget-boolean v0, p1, Lcom/android/server/am/PhantomProcessRecord;->mZombie:Z

    if-eqz v0, :cond_5f

    .line 407
    iget-object p0, p0, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    iget v0, p1, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_66

    .line 410
    :cond_5f
    iget-object p0, p0, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    iget p1, p1, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :goto_66
    return-void
.end method

.method public final probeCgroupVersion()V
    .registers 5

    .line 215
    sget-object v0, Lcom/android/server/am/PhantomProcessList;->CGROUP_PATH_PREFIXES:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_5
    if-ltz v0, :cond_2d

    .line 216
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/am/PhantomProcessList;->CGROUP_PATH_PREFIXES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 217
    iput v0, p0, Lcom/android/server/am/PhantomProcessList;->mCgroupVersion:I

    goto :goto_2d

    :cond_2a
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_2d
    :goto_2d
    return-void
.end method

.method public pruneStaleProcessesLocked()V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 536
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    const-string v2, " as it should have been dead."

    const-string v3, "Pruning "

    const-string v4, "ActivityManager"

    if-ltz v0, :cond_3f

    .line 537
    iget-object v5, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/PhantomProcessRecord;

    .line 538
    iget v6, v5, Lcom/android/server/am/PhantomProcessRecord;->mUpdateSeq:I

    iget v7, p0, Lcom/android/server/am/PhantomProcessList;->mUpdateSeq:I

    if-ge v6, v7, :cond_3c

    .line 539
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v6, :cond_37

    .line 540
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    const-string v2, "Stale process"

    .line 542
    invoke-virtual {v5, v2, v1}, Lcom/android/server/am/PhantomProcessRecord;->killLocked(Ljava/lang/String;Z)V

    :cond_3c
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 545
    :cond_3f
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_46
    if-ltz v0, :cond_72

    .line 546
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/PhantomProcessRecord;

    .line 547
    iget v5, v1, Lcom/android/server/am/PhantomProcessRecord;->mUpdateSeq:I

    iget v6, p0, Lcom/android/server/am/PhantomProcessList;->mUpdateSeq:I

    if-ge v5, v6, :cond_6f

    .line 548
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v5, :cond_6f

    .line 549
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6f
    add-int/lit8 v0, v0, -0x1

    goto :goto_46

    :cond_72
    return-void
.end method

.method public removePhantomProcessesWithNoParentLocked()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 516
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_2f

    .line 517
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/PhantomProcessRecord;

    .line 518
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v2

    .line 519
    :try_start_17
    iget-object v3, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    iget v4, v1, Lcom/android/server/am/PhantomProcessRecord;->mPpid:I

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    if-nez v3, :cond_28

    .line 521
    iget-object v3, p0, Lcom/android/server/am/PhantomProcessList;->mTempPhantomProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    :cond_28
    monitor-exit v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :catchall_2c
    move-exception p0

    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_17 .. :try_end_2e} :catchall_2c

    throw p0

    .line 525
    :cond_2f
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mTempPhantomProcesses:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 528
    iget-object p0, p0, Lcom/android/server/am/PhantomProcessList;->mTempPhantomProcesses:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final scheduleTrimPhantomProcessesLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 416
    iget-boolean v0, p0, Lcom/android/server/am/PhantomProcessList;->mTrimPhantomProcessScheduled:Z

    if-nez v0, :cond_13

    const/4 v0, 0x1

    .line 417
    iput-boolean v0, p0, Lcom/android/server/am/PhantomProcessList;->mTrimPhantomProcessScheduled:Z

    .line 418
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/PhantomProcessList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_13
    return-void
.end method

.method public trimPhantomProcessesIfNecessary()V
    .registers 8

    .line 428
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-eqz v0, :cond_a0

    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "settings_enable_monitor_phantom_procs"

    invoke-static {v0, v1}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_a0

    .line 432
    :cond_15
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_1a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 433
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_9a

    const/4 v2, 0x0

    .line 434
    :try_start_21
    iput-boolean v2, p0, Lcom/android/server/am/PhantomProcessList;->mTrimPhantomProcessScheduled:Z

    .line 435
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v2, v2, Lcom/android/server/am/ActivityManagerConstants;->MAX_PHANTOM_PROCESSES:I

    iget-object v3, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_8e

    .line 436
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_39
    if-ltz v2, :cond_4b

    .line 437
    iget-object v4, p0, Lcom/android/server/am/PhantomProcessList;->mTempPhantomProcesses:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/PhantomProcessRecord;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_39

    .line 439
    :cond_4b
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v2
    :try_end_50
    .catchall {:try_start_21 .. :try_end_50} :catchall_97

    .line 443
    :try_start_50
    iget-object v4, p0, Lcom/android/server/am/PhantomProcessList;->mTempPhantomProcesses:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0}, Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/PhantomProcessList;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_5a} :catch_5d
    .catchall {:try_start_50 .. :try_end_5a} :catchall_5b

    goto :goto_66

    :catchall_5b
    move-exception p0

    goto :goto_8c

    :catch_5d
    move-exception v4

    :try_start_5e
    const-string v5, "ActivityManager"

    const-string/jumbo v6, "trimPhantomProcesses sort failed"

    .line 469
    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 495
    :goto_66
    monitor-exit v2
    :try_end_67
    .catchall {:try_start_5e .. :try_end_67} :catchall_5b

    .line 496
    :try_start_67
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mTempPhantomProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .line 497
    :goto_6e
    iget-object v4, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v4, v4, Lcom/android/server/am/ActivityManagerConstants;->MAX_PHANTOM_PROCESSES:I

    if-lt v2, v4, :cond_86

    .line 498
    iget-object v4, p0, Lcom/android/server/am/PhantomProcessList;->mTempPhantomProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/PhantomProcessRecord;

    const-string v5, "Trimming phantom processes"

    .line 499
    invoke-virtual {v4, v5, v3}, Lcom/android/server/am/PhantomProcessRecord;->killLocked(Ljava/lang/String;Z)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_6e

    .line 501
    :cond_86
    iget-object p0, p0, Lcom/android/server/am/PhantomProcessList;->mTempPhantomProcesses:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V
    :try_end_8b
    .catchall {:try_start_67 .. :try_end_8b} :catchall_97

    goto :goto_91

    .line 495
    :goto_8c
    :try_start_8c
    monitor-exit v2
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_5b

    :try_start_8d
    throw p0

    .line 504
    :cond_8e
    invoke-virtual {p0}, Lcom/android/server/am/PhantomProcessList;->removePhantomProcessesWithNoParentLocked()V

    .line 507
    :goto_91
    monitor-exit v1
    :try_end_92
    .catchall {:try_start_8d .. :try_end_92} :catchall_97

    .line 508
    :try_start_92
    monitor-exit v0
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_9a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_97
    move-exception p0

    .line 507
    :try_start_98
    monitor-exit v1
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_97

    :try_start_99
    throw p0

    :catchall_9a
    move-exception p0

    .line 508
    monitor-exit v0
    :try_end_9c
    .catchall {:try_start_99 .. :try_end_9c} :catchall_9a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    :cond_a0
    :goto_a0
    return-void
.end method

.method public updateProcessCpuStatesLocked(Lcom/android/internal/os/ProcessCpuTracker;)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "tracker"
        }
    .end annotation

    .line 603
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 605
    :try_start_3
    iget v1, p0, Lcom/android/server/am/PhantomProcessList;->mUpdateSeq:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/am/PhantomProcessList;->mUpdateSeq:I

    .line 608
    invoke-virtual {p0}, Lcom/android/server/am/PhantomProcessList;->lookForPhantomProcessesLocked()V

    .line 610
    invoke-virtual {p1}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_12
    if-ltz v1, :cond_44

    .line 611
    invoke-virtual {p1, v1}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v2

    .line 612
    iget-object v3, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget v4, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    iget v5, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    const/4 v6, 0x0

    .line 613
    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/server/am/PhantomProcessList;->getOrCreatePhantomProcessIfNeededLocked(Ljava/lang/String;IIZ)Lcom/android/server/am/PhantomProcessRecord;

    move-result-object v3

    if-eqz v3, :cond_41

    .line 615
    iget v4, p0, Lcom/android/server/am/PhantomProcessList;->mUpdateSeq:I

    iput v4, v3, Lcom/android/server/am/PhantomProcessRecord;->mUpdateSeq:I

    .line 616
    iget-wide v4, v3, Lcom/android/server/am/PhantomProcessRecord;->mCurrentCputime:J

    iget v6, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v2, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v6, v2

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/android/server/am/PhantomProcessRecord;->mCurrentCputime:J

    .line 617
    iget-wide v6, v3, Lcom/android/server/am/PhantomProcessRecord;->mLastCputime:J

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-nez v2, :cond_3e

    .line 618
    iput-wide v4, v3, Lcom/android/server/am/PhantomProcessRecord;->mLastCputime:J

    .line 620
    :cond_3e
    invoke-virtual {v3}, Lcom/android/server/am/PhantomProcessRecord;->updateAdjLocked()V

    :cond_41
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 624
    :cond_44
    invoke-virtual {p0}, Lcom/android/server/am/PhantomProcessList;->pruneStaleProcessesLocked()V

    .line 625
    monitor-exit v0

    return-void

    :catchall_49
    move-exception p0

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_49

    throw p0
.end method
