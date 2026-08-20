.class public abstract Lcom/android/server/utils/AlarmQueue;
.super Ljava/lang/Object;
.source "AlarmQueue.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/utils/AlarmQueue$Injector;,
        Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/app/AlarmManager$OnAlarmListener;"
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final NOT_SCHEDULED:J = -0x1L

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue<",
            "TK;>;"
        }
    .end annotation
.end field

.field public final mAlarmTag:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public final mDumpTitle:Ljava/lang/String;

.field public final mExactAlarm:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/utils/AlarmQueue$Injector;

.field public final mLock:Ljava/lang/Object;

.field public mMinTimeBetweenAlarmsMs:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mScheduleAlarmRunnable:Ljava/lang/Runnable;

.field public mTriggerTimeElapsed:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$NyKargXRbTFquP-qpLWZaXHgX5Q(Lcom/android/server/utils/AlarmQueue;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/utils/AlarmQueue;->lambda$setNextAlarmLocked$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAlarmTag(Lcom/android/server/utils/AlarmQueue;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmTag:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/utils/AlarmQueue;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/utils/AlarmQueue;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmExactAlarm(Lcom/android/server/utils/AlarmQueue;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/utils/AlarmQueue;->mExactAlarm:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/utils/AlarmQueue;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/utils/AlarmQueue;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/utils/AlarmQueue;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMinTimeBetweenAlarmsMs(Lcom/android/server/utils/AlarmQueue;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/utils/AlarmQueue;->mMinTimeBetweenAlarmsMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmTriggerTimeElapsed(Lcom/android/server/utils/AlarmQueue;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/utils/AlarmQueue;->mTriggerTimeElapsed:J

    return-wide v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 51
    const-class v0, Lcom/android/server/utils/AlarmQueue;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/utils/AlarmQueue;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .registers 17

    .line 157
    new-instance v8, Lcom/android/server/utils/AlarmQueue$Injector;

    invoke-direct {v8}, Lcom/android/server/utils/AlarmQueue$Injector;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-wide v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/utils/AlarmQueue;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;ZJLcom/android/server/utils/AlarmQueue$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;ZJLcom/android/server/utils/AlarmQueue$Injector;)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Lcom/android/server/utils/AlarmQueue$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/AlarmQueue$1;-><init>(Lcom/android/server/utils/AlarmQueue;)V

    iput-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mScheduleAlarmRunnable:Ljava/lang/Runnable;

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    .line 132
    new-instance v0, Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    invoke-direct {v0}, Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    const-wide/16 v0, -0x1

    .line 142
    iput-wide v0, p0, Lcom/android/server/utils/AlarmQueue;->mTriggerTimeElapsed:J

    .line 165
    iput-object p1, p0, Lcom/android/server/utils/AlarmQueue;->mContext:Landroid/content/Context;

    .line 166
    iput-object p3, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmTag:Ljava/lang/String;

    .line 167
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/utils/AlarmQueue;->mDumpTitle:Ljava/lang/String;

    .line 168
    iput-boolean p5, p0, Lcom/android/server/utils/AlarmQueue;->mExactAlarm:Z

    .line 169
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/utils/AlarmQueue;->mHandler:Landroid/os/Handler;

    .line 170
    iput-object p8, p0, Lcom/android/server/utils/AlarmQueue;->mInjector:Lcom/android/server/utils/AlarmQueue$Injector;

    const-wide/16 p1, 0x0

    cmp-long p1, p6, p1

    if-ltz p1, :cond_3a

    .line 174
    iput-wide p6, p0, Lcom/android/server/utils/AlarmQueue;->mMinTimeBetweenAlarmsMs:J

    return-void

    .line 172
    :cond_3a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "min time between alarms must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private synthetic lambda$setNextAlarmLocked$0()V
    .registers 3

    .line 290
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    if-eqz v0, :cond_f

    .line 294
    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :cond_f
    return-void
.end method


# virtual methods
.method public addAlarm(Ljava/lang/Object;J)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)V"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_3
    iget-object v1, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;->removeKey(Ljava/lang/Object;)Z

    move-result v1

    .line 184
    iget-object v2, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    new-instance v3, Landroid/util/Pair;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 185
    iget-wide v2, p0, Lcom/android/server/utils/AlarmQueue;->mTriggerTimeElapsed:J

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-eqz p1, :cond_25

    if-nez v1, :cond_25

    cmp-long p1, p2, v2

    if-gez p1, :cond_28

    .line 187
    :cond_25
    invoke-virtual {p0}, Lcom/android/server/utils/AlarmQueue;->setNextAlarmLocked()V

    .line 189
    :cond_28
    monitor-exit v0

    return-void

    :catchall_2a
    move-exception p0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 5

    .line 345
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 346
    :try_start_3
    iget-object v1, p0, Lcom/android/server/utils/AlarmQueue;->mDumpTitle:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " alarms:"

    .line 347
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 350
    iget-object v1, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    move-result v1

    if-nez v1, :cond_1e

    const-string p0, "NOT WAITING"

    .line 351
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_49

    .line 353
    :cond_1e
    iget-object p0, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    invoke-virtual {p0}, Ljava/util/PriorityQueue;->size()I

    move-result v1

    new-array v1, v1, [Landroid/util/Pair;

    invoke-virtual {p0, v1}, Ljava/util/PriorityQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/util/Pair;

    const/4 v1, 0x0

    .line 354
    :goto_2d
    array-length v2, p0

    if-ge v1, v2, :cond_49

    .line 355
    aget-object v2, p0, v1

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 356
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    const-string v2, ": "

    .line 357
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 358
    aget-object v2, p0, v1

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 359
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 363
    :cond_49
    :goto_49
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 364
    monitor-exit v0

    return-void

    :catchall_4e
    move-exception p0

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_4e

    throw p0
.end method

.method public getMinTimeBetweenAlarmsMs()J
    .registers 4

    .line 198
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 199
    :try_start_3
    iget-wide v1, p0, Lcom/android/server/utils/AlarmQueue;->mMinTimeBetweenAlarmsMs:J

    monitor-exit v0

    return-wide v1

    :catchall_7
    move-exception p0

    .line 200
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public abstract isForUser(Ljava/lang/Object;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)Z"
        }
    .end annotation
.end method

.method public onAlarm()V
    .registers 8

    .line 323
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 324
    iget-object v1, p0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 325
    :try_start_8
    iget-object v2, p0, Lcom/android/server/utils/AlarmQueue;->mInjector:Lcom/android/server/utils/AlarmQueue$Injector;

    invoke-virtual {v2}, Lcom/android/server/utils/AlarmQueue$Injector;->getElapsedRealtime()J

    move-result-wide v2

    .line 326
    :goto_e
    iget-object v4, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    invoke-virtual {v4}, Ljava/util/PriorityQueue;->size()I

    move-result v4

    if-lez v4, :cond_35

    .line 327
    iget-object v4, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    invoke-virtual {v4}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 328
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, v2

    if-gtz v5, :cond_35

    .line 329
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 330
    iget-object v5, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    invoke-virtual {v5, v4}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_e

    .line 335
    :cond_35
    iget-wide v4, p0, Lcom/android/server/utils/AlarmQueue;->mMinTimeBetweenAlarmsMs:J

    add-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/server/utils/AlarmQueue;->setNextAlarmLocked(J)V

    .line 336
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_8 .. :try_end_3c} :catchall_46

    .line 338
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_45

    .line 339
    invoke-virtual {p0, v0}, Lcom/android/server/utils/AlarmQueue;->processExpiredAlarms(Landroid/util/ArraySet;)V

    :cond_45
    return-void

    :catchall_46
    move-exception p0

    .line 336
    :try_start_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw p0
.end method

.method public abstract processExpiredAlarms(Landroid/util/ArraySet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "TK;>;)V"
        }
    .end annotation
.end method

.method public removeAlarmForKey(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_3
    iget-object v1, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;->removeKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 207
    invoke-virtual {p0}, Lcom/android/server/utils/AlarmQueue;->setNextAlarmLocked()V

    .line 209
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

.method public removeAlarmsForUserId(I)V
    .registers 8

    .line 215
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_3
    iget-object v1, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    move-result v2

    new-array v2, v2, [Landroid/util/Pair;

    invoke-virtual {v1, v2}, Ljava/util/PriorityQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/util/Pair;

    .line 217
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    :goto_15
    if-ltz v2, :cond_2c

    .line 218
    aget-object v5, v1, v2

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 219
    invoke-virtual {p0, v5, p1}, Lcom/android/server/utils/AlarmQueue;->isForUser(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 220
    iget-object v4, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    move v4, v3

    :cond_29
    add-int/lit8 v2, v2, -0x1

    goto :goto_15

    :cond_2c
    if-eqz v4, :cond_31

    .line 225
    invoke-virtual {p0}, Lcom/android/server/utils/AlarmQueue;->setNextAlarmLocked()V

    .line 227
    :cond_31
    monitor-exit v0

    return-void

    :catchall_33
    move-exception p0

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw p0
.end method

.method public removeAlarmsIf(Ljava/util/function/Predicate;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "TK;>;)V"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 242
    :try_start_3
    iget-object v1, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    move-result v2

    new-array v2, v2, [Landroid/util/Pair;

    invoke-virtual {v1, v2}, Ljava/util/PriorityQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/util/Pair;

    .line 243
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    :goto_15
    if-ltz v2, :cond_2c

    .line 244
    aget-object v5, v1, v2

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 245
    invoke-interface {p1, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 246
    iget-object v4, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    move v4, v3

    :cond_29
    add-int/lit8 v2, v2, -0x1

    goto :goto_15

    :cond_2c
    if-eqz v4, :cond_31

    .line 251
    invoke-virtual {p0}, Lcom/android/server/utils/AlarmQueue;->setNextAlarmLocked()V

    .line 253
    :cond_31
    monitor-exit v0

    return-void

    :catchall_33
    move-exception p0

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw p0
.end method

.method public removeAllAlarms()V
    .registers 4

    .line 232
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 233
    :try_start_3
    iget-object v1, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->clear()V

    const-wide/16 v1, 0x0

    .line 234
    invoke-virtual {p0, v1, v2}, Lcom/android/server/utils/AlarmQueue;->setNextAlarmLocked(J)V

    .line 235
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public setMinTimeBetweenAlarmsMs(J)V
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_10

    .line 264
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 265
    :try_start_9
    iput-wide p1, p0, Lcom/android/server/utils/AlarmQueue;->mMinTimeBetweenAlarmsMs:J

    .line 266
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_d

    throw p0

    .line 262
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "min time between alarms must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setNextAlarmLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mInjector:Lcom/android/server/utils/AlarmQueue$Injector;

    invoke-virtual {v0}, Lcom/android/server/utils/AlarmQueue$Injector;->getElapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/utils/AlarmQueue;->setNextAlarmLocked(J)V

    return-void
.end method

.method public final setNextAlarmLocked(J)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_17

    .line 288
    iget-object p1, p0, Lcom/android/server/utils/AlarmQueue;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/utils/AlarmQueue$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/utils/AlarmQueue$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/utils/AlarmQueue;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 297
    iput-wide v1, p0, Lcom/android/server/utils/AlarmQueue;->mTriggerTimeElapsed:J

    return-void

    .line 301
    :cond_17
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 302
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 309
    iget-wide v3, p0, Lcom/android/server/utils/AlarmQueue;->mTriggerTimeElapsed:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_3e

    const-wide/32 v0, 0xea60

    sub-long v0, v3, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3e

    cmp-long v0, v3, p1

    if-gez v0, :cond_47

    .line 316
    :cond_3e
    iput-wide p1, p0, Lcom/android/server/utils/AlarmQueue;->mTriggerTimeElapsed:J

    .line 317
    iget-object p1, p0, Lcom/android/server/utils/AlarmQueue;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/utils/AlarmQueue;->mScheduleAlarmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_47
    return-void
.end method
