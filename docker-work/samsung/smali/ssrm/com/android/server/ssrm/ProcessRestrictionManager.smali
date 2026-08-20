.class public Lcom/android/server/ssrm/ProcessRestrictionManager;
.super Ljava/lang/Object;
.source "ProcessRestrictionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;,
        Lcom/android/server/ssrm/ProcessRestrictionManager$SlowdownRunnable;
    }
.end annotation


# static fields
.field private static final AID_OEM_RESERVED_END:I = 0x176f

.field private static final AID_OEM_RESERVED_START:I = 0x1388

.field static final DEBUG:Z

.field static DEBUG_OPTION:Z

.field static FROZEN_TIME:I

.field static final TAG:Ljava/lang/String;

.field static THAWED_TIME:I

.field static mRestrictedProcessList:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;",
            ">;"
        }
    .end annotation
.end field

.field private static sHistoryCircularBuffer:Lcom/android/server/ssrm/CircularBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/ssrm/CircularBuffer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sProcessRestrictionManager:Lcom/android/server/ssrm/ProcessRestrictionManager;


# instance fields
.field mIsThreadRunning:Z

.field mLastTimeMs:I

.field mSlowdown:Lcom/android/server/ssrm/ProcessRestrictionManager$SlowdownRunnable;

.field mSlowdownThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 14
    const-class v0, Lcom/android/server/ssrm/ProcessRestrictionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/ProcessRestrictionManager;->TAG:Ljava/lang/String;

    .line 16
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/server/ssrm/ProcessRestrictionManager;->DEBUG:Z

    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/ssrm/ProcessRestrictionManager;->DEBUG_OPTION:Z

    .line 28
    const/16 v0, 0x64

    sput v0, Lcom/android/server/ssrm/ProcessRestrictionManager;->FROZEN_TIME:I

    .line 30
    sput v0, Lcom/android/server/ssrm/ProcessRestrictionManager;->THAWED_TIME:I

    return-void
.end method

.method private constructor <init>()V
    .registers 8

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mIsThreadRunning:Z

    .line 115
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mLastTimeMs:I

    .line 49
    new-instance v1, Lcom/android/server/ssrm/CircularBuffer;

    const/16 v2, 0x1f4

    invoke-direct {v1, v2}, Lcom/android/server/ssrm/CircularBuffer;-><init>(I)V

    sput-object v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->sHistoryCircularBuffer:Lcom/android/server/ssrm/CircularBuffer;

    .line 50
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->mRestrictedProcessList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 51
    invoke-static {v0}, Landroid/os/Process;->enableSlowdown(Z)V

    .line 53
    sget-object v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->TAG:Ljava/lang/String;

    const-string v2, "/dev/freezer/abnormal/tasks"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->readSysfsMultipleLines(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "slowdownLists":Ljava/lang/String;
    if-eqz v1, :cond_5b

    .line 55
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "pids":[Ljava/lang/String;
    if-eqz v2, :cond_5b

    array-length v3, v2

    if-lez v3, :cond_5b

    .line 57
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_32
    array-length v4, v2

    if-ge v3, v4, :cond_5b

    .line 59
    :try_start_35
    aget-object v4, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 60
    .local v4, "slowPid":I
    invoke-static {v4}, Landroid/os/Process;->getUidForPid(I)I

    move-result v5

    .line 61
    .local v5, "slowUid":I
    const/16 v6, 0x2710

    if-ge v5, v6, :cond_4b

    const/16 v6, 0x1388

    if-lt v5, v6, :cond_53

    const/16 v6, 0x176f

    if-gt v5, v6, :cond_53

    .line 64
    :cond_4b
    invoke-static {v4, v5, v0}, Landroid/os/Process;->setProcessSlowdown(IIZ)V

    .line 65
    const-string v6, "THAWED by intialization"

    invoke-static {v4, v5, v6}, Lcom/android/server/ssrm/ProcessRestrictionManager;->addHistory(IILjava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/NumberFormatException; {:try_start_35 .. :try_end_53} :catch_54

    .line 69
    .end local v4    # "slowPid":I
    .end local v5    # "slowUid":I
    :cond_53
    goto :goto_58

    .line 67
    :catch_54
    move-exception v4

    .line 68
    .local v4, "nfe":Ljava/lang/NumberFormatException;
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 57
    .end local v4    # "nfe":Ljava/lang/NumberFormatException;
    :goto_58
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 74
    .end local v2    # "pids":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_5b
    new-instance v0, Lcom/android/server/ssrm/ProcessRestrictionManager$SlowdownRunnable;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/ProcessRestrictionManager$SlowdownRunnable;-><init>(Lcom/android/server/ssrm/ProcessRestrictionManager;)V

    iput-object v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mSlowdown:Lcom/android/server/ssrm/ProcessRestrictionManager$SlowdownRunnable;

    .line 75
    new-instance v0, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mSlowdown:Lcom/android/server/ssrm/ProcessRestrictionManager$SlowdownRunnable;

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mSlowdownThread:Ljava/lang/Thread;

    .line 76
    return-void
.end method

.method static addHistory(IILjava/lang/String;)V
    .registers 7
    .param p0, "pid"    # I
    .param p1, "uid"    # I
    .param p2, "state"    # Ljava/lang/String;

    .line 393
    sget-object v0, Lcom/android/server/ssrm/ProcessRestrictionManager;->sHistoryCircularBuffer:Lcom/android/server/ssrm/CircularBuffer;

    if-eqz v0, :cond_41

    .line 394
    nop

    .line 395
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 394
    const-string v2, "yyyy-MM-dd kk:mm:ss "

    invoke-static {v2, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 396
    .local v0, "strTime":Ljava/lang/String;
    sget-object v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->sHistoryCircularBuffer:Lcom/android/server/ssrm/CircularBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[PRM] PID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", UID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", STAE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 397
    invoke-virtual {v1, v2}, Lcom/android/server/ssrm/CircularBuffer;->put(Ljava/lang/Object;)V

    .line 399
    .end local v0    # "strTime":Ljava/lang/String;
    :cond_41
    return-void
.end method

.method public static getFrozenTime()I
    .registers 3

    .line 410
    const-string v0, "dev.sdhms.frozen_time"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, "result":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->DEBUG:Z

    if-eqz v1, :cond_19

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_14

    goto :goto_19

    .line 414
    :cond_14
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 412
    :cond_19
    :goto_19
    const/16 v1, -0x3e7

    return v1
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/ssrm/ProcessRestrictionManager;
    .registers 2

    const-class v0, Lcom/android/server/ssrm/ProcessRestrictionManager;

    monitor-enter v0

    .line 41
    :try_start_3
    sget-object v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->sProcessRestrictionManager:Lcom/android/server/ssrm/ProcessRestrictionManager;

    if-nez v1, :cond_e

    .line 42
    new-instance v1, Lcom/android/server/ssrm/ProcessRestrictionManager;

    invoke-direct {v1}, Lcom/android/server/ssrm/ProcessRestrictionManager;-><init>()V

    sput-object v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->sProcessRestrictionManager:Lcom/android/server/ssrm/ProcessRestrictionManager;

    .line 44
    :cond_e
    sget-object v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->sProcessRestrictionManager:Lcom/android/server/ssrm/ProcessRestrictionManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 40
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getThawedTime()I
    .registers 3

    .line 402
    const-string v0, "dev.sdhms.thawed_time"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, "result":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->DEBUG:Z

    if-eqz v1, :cond_19

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_14

    goto :goto_19

    .line 406
    :cond_14
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 404
    :cond_19
    :goto_19
    const/16 v1, -0x3e7

    return v1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 418
    sget-object v0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mRestrictedProcessList:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "---------------------------------------\n"

    if-eqz v0, :cond_b8

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_b8

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    .local v0, "rpList":Ljava/lang/StringBuilder;
    sget-object v2, Lcom/android/server/ssrm/ProcessRestrictionManager;->mRestrictedProcessList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 421
    .local v2, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n\n[Process Restriction State : SlowdownTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mLastTimeMs:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    const-string v3, "\n---------------------------------------\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    :goto_3e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ae

    .line 424
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 425
    .local v3, "pid":Ljava/lang/Integer;
    sget-object v4, Lcom/android/server/ssrm/ProcessRestrictionManager;->mRestrictedProcessList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;

    .line 426
    .local v4, "rp":Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " PID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-static {v4}, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->-$$Nest$fgetmLastState(Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;)I

    move-result v5

    if-nez v5, :cond_77

    const-string v5, "THAWED"

    goto :goto_83

    .line 428
    :cond_77
    invoke-static {v4}, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->-$$Nest$fgetmLastState(Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_81

    .line 429
    const-string v5, "FROZEN"

    goto :goto_83

    :cond_81
    const-string v5, "SLOWDOWN"

    :goto_83
    nop

    .line 430
    .local v5, "status":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    iget-wide v6, v4, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mLastStateUpdatedTime:J

    const-string v8, "yyyy-MM-dd kk:mm:ss "

    invoke-static {v8, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 433
    .local v6, "strTime":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " [UPDATE TIME : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .end local v3    # "pid":Ljava/lang/Integer;
    .end local v4    # "rp":Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;
    .end local v5    # "status":Ljava/lang/String;
    .end local v6    # "strTime":Ljava/lang/String;
    goto :goto_3e

    .line 435
    :cond_ae
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 439
    .end local v0    # "rpList":Ljava/lang/StringBuilder;
    .end local v2    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_b8
    sget-object v0, Lcom/android/server/ssrm/ProcessRestrictionManager;->sHistoryCircularBuffer:Lcom/android/server/ssrm/CircularBuffer;

    if-eqz v0, :cond_e2

    invoke-virtual {v0}, Lcom/android/server/ssrm/CircularBuffer;->getSize()I

    move-result v0

    if-lez v0, :cond_e2

    .line 440
    const-string v0, "\n[ProcessRestriction History]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 441
    sget-object v0, Lcom/android/server/ssrm/ProcessRestrictionManager;->sHistoryCircularBuffer:Lcom/android/server/ssrm/CircularBuffer;

    invoke-virtual {v0}, Lcom/android/server/ssrm/CircularBuffer;->get()[Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, "history":[Ljava/lang/String;
    if-eqz v0, :cond_de

    array-length v2, v0

    if-lez v2, :cond_de

    .line 443
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d3
    array-length v3, v0

    if-ge v2, v3, :cond_de

    .line 444
    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 443
    add-int/lit8 v2, v2, 0x1

    goto :goto_d3

    .line 447
    .end local v2    # "i":I
    :cond_de
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 448
    .end local v0    # "history":[Ljava/lang/String;
    goto :goto_109

    .line 449
    :cond_e2
    sget-object v0, Lcom/android/server/ssrm/ProcessRestrictionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sHistoryCircularBuffer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 450
    sget-object v2, Lcom/android/server/ssrm/ProcessRestrictionManager;->sHistoryCircularBuffer:Lcom/android/server/ssrm/CircularBuffer;

    if-nez v2, :cond_f6

    const-string v2, "NULL"

    goto :goto_fe

    :cond_f6
    invoke-virtual {v2}, Lcom/android/server/ssrm/CircularBuffer;->getSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_fe
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 449
    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :goto_109
    return-void
.end method

.method isSlowTargetExist()Z
    .registers 6

    .line 203
    sget-object v0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mRestrictedProcessList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 204
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 205
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 206
    .local v1, "key":Ljava/lang/Integer;
    sget-object v2, Lcom/android/server/ssrm/ProcessRestrictionManager;->mRestrictedProcessList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;

    .line 207
    .local v2, "rp":Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;
    if-eqz v2, :cond_28

    invoke-static {v2}, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->-$$Nest$fgetmLastState(Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_28

    .line 208
    return v4

    .line 210
    .end local v1    # "key":Ljava/lang/Integer;
    .end local v2    # "rp":Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;
    :cond_28
    goto :goto_a

    .line 211
    :cond_29
    const/4 v1, 0x0

    return v1
.end method

.method declared-synchronized manageProcessRestrictionState(IZLjava/lang/String;)I
    .registers 10
    .param p1, "pid"    # I
    .param p2, "isEnabled"    # Z
    .param p3, "type"    # Ljava/lang/String;

    monitor-enter p0

    .line 79
    const/4 v0, -0x1

    .line 81
    .local v0, "result":I
    :try_start_2
    sget-boolean v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->DEBUG_OPTION:Z

    if-eqz v1, :cond_32

    .line 82
    sget-object v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "manageProcessRestrictionState: pid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .end local p0    # "this":Lcom/android/server/ssrm/ProcessRestrictionManager;
    :cond_32
    const-string v1, "freeze"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    const-string v1, "slowdown"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    const-string v1, "release"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    :cond_4a
    sget-object v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->mRestrictedProcessList:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_75

    .line 88
    :cond_4e
    sget-object v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "manageProcessRestrictionState: type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 89
    sget-object v3, Lcom/android/server/ssrm/ProcessRestrictionManager;->mRestrictedProcessList:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v3, :cond_66

    const-string v3, ", mRestrictedProcessList is NULL!"

    goto :goto_68

    :cond_66
    const-string v3, ""

    :goto_68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catchall {:try_start_2 .. :try_end_73} :catchall_ef

    .line 90
    monitor-exit p0

    return v0

    .line 93
    :cond_75
    :try_start_75
    const-string v1, "release"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_a5

    sget-object v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->mRestrictedProcessList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 94
    sget-object v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->mRestrictedProcessList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-static {p1}, Landroid/os/Process;->getUidForPid(I)I

    move-result v1

    .line 96
    .local v1, "uid":I
    invoke-static {p1, v1, v3}, Landroid/os/Process;->setProcessSlowdown(IIZ)V

    .line 97
    const-string v3, "THAWED by release type"

    invoke-static {p1, v1, v3}, Lcom/android/server/ssrm/ProcessRestrictionManager;->addHistory(IILjava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/server/ssrm/ProcessRestrictionManager;->slowdown()V
    :try_end_a3
    .catchall {:try_start_75 .. :try_end_a3} :catchall_ef

    .line 99
    monitor-exit p0

    return v2

    .line 102
    .end local v1    # "uid":I
    :cond_a5
    :try_start_a5
    sget-object v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->mRestrictedProcessList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c1

    .line 103
    sget-object v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->mRestrictedProcessList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;

    invoke-virtual {v1, p3, p2}, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->updateState(Ljava/lang/String;Z)V

    goto :goto_e8

    .line 105
    :cond_c1
    new-instance v1, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;

    if-eqz p2, :cond_cf

    const-string v4, "freeze"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cf

    move v4, v2

    goto :goto_d0

    :cond_cf
    move v4, v3

    :goto_d0
    if-eqz p2, :cond_db

    const-string v5, "slowdown"

    .line 106
    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_db

    goto :goto_dc

    :cond_db
    move v2, v3

    :goto_dc
    invoke-direct {v1, p1, v4, v2}, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;-><init>(IZZ)V

    .line 107
    .local v1, "rp":Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;
    sget-object v2, Lcom/android/server/ssrm/ProcessRestrictionManager;->mRestrictedProcessList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .end local v1    # "rp":Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;
    :goto_e8
    invoke-virtual {p0}, Lcom/android/server/ssrm/ProcessRestrictionManager;->updateProcessRestrictionLocked()I

    move-result v1
    :try_end_ec
    .catchall {:try_start_a5 .. :try_end_ec} :catchall_ef

    move v0, v1

    .line 112
    monitor-exit p0

    return v0

    .line 78
    .end local v0    # "result":I
    .end local p1    # "pid":I
    .end local p2    # "isEnabled":Z
    .end local p3    # "type":Ljava/lang/String;
    :catchall_ef
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized releaseAllSlowdown()V
    .registers 7

    monitor-enter p0

    .line 140
    :try_start_1
    sget-object v0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mRestrictedProcessList:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_4c

    .line 141
    sget-object v0, Lcom/android/server/ssrm/ProcessRestrictionManager;->TAG:Ljava/lang/String;

    const-string v1, "releaseAllSlowdown"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    sget-object v0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mRestrictedProcessList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 143
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 144
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 145
    .local v1, "key":Ljava/lang/Integer;
    sget-object v2, Lcom/android/server/ssrm/ProcessRestrictionManager;->mRestrictedProcessList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;

    .line 146
    .local v2, "rp":Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;
    if-eqz v2, :cond_48

    invoke-virtual {v2}, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->isSlowdownState()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 147
    iget v3, v2, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mPid:I

    const/4 v4, -0x1

    const-string v5, "THAWN by releaseAllSlowdown"

    invoke-static {v3, v4, v5}, Lcom/android/server/ssrm/ProcessRestrictionManager;->addHistory(IILjava/lang/String;)V

    .line 148
    invoke-virtual {v2}, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->releaseSlowdown()V

    .line 149
    sget-object v3, Lcom/android/server/ssrm/ProcessRestrictionManager;->mRestrictedProcessList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .end local v1    # "key":Ljava/lang/Integer;
    .end local v2    # "rp":Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;
    .end local p0    # "this":Lcom/android/server/ssrm/ProcessRestrictionManager;
    :cond_48
    goto :goto_1c

    .line 152
    :cond_49
    invoke-virtual {p0}, Lcom/android/server/ssrm/ProcessRestrictionManager;->slowdown()V
    :try_end_4c
    .catchall {:try_start_1 .. :try_end_4c} :catchall_4e

    .line 154
    .end local v0    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_4c
    monitor-exit p0

    return-void

    .line 139
    :catchall_4e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setFrozenTime(I)V
    .registers 5
    .param p1, "timeMs"    # I

    monitor-enter p0

    .line 118
    :try_start_1
    sget-boolean v0, Lcom/android/server/ssrm/ProcessRestrictionManager;->DEBUG_OPTION:Z

    if-eqz v0, :cond_1d

    .line 119
    sget-object v0, Lcom/android/server/ssrm/ProcessRestrictionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFrozenTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .end local p0    # "this":Lcom/android/server/ssrm/ProcessRestrictionManager;
    :cond_1d
    iget v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mLastTimeMs:I

    if-eq v0, p1, :cond_58

    .line 122
    if-lez p1, :cond_31

    .line 123
    const/16 v0, 0x3e8

    if-le p1, v0, :cond_2a

    div-int/lit16 v0, p1, 0x3e8

    goto :goto_2b

    :cond_2a
    move v0, p1

    :goto_2b
    sput v0, Lcom/android/server/ssrm/ProcessRestrictionManager;->FROZEN_TIME:I

    .line 124
    invoke-virtual {p0}, Lcom/android/server/ssrm/ProcessRestrictionManager;->updateProcessRestrictionLocked()I

    goto :goto_56

    .line 126
    :cond_31
    const/16 v0, 0x64

    sput v0, Lcom/android/server/ssrm/ProcessRestrictionManager;->FROZEN_TIME:I

    .line 127
    iget-boolean v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mIsThreadRunning:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mSlowdownThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 128
    iput-boolean v1, p0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mIsThreadRunning:Z

    .line 129
    iget-object v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mSlowdownThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 130
    sget-object v0, Lcom/android/server/ssrm/ProcessRestrictionManager;->TAG:Ljava/lang/String;

    const-string v2, "slowdown: stop"

    invoke-static {v0, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_50
    invoke-static {v1}, Landroid/os/Process;->enableSlowdown(Z)V

    .line 133
    invoke-virtual {p0}, Lcom/android/server/ssrm/ProcessRestrictionManager;->releaseAllSlowdown()V

    .line 135
    :goto_56
    iput p1, p0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mLastTimeMs:I
    :try_end_58
    .catchall {:try_start_1 .. :try_end_58} :catchall_5a

    .line 137
    :cond_58
    monitor-exit p0

    return-void

    .line 117
    .end local p1    # "timeMs":I
    :catchall_5a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method slowdown()V
    .registers 4

    .line 184
    invoke-virtual {p0}, Lcom/android/server/ssrm/ProcessRestrictionManager;->isSlowTargetExist()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 185
    iget-boolean v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mIsThreadRunning:Z

    if-nez v0, :cond_4c

    iget-object v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mSlowdownThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mIsThreadRunning:Z

    .line 187
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mSlowdown:Lcom/android/server/ssrm/ProcessRestrictionManager$SlowdownRunnable;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mSlowdownThread:Ljava/lang/Thread;

    .line 188
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 189
    iget-object v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mSlowdownThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 190
    sget-object v0, Lcom/android/server/ssrm/ProcessRestrictionManager;->TAG:Ljava/lang/String;

    const-string v1, "slowdown: start"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    .line 193
    :cond_2e
    iget-boolean v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mIsThreadRunning:Z

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mSlowdownThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mIsThreadRunning:Z

    .line 195
    iget-object v1, p0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mSlowdownThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 196
    sget-object v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->TAG:Ljava/lang/String;

    const-string v2, "slowdown: stop"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-static {v0}, Landroid/os/Process;->enableSlowdown(Z)V

    .line 200
    :cond_4c
    :goto_4c
    return-void
.end method

.method updateProcessRestrictionLocked()I
    .registers 7

    .line 157
    const/4 v0, 0x1

    .line 158
    .local v0, "result":I
    sget-object v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->mRestrictedProcessList:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, -0x1

    if-eqz v1, :cond_47

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ge v1, v3, :cond_e

    goto :goto_47

    .line 166
    :cond_e
    sget-object v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->mRestrictedProcessList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 167
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 168
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 169
    .local v3, "key":Ljava/lang/Integer;
    sget-object v4, Lcom/android/server/ssrm/ProcessRestrictionManager;->mRestrictedProcessList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;

    .line 170
    .local v4, "rp":Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;
    if-eqz v4, :cond_35

    invoke-virtual {v4}, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->proceedRestriction()I

    move-result v5

    if-ne v5, v2, :cond_35

    .line 171
    const/4 v0, -0x1

    .line 174
    :cond_35
    if-eqz v4, :cond_42

    invoke-virtual {v4}, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->isNotTargetPid()Z

    move-result v5

    if-eqz v5, :cond_42

    .line 175
    sget-object v5, Lcom/android/server/ssrm/ProcessRestrictionManager;->mRestrictedProcessList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .end local v3    # "key":Ljava/lang/Integer;
    .end local v4    # "rp":Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;
    :cond_42
    goto :goto_18

    .line 178
    :cond_43
    invoke-virtual {p0}, Lcom/android/server/ssrm/ProcessRestrictionManager;->slowdown()V

    .line 180
    return v0

    .line 159
    .end local v1    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_47
    :goto_47
    sget-object v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateProcessRestrictionLocked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 160
    sget-object v4, Lcom/android/server/ssrm/ProcessRestrictionManager;->mRestrictedProcessList:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v4, :cond_5b

    .line 161
    const-string v4, "mRestrictedProcessList is NULL!"

    goto :goto_74

    .line 162
    :cond_5b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mRestrictedProcessList size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/server/ssrm/ProcessRestrictionManager;->mRestrictedProcessList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_74
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 159
    invoke-static {v1, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return v2
.end method
