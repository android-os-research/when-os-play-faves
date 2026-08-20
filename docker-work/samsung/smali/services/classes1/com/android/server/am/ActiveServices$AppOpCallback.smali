.class public final Lcom/android/server/am/ActiveServices$AppOpCallback;
.super Ljava/lang/Object;
.source "ActiveServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActiveServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppOpCallback"
.end annotation


# static fields
.field public static final LOGGED_AP_OPS:[I


# instance fields
.field public final mAcceptedOps:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCounterLock"
        }
    .end annotation
.end field

.field public final mAppOpModes:Landroid/util/SparseIntArray;

.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mCounterLock:Ljava/lang/Object;

.field public mDestroyed:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation
.end field

.field public mNumFgs:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation
.end field

.field public final mOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedListener;

.field public final mOpStartedCallback:Landroid/app/AppOpsManager$OnOpStartedListener;

.field public final mProcessRecord:Lcom/android/server/am/ProcessRecord;

.field public final mRejectedOps:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCounterLock"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$mincrementOpCountIfNeeded(Lcom/android/server/am/ActiveServices$AppOpCallback;III)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ActiveServices$AppOpCallback;->incrementOpCountIfNeeded(III)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 2639
    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/server/am/ActiveServices$AppOpCallback;->LOGGED_AP_OPS:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x0
        0x1
        0x1b
        0x1a
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/am/ProcessRecord;Landroid/app/AppOpsManager;)V
    .registers 9

    .line 2681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2649
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAcceptedOps:Landroid/util/SparseIntArray;

    .line 2652
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mRejectedOps:Landroid/util/SparseIntArray;

    .line 2656
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mCounterLock:Ljava/lang/Object;

    .line 2662
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAppOpModes:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    .line 2668
    iput v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mNumFgs:I

    .line 2676
    iput-boolean v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mDestroyed:Z

    .line 2690
    new-instance v1, Lcom/android/server/am/ActiveServices$AppOpCallback$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActiveServices$AppOpCallback$1;-><init>(Lcom/android/server/am/ActiveServices$AppOpCallback;)V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedListener;

    .line 2699
    new-instance v1, Lcom/android/server/am/ActiveServices$AppOpCallback$2;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActiveServices$AppOpCallback$2;-><init>(Lcom/android/server/am/ActiveServices$AppOpCallback;)V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mOpStartedCallback:Landroid/app/AppOpsManager$OnOpStartedListener;

    .line 2682
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mProcessRecord:Lcom/android/server/am/ProcessRecord;

    .line 2683
    iput-object p2, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 2684
    sget-object v1, Lcom/android/server/am/ActiveServices$AppOpCallback;->LOGGED_AP_OPS:[I

    array-length v2, v1

    :goto_39
    if-ge v0, v2, :cond_4f

    aget v3, v1, v0

    .line 2685
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v3, v4, v5}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(IILjava/lang/String;)I

    move-result v4

    .line 2686
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAppOpModes:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    :cond_4f
    return-void
.end method

.method public static modeToEnum(I)I
    .registers 2

    const/4 v0, 0x1

    if-eqz p0, :cond_e

    if-eq p0, v0, :cond_c

    const/4 v0, 0x4

    if-eq p0, v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const/4 p0, 0x3

    return p0

    :cond_c
    const/4 p0, 0x2

    return p0

    :cond_e
    return v0
.end method


# virtual methods
.method public final incrementOpCount(IZ)V
    .registers 5

    .line 2720
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mCounterLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_8

    .line 2721
    :try_start_5
    iget-object p0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAcceptedOps:Landroid/util/SparseIntArray;

    goto :goto_a

    :cond_8
    iget-object p0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mRejectedOps:Landroid/util/SparseIntArray;

    .line 2722
    :goto_a
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p2

    const/4 v1, 0x1

    if-gez p2, :cond_15

    .line 2724
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1d

    .line 2726
    :cond_15
    invoke-virtual {p0, p2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseIntArray;->setValueAt(II)V

    .line 2728
    :goto_1d
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public final incrementOpCountIfNeeded(III)V
    .registers 5

    .line 2710
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mProcessRecord:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne p2, v0, :cond_14

    invoke-virtual {p0}, Lcom/android/server/am/ActiveServices$AppOpCallback;->isNotTop()Z

    move-result p2

    if-eqz p2, :cond_14

    if-nez p3, :cond_10

    const/4 p2, 0x1

    goto :goto_11

    :cond_10
    const/4 p2, 0x0

    .line 2711
    :goto_11
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActiveServices$AppOpCallback;->incrementOpCount(IZ)V

    :cond_14
    return-void
.end method

.method public final isNotTop()Z
    .registers 2

    .line 2716
    iget-object p0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mProcessRecord:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public isObsoleteLocked()Z
    .registers 1

    .line 2758
    iget-boolean p0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mDestroyed:Z

    return p0
.end method

.method public final logFinalValues()V
    .registers 11

    .line 2762
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mCounterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2763
    :try_start_3
    sget-object v1, Lcom/android/server/am/ActiveServices$AppOpCallback;->LOGGED_AP_OPS:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_31

    aget v6, v1, v3

    .line 2764
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAcceptedOps:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    .line 2765
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mRejectedOps:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    if-gtz v8, :cond_1b

    if-lez v9, :cond_2e

    :cond_1b
    const/16 v4, 0x100

    .line 2767
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mProcessRecord:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v7, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAppOpModes:Landroid/util/SparseIntArray;

    .line 2770
    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    invoke-static {v7}, Lcom/android/server/am/ActiveServices$AppOpCallback;->modeToEnum(I)I

    move-result v7

    .line 2767
    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIII)V

    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 2775
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

.method public registerLocked()V
    .registers 4

    .line 2732
    invoke-virtual {p0}, Lcom/android/server/am/ActiveServices$AppOpCallback;->isObsoleteLocked()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p0, "ActivityManager"

    const-string v0, "Trying to register on a stale AppOpCallback."

    .line 2733
    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2736
    :cond_e
    iget v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mNumFgs:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mNumFgs:I

    if-ne v0, v1, :cond_26

    .line 2738
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAppOpsManager:Landroid/app/AppOpsManager;

    sget-object v1, Lcom/android/server/am/ActiveServices$AppOpCallback;->LOGGED_AP_OPS:[I

    iget-object v2, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AppOpsManager;->startWatchingNoted([ILandroid/app/AppOpsManager$OnOpNotedListener;)V

    .line 2739
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object p0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mOpStartedCallback:Landroid/app/AppOpsManager$OnOpStartedListener;

    invoke-virtual {v0, v1, p0}, Landroid/app/AppOpsManager;->startWatchingStarted([ILandroid/app/AppOpsManager$OnOpStartedListener;)V

    :cond_26
    return-void
.end method

.method public unregisterLocked()V
    .registers 3

    .line 2744
    iget v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mNumFgs:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mNumFgs:I

    if-gtz v0, :cond_1b

    .line 2746
    iput-boolean v1, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mDestroyed:Z

    .line 2747
    invoke-virtual {p0}, Lcom/android/server/am/ActiveServices$AppOpCallback;->logFinalValues()V

    .line 2748
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedListener;

    invoke-virtual {v0, v1}, Landroid/app/AppOpsManager;->stopWatchingNoted(Landroid/app/AppOpsManager$OnOpNotedListener;)V

    .line 2749
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object p0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mOpStartedCallback:Landroid/app/AppOpsManager$OnOpStartedListener;

    invoke-virtual {v0, p0}, Landroid/app/AppOpsManager;->stopWatchingStarted(Landroid/app/AppOpsManager$OnOpStartedListener;)V

    :cond_1b
    return-void
.end method
