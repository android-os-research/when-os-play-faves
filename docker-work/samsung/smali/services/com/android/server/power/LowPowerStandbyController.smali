.class public Lcom/android/server/power/LowPowerStandbyController;
.super Ljava/lang/Object;
.source "LowPowerStandbyController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/LowPowerStandbyController$SettingsObserver;,
        Lcom/android/server/power/LowPowerStandbyController$LocalService;,
        Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;,
        Lcom/android/server/power/LowPowerStandbyController$Clock;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final DEFAULT_ACTIVE_DURING_MAINTENANCE:Z = false

.field public static final MSG_NOTIFY_ACTIVE_CHANGED:I = 0x1

.field public static final MSG_NOTIFY_ALLOWLIST_CHANGED:I = 0x2

.field public static final MSG_STANDBY_TIMEOUT:I = 0x0

.field public static final TAG:Ljava/lang/String; = "LowPowerStandbyController"


# instance fields
.field public mActiveDuringMaintenance:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mAlarmManager:Landroid/app/AlarmManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mAllowlistUids:Landroid/util/SparseBooleanArray;

.field public final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public final mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

.field public final mContext:Landroid/content/Context;

.field public mEnabledByDefaultConfig:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mForceActive:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field public mIdleSinceNonInteractive:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mIsActive:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mIsDeviceIdle:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mIsEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mIsInteractive:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mLastInteractiveTimeElapsed:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mLocalService:Lcom/android/server/power/LowPowerStandbyControllerInternal;

.field public final mLock:Ljava/lang/Object;

.field public final mOnStandbyTimeoutExpired:Landroid/app/AlarmManager$OnAlarmListener;

.field public mPowerManager:Landroid/os/PowerManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mSettingsObserver:Lcom/android/server/power/LowPowerStandbyController$SettingsObserver;

.field public mStandbyTimeoutConfig:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mSupportedConfig:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$fnuUmEHxwGla4tVH-LSbLbHxmMg(Lcom/android/server/power/LowPowerStandbyController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->onStandbyTimeoutExpired()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddToAllowlistInternal(Lcom/android/server/power/LowPowerStandbyController;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->addToAllowlistInternal(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyActiveChanged(Lcom/android/server/power/LowPowerStandbyController;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->notifyActiveChanged(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyAllowlistChanged(Lcom/android/server/power/LowPowerStandbyController;[I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->notifyAllowlistChanged([I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monDeviceIdleModeChanged(Lcom/android/server/power/LowPowerStandbyController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->onDeviceIdleModeChanged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monInteractive(Lcom/android/server/power/LowPowerStandbyController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->onInteractive()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monNonInteractive(Lcom/android/server/power/LowPowerStandbyController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->onNonInteractive()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monStandbyTimeoutExpired(Lcom/android/server/power/LowPowerStandbyController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->onStandbyTimeoutExpired()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveFromAllowlistInternal(Lcom/android/server/power/LowPowerStandbyController;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->removeFromAllowlistInternal(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/power/LowPowerStandbyController$Clock;)V
    .registers 6

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    .line 86
    new-instance v0, Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/LowPowerStandbyController;)V

    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mOnStandbyTimeoutExpired:Landroid/app/AlarmManager$OnAlarmListener;

    .line 88
    new-instance v0, Lcom/android/server/power/LowPowerStandbyController$LocalService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/LowPowerStandbyController$LocalService;-><init>(Lcom/android/server/power/LowPowerStandbyController;Lcom/android/server/power/LowPowerStandbyController$LocalService-IA;)V

    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLocalService:Lcom/android/server/power/LowPowerStandbyControllerInternal;

    .line 89
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mAllowlistUids:Landroid/util/SparseBooleanArray;

    .line 91
    new-instance v0, Lcom/android/server/power/LowPowerStandbyController$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/LowPowerStandbyController$1;-><init>(Lcom/android/server/power/LowPowerStandbyController;)V

    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 170
    iput-object p1, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    .line 171
    new-instance p1, Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;

    invoke-direct {p1, p0, p2}, Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;-><init>(Lcom/android/server/power/LowPowerStandbyController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Landroid/os/Handler;

    .line 172
    iput-object p3, p0, Lcom/android/server/power/LowPowerStandbyController;->mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

    .line 173
    new-instance p2, Lcom/android/server/power/LowPowerStandbyController$SettingsObserver;

    invoke-direct {p2, p0, p1}, Lcom/android/server/power/LowPowerStandbyController$SettingsObserver;-><init>(Lcom/android/server/power/LowPowerStandbyController;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/power/LowPowerStandbyController;->mSettingsObserver:Lcom/android/server/power/LowPowerStandbyController$SettingsObserver;

    return-void
.end method


# virtual methods
.method public final addToAllowlistInternal(I)V
    .registers 5

    .line 553
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 554
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mAllowlistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_18

    .line 555
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mAllowlistUids:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 556
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->enqueueNotifyAllowlistChangedLocked()V

    .line 558
    :cond_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public final cancelStandbyTimeoutAlarmLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mOnStandbyTimeoutExpired:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 5

    .line 465
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 467
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string p1, "Low Power Standby Controller:"

    .line 468
    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 469
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 470
    iget-object p1, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_15
    const-string/jumbo v1, "mIsActive="

    .line 471
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 472
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsActive:Z

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v1, "mIsEnabled="

    .line 473
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 474
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v1, "mSupportedConfig="

    .line 475
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 476
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v1, "mEnabledByDefaultConfig="

    .line 477
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 478
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnabledByDefaultConfig:Z

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v1, "mStandbyTimeoutConfig="

    .line 479
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 480
    iget v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyTimeoutConfig:I

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 482
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsActive:Z

    if-nez v1, :cond_54

    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    if-eqz v1, :cond_80

    :cond_54
    const-string/jumbo v1, "mIsInteractive="

    .line 483
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 484
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsInteractive:Z

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v1, "mLastInteractiveTime="

    .line 485
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 486
    iget-wide v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mLastInteractiveTimeElapsed:J

    invoke-virtual {v0, v1, v2}, Landroid/util/IndentingPrintWriter;->println(J)V

    const-string/jumbo v1, "mIdleSinceNonInteractive="

    .line 487
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 488
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIdleSinceNonInteractive:Z

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v1, "mIsDeviceIdle="

    .line 489
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 490
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsDeviceIdle:Z

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 493
    :cond_80
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getAllowlistUidsLocked()[I

    move-result-object p0

    const-string/jumbo v1, "mAllowlistUids="

    .line 494
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 495
    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 496
    monitor-exit p1
    :try_end_92
    .catchall {:try_start_15 .. :try_end_92} :catchall_96

    .line 497
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    :catchall_96
    move-exception p0

    .line 496
    :try_start_97
    monitor-exit p1
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    throw p0
.end method

.method public dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10

    .line 501
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 502
    :try_start_3
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v1, 0x10800000001L

    .line 503
    iget-boolean v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsActive:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10800000002L

    .line 504
    iget-boolean v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10800000003L

    .line 505
    iget-boolean v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10800000004L

    .line 506
    iget-boolean v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnabledByDefaultConfig:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10800000005L

    .line 508
    iget-boolean v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsInteractive:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10300000006L

    .line 509
    iget-wide v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mLastInteractiveTimeElapsed:J

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10500000007L

    .line 511
    iget v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyTimeoutConfig:I

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10800000008L

    .line 513
    iget-boolean v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mIdleSinceNonInteractive:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10800000009L

    .line 515
    iget-boolean v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsDeviceIdle:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 517
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getAllowlistUidsLocked()[I

    move-result-object p0

    .line 518
    array-length v1, p0

    const/4 v2, 0x0

    :goto_67
    if-ge v2, v1, :cond_76

    aget v3, p0, v2

    const-wide v4, 0x2050000000aL

    .line 519
    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_67

    .line 522
    :cond_76
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 523
    monitor-exit v0

    return-void

    :catchall_7b
    move-exception p0

    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_3 .. :try_end_7d} :catchall_7b

    throw p0
.end method

.method public final enqueueNotifyActiveChangedLocked()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 392
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

    invoke-interface {v0}, Lcom/android/server/power/LowPowerStandbyController$Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 393
    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Landroid/os/Handler;

    iget-boolean v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsActive:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 394
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public final enqueueNotifyAllowlistChangedLocked()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 584
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

    invoke-interface {v0}, Lcom/android/server/power/LowPowerStandbyController$Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 585
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getAllowlistUidsLocked()[I

    move-result-object v2

    .line 586
    iget-object v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 587
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public forceActive(Z)V
    .registers 3

    .line 458
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 459
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/power/LowPowerStandbyController;->mForceActive:Z

    .line 460
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateActiveLocked()V

    .line 461
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final getAllowlistUidsLocked()[I
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 575
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mAllowlistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 576
    :goto_9
    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mAllowlistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 577
    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mAllowlistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1c
    return-object v0
.end method

.method public isActive()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 409
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 410
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsActive:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 411
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isEnabled()Z
    .registers 3

    .line 421
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 422
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    if-eqz v1, :cond_d

    iget-boolean p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    .line 423
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public isSupported()Z
    .registers 2

    .line 415
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 416
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 417
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final notifyActiveChanged(Z)V
    .registers 3

    .line 399
    const-class p0, Landroid/os/PowerManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManagerInternal;

    .line 400
    const-class v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    .line 403
    invoke-virtual {p0, p1}, Landroid/os/PowerManagerInternal;->setLowPowerStandbyActive(Z)V

    .line 404
    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkPolicyManagerInternal;->setLowPowerStandbyActive(Z)V

    return-void
.end method

.method public final notifyAllowlistChanged([I)V
    .registers 3

    .line 591
    const-class p0, Landroid/os/PowerManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManagerInternal;

    .line 592
    const-class v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    .line 594
    invoke-virtual {p0, p1}, Landroid/os/PowerManagerInternal;->setLowPowerStandbyAllowlist([I)V

    .line 595
    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkPolicyManagerInternal;->setLowPowerStandbyAllowlist([I)V

    return-void
.end method

.method public final notifyEnabledChangedLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 376
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.os.action.LOW_POWER_STANDBY_ENABLED_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x50000000

    .line 377
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 378
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final onDeviceIdleModeChanged()V
    .registers 4

    .line 299
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 300
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsDeviceIdle:Z

    .line 305
    iget-boolean v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mIdleSinceNonInteractive:Z

    if-nez v2, :cond_14

    if-eqz v1, :cond_12

    goto :goto_14

    :cond_12
    const/4 v1, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v1, 0x1

    :goto_15
    iput-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIdleSinceNonInteractive:Z

    .line 306
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateActiveLocked()V

    .line 307
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public final onDisabledLocked()V
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 331
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->cancelStandbyTimeoutAlarmLocked()V

    .line 332
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->unregisterBroadcastReceiver()V

    .line 333
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateActiveLocked()V

    return-void
.end method

.method public final onEnabledLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 317
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->onInteractive()V

    goto :goto_f

    .line 319
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->onNonInteractive()V

    .line 322
    :goto_f
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->registerBroadcastReceiver()V

    return-void
.end method

.method public final onInteractive()V
    .registers 3

    .line 276
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 277
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->cancelStandbyTimeoutAlarmLocked()V

    const/4 v1, 0x1

    .line 278
    iput-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsInteractive:Z

    const/4 v1, 0x0

    .line 279
    iput-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsDeviceIdle:Z

    .line 280
    iput-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIdleSinceNonInteractive:Z

    .line 281
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateActiveLocked()V

    .line 282
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public final onNonInteractive()V
    .registers 5

    .line 257
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

    invoke-interface {v0}, Lcom/android/server/power/LowPowerStandbyController$Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 258
    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x0

    .line 259
    :try_start_a
    iput-boolean v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsInteractive:Z

    .line 260
    iput-boolean v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsDeviceIdle:Z

    .line 261
    iput-wide v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLastInteractiveTimeElapsed:J

    .line 263
    iget v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyTimeoutConfig:I

    if-lez v0, :cond_17

    .line 264
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->scheduleStandbyTimeoutAlarmLocked()V

    .line 267
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateActiveLocked()V

    .line 268
    monitor-exit v2

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_a .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public onSettingsChanged()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 342
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    .line 343
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateSettingsLocked()V

    .line 345
    iget-boolean v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    if-eq v2, v1, :cond_18

    if-eqz v2, :cond_12

    .line 347
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->onEnabledLocked()V

    goto :goto_15

    .line 349
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->onDisabledLocked()V

    .line 352
    :goto_15
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->notifyEnabledChangedLocked()V

    .line 354
    :cond_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public final onStandbyTimeoutExpired()V
    .registers 2

    .line 385
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 386
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateActiveLocked()V

    .line 387
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final registerBroadcastReceiver()V
    .registers 3

    .line 358
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 359
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 360
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 361
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 363
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final removeFromAllowlistInternal(I)V
    .registers 4

    .line 565
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 566
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mAllowlistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 567
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mAllowlistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 568
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->enqueueNotifyAllowlistChangedLocked()V

    .line 570
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

.method public final scheduleStandbyTimeoutAlarmLocked()V
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 287
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyTimeoutConfig:I

    int-to-long v2, v2

    add-long v6, v0, v2

    .line 288
    iget-object v4, p0, Lcom/android/server/power/LowPowerStandbyController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v9, p0, Lcom/android/server/power/LowPowerStandbyController;->mOnStandbyTimeoutExpired:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v10, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    const-string v8, "LowPowerStandbyController.StandbyTimeout"

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void
.end method

.method public setActiveDuringMaintenance(Z)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 443
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 444
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    if-nez v1, :cond_10

    const-string p0, "LowPowerStandbyController"

    const-string p1, "Low Power Standby settings cannot be changed because it is not supported on this device"

    .line 445
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    monitor-exit v0

    return-void

    .line 450
    :cond_10
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "low_power_standby_active_during_maintenance"

    if-eqz p1, :cond_1d

    const/4 p1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    :goto_1e
    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 453
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->onSettingsChanged()V

    .line 454
    monitor-exit v0

    return-void

    :catchall_26
    move-exception p0

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public setEnabled(Z)V
    .registers 5

    .line 427
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 428
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    if-nez v1, :cond_10

    const-string p0, "LowPowerStandbyController"

    const-string p1, "Low Power Standby cannot be enabled because it is not supported on this device"

    .line 429
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    monitor-exit v0

    return-void

    .line 434
    :cond_10
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "low_power_standby_enabled"

    if-eqz p1, :cond_1d

    const/4 p1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    :goto_1e
    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 436
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->onSettingsChanged()V

    .line 437
    monitor-exit v0

    return-void

    :catchall_26
    move-exception p0

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public systemReady()V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const v2, 0x1110180

    .line 181
    :try_start_c
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    if-nez v2, :cond_16

    .line 185
    monitor-exit v1

    return-void

    .line 188
    :cond_16
    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/AlarmManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 189
    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/PowerManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mPowerManager:Landroid/os/PowerManager;

    const v2, 0x10e00be

    .line 191
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyTimeoutConfig:I

    const v2, 0x111017f

    .line 193
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnabledByDefaultConfig:Z

    .line 196
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsInteractive:Z

    .line 198
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "low_power_standby_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mSettingsObserver:Lcom/android/server/power/LowPowerStandbyController$SettingsObserver;

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 201
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "low_power_standby_active_during_maintenance"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mSettingsObserver:Lcom/android/server/power/LowPowerStandbyController$SettingsObserver;

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 204
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateSettingsLocked()V

    .line 206
    iget-boolean v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    if-eqz v0, :cond_78

    .line 207
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->registerBroadcastReceiver()V

    .line 209
    :cond_78
    monitor-exit v1
    :try_end_79
    .catchall {:try_start_c .. :try_end_79} :catchall_81

    .line 211
    const-class v0, Lcom/android/server/power/LowPowerStandbyControllerInternal;

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLocalService:Lcom/android/server/power/LowPowerStandbyControllerInternal;

    invoke-static {v0, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void

    :catchall_81
    move-exception p0

    .line 209
    :try_start_82
    monitor-exit v1
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_81

    throw p0
.end method

.method public final unregisterBroadcastReceiver()V
    .registers 2

    .line 367
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final updateActiveLocked()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

    invoke-interface {v0}, Lcom/android/server/power/LowPowerStandbyController$Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 230
    iget-wide v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mLastInteractiveTimeElapsed:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyTimeoutConfig:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_14

    move v0, v1

    goto :goto_15

    :cond_14
    move v0, v2

    .line 232
    :goto_15
    iget-boolean v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mIdleSinceNonInteractive:Z

    if-eqz v3, :cond_1f

    iget-boolean v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsDeviceIdle:Z

    if-nez v3, :cond_1f

    move v3, v1

    goto :goto_20

    :cond_1f
    move v3, v2

    .line 233
    :goto_20
    iget-boolean v4, p0, Lcom/android/server/power/LowPowerStandbyController;->mForceActive:Z

    if-nez v4, :cond_36

    iget-boolean v4, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    if-eqz v4, :cond_35

    iget-boolean v4, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsInteractive:Z

    if-nez v4, :cond_35

    if-eqz v0, :cond_35

    if-eqz v3, :cond_36

    iget-boolean v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mActiveDuringMaintenance:Z

    if-eqz v0, :cond_35

    goto :goto_36

    :cond_35
    move v1, v2

    .line 244
    :cond_36
    :goto_36
    iget-boolean v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsActive:Z

    if-eq v0, v1, :cond_3f

    .line 245
    iput-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsActive:Z

    .line 249
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->enqueueNotifyActiveChangedLocked()V

    :cond_3f
    return-void
.end method

.method public final updateSettingsLocked()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 217
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_19

    .line 219
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnabledByDefaultConfig:Z

    const-string/jumbo v4, "low_power_standby_enabled"

    .line 217
    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_19

    move v1, v2

    goto :goto_1a

    :cond_19
    move v1, v3

    :goto_1a
    iput-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    const-string/jumbo v1, "low_power_standby_active_during_maintenance"

    .line 220
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_27

    :cond_26
    move v2, v3

    :goto_27
    iput-boolean v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mActiveDuringMaintenance:Z

    .line 224
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateActiveLocked()V

    return-void
.end method
