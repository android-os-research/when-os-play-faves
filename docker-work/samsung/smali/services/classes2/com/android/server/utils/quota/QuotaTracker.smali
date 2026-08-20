.class public abstract Lcom/android/server/utils/quota/QuotaTracker;
.super Ljava/lang/Object;
.source "QuotaTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;,
        Lcom/android/server/utils/quota/QuotaTracker$Injector;
    }
.end annotation


# static fields
.field public static final ALARM_TAG_QUOTA_CHECK:Ljava/lang/String;

.field public static final DEBUG:Z = false

.field public static final MAX_WINDOW_SIZE_MS:J = 0x9a7ec800L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final MIN_WINDOW_SIZE_MS:J = 0x4e20L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "QuotaTracker"


# instance fields
.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public final mCategorizer:Lcom/android/server/utils/quota/Categorizer;

.field public final mContext:Landroid/content/Context;

.field public final mFreeQuota:Landroid/util/SparseArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final mInQuotaAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mInjector:Lcom/android/server/utils/quota/QuotaTracker$Injector;

.field public mIsEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mIsQuotaFree:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mQuotaChangeListeners:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/utils/quota/QuotaChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0G49b6WBJtwdFs3aHXj2xqeD9tQ(Lcom/android/server/utils/quota/QuotaTracker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/utils/quota/QuotaTracker;->lambda$scheduleQuotaCheck$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$1tRNLYGRm0ftlXfleHUnmMLpa6A(Lcom/android/server/utils/quota/QuotaTracker;IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/utils/quota/QuotaTracker;->lambda$scheduleAlarm$0(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7Z85R_m5RK8X459PANvHm_aViG4(Lcom/android/server/utils/quota/QuotaTracker;Landroid/app/AlarmManager$OnAlarmListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/utils/quota/QuotaTracker;->lambda$cancelAlarm$1(Landroid/app/AlarmManager$OnAlarmListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sJ-uoK5pVTrmHxd1mOGUoe75hsU(Lcom/android/server/utils/quota/QuotaTracker;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/utils/quota/QuotaTracker;->lambda$postQuotaStatusChanged$3(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserRemovedLocked(Lcom/android/server/utils/quota/QuotaTracker;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/utils/quota/QuotaTracker;->onUserRemovedLocked(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetALARM_TAG_QUOTA_CHECK()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/utils/quota/QuotaTracker;->ALARM_TAG_QUOTA_CHECK:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/utils/quota/QuotaTracker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 68
    const-class v0, Lcom/android/server/utils/quota/QuotaTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".quota_check*"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/utils/quota/QuotaTracker;->ALARM_TAG_QUOTA_CHECK:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/utils/quota/Categorizer;Lcom/android/server/utils/quota/QuotaTracker$Injector;)V
    .registers 11

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    .line 86
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mQuotaChangeListeners:Landroid/util/ArraySet;

    .line 96
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mIsEnabled:Z

    .line 113
    new-instance v0, Lcom/android/server/utils/quota/QuotaTracker$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/quota/QuotaTracker$1;-><init>(Lcom/android/server/utils/quota/QuotaTracker;)V

    iput-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 161
    iput-object p2, p0, Lcom/android/server/utils/quota/QuotaTracker;->mCategorizer:Lcom/android/server/utils/quota/Categorizer;

    .line 162
    iput-object p1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mContext:Landroid/content/Context;

    .line 163
    iput-object p3, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInjector:Lcom/android/server/utils/quota/QuotaTracker$Injector;

    .line 164
    const-class p2, Landroid/app/AlarmManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AlarmManager;

    iput-object p2, p0, Lcom/android/server/utils/quota/QuotaTracker;->mAlarmManager:Landroid/app/AlarmManager;

    .line 166
    new-instance p2, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    const/4 v1, 0x0

    invoke-direct {p2, p0, p1, p3, v1}, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;-><init>(Lcom/android/server/utils/quota/QuotaTracker;Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue-IA;)V

    iput-object p2, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInQuotaAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;

    .line 168
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string p0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 169
    invoke-virtual {v4, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo p0, "package"

    .line 170
    invoke-virtual {v4, p0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 171
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 172
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, v0

    .line 171
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 173
    new-instance v4, Landroid/content/IntentFilter;

    const-string p0, "android.intent.action.USER_REMOVED"

    invoke-direct {v4, p0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 174
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 175
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    .line 174
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private synthetic lambda$cancelAlarm$1(Landroid/app/AlarmManager$OnAlarmListener;)V
    .registers 3

    .line 333
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInjector:Lcom/android/server/utils/quota/QuotaTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/utils/quota/QuotaTracker$Injector;->isAlarmManagerReady()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 334
    iget-object p0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    goto :goto_15

    .line 336
    :cond_e
    sget-object p0, Lcom/android/server/utils/quota/QuotaTracker;->TAG:Ljava/lang/String;

    const-string p1, "Alarm not cancelled because boot isn\'t completed"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15
    return-void
.end method

.method private synthetic lambda$postQuotaStatusChanged$3(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 397
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 399
    :try_start_3
    iget-object p0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mQuotaChangeListeners:Landroid/util/ArraySet;

    .line 400
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/utils/quota/QuotaChangeListener;

    .line 399
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/server/utils/quota/QuotaChangeListener;

    .line 401
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1f

    .line 402
    array-length v0, p0

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v0, :cond_1e

    aget-object v2, p0, v1

    .line 403
    invoke-interface {v2, p1, p2, p3}, Lcom/android/server/utils/quota/QuotaChangeListener;->onQuotaStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_1e
    return-void

    :catchall_1f
    move-exception p0

    .line 401
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method private synthetic lambda$scheduleAlarm$0(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;)V
    .registers 14

    .line 319
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInjector:Lcom/android/server/utils/quota/QuotaTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/utils/quota/QuotaTracker$Injector;->isAlarmManagerReady()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 320
    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p0}, Lcom/android/server/utils/quota/QuotaTracker;->getHandler()Landroid/os/Handler;

    move-result-object v7

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_1d

    .line 322
    :cond_16
    sget-object p0, Lcom/android/server/utils/quota/QuotaTracker;->TAG:Ljava/lang/String;

    const-string p1, "Alarm not scheduled because boot isn\'t completed"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1d
    return-void
.end method

.method private synthetic lambda$scheduleQuotaCheck$2()V
    .registers 3

    .line 353
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 354
    :try_start_3
    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mQuotaChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_e

    .line 355
    invoke-virtual {p0}, Lcom/android/server/utils/quota/QuotaTracker;->maybeUpdateAllQuotaStatusLocked()V

    .line 357
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


# virtual methods
.method public cancelAlarm(Landroid/app/AlarmManager$OnAlarmListener;)V
    .registers 4

    .line 332
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/utils/quota/QuotaTracker;Landroid/app/AlarmManager$OnAlarmListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancelScheduledStartAlarmLocked(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 450
    iget-object p0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInQuotaAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;

    new-instance v0, Lcom/android/server/utils/quota/Uptc;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/utils/quota/Uptc;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    return-void
.end method

.method public clear()V
    .registers 3

    .line 182
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_3
    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInQuotaAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;

    invoke-virtual {v1}, Lcom/android/server/utils/AlarmQueue;->removeAllAlarms()V

    .line 184
    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->clear()V

    .line 186
    invoke-virtual {p0}, Lcom/android/server/utils/quota/QuotaTracker;->dropEverythingLocked()V

    .line 187
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public abstract dropEverythingLocked()V
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 9

    const-string v0, "QuotaTracker:"

    .line 482
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 485
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 486
    :try_start_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Is enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/utils/quota/QuotaTracker;->mIsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Is global quota free: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/utils/quota/QuotaTracker;->mIsQuotaFree:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current elapsed time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInjector:Lcom/android/server/utils/quota/QuotaTracker$Injector;

    invoke-virtual {v2}, Lcom/android/server/utils/quota/QuotaTracker$Injector;->getElapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 491
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 492
    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInQuotaAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/AlarmQueue;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 494
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v1, "Per-app free quota:"

    .line 495
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 496
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v1, 0x0

    move v2, v1

    .line 497
    :goto_69
    iget-object v3, p0, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    invoke-virtual {v3}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v3

    if-ge v2, v3, :cond_a4

    .line 498
    iget-object v3, p0, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v3

    move v4, v1

    .line 499
    :goto_78
    iget-object v5, p0, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v5

    if-ge v4, v5, :cond_a1

    .line 500
    iget-object v5, p0, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    .line 502
    invoke-static {v3, v5, v6}, Lcom/android/server/utils/quota/Uptc;->string(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v6, ": "

    .line 503
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 504
    iget-object v6, p0, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, v3, v5}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_78

    :cond_a1
    add-int/lit8 v2, v2, 0x1

    goto :goto_69

    .line 507
    :cond_a4
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 508
    monitor-exit v0
    :try_end_a8
    .catchall {:try_start_b .. :try_end_a8} :catchall_ac

    .line 510
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    :catchall_ac
    move-exception p0

    .line 508
    :try_start_ad
    monitor-exit v0
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ac

    throw p0
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9

    .line 520
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 522
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const-wide v1, 0x10800000001L

    .line 523
    :try_start_c
    iget-boolean v3, p0, Lcom/android/server/utils/quota/QuotaTracker;->mIsEnabled:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10800000002L

    .line 524
    iget-boolean v3, p0, Lcom/android/server/utils/quota/QuotaTracker;->mIsQuotaFree:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10300000003L

    .line 525
    iget-object p0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInjector:Lcom/android/server/utils/quota/QuotaTracker$Injector;

    invoke-virtual {p0}, Lcom/android/server/utils/quota/QuotaTracker$Injector;->getElapsedRealtime()J

    move-result-wide v3

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 526
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_2e

    .line 528
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void

    :catchall_2e
    move-exception p0

    .line 526
    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw p0
.end method

.method public abstract getHandler()Landroid/os/Handler;
.end method

.method public abstract getInQuotaTimeElapsedLocked(ILjava/lang/String;Ljava/lang/String;)J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end method

.method public abstract handleRemovedAppLocked(ILjava/lang/String;)V
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end method

.method public abstract handleRemovedUserLocked(I)V
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end method

.method public isEnabledLocked()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 272
    iget-boolean p0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mIsEnabled:Z

    return p0
.end method

.method public isIndividualQuotaFreeLocked(ILjava/lang/String;)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 293
    iget-object p0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, v0}, Landroid/util/SparseArrayMap;->getOrDefault(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isQuotaFreeLocked()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 278
    iget-boolean p0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mIsQuotaFree:Z

    return p0
.end method

.method public isQuotaFreeLocked(ILjava/lang/String;)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 284
    iget-boolean v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mIsQuotaFree:Z

    if-nez v0, :cond_17

    iget-object p0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, v0}, Landroid/util/SparseArrayMap;->getOrDefault(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method public isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 195
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/utils/quota/QuotaTracker;->isWithinQuotaLocked(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_9
    move-exception p0

    .line 197
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public abstract isWithinQuotaLocked(ILjava/lang/String;Ljava/lang/String;)Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end method

.method public maybeScheduleStartAlarmLocked(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 424
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mQuotaChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 430
    :cond_9
    invoke-static {p1, p2, p3}, Lcom/android/server/utils/quota/Uptc;->string(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 432
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/utils/quota/QuotaTracker;->isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 438
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInQuotaAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;

    new-instance v1, Lcom/android/server/utils/quota/Uptc;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/utils/quota/Uptc;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    .line 439
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/utils/quota/QuotaTracker;->maybeUpdateQuotaStatus(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 443
    :cond_20
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInQuotaAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;

    new-instance v1, Lcom/android/server/utils/quota/Uptc;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/utils/quota/Uptc;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/utils/quota/QuotaTracker;->getInQuotaTimeElapsedLocked(ILjava/lang/String;Ljava/lang/String;)J

    move-result-wide p0

    .line 443
    invoke-virtual {v0, v1, p0, p1}, Lcom/android/server/utils/AlarmQueue;->addAlarm(Ljava/lang/Object;J)V

    return-void
.end method

.method public abstract maybeUpdateAllQuotaStatusLocked()V
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end method

.method public abstract maybeUpdateQuotaStatus(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public onAppRemovedLocked(ILjava/lang/String;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    if-nez p2, :cond_a

    .line 367
    sget-object p0, Lcom/android/server/utils/quota/QuotaTracker;->TAG:Ljava/lang/String;

    const-string p1, "Told app removed but given null package name."

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 371
    :cond_a
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInQuotaAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;->removeAlarms(ILjava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 375
    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/quota/QuotaTracker;->handleRemovedAppLocked(ILjava/lang/String;)V

    return-void
.end method

.method public abstract onQuotaFreeChangedLocked(ILjava/lang/String;Z)V
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end method

.method public abstract onQuotaFreeChangedLocked(Z)V
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end method

.method public final onUserRemovedLocked(I)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInQuotaAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmsForUserId(I)V

    .line 384
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 386
    invoke-virtual {p0, p1}, Lcom/android/server/utils/quota/QuotaTracker;->handleRemovedUserLocked(I)V

    return-void
.end method

.method public postQuotaStatusChanged(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 395
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/utils/quota/QuotaTracker;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerQuotaChangeListener(Lcom/android/server/utils/quota/QuotaChangeListener;)V
    .registers 4

    .line 235
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 236
    :try_start_3
    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mQuotaChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mQuotaChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_17

    .line 237
    invoke-virtual {p0}, Lcom/android/server/utils/quota/QuotaTracker;->scheduleQuotaCheck()V

    .line 239
    :cond_17
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public scheduleAlarm(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;)V
    .registers 15

    .line 318
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v8, Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda3;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/utils/quota/QuotaTracker;IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleQuotaCheck()V
    .registers 3

    .line 352
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/utils/quota/QuotaTracker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setEnabled(Z)V
    .registers 4

    .line 256
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 257
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mIsEnabled:Z

    if-ne v1, p1, :cond_9

    .line 258
    monitor-exit v0

    return-void

    .line 260
    :cond_9
    iput-boolean p1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mIsEnabled:Z

    if-nez p1, :cond_10

    .line 263
    invoke-virtual {p0}, Lcom/android/server/utils/quota/QuotaTracker;->clear()V

    .line 265
    :cond_10
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public setQuotaFree(ILjava/lang/String;Z)V
    .registers 7

    .line 206
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 207
    :try_start_3
    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, p2, v2}, Landroid/util/SparseArrayMap;->getOrDefault(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, p3, :cond_1f

    .line 209
    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 210
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/utils/quota/QuotaTracker;->onQuotaFreeChangedLocked(ILjava/lang/String;Z)V

    .line 212
    :cond_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public setQuotaFree(Z)V
    .registers 4

    .line 217
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 218
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mIsQuotaFree:Z

    if-ne v1, p1, :cond_9

    .line 219
    monitor-exit v0

    return-void

    .line 221
    :cond_9
    iput-boolean p1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mIsQuotaFree:Z

    .line 223
    iget-boolean v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mIsEnabled:Z

    if-nez v1, :cond_11

    .line 224
    monitor-exit v0

    return-void

    .line 226
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/server/utils/quota/QuotaTracker;->onQuotaFreeChangedLocked(Z)V

    .line 227
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_19

    .line 228
    invoke-virtual {p0}, Lcom/android/server/utils/quota/QuotaTracker;->scheduleQuotaCheck()V

    return-void

    :catchall_19
    move-exception p0

    .line 227
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public unregisterQuotaChangeListener(Lcom/android/server/utils/quota/QuotaChangeListener;)V
    .registers 3

    .line 244
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_3
    iget-object p0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mQuotaChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 246
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method
