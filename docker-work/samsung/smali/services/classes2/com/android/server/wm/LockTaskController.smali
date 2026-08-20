.class public Lcom/android/server/wm/LockTaskController;
.super Ljava/lang/Object;
.source "LockTaskController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/LockTaskController$LockTaskToken;
    }
.end annotation


# static fields
.field public static final LOCK_TASK_AUTH_ALLOWLISTED:I = 0x3

.field public static final LOCK_TASK_AUTH_DONT_LOCK:I = 0x0

.field public static final LOCK_TASK_AUTH_LAUNCHABLE:I = 0x2

.field public static final LOCK_TASK_AUTH_LAUNCHABLE_PRIV:I = 0x4

.field public static final LOCK_TASK_AUTH_PINNABLE:I = 0x1

.field public static final LOCK_TASK_TAG:Ljava/lang/String; = "Lock-to-App"

.field public static final STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final STATUS_BAR_MASK_LOCKED:I = 0x7a60000
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final STATUS_BAR_MASK_PINNED:I = 0x69f0000
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field public static final TAG_LOCKTASK:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field public mInteractionControlEnabled:Z

.field public mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mLockTaskFeatures:Landroid/util/SparseIntArray;

.field public volatile mLockTaskModeState:I

.field public final mLockTaskModeTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field public final mLockTaskPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPendingDisableFromDismiss:I

.field public mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public final mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

.field public mTelecomManager:Landroid/telecom/TelecomManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mToken:Landroid/os/IBinder;

.field public mWindowManager:Lcom/android/server/wm/WindowManagerService;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$6xbbr7Efi-T-VU6w56BUXkdj7MY(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/LockTaskController;->lambda$activityBlockedFromFinish$0(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$MsyhWNjail7POwFQLWbhR7uH64w(Lcom/android/server/wm/LockTaskController;Lcom/android/server/wm/Task;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/LockTaskController;->lambda$removeLockedTask$2(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gP6uI66C4IzUMBwkx_DdWEXOrn8(Lcom/android/server/wm/LockTaskController;Landroid/content/Intent;Lcom/android/server/wm/Task;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/LockTaskController;->lambda$setLockTaskMode$3(Landroid/content/Intent;Lcom/android/server/wm/Task;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$jOxufjI3N_7hQXNNPsp7WVQVRKI(Lcom/android/server/wm/LockTaskController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/LockTaskController;->lambda$updateLockTaskFeatures$4(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$niFloFNpqVBPMVmDxamsVe_OxUU(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/LockTaskController;->lambda$activityBlockedFromFinish$1(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/wm/LockTaskController;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingDisableFromDismiss(Lcom/android/server/wm/LockTaskController;)I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/LockTaskController;->mPendingDisableFromDismiss:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmToken(Lcom/android/server/wm/LockTaskController;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmPendingDisableFromDismiss(Lcom/android/server/wm/LockTaskController;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/wm/LockTaskController;->mPendingDisableFromDismiss:I

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 6

    .line 115
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/wm/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    .line 117
    new-instance v1, Landroid/util/Pair;

    const/high16 v2, 0x800000

    .line 118
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    .line 117
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 120
    new-instance v1, Landroid/util/Pair;

    const/high16 v2, 0x60000

    .line 121
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x4

    .line 123
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 125
    new-instance v1, Landroid/util/Pair;

    const/high16 v2, 0x200000

    .line 126
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 128
    new-instance v1, Landroid/util/Pair;

    const/high16 v2, 0x1000000

    .line 129
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x8

    .line 128
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 131
    new-instance v1, Landroid/util/Pair;

    .line 133
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x10

    .line 131
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/os/Handler;Lcom/android/server/wm/TaskChangeNotificationController;)V
    .registers 7

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    new-instance v0, Lcom/android/server/wm/LockTaskController$LockTaskToken;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/LockTaskController$LockTaskToken;-><init>(Lcom/android/server/wm/LockTaskController$LockTaskToken-IA;)V

    iput-object v0, p0, Lcom/android/server/wm/LockTaskController;->mToken:Landroid/os/IBinder;

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    .line 187
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    .line 192
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    .line 199
    iput v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    .line 202
    iput-boolean v0, p0, Lcom/android/server/wm/LockTaskController;->mInteractionControlEnabled:Z

    const/16 v0, -0x2710

    .line 219
    iput v0, p0, Lcom/android/server/wm/LockTaskController;->mPendingDisableFromDismiss:I

    .line 223
    iput-object p1, p0, Lcom/android/server/wm/LockTaskController;->mContext:Landroid/content/Context;

    .line 224
    iput-object p2, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 225
    iput-object p3, p0, Lcom/android/server/wm/LockTaskController;->mHandler:Landroid/os/Handler;

    .line 226
    iput-object p4, p0, Lcom/android/server/wm/LockTaskController;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    return-void
.end method

.method public static isTaskAuthAllowlisted(I)Z
    .registers 2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_b

    const/4 v0, 0x3

    if-eq p0, v0, :cond_b

    const/4 v0, 0x4

    if-eq p0, v0, :cond_b

    const/4 p0, 0x0

    return p0

    :cond_b
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$activityBlockedFromFinish$0(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 288
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_8

    if-eq p1, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static synthetic lambda$activityBlockedFromFinish$1(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4

    .line 295
    iget-boolean v0, p2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_e

    if-eq p2, p0, :cond_e

    .line 296
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    if-eq p0, p1, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private synthetic lambda$removeLockedTask$2(Lcom/android/server/wm/Task;)V
    .registers 2

    .line 614
    iget p1, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->performStopLockTask(I)V

    return-void
.end method

.method private synthetic lambda$setLockTaskMode$3(Landroid/content/Intent;Lcom/android/server/wm/Task;I)V
    .registers 4

    .line 744
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget p2, p2, Lcom/android/server/wm/Task;->mUserId:I

    .line 743
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/LockTaskController;->performStartLockTask(Ljava/lang/String;II)V

    return-void
.end method

.method private synthetic lambda$updateLockTaskFeatures$4(I)V
    .registers 4

    .line 953
    iget v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 954
    iget v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/LockTaskController;->setStatusBarState(II)V

    .line 955
    iget v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/LockTaskController;->setKeyguardState(II)V

    :cond_f
    return-void
.end method


# virtual methods
.method public activityBlockedFromFinish(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 8

    .line 267
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 268
    iget v1, v0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eq v1, v3, :cond_62

    invoke-virtual {p0, v0}, Lcom/android/server/wm/LockTaskController;->isRootTask(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_62

    .line 272
    :cond_11
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 273
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    const/4 v4, 0x1

    if-ne p1, v3, :cond_1e

    if-eq p1, v1, :cond_57

    .line 277
    :cond_1e
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    .line 278
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getAdjacentTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    .line 279
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-nez v5, :cond_62

    .line 280
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->isDelayLastActivityRemoval()Z

    move-result v5

    if-eqz v5, :cond_62

    if-nez v3, :cond_35

    goto :goto_62

    .line 287
    :cond_35
    new-instance v5, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda3;

    invoke-direct {v5, p1}, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    .line 288
    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_42

    move v1, v4

    goto :goto_43

    :cond_42
    move v1, v2

    :goto_43
    if-eqz v1, :cond_46

    return v2

    .line 295
    :cond_46
    new-instance v1, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1, v3}, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_53

    move p1, v4

    goto :goto_54

    :cond_53
    move p1, v2

    :goto_54
    if-eqz p1, :cond_57

    return v2

    :cond_57
    const-string p1, "ActivityTaskManager"

    const-string v0, "Not finishing task in lock task mode"

    .line 306
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->showLockTaskToast()V

    return v4

    :cond_62
    :goto_62
    return v2
.end method

.method public canMoveTaskToBack(Lcom/android/server/wm/Task;)Z
    .registers 2

    .line 317
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->isRootTask(Lcom/android/server/wm/Task;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 318
    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->showLockTaskToast()V

    const/4 p0, 0x0

    return p0

    :cond_b
    const/4 p0, 0x1

    return p0
.end method

.method public clearLockedTask(Lcom/android/server/wm/Task;)V
    .registers 5

    if-eqz p1, :cond_42

    .line 584
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_42

    .line 586
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_2c

    .line 589
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1c
    if-lez v0, :cond_2c

    .line 590
    iget-object v2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/Task;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1c

    .line 594
    :cond_2c
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->removeLockedTask(Lcom/android/server/wm/Task;)V

    .line 595
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_38

    return-void

    .line 598
    :cond_38
    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->performClearTaskForReuse(Z)V

    .line 599
    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    :cond_42
    :goto_42
    return-void
.end method

.method public clearLockedTasks(Ljava/lang/String;)V
    .registers 7

    .line 568
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_LOCKTASK_enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, -0x12e7ffdd

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v0, v2, v1, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 569
    :cond_17
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2a

    .line 570
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/Task;)V

    :cond_2a
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    .line 1180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "LockTaskController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mLockTaskModeState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->lockTaskModeToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mLockTaskModeTasks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 1184
    :goto_56
    iget-object v2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_86

    .line 1185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_56

    .line 1187
    :cond_86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mLockTaskPackages (userId:packages)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1188
    :goto_9a
    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_d6

    .line 1189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    .line 1190
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1189
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9a

    .line 1192
    :cond_d6
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    .registers 3

    .line 1151
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_1a

    const-string v0, "device_policy"

    .line 1153
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1152
    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/LockTaskController;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_1a

    const-string v0, "ActivityTaskManager"

    const-string/jumbo v1, "warning: no DEVICE_POLICY_SERVICE"

    .line 1155
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    :cond_1a
    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    return-object p0
.end method

.method public final getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .registers 2

    .line 1163
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v0, :cond_b

    .line 1165
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    :cond_b
    return-object v0
.end method

.method public getLockTaskAuth(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_6

    if-nez p2, :cond_6

    return v0

    :cond_6
    const/4 v1, 0x1

    if-nez p1, :cond_a

    return v1

    :cond_a
    if-eqz p2, :cond_16

    .line 890
    iget-object v2, p2, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-nez v2, :cond_11

    goto :goto_16

    .line 891
    :cond_11
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_18

    .line 890
    :cond_16
    :goto_16
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    :goto_18
    if-eqz p2, :cond_1d

    .line 892
    iget p2, p2, Lcom/android/server/wm/Task;->mUserId:I

    goto :goto_1f

    :cond_1d
    iget p2, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 894
    :goto_1f
    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->lockTaskLaunchMode:I

    const/4 v3, 0x3

    if-eqz p1, :cond_38

    if-eq p1, v1, :cond_3f

    const/4 v4, 0x2

    if-eq p1, v4, :cond_36

    if-eq p1, v3, :cond_2c

    goto :goto_3f

    .line 909
    :cond_2c
    invoke-virtual {p0, p2, v2}, Lcom/android/server/wm/LockTaskController;->isPackageAllowlisted(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_34

    move v0, v4

    goto :goto_3f

    :cond_34
    move v0, v1

    goto :goto_3f

    :cond_36
    const/4 v0, 0x4

    goto :goto_3f

    .line 896
    :cond_38
    invoke-virtual {p0, p2, v2}, Lcom/android/server/wm/LockTaskController;->isPackageAllowlisted(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_34

    move v0, v3

    :cond_3f
    :goto_3f
    return v0
.end method

.method public final getLockTaskFeaturesForUser(I)I
    .registers 3

    .line 1132
    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method public getLockTaskModeState()I
    .registers 1

    .line 243
    iget p0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    return p0
.end method

.method public getRootTask()Lcom/android/server/wm/Task;
    .registers 2

    .line 396
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 399
    :cond_a
    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/Task;

    return-object p0
.end method

.method public getStatusBarDisableFlags(I)Landroid/util/Pair;
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1101
    sget-object p0, Lcom/android/server/wm/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/high16 v0, 0x7ff0000

    const/16 v1, 0x1f

    :goto_c
    if-ltz p0, :cond_34

    .line 1102
    sget-object v2, Lcom/android/server/wm/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1103
    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    and-int/2addr v2, p1

    if-eqz v2, :cond_31

    .line 1104
    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    not-int v2, v2

    and-int/2addr v0, v2

    .line 1105
    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    not-int v2, v2

    and-int/2addr v1, v2

    :cond_31
    add-int/lit8 p0, p0, -0x1

    goto :goto_c

    :cond_34
    const/high16 p0, 0x7a60000

    and-int/2addr p0, v0

    .line 1110
    new-instance p1, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .registers 3

    .line 1138
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_1b

    const-string/jumbo v0, "statusbar"

    .line 1140
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1139
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/LockTaskController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_1b

    const-string v0, "StatusBarManager"

    const-string/jumbo v1, "warning: no STATUS_BAR_SERVICE"

    .line 1142
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    :cond_1b
    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object p0
.end method

.method public final getTelecomManager()Landroid/telecom/TelecomManager;
    .registers 2

    .line 1172
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mTelecomManager:Landroid/telecom/TelecomManager;

    if-nez v0, :cond_f

    .line 1174
    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telecom/TelecomManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    return-object p0

    :cond_f
    return-object v0
.end method

.method public isActivityAllowed(ILjava/lang/String;I)Z
    .registers 6

    .line 442
    iget v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->isBlockingInTaskEnabled(I)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_19

    :cond_c
    if-eq p3, v1, :cond_17

    const/4 v0, 0x2

    if-eq p3, v0, :cond_16

    .line 452
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/LockTaskController;->isPackageAllowlisted(ILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_16
    return v1

    :cond_17
    const/4 p0, 0x0

    return p0

    :cond_19
    :goto_19
    return v1
.end method

.method public isBaseOfLockedTask(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 1118
    :goto_2
    iget-object v2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2b

    .line 1119
    iget-object v2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 1120
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 1121
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1120
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 p0, 0x1

    return p0

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2b
    return v0
.end method

.method public final isBlockingInTaskEnabled(I)Z
    .registers 2

    .line 437
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->getLockTaskFeaturesForUser(I)I

    move-result p0

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final isEmergencyCallIntent(Landroid/content/Intent;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 480
    :cond_4
    sget-object v1, Landroid/telecom/TelecomManager;->EMERGENCY_DIALER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    return v2

    .line 485
    :cond_12
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    return v2

    .line 490
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object p0

    if-eqz p0, :cond_2a

    .line 491
    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->getSystemDialerPackage()Ljava/lang/String;

    move-result-object p0

    goto :goto_2b

    :cond_2a
    const/4 p0, 0x0

    :goto_2b
    if-eqz p0, :cond_3c

    .line 492
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3c

    return v2

    :cond_3c
    return v0
.end method

.method public final isKeyguardAllowed(I)Z
    .registers 2

    .line 432
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->getLockTaskFeaturesForUser(I)I

    move-result p0

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isLockTaskModeViolation(Lcom/android/server/wm/Task;)Z
    .registers 3

    const/4 v0, 0x0

    .line 344
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;Z)Z

    move-result p0

    return p0
.end method

.method public isLockTaskModeViolation(Lcom/android/server/wm/Task;Z)Z
    .registers 4

    const/4 v0, 0x0

    .line 353
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;ZZ)Z

    move-result p0

    return p0
.end method

.method public isLockTaskModeViolation(Lcom/android/server/wm/Task;ZZ)Z
    .registers 6

    .line 360
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->isTaskLocked(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-nez p2, :cond_9

    goto :goto_1c

    .line 362
    :cond_9
    iget p2, p1, Lcom/android/server/wm/Task;->mUserId:I

    iget-object v0, p1, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    iget v1, p1, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolationInternal(Lcom/android/server/wm/WindowContainer;ILandroid/content/Intent;I)Z

    move-result p1

    if-eqz p1, :cond_1c

    if-nez p3, :cond_1a

    .line 367
    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->showLockTaskToast()V

    :cond_1a
    const/4 p0, 0x1

    return p0

    :cond_1c
    :goto_1c
    const/4 p0, 0x0

    return p0
.end method

.method public final isLockTaskModeViolationInternal(Lcom/android/server/wm/WindowContainer;ILandroid/content/Intent;I)Z
    .registers 7

    .line 405
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p2}, Lcom/android/server/wm/LockTaskController;->isRecentsAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_e

    return v1

    .line 410
    :cond_e
    invoke-virtual {p0, p2}, Lcom/android/server/wm/LockTaskController;->isKeyguardAllowed(I)Z

    move-result p2

    if-eqz p2, :cond_1b

    invoke-virtual {p0, p3}, Lcom/android/server/wm/LockTaskController;->isEmergencyCallIntent(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_1b

    return v1

    .line 415
    :cond_1b
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeDream()Z

    move-result p1

    if-eqz p1, :cond_22

    return v1

    .line 419
    :cond_22
    invoke-virtual {p0, p3}, Lcom/android/server/wm/LockTaskController;->isWirelessEmergencyAlert(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_29

    return v1

    .line 423
    :cond_29
    invoke-static {p4}, Lcom/android/server/wm/LockTaskController;->isTaskAuthAllowlisted(I)Z

    move-result p1

    if-nez p1, :cond_38

    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_38

    const/4 v1, 0x1

    :cond_38
    return v1
.end method

.method public isNewTaskLockTaskModeViolation(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 5

    .line 380
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 381
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0

    :cond_f
    const/4 v0, 0x0

    .line 384
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/LockTaskController;->getLockTaskAuth(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    move-result v0

    .line 385
    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolationInternal(Lcom/android/server/wm/WindowContainer;ILandroid/content/Intent;I)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 386
    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->showLockTaskToast()V

    const/4 p0, 0x1

    return p0

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method public isPackageAllowlisted(ILjava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return v0

    .line 921
    :cond_4
    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    if-nez p0, :cond_f

    return v0

    .line 925
    :cond_f
    array-length p1, p0

    move v1, v0

    :goto_11
    if-ge v1, p1, :cond_20

    aget-object v2, p0, v1

    .line 926
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_20
    return v0
.end method

.method public final isRecentsAllowed(I)Z
    .registers 2

    .line 427
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->getLockTaskFeaturesForUser(I)I

    move-result p0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final isRootTask(Lcom/android/server/wm/Task;)Z
    .registers 2

    .line 259
    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isTaskLocked(Lcom/android/server/wm/Task;)Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 252
    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isWirelessEmergencyAlert(Landroid/content/Intent;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 460
    :cond_4
    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mContext:Landroid/content/Context;

    .line 461
    invoke-static {p0}, Lcom/android/internal/telephony/CellBroadcastUtils;->getDefaultCellBroadcastAlertDialogComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_d

    return v0

    .line 467
    :cond_d
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    return v0
.end method

.method public final lockKeyguardIfNeeded(I)V
    .registers 3

    .line 1049
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->shouldLockKeyguard(I)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 1050
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V

    .line 1051
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1, v0, v0}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 1052
    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V

    :cond_19
    return-void
.end method

.method public final lockTaskModeToString()Ljava/lang/String;
    .registers 3

    .line 1196
    iget v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    if-eqz v0, :cond_25

    const/4 v1, 0x1

    if-eq v0, v1, :cond_22

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1f

    .line 1203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1f
    const-string p0, "PINNED"

    return-object p0

    :cond_22
    const-string p0, "LOCKED"

    return-object p0

    :cond_25
    const-string p0, "NONE"

    return-object p0
.end method

.method public notifyLockTaskFeaturesChanged(Landroid/util/SparseIntArray;)V
    .registers 2

    .line 1219
    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerServiceExt;->onLockTaskFeaturesChanged(Landroid/util/SparseIntArray;)V

    return-void
.end method

.method public notifyLockTaskStateChanged(I)V
    .registers 2

    .line 1215
    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->onLockTaskStateChanged(I)V

    return-void
.end method

.method public final performStartLockTask(Ljava/lang/String;II)V
    .registers 7

    .line 787
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/WindowManagerPolicyExt;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicyExt;->isInteractionControlEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/LockTaskController;->mInteractionControlEnabled:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p3, v1, :cond_19

    if-nez v0, :cond_19

    .line 795
    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/internal/statusbar/IStatusBarService;->showPinningEnterExitToast(Z)V

    .line 797
    :cond_19
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/wm/WindowManagerService;->onLockTaskStateChanged(I)V

    .line 798
    iput p3, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    .line 799
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    iget v1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyLockTaskModeChanged(I)V

    .line 800
    invoke-virtual {p0, p3, p2}, Lcom/android/server/wm/LockTaskController;->setStatusBarState(II)V

    .line 801
    invoke-virtual {p0, p3, p2}, Lcom/android/server/wm/LockTaskController;->setKeyguardState(II)V

    .line 802
    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 803
    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    invoke-interface {v0, v2, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V

    .line 807
    :cond_3a
    invoke-virtual {p0, p3}, Lcom/android/server/wm/LockTaskController;->notifyLockTaskStateChanged(I)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3d} :catch_3e

    return-void

    :catch_3e
    move-exception p0

    .line 811
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final performStopLockTask(I)V
    .registers 8

    .line 625
    iget v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    const/4 v1, 0x0

    .line 626
    iput v1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    .line 630
    iget-boolean v2, p0, Lcom/android/server/wm/LockTaskController;->mInteractionControlEnabled:Z

    .line 631
    iput-boolean v1, p0, Lcom/android/server/wm/LockTaskController;->mInteractionControlEnabled:Z

    .line 634
    iget-object v3, p0, Lcom/android/server/wm/LockTaskController;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    iget v4, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyLockTaskModeChanged(I)V

    .line 637
    :try_start_10
    iget v3, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    invoke-virtual {p0, v3, p1}, Lcom/android/server/wm/LockTaskController;->setStatusBarState(II)V

    .line 638
    iget v3, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    invoke-virtual {p0, v3, p1}, Lcom/android/server/wm/LockTaskController;->setKeyguardState(II)V

    const/4 v3, 0x2

    if-ne v0, v3, :cond_20

    .line 640
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->lockKeyguardIfNeeded(I)V

    .line 642
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v4

    if-eqz v4, :cond_2e

    .line 643
    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v1, v5, p1}, Landroid/app/admin/IDevicePolicyManager;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V

    :cond_2e
    if-ne v0, v3, :cond_39

    if-nez v2, :cond_39

    .line 650
    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/android/internal/statusbar/IStatusBarService;->showPinningEnterExitToast(Z)V

    .line 652
    :cond_39
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowManagerService;->onLockTaskStateChanged(I)V

    .line 655
    iget p1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->notifyLockTaskStateChanged(I)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_45} :catch_46

    return-void

    :catch_46
    move-exception p0

    .line 659
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final removeLockedTask(Lcom/android/server/wm/Task;)V
    .registers 10

    .line 607
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 610
    :cond_9
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_LOCKTASK_enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_20

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x61334ede

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, v3

    invoke-static {v4, v5, v3, v2, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 611
    :cond_20
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 612
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_LOCKTASK_enabled:Z

    if-eqz v0, :cond_48

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x3

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, 0x39011dd1

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v3

    aput-object v4, v7, v1

    invoke-static {v5, v6, v3, v2, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 614
    :cond_48
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/LockTaskController;Lcom/android/server/wm/Task;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_52
    return-void
.end method

.method public final setKeyguardState(II)V
    .registers 5

    const/16 v0, -0x2710

    .line 999
    iput v0, p0, Lcom/android/server/wm/LockTaskController;->mPendingDisableFromDismiss:I

    if-nez p1, :cond_e

    .line 1001
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/WindowManagerService;->reenableKeyguard(Landroid/os/IBinder;I)V

    goto :goto_4e

    :cond_e
    const/4 v0, 0x1

    const-string v1, "Lock-to-App"

    if-ne p1, v0, :cond_47

    .line 1004
    invoke-virtual {p0, p2}, Lcom/android/server/wm/LockTaskController;->isKeyguardAllowed(I)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 1005
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/WindowManagerService;->reenableKeyguard(Landroid/os/IBinder;I)V

    goto :goto_4e

    .line 1009
    :cond_21
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result p1

    if-eqz p1, :cond_3f

    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure(I)Z

    move-result p1

    if-nez p1, :cond_3f

    .line 1010
    iput p2, p0, Lcom/android/server/wm/LockTaskController;->mPendingDisableFromDismiss:I

    .line 1011
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v0, Lcom/android/server/wm/LockTaskController$1;

    invoke-direct {v0, p0, p2}, Lcom/android/server/wm/LockTaskController$1;-><init>(Lcom/android/server/wm/LockTaskController;I)V

    const/4 p0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    goto :goto_4e

    .line 1035
    :cond_3f
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1, p0, v1, p2}, Lcom/android/server/wm/WindowManagerService;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;I)V

    goto :goto_4e

    .line 1040
    :cond_47
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1, p0, v1, p2}, Lcom/android/server/wm/WindowManagerService;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;I)V

    :goto_4e
    return-void
.end method

.method public final setLockTaskMode(Lcom/android/server/wm/Task;ILjava/lang/String;Z)V
    .registers 15

    .line 729
    iget v0, p1, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_13

    .line 730
    sget-boolean p0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_LOCKTASK_enabled:Z

    if-eqz p0, :cond_12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

    const p1, 0x38a0fc9e

    invoke-static {p0, p1, v2, v1, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_12
    return-void

    .line 734
    :cond_13
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string p0, "ActivityTaskManager"

    const-string/jumbo p1, "setLockTaskMode: Attempt to start an unauthorized lock task."

    .line 735
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 739
    :cond_22
    iget-object v0, p1, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 740
    iget-object v3, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_41

    if-eqz v0, :cond_41

    .line 741
    iget-object v3, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget v4, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v3, p2, v4}, Lcom/android/server/wm/RecentTasks;->onLockTaskModeStateChanged(II)V

    .line 743
    iget-object v3, p0, Lcom/android/server/wm/LockTaskController;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v0, p1, p2}, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/LockTaskController;Landroid/content/Intent;Lcom/android/server/wm/Task;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 748
    :cond_41
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_LOCKTASK_enabled:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_62

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x4

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x20ae1fcc

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v2

    aput-object v4, v7, v3

    invoke-static {v5, v6, v2, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 751
    :cond_62
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    .line 752
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    :cond_6f
    iget v0, p1, Lcom/android/server/wm/Task;->mLockTaskUid:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_78

    .line 756
    iget v0, p1, Lcom/android/server/wm/Task;->effectiveUid:I

    iput v0, p1, Lcom/android/server/wm/Task;->mLockTaskUid:I

    .line 762
    :cond_78
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/MultiWindowEnableController;->dismissMultiWindowMode(I)V

    if-eqz p4, :cond_a4

    .line 767
    iget-object v4, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz p2, :cond_8b

    move v9, v3

    goto :goto_8c

    :cond_8b
    move v9, v2

    :goto_8c
    move-object v5, p1

    move-object v8, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/ActivityTaskSupervisor;->findTaskToMoveToFront(Lcom/android/server/wm/Task;ILandroid/app/ActivityOptions;Ljava/lang/String;Z)V

    .line 769
    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 770
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_b8

    .line 772
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    goto :goto_b8

    :cond_a4
    if-eqz p2, :cond_b8

    .line 775
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v2, 0x0

    iget-object p0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 776
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    .line 777
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v4

    const/4 v5, 0x1

    move-object v1, p1

    .line 775
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;Z)V

    :cond_b8
    :goto_b8
    return-void
.end method

.method public final setStatusBarState(II)V
    .registers 8

    .line 966
    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    if-nez v0, :cond_e

    const-string p0, "Can\'t find StatusBarService"

    .line 968
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne p1, v2, :cond_18

    const/high16 p1, 0x69f0000

    move v4, v3

    move v3, p1

    move p1, v4

    goto :goto_35

    :cond_18
    const/4 v2, 0x1

    if-ne p1, v2, :cond_34

    .line 980
    invoke-virtual {p0, p2}, Lcom/android/server/wm/LockTaskController;->getLockTaskFeaturesForUser(I)I

    move-result p1

    .line 981
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->getStatusBarDisableFlags(I)Landroid/util/Pair;

    move-result-object p1

    .line 982
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 983
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_35

    :cond_34
    move p1, v3

    .line 987
    :goto_35
    :try_start_35
    iget-object p2, p0, Lcom/android/server/wm/LockTaskController;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/wm/LockTaskController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, p2, v2}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 988
    iget-object p2, p0, Lcom/android/server/wm/LockTaskController;->mToken:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p2, p0}, Lcom/android/internal/statusbar/IStatusBarService;->disable2(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_4b} :catch_4c

    goto :goto_52

    :catch_4c
    move-exception p0

    const-string p1, "Failed to set status bar flags"

    .line 990
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_52
    return-void
.end method

.method public setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    .line 234
    iput-object p1, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method public final shouldLockKeyguard(I)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1060
    :try_start_2
    iget-object v2, p0, Lcom/android/server/wm/LockTaskController;->mContext:Landroid/content/Context;

    .line 1061
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_to_app_exit_locked"

    const/4 v4, -0x2

    .line 1060
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/android/server/wm/LockTaskController;->mContext:Landroid/content/Context;

    .line 1065
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_to_app_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_1d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_1d} :catch_22

    if-eqz p0, :cond_20

    goto :goto_21

    :cond_20
    move v0, v1

    :goto_21
    return v0

    .line 1072
    :catch_22
    iget-object v2, p0, Lcom/android/server/wm/LockTaskController;->mContext:Landroid/content/Context;

    .line 1073
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "access_control_use"

    .line 1072
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_32

    move v2, v0

    goto :goto_33

    :cond_32
    move v2, v1

    :goto_33
    if-eqz v2, :cond_46

    .line 1076
    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mContext:Landroid/content/Context;

    .line 1077
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "interaction_control_exit_locked"

    .line 1076
    invoke-static {p0, p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_44

    goto :goto_45

    :cond_44
    move v0, v1

    :goto_45
    return v0

    :cond_46
    const v2, 0x534e4554

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "127605586"

    aput-object v4, v3, v1

    const/4 v1, -0x1

    .line 1084
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    const-string v1, ""

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1085
    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p0

    return p0
.end method

.method public showLockTaskToast()V
    .registers 3

    .line 668
    iget v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    iget-boolean v0, p0, Lcom/android/server/wm/LockTaskController;->mInteractionControlEnabled:Z

    if-nez v0, :cond_19

    .line 674
    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBarService;->showPinningEscapeToast()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_10} :catch_11

    goto :goto_19

    :catch_11
    move-exception p0

    const-string v0, "ActivityTaskManager"

    const-string v1, "Failed to send pinning escape toast"

    .line 676
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_19
    :goto_19
    return-void
.end method

.method public startLockTaskMode(Lcom/android/server/wm/Task;ZI)V
    .registers 10

    if-eqz p3, :cond_b

    .line 696
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget v1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    invoke-virtual {v0, p1, p3, p2, v1}, Lcom/android/server/wm/WindowManagerServiceExt;->takeLockTaskLog(Lcom/android/server/wm/Task;IZI)V

    :cond_b
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_32

    .line 701
    iput p3, p1, Lcom/android/server/wm/Task;->mLockTaskUid:I

    .line 702
    iget p3, p1, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    if-ne p3, v2, :cond_32

    .line 705
    sget-boolean p0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_LOCKTASK_enabled:Z

    if-eqz p0, :cond_22

    sget-object p0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

    const p2, 0x5386119e

    invoke-static {p0, p2, v1, v0, v0}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 706
    :cond_22
    const-class p0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz p0, :cond_31

    .line 709
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showScreenPinningRequest(I)V

    :cond_31
    return-void

    .line 716
    :cond_32
    sget-boolean p3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_LOCKTASK_enabled:Z

    if-eqz p3, :cond_49

    if-eqz p2, :cond_3b

    const-string p3, "Locking pinned"

    goto :goto_3d

    :cond_3b
    const-string p3, "Locking fully"

    :goto_3d
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x7e6cc2d8

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p3, v5, v1

    invoke-static {v3, v4, v1, v0, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_49
    if-eqz p2, :cond_4d

    const/4 p2, 0x2

    goto :goto_4e

    :cond_4d
    move p2, v2

    :goto_4e
    const-string/jumbo p3, "startLockTask"

    .line 717
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/android/server/wm/LockTaskController;->setLockTaskMode(Lcom/android/server/wm/Task;ILjava/lang/String;Z)V

    return-void
.end method

.method public stopLockTaskMode(Lcom/android/server/wm/Task;ZI)V
    .registers 6

    if-eqz p3, :cond_b

    .line 521
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget v1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    invoke-virtual {v0, p1, p3, p2, v1}, Lcom/android/server/wm/WindowManagerServiceExt;->takeLockTaskLog(Lcom/android/server/wm/Task;IZI)V

    .line 525
    :cond_b
    iget v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    if-nez v0, :cond_10

    return-void

    :cond_10
    if-eqz p2, :cond_29

    .line 530
    iget p1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1e

    const-string/jumbo p1, "stopAppPinning"

    .line 531
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->clearLockedTasks(Ljava/lang/String;)V

    goto :goto_64

    :cond_1e
    const-string p1, "ActivityTaskManager"

    const-string p2, "Attempted to stop LockTask with isSystemCaller=true"

    .line 533
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->showLockTaskToast()V

    goto :goto_64

    :cond_29
    if-eqz p1, :cond_65

    .line 550
    iget p2, p1, Lcom/android/server/wm/Task;->mLockTaskUid:I

    if-eq p3, p2, :cond_61

    if-nez p2, :cond_36

    iget p2, p1, Lcom/android/server/wm/Task;->effectiveUid:I

    if-ne p3, p2, :cond_36

    goto :goto_61

    .line 552
    :cond_36
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid uid, expected "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/android/server/wm/Task;->mLockTaskUid:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " callingUid="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " effectiveUid="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/wm/Task;->effectiveUid:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 557
    :cond_61
    :goto_61
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/Task;)V

    :goto_64
    return-void

    .line 540
    :cond_65
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "can\'t stop LockTask for null task"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateLockTaskFeatures(II)V
    .registers 4

    .line 940
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->getLockTaskFeaturesForUser(I)I

    move-result v0

    if-ne p2, v0, :cond_7

    return-void

    .line 945
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 948
    iget-object p2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/LockTaskController;->notifyLockTaskFeaturesChanged(Landroid/util/SparseIntArray;)V

    .line 951
    iget-object p2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_30

    iget-object p2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/Task;

    iget p2, p2, Lcom/android/server/wm/Task;->mUserId:I

    if-ne p1, p2, :cond_30

    .line 952
    iget-object p2, p0, Lcom/android/server/wm/LockTaskController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/LockTaskController;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_30
    return-void
.end method

.method public updateLockTaskPackages(I[Ljava/lang/String;)V
    .registers 12

    .line 822
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 829
    iget-object p2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_f
    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ltz p2, :cond_68

    .line 830
    iget-object v5, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Task;

    .line 831
    iget v6, v5, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    const/4 v7, 0x3

    if-eq v6, v4, :cond_25

    if-ne v6, v7, :cond_23

    goto :goto_25

    :cond_23
    move v6, v1

    goto :goto_26

    :cond_25
    :goto_25
    move v6, v0

    .line 833
    :goto_26
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->setLockTaskAuth()V

    .line 834
    iget v8, v5, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    if-eq v8, v4, :cond_32

    if-ne v8, v7, :cond_30

    goto :goto_32

    :cond_30
    move v7, v1

    goto :goto_33

    :cond_32
    :goto_32
    move v7, v0

    .line 848
    :goto_33
    iget v8, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    if-ne v8, v0, :cond_65

    iget v8, v5, Lcom/android/server/wm/Task;->mUserId:I

    if-ne v8, p1, :cond_65

    if-eqz v6, :cond_65

    if-eqz v7, :cond_40

    goto :goto_65

    .line 857
    :cond_40
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_LOCKTASK_enabled:Z

    if-eqz v2, :cond_5e

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->lockTaskAuthToString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, 0x6d05c606

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v1

    aput-object v6, v4, v0

    invoke-static {v7, v8, v1, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 859
    :cond_5e
    invoke-virtual {p0, v5}, Lcom/android/server/wm/LockTaskController;->removeLockedTask(Lcom/android/server/wm/Task;)V

    .line 860
    invoke-virtual {v5, v1}, Lcom/android/server/wm/Task;->performClearTaskForReuse(Z)V

    move v2, v0

    :cond_65
    :goto_65
    add-int/lit8 p2, p2, -0x1

    goto :goto_f

    .line 864
    :cond_68
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance p2, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 866
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_83

    .line 867
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    goto :goto_84

    :cond_83
    move-object p1, v3

    .line 868
    :goto_84
    iget-object p2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_ad

    if-eqz p1, :cond_ad

    iget p2, p1, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    if-ne p2, v4, :cond_ad

    .line 871
    sget-boolean p2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_LOCKTASK_enabled:Z

    if-eqz p2, :cond_a6

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x40e7c0ac

    new-array v5, v0, [Ljava/lang/Object;

    aput-object p2, v5, v1

    invoke-static {v2, v4, v1, v3, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_a6
    const-string/jumbo p2, "package updated"

    .line 873
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/server/wm/LockTaskController;->setLockTaskMode(Lcom/android/server/wm/Task;ILjava/lang/String;Z)V

    goto :goto_ae

    :cond_ad
    move v0, v2

    :goto_ae
    if-eqz v0, :cond_b7

    .line 878
    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    :cond_b7
    return-void
.end method
