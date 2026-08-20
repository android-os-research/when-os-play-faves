.class public Lcom/android/server/am/AnrHelper;
.super Ljava/lang/Object;
.source "AnrHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AnrHelper$AnrRecord;,
        Lcom/android/server/am/AnrHelper$AnrConsumerThread;
    }
.end annotation


# static fields
.field public static final CONSECUTIVE_ANR_TIME_MS:J

.field public static final EXPIRED_REPORT_TIME_MS:J

.field public static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field public final mAnrRecords:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAnrRecords"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/AnrHelper$AnrRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mLastAnrTimeMs:J

.field public mProcessingPid:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAnrRecords"
        }
    .end annotation
.end field

.field public final mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAnrRecords(Lcom/android/server/am/AnrHelper;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRunning(Lcom/android/server/am/AnrHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AnrHelper;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmProcessingPid(Lcom/android/server/am/AnrHelper;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/AnrHelper;->mProcessingPid:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscheduleBinderHeavyHitterAutoSamplerIfNecessary(Lcom/android/server/am/AnrHelper;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/AnrHelper;->scheduleBinderHeavyHitterAutoSamplerIfNecessary()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartAnrConsumerIfNeeded(Lcom/android/server/am/AnrHelper;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/AnrHelper;->startAnrConsumerIfNeeded()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetEXPIRED_REPORT_TIME_MS()J
    .registers 2

    sget-wide v0, Lcom/android/server/am/AnrHelper;->EXPIRED_REPORT_TIME_MS:J

    return-wide v0
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 59
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/server/am/AnrHelper;->EXPIRED_REPORT_TIME_MS:J

    const-wide/16 v1, 0x2

    .line 64
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/AnrHelper;->CONSECUTIVE_ANR_TIME_MS:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 4

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/am/AnrHelper;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, 0x0

    .line 75
    iput-wide v0, p0, Lcom/android/server/am/AnrHelper;->mLastAnrTimeMs:J

    const/4 v0, -0x1

    .line 78
    iput v0, p0, Lcom/android/server/am/AnrHelper;->mProcessingPid:I

    .line 82
    iput-object p1, p0, Lcom/android/server/am/AnrHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method


# virtual methods
.method public appNotResponding(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 11

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    .line 86
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/AnrHelper;->appNotResponding(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLjava/lang/String;)V

    return-void
.end method

.method public appNotResponding(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLjava/lang/String;)V
    .registers 34

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v8, p7

    .line 94
    iget v1, v9, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 95
    iget-object v11, v0, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    monitor-enter v11

    if-nez v1, :cond_29

    :try_start_f
    const-string v0, "ActivityManager"

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skip zero pid ANR, process="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    monitor-exit v11

    return-void

    .line 101
    :cond_29
    iget v2, v0, Lcom/android/server/am/AnrHelper;->mProcessingPid:I

    if-ne v2, v1, :cond_4d

    const-string v0, "ActivityManager"

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip duplicated ANR, pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    monitor-exit v11

    return-void

    .line 105
    :cond_4d
    iget-object v2, v0, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_55
    if-ltz v2, :cond_86

    .line 106
    iget-object v3, v0, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/AnrHelper$AnrRecord;

    iget v3, v3, Lcom/android/server/am/AnrHelper$AnrRecord;->mPid:I

    if-ne v3, v1, :cond_83

    const-string v0, "ActivityManager"

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip queued ANR, pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    monitor-exit v11

    return-void

    :cond_83
    add-int/lit8 v2, v2, -0x1

    goto :goto_55

    .line 111
    :cond_86
    iget-object v12, v0, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    new-instance v13, Lcom/android/server/am/AnrHelper$AnrRecord;

    move-object v1, v13

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/AnrHelper$AnrRecord;-><init>(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLjava/lang/String;)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    monitor-exit v11
    :try_end_a0
    .catchall {:try_start_f .. :try_end_a0} :catchall_138

    .line 116
    iget-object v1, v0, Lcom/android/server/am/AnrHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_a3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    if-eqz v10, :cond_12a

    .line 117
    iget v2, v9, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v3, 0x2710

    if-lt v2, v3, :cond_12a

    const-string v2, "ActivityManager"

    .line 118
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "anr : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v8, Landroid/content/Intent;

    const-string v2, "com.sec.android.sdhms.action.CRASH_ANR"

    invoke-direct {v8, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sec.android.sdhms"

    .line 120
    invoke-virtual {v8, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "pkgName"

    .line 121
    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "userId"

    .line 122
    iget v3, v9, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v8, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "uid"

    .line 123
    iget v3, v9, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v8, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "type"

    const-string v3, "anr"

    .line 126
    invoke-virtual {v8, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    iget-object v4, v0, Lcom/android/server/am/AnrHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v2, "com.samsung.permission.WRITE_SDHMS_DATA"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v14

    const/4 v2, 0x0

    new-array v15, v2, [Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    sget v21, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v22, 0x3e8

    .line 129
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v23

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v24

    const/16 v25, -0x1

    .line 127
    invoke-virtual/range {v4 .. v25}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 132
    :cond_12a
    monitor-exit v1
    :try_end_12b
    .catchall {:try_start_a3 .. :try_end_12b} :catchall_132

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AnrHelper;->startAnrConsumerIfNeeded()V

    return-void

    :catchall_132
    move-exception v0

    .line 132
    :try_start_133
    monitor-exit v1
    :try_end_134
    .catchall {:try_start_133 .. :try_end_134} :catchall_132

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_138
    move-exception v0

    .line 113
    :try_start_139
    monitor-exit v11
    :try_end_13a
    .catchall {:try_start_139 .. :try_end_13a} :catchall_138

    throw v0
.end method

.method public final scheduleBinderHeavyHitterAutoSamplerIfNecessary()V
    .registers 7

    .line 201
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 202
    iget-wide v2, p0, Lcom/android/server/am/AnrHelper;->mLastAnrTimeMs:J

    sget-wide v4, Lcom/android/server/am/AnrHelper;->CONSECUTIVE_ANR_TIME_MS:J

    add-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-lez v2, :cond_12

    .line 203
    iget-object v2, p0, Lcom/android/server/am/AnrHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->scheduleBinderHeavyHitterAutoSampler()V

    .line 205
    :cond_12
    iput-wide v0, p0, Lcom/android/server/am/AnrHelper;->mLastAnrTimeMs:J

    return-void
.end method

.method public final startAnrConsumerIfNeeded()V
    .registers 4

    .line 139
    iget-object v0, p0, Lcom/android/server/am/AnrHelper;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 140
    new-instance v0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;

    invoke-direct {v0, p0}, Lcom/android/server/am/AnrHelper$AnrConsumerThread;-><init>(Lcom/android/server/am/AnrHelper;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_12
    return-void
.end method
