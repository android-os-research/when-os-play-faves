.class public Lcom/android/server/wm/RecentTasks;
.super Ljava/lang/Object;
.source "RecentTasks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/RecentTasks$UserToProcMap;,
        Lcom/android/server/wm/RecentTasks$Callbacks;
    }
.end annotation


# static fields
.field public static final DEFAULT_INITIAL_CAPACITY:I = 0x5

.field public static final FREEZE_TASK_LIST_TIMEOUT_MS:J

.field public static final NO_ACTIVITY_INFO_TOKEN:Landroid/content/pm/ActivityInfo;

.field public static final NO_APPLICATION_INFO_TOKEN:Landroid/content/pm/ApplicationInfo;

.field public static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field public static final TAG_RECENTS:Ljava/lang/String; = "ActivityTaskManager"

.field public static final TAG_TASKS:Ljava/lang/String; = "ActivityTaskManager"

.field public static final TASK_ID_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mActiveTasksSessionDurationMs:J

.field public final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/RecentTasks$Callbacks;",
            ">;"
        }
    .end annotation
.end field

.field public mCheckTrimmableTasksOnIdle:Z

.field public mEdgeUid:I

.field public mFeatureId:Ljava/lang/String;

.field public mFreezeTaskListReordering:Z

.field public mFreezeTaskListTimeoutMs:J

.field public mGlobalMaxNumTasks:I

.field public mHasVisibleRecentTasks:Z

.field public final mHiddenTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field public final mListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

.field public mMaxNumVisibleTasks:I

.field public mMinNumVisibleTasks:I

.field public final mPersistedTaskIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field public mRecentsComponent:Landroid/content/ComponentName;

.field public mRecentsComponentForDeX:Landroid/content/ComponentName;

.field public mRecentsUid:I

.field public mRecentsUidForDeX:I

.field public final mResetFreezeTaskListOnTimeoutRunnable:Ljava/lang/Runnable;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public mTaskNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

.field public final mTaskPersister:Lcom/android/server/wm/TaskPersister;

.field public final mTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field public final mTmpAvailActCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mTmpAvailAppCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

.field public final mTmpRecents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field public final mUserToProcs:Lcom/android/server/wm/RecentTasks$UserToProcMap;

.field public final mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;


# direct methods
.method public static synthetic $r8$lambda$Lw5aBcccE9SRJKSXotdj9ht1qDI(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/RecentTasks;->lambda$cleanUpPackageNotInTasks$2(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QxYtAT2EXd3Riy4heDR1dN_raHU(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/RecentTasks;->lambda$okToRemove$6(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$YpOZT4EWZPmmFNuCtk2AL4MHU1g(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/RecentTasks;->lambda$static$0(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$cCKudQPgUK5A-K9FiJzpeOUMYjQ(Lcom/android/server/wm/RecentTasks;Lcom/android/server/wm/Task;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentTasks;->lambda$loadUserRecentsLocked$1(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d_OCAdZYiklruH5Fw-Hb10TtW4A(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/RecentTasks;->lambda$cleanUpPackageNotInTasks$4(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hmO8eVloC649TZ_Fd7AeNMowpjM(ILcom/android/server/wm/Task;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/RecentTasks;->lambda$cleanUpPackageNotInTasks$3(ILcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$tW_s_q0Rp8B9JNjFcBgC26O59A8(Lcom/android/server/wm/RecentTasks;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/RecentTasks;->lambda$cleanUpPackageNotInTasks$5(ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmFreezeTaskListReordering(Lcom/android/server/wm/RecentTasks;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/wm/RecentTasks;)Lcom/android/server/wm/ActivityTaskManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 139
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/wm/RecentTasks;->FREEZE_TASK_LIST_TIMEOUT_MS:J

    .line 142
    new-instance v0, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lcom/android/server/wm/RecentTasks;->TASK_ID_COMPARATOR:Ljava/util/Comparator;

    .line 147
    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0}, Landroid/content/pm/ActivityInfo;-><init>()V

    sput-object v0, Lcom/android/server/wm/RecentTasks;->NO_ACTIVITY_INFO_TOKEN:Landroid/content/pm/ActivityInfo;

    .line 148
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    sput-object v0, Lcom/android/server/wm/RecentTasks;->NO_APPLICATION_INFO_TOKEN:Landroid/content/pm/ApplicationInfo;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;)V
    .registers 11

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 177
    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    const/4 v1, 0x0

    .line 178
    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    .line 180
    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsUidForDeX:I

    .line 181
    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mRecentsComponentForDeX:Landroid/content/ComponentName;

    .line 189
    new-instance v1, Landroid/util/SparseBooleanArray;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    .line 196
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    .line 200
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 201
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    .line 204
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    .line 220
    sget-wide v1, Lcom/android/server/wm/RecentTasks;->FREEZE_TASK_LIST_TIMEOUT_MS:J

    iput-wide v1, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListTimeoutMs:J

    .line 223
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    .line 224
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    .line 225
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    .line 226
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    .line 229
    new-instance v1, Lcom/android/server/wm/RecentTasks$UserToProcMap;

    invoke-direct {v1}, Lcom/android/server/wm/RecentTasks$UserToProcMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mUserToProcs:Lcom/android/server/wm/RecentTasks$UserToProcMap;

    .line 233
    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mEdgeUid:I

    .line 237
    new-instance v0, Lcom/android/server/wm/RecentTasks$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RecentTasks$1;-><init>(Lcom/android/server/wm/RecentTasks;)V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    .line 262
    new-instance v0, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/RecentTasks;)V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mResetFreezeTaskListOnTimeoutRunnable:Ljava/lang/Runnable;

    .line 276
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    .line 277
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 278
    iput-object p1, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 279
    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 280
    new-instance v7, Lcom/android/server/wm/TaskPersister;

    iget-object v6, p2, Lcom/android/server/wm/ActivityTaskSupervisor;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    move-object v1, v7

    move-object v3, p2

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/TaskPersister;-><init>(Ljava/io/File;Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/RecentTasks;Lcom/android/server/wm/PersisterQueue;)V

    iput-object v7, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    .line 282
    invoke-static {}, Landroid/app/ActivityTaskManager;->getMaxRecentTasksStatic()I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/RecentTasks;->mGlobalMaxNumTasks:I

    .line 283
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/RecentTasks;->mTaskNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    const p1, 0x1110169

    .line 284
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/RecentTasks;->mHasVisibleRecentTasks:Z

    .line 285
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RecentTasks;->loadParametersFromResources(Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/TaskPersister;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 177
    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    const/4 v1, 0x0

    .line 178
    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    .line 180
    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsUidForDeX:I

    .line 181
    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mRecentsComponentForDeX:Landroid/content/ComponentName;

    .line 189
    new-instance v1, Landroid/util/SparseBooleanArray;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    .line 196
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    .line 200
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 201
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    .line 204
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    .line 220
    sget-wide v1, Lcom/android/server/wm/RecentTasks;->FREEZE_TASK_LIST_TIMEOUT_MS:J

    iput-wide v1, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListTimeoutMs:J

    .line 223
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    .line 224
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    .line 225
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    .line 226
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    .line 229
    new-instance v1, Lcom/android/server/wm/RecentTasks$UserToProcMap;

    invoke-direct {v1}, Lcom/android/server/wm/RecentTasks$UserToProcMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mUserToProcs:Lcom/android/server/wm/RecentTasks$UserToProcMap;

    .line 233
    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mEdgeUid:I

    .line 237
    new-instance v0, Lcom/android/server/wm/RecentTasks$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RecentTasks$1;-><init>(Lcom/android/server/wm/RecentTasks;)V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    .line 262
    new-instance v0, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/RecentTasks;)V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mResetFreezeTaskListOnTimeoutRunnable:Ljava/lang/Runnable;

    .line 267
    iput-object p1, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 268
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 269
    iput-object p2, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    .line 270
    invoke-static {}, Landroid/app/ActivityTaskManager;->getMaxRecentTasksStatic()I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/RecentTasks;->mGlobalMaxNumTasks:I

    const/4 p2, 0x1

    .line 271
    iput-boolean p2, p0, Lcom/android/server/wm/RecentTasks;->mHasVisibleRecentTasks:Z

    .line 272
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/RecentTasks;->mTaskNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    return-void
.end method

.method public static synthetic lambda$cleanUpPackageNotInTasks$2(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 2

    .line 2442
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic lambda$cleanUpPackageNotInTasks$3(ILcom/android/server/wm/Task;)Z
    .registers 3

    .line 2445
    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mDedicatedTask:Z

    if-eqz v0, :cond_a

    iget p1, p1, Lcom/android/server/wm/Task;->mUserId:I

    if-ne p0, p1, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static synthetic lambda$cleanUpPackageNotInTasks$4(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 2

    .line 2446
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$cleanUpPackageNotInTasks$5(ILjava/lang/String;)V
    .registers 4

    .line 2449
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mUserToProcs:Lcom/android/server/wm/RecentTasks$UserToProcMap;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RecentTasks$UserToProcMap;->get(I)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/RecentTasks;->removeDedicatedProcessFromPackage(Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$loadUserRecentsLocked$1(Lcom/android/server/wm/Task;)V
    .registers 3

    .line 625
    iget-object v0, p1, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mUserToProcs:Lcom/android/server/wm/RecentTasks$UserToProcMap;

    iget v0, p1, Lcom/android/server/wm/Task;->mUserId:I

    .line 626
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RecentTasks$UserToProcMap;->get(I)Ljava/util/HashMap;

    move-result-object p0

    iget-object v0, p1, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    iput-boolean p0, p1, Lcom/android/server/wm/Task;->mDedicatedTask:Z

    return-void
.end method

.method public static synthetic lambda$okToRemove$6(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)Z
    .registers 4

    .line 2460
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    iget v1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    if-eq v0, v1, :cond_18

    iget v0, p0, Lcom/android/server/wm/Task;->mUserId:I

    iget v1, p1, Lcom/android/server/wm/Task;->mUserId:I

    if-ne v0, v1, :cond_18

    iget-object p0, p0, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    .line 2462
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public static synthetic lambda$static$0(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)I
    .registers 2

    .line 143
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    sub-int/2addr p1, p0

    return p1
.end method

.method public static shouldPersistTaskLocked(Lcom/android/server/wm/Task;)Z
    .registers 2

    .line 697
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 698
    iget-boolean p0, p0, Lcom/android/server/wm/Task;->isPersistable:Z

    if-eqz p0, :cond_12

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result p0

    if-nez p0, :cond_12

    :cond_10
    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method


# virtual methods
.method public add(Lcom/android/server/wm/Task;)V
    .registers 10

    .line 1246
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add: task="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    :cond_1a
    iget v0, p1, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    iget v2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v0, v2, :cond_2e

    iget v0, p1, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    if-ne v0, v3, :cond_2e

    iget v0, p1, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    if-eq v0, v3, :cond_2c

    goto :goto_2e

    :cond_2c
    move v0, v5

    goto :goto_2f

    :cond_2e
    :goto_2e
    move v0, v4

    .line 1252
    :goto_2f
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1256
    iget-object v6, p1, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v6, :cond_52

    .line 1257
    sget-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz p0, :cond_51

    .line 1258
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addRecent: not adding voice interaction "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    return-void

    :cond_52
    if-nez v0, :cond_77

    if-lez v2, :cond_77

    .line 1264
    iget-object v6, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p1, :cond_77

    .line 1265
    sget-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz p0, :cond_76

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addRecent: already at top: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_76
    return-void

    :cond_77
    if-eqz v0, :cond_b4

    if-lez v2, :cond_b4

    .line 1270
    iget-boolean v2, p1, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v2, :cond_b4

    iget v2, p1, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    iget-object v6, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 1271
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Task;

    iget v6, v6, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    if-ne v2, v6, :cond_b4

    .line 1272
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v0, :cond_b3

    .line 1273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addRecent: affiliated "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " at top when adding "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b3
    return-void

    .line 1283
    :cond_b4
    iget-boolean v2, p1, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v2, :cond_10a

    .line 1284
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_f4

    if-nez v0, :cond_10a

    .line 1287
    iget-boolean v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    if-nez v0, :cond_f0

    .line 1290
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1291
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v5, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1293
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v0, :cond_f0

    .line 1294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addRecent: moving to top "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    :cond_f0
    invoke-virtual {p0, p1, v5}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    return-void

    .line 1302
    :cond_f4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Task with inRecent not in recents: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    goto :goto_10b

    :cond_10a
    move v2, v5

    .line 1307
    :goto_10b
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v6, :cond_123

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addRecent: trimming tasks for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    :cond_123
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->removeForAddTask(Lcom/android/server/wm/Task;)I

    move-result v6

    .line 1310
    iput-boolean v4, p1, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v0, :cond_1a9

    if-eqz v2, :cond_12f

    goto/16 :goto_1a9

    :cond_12f
    if-eqz v0, :cond_1d1

    .line 1322
    iget-object v0, p1, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-nez v0, :cond_137

    .line 1324
    iget-object v0, p1, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    :cond_137
    if-eqz v0, :cond_18f

    .line 1327
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_176

    .line 1331
    iget-object v3, p1, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-ne v0, v3, :cond_147

    add-int/lit8 v2, v2, 0x1

    .line 1340
    :cond_147
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v0, :cond_167

    .line 1341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addRecent: new affiliated task added at "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    :cond_167
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1346
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->notifyTaskAdded(Lcom/android/server/wm/Task;)V

    .line 1349
    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/RecentTasks;->moveAffiliatedTasksToFront(Lcom/android/server/wm/Task;I)Z

    move-result v0

    if-eqz v0, :cond_1a7

    return-void

    .line 1358
    :cond_176
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v2, :cond_1a7

    .line 1359
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addRecent: couldn\'t find other affiliation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a7

    .line 1365
    :cond_18f
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v0, :cond_1a7

    .line 1366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addRecent: adding affiliated task without next/prev:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a7
    :goto_1a7
    move v2, v4

    goto :goto_1d1

    .line 1315
    :cond_1a9
    :goto_1a9
    iget-boolean v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    if-eqz v0, :cond_1b0

    if-eq v6, v3, :cond_1b0

    goto :goto_1b1

    :cond_1b0
    move v6, v5

    .line 1316
    :goto_1b1
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v6, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1317
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->notifyTaskAdded(Lcom/android/server/wm/Task;)V

    .line 1318
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v0, :cond_1d1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addRecent: adding "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d1
    :goto_1d1
    if-eqz v2, :cond_1e1

    .line 1374
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v0, :cond_1dc

    const-string v0, "addRecent: regrouping affiliations"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    :cond_1dc
    iget v0, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RecentTasks;->cleanupLocked(I)V

    .line 1378
    :cond_1e1
    iput-boolean v4, p0, Lcom/android/server/wm/RecentTasks;->mCheckTrimmableTasksOnIdle:Z

    .line 1379
    invoke-virtual {p0, p1, v5}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    return-void
.end method

.method public addToBottom(Lcom/android/server/wm/Task;)Z
    .registers 3

    .line 1386
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->canAddTaskWithoutTrim(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 1392
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    const/4 p0, 0x1

    return p0
.end method

.method public adjustTopExcludeFromRecentTaskOrder(Lcom/android/server/wm/Task;)V
    .registers 5

    .line 2489
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    goto :goto_11

    :cond_10
    move v0, v1

    :goto_11
    const/high16 v2, 0x800000

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    move v0, v1

    :goto_19
    if-eqz v0, :cond_3b

    .line 2492
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 2493
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    iget v2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    if-eq v0, v2, :cond_3b

    .line 2494
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2495
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_3b
    return-void
.end method

.method public final canAddTaskWithoutTrim(Lcom/android/server/wm/Task;)Z
    .registers 2

    .line 990
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->findRemoveIndexForAddTask(Lcom/android/server/wm/Task;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public final cleanUpPackageNotInTasks(I)V
    .registers 5

    .line 2441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2442
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mUserToProcs:Lcom/android/server/wm/RecentTasks$UserToProcMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RecentTasks$UserToProcMap;->get(I)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda4;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 2445
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda5;

    invoke-direct {v2, p1}, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda6;-><init>()V

    .line 2446
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0}, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda7;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 2449
    new-instance v1, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/wm/RecentTasks;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public cleanupDisabledPackageTasksLocked(Ljava/lang/String;Ljava/util/Set;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 849
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_4c

    .line 850
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    const/4 v3, -0x1

    if-eq p3, v3, :cond_1a

    .line 851
    iget v3, v2, Lcom/android/server/wm/Task;->mUserId:I

    if-eq v3, p3, :cond_1a

    goto :goto_49

    .line 855
    :cond_1a
    iget-object v3, v2, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_23

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    goto :goto_24

    :cond_23
    const/4 v3, 0x0

    :goto_24
    const/4 v4, 0x0

    if-eqz v3, :cond_3f

    .line 856
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    if-eqz p2, :cond_3d

    .line 857
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    :cond_3d
    move v3, v1

    goto :goto_40

    :cond_3f
    move v3, v4

    :goto_40
    if-eqz v3, :cond_49

    .line 859
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const-string v5, "disabled-package"

    invoke-virtual {v3, v2, v4, v1, v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V

    :cond_49
    :goto_49
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_4c
    return-void
.end method

.method public cleanupLocked(I)V
    .registers 14

    .line 870
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 878
    :cond_9
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 879
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 881
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_19
    const/4 v3, 0x0

    if-ltz v0, :cond_16c

    .line 883
    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Task;

    const/4 v5, -0x1

    if-eq p1, v5, :cond_2d

    .line 884
    iget v5, v4, Lcom/android/server/wm/Task;->mUserId:I

    if-eq v5, p1, :cond_2d

    goto/16 :goto_168

    .line 888
    :cond_2d
    iget-boolean v5, v4, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    const-string v6, "ActivityTaskManager"

    if-eqz v5, :cond_5c

    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-nez v5, :cond_5c

    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_DEDICATED_MEMORY:Z

    if-eqz v5, :cond_43

    .line 890
    invoke-virtual {p0, v4}, Lcom/android/server/wm/RecentTasks;->okToRemove(Lcom/android/server/wm/Task;)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 894
    :cond_43
    invoke-virtual {p0, v4}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/Task;)V

    .line 895
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing auto-remove without activity: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_168

    .line 899
    :cond_5c
    iget-object v5, v4, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_168

    .line 900
    iget-object v7, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ActivityInfo;

    if-nez v5, :cond_7e

    .line 906
    :try_start_6a
    iget-object v5, v4, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    const-wide/32 v7, 0x10000400

    invoke-interface {v1, v5, v7, v8, p1}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v5
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_73} :catch_168

    if-nez v5, :cond_77

    .line 914
    sget-object v5, Lcom/android/server/wm/RecentTasks;->NO_ACTIVITY_INFO_TOKEN:Landroid/content/pm/ActivityInfo;

    .line 916
    :cond_77
    iget-object v7, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    iget-object v8, v4, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    :cond_7e
    sget-object v7, Lcom/android/server/wm/RecentTasks;->NO_ACTIVITY_INFO_TOKEN:Landroid/content/pm/ActivityInfo;

    const-string v8, "Making recent unavailable: "

    const/high16 v9, 0x800000

    if-ne v5, v7, :cond_f2

    .line 922
    iget-object v5, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    iget-object v7, v4, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 923
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    if-nez v5, :cond_b1

    .line 926
    :try_start_96
    iget-object v5, v4, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v10, 0x2000

    invoke-interface {v1, v5, v10, v11, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v5
    :try_end_a2
    .catch Landroid/os/RemoteException; {:try_start_96 .. :try_end_a2} :catch_168

    if-nez v5, :cond_a6

    .line 933
    sget-object v5, Lcom/android/server/wm/RecentTasks;->NO_APPLICATION_INFO_TOKEN:Landroid/content/pm/ApplicationInfo;

    .line 935
    :cond_a6
    iget-object v7, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    iget-object v10, v4, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    :cond_b1
    sget-object v7, Lcom/android/server/wm/RecentTasks;->NO_APPLICATION_INFO_TOKEN:Landroid/content/pm/ApplicationInfo;

    if-eq v5, v7, :cond_d9

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v5, v9

    if-nez v5, :cond_bb

    goto :goto_d9

    .line 945
    :cond_bb
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v5, :cond_d5

    iget-boolean v5, v4, Lcom/android/server/wm/Task;->isAvailable:Z

    if-eqz v5, :cond_d5

    .line 946
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    :cond_d5
    iput-boolean v3, v4, Lcom/android/server/wm/Task;->isAvailable:Z

    goto/16 :goto_168

    .line 940
    :cond_d9
    :goto_d9
    invoke-virtual {p0, v4}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/Task;)V

    .line 941
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing no longer valid recent: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_168

    .line 952
    :cond_f2
    iget-boolean v7, v5, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v7, :cond_121

    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v10, v7, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v10, :cond_121

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v7, v9

    if-nez v7, :cond_102

    goto :goto_121

    .line 966
    :cond_102
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v3, :cond_11e

    iget-boolean v3, v4, Lcom/android/server/wm/Task;->isAvailable:Z

    if-nez v3, :cond_11e

    .line 967
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Making recent available: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    :cond_11e
    iput-boolean v2, v4, Lcom/android/server/wm/Task;->isAvailable:Z

    goto :goto_168

    .line 955
    :cond_121
    :goto_121
    sget-boolean v7, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v7, :cond_166

    iget-boolean v7, v4, Lcom/android/server/wm/Task;->isAvailable:Z

    if-eqz v7, :cond_166

    .line 956
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " (enabled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v5, Landroid/content/pm/ActivityInfo;->enabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v8, v8, Landroid/content/pm/ApplicationInfo;->enabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " flags="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 961
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 956
    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    :cond_166
    iput-boolean v3, v4, Lcom/android/server/wm/Task;->isAvailable:Z

    :catch_168
    :cond_168
    :goto_168
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_19

    .line 978
    :cond_16c
    iget-object p1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_172
    if-ge v3, p1, :cond_179

    .line 980
    invoke-virtual {p0, v3}, Lcom/android/server/wm/RecentTasks;->processNextAffiliateChainLocked(I)I

    move-result v3

    goto :goto_172

    :cond_179
    return-void
.end method

.method public clearRecentTasksLocked(I)V
    .registers 5

    .line 409
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_21

    .line 411
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 412
    iget v2, v2, Lcom/android/server/wm/Task;->mUserId:I

    if-ne v2, p1, :cond_1e

    .line 413
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_21
    return-void
.end method

.method public containsTaskId(II)Z
    .registers 3

    .line 647
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RecentTasks;->loadPersistedTaskIdsForUserLocked(I)V

    .line 648
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0
.end method

.method public createRecentTaskInfo(Lcom/android/server/wm/Task;ZZ)Landroid/app/ActivityManager$RecentTaskInfo;
    .registers 7

    .line 2216
    new-instance v0, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RecentTaskInfo;-><init>()V

    .line 2219
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2220
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    goto :goto_18

    .line 2221
    :cond_10
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    .line 2222
    :goto_18
    invoke-virtual {p1, v0, p2, p0}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;ZLcom/android/server/wm/TaskDisplayArea;)V

    .line 2224
    iget-boolean p2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->isRunning:Z

    if-eqz p2, :cond_22

    iget p2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    goto :goto_23

    :cond_22
    const/4 p2, -0x1

    :goto_23
    iput p2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    .line 2225
    iget p2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    iput p2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    .line 2226
    iget-object p2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->lastSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    iget-object v1, p1, Lcom/android/server/wm/Task;->mLastTaskSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->set(Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;)V

    if-nez p3, :cond_35

    .line 2228
    invoke-static {p1, v0}, Lcom/android/server/wm/Task;->trimIneffectiveInfo(Lcom/android/server/wm/Task;Landroid/app/TaskInfo;)V

    .line 2232
    :cond_35
    iget-boolean p2, p1, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz p2, :cond_61

    .line 2233
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result p2

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    :goto_3f
    if-ltz p2, :cond_61

    .line 2234
    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_5e

    .line 2235
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 2236
    new-instance v2, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$RecentTaskInfo;-><init>()V

    .line 2237
    invoke-virtual {v1, v2, p3, p0}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;ZLcom/android/server/wm/TaskDisplayArea;)V

    .line 2238
    iget-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->childrenTaskInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5e
    add-int/lit8 p2, p2, -0x1

    goto :goto_3f

    :cond_61
    return-object v0
.end method

.method public dedicateTo(Lcom/android/server/wm/Task;Z)V
    .registers 11

    .line 2307
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRootProcessName()Ljava/lang/String;

    move-result-object v0

    .line 2308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dedicateTo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_35

    .line 2309
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_35

    return-void

    .line 2313
    :cond_35
    iget-object v1, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_3e

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_3f

    :cond_3e
    const/4 v1, 0x0

    :goto_3f
    if-nez v1, :cond_47

    const-string p0, "dedicateTo: pkgName is null"

    .line 2315
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2320
    :cond_47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_7c

    .line 2321
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v3

    :goto_55
    if-ge v4, v2, :cond_8a

    .line 2323
    iget-object v5, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Task;

    .line 2324
    iget v6, v5, Lcom/android/server/wm/Task;->mUserId:I

    iget v7, p1, Lcom/android/server/wm/Task;->mUserId:I

    if-ne v6, v7, :cond_79

    iget-object v6, v5, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_79

    .line 2325
    iput-boolean p2, v5, Lcom/android/server/wm/Task;->mDedicatedTask:Z

    .line 2326
    invoke-virtual {p0, v5, v3}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    .line 2327
    iget-object v5, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v6, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyDedicated(I)V

    :cond_79
    add-int/lit8 v4, v4, 0x1

    goto :goto_55

    :cond_7c
    if-nez p2, :cond_8a

    .line 2331
    iput-boolean v3, p1, Lcom/android/server/wm/Task;->mDedicatedTask:Z

    .line 2332
    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    .line 2333
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v4, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v2, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyDedicated(I)V

    .line 2337
    :cond_8a
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mUserToProcs:Lcom/android/server/wm/RecentTasks$UserToProcMap;

    iget v4, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v2, v4}, Lcom/android/server/wm/RecentTasks$UserToProcMap;->get(I)Ljava/util/HashMap;

    move-result-object v2

    const/4 v4, 0x1

    if-eqz p2, :cond_af

    .line 2341
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RecentTasks;->isSystemProcessName(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a5

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a5

    .line 2342
    invoke-virtual {v2, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e9

    .line 2344
    :cond_a5
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e8

    .line 2345
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e9

    .line 2349
    :cond_af
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_bc

    .line 2350
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_e8

    goto :goto_e9

    .line 2354
    :cond_bc
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e8

    .line 2355
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_ca
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2356
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ca

    .line 2357
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e9

    :cond_e8
    move v4, v3

    :goto_e9
    if-eqz v4, :cond_fa

    .line 2367
    iget-object p2, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mUserToProcs:Lcom/android/server/wm/RecentTasks$UserToProcMap;

    iget v0, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RecentTasks$UserToProcMap;->get(I)Ljava/util/HashMap;

    move-result-object p0

    iget p1, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {p2, p0, v3, p1}, Lcom/android/server/wm/TaskPersister;->saveDedicatedProcessName(Ljava/util/HashMap;ZI)V

    :cond_fa
    return-void
.end method

.method public dedicateToIfNeeded(Lcom/android/server/wm/Task;Ljava/lang/String;)V
    .registers 5

    .line 2292
    iget v0, p1, Lcom/android/server/wm/Task;->mUserId:I

    iget-object v1, p1, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RecentTasks;->isDedicatedProcess(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 p2, 0x1

    .line 2293
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RecentTasks;->dedicateTo(Lcom/android/server/wm/Task;Z)V

    goto :goto_48

    .line 2294
    :cond_f
    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mDedicatedTask:Z

    if-eqz v0, :cond_48

    .line 2295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " hostprocess "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " changed to "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ActivityTaskManager"

    invoke-static {v0, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    .line 2297
    iput-boolean p2, p1, Lcom/android/server/wm/Task;->mDedicatedTask:Z

    .line 2298
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyDedicated(I)V

    :cond_48
    :goto_48
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;ZLjava/lang/String;)V
    .registers 19

    move-object v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    const-string v0, "ACTIVITY MANAGER RECENT TASKS (dumpsys activity recents)"

    .line 2046
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRecentsUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v6, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2048
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRecentsComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2055
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFreezeTaskListReordering="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v6, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2056
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFreezeTaskListReorderingPendingTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v2, v6, Lcom/android/server/wm/RecentTasks;->mResetFreezeTaskListOnTimeoutRunnable:Ljava/lang/Runnable;

    .line 2057
    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2056
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2058
    iget-object v0, v6, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_88

    .line 2059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHiddenTasks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2061
    :cond_88
    iget-object v0, v6, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_91

    return-void

    .line 2068
    :cond_91
    iget-object v0, v6, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v9, 0x0

    move v1, v9

    move v2, v1

    move v10, v2

    :goto_9b
    const-string v11, "    "

    const-string v12, ": "

    const/4 v13, 0x1

    if-ge v1, v0, :cond_13d

    .line 2070
    iget-object v3, v6, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    if-eqz v8, :cond_11d

    .line 2072
    iget-object v4, v3, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_c8

    .line 2073
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_c8

    iget-object v4, v3, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 2075
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2074
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c8

    move v4, v13

    goto :goto_c9

    :cond_c8
    move v4, v9

    :goto_c9
    if-nez v4, :cond_e9

    .line 2077
    iget-object v5, v3, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v5, :cond_e7

    .line 2078
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_e7

    iget-object v5, v3, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    .line 2080
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 2079
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e7

    move v5, v13

    goto :goto_e8

    :cond_e7
    move v5, v9

    :goto_e8
    or-int/2addr v4, v5

    :cond_e9
    if-nez v4, :cond_fd

    .line 2083
    iget-object v5, v3, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_fb

    .line 2084
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_fb

    move v5, v13

    goto :goto_fc

    :cond_fb
    move v5, v9

    :goto_fc
    or-int/2addr v4, v5

    :cond_fd
    if-nez v4, :cond_111

    .line 2087
    iget-object v5, v3, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_10f

    .line 2088
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10f

    move v5, v13

    goto :goto_110

    :cond_10f
    move v5, v9

    :goto_110
    or-int/2addr v4, v5

    :cond_111
    if-nez v4, :cond_11a

    .line 2091
    iget-object v5, v3, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    :cond_11a
    if-nez v4, :cond_11d

    goto :goto_139

    :cond_11d
    if-nez v2, :cond_126

    const-string v2, "  Recent tasks:"

    .line 2099
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v13

    move v10, v2

    :cond_126
    const-string v4, "  * Recent #"

    .line 2103
    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2104
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2105
    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2106
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz p2, :cond_139

    .line 2108
    invoke-virtual {v3, v7, v11}, Lcom/android/server/wm/Task;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_139
    :goto_139
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_9b

    .line 2113
    :cond_13d
    iget-boolean v0, v6, Lcom/android/server/wm/RecentTasks;->mHasVisibleRecentTasks:Z

    if-eqz v0, :cond_1f3

    const v1, 0x7fffffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2116
    iget-object v0, v6, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2117
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result v4

    const/16 v5, 0x3e8

    move-object v0, p0

    .line 2116
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/RecentTasks;->getRecentTasksImpl(IIZII)Ljava/util/ArrayList;

    move-result-object v0

    move v1, v9

    move v2, v1

    .line 2118
    :goto_155
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1f3

    .line 2119
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RecentTaskInfo;

    if-eqz v8, :cond_1d3

    .line 2121
    iget-object v4, v3, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v4, :cond_17f

    .line 2122
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_17f

    iget-object v4, v3, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 2124
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2123
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17f

    move v4, v13

    goto :goto_180

    :cond_17f
    move v4, v9

    :goto_180
    if-nez v4, :cond_194

    .line 2126
    iget-object v5, v3, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_192

    .line 2127
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_192

    move v5, v13

    goto :goto_193

    :cond_192
    move v5, v9

    :goto_193
    or-int/2addr v4, v5

    :cond_194
    if-nez v4, :cond_1a8

    .line 2130
    iget-object v5, v3, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_1a6

    .line 2131
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a6

    move v5, v13

    goto :goto_1a7

    :cond_1a6
    move v5, v9

    :goto_1a7
    or-int/2addr v4, v5

    :cond_1a8
    if-nez v4, :cond_1bc

    .line 2134
    iget-object v5, v3, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_1ba

    .line 2135
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1ba

    move v5, v13

    goto :goto_1bb

    :cond_1ba
    move v5, v9

    :goto_1bb
    or-int/2addr v4, v5

    :cond_1bc
    if-nez v4, :cond_1d0

    .line 2138
    iget-object v5, v3, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_1ce

    .line 2139
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1ce

    move v5, v13

    goto :goto_1cf

    :cond_1ce
    move v5, v9

    :goto_1cf
    or-int/2addr v4, v5

    :cond_1d0
    if-nez v4, :cond_1d3

    goto :goto_1ef

    :cond_1d3
    if-nez v2, :cond_1e1

    if-eqz v10, :cond_1da

    .line 2148
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_1da
    const-string v2, "  Visible recent tasks (most recent first):"

    .line 2150
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v13

    move v10, v2

    :cond_1e1
    const-string v4, "  * RecentTaskInfo #"

    .line 2155
    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2156
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2157
    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2158
    invoke-virtual {v3, v7, v11}, Landroid/app/ActivityManager$RecentTaskInfo;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :goto_1ef
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_155

    .line 2163
    :cond_1f3
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DEDICATED_MEMORY:Z

    if-eqz v0, :cond_27e

    .line 2164
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2166
    iget-object v0, v6, Lcom/android/server/wm/RecentTasks;->mUserToProcs:Lcom/android/server/wm/RecentTasks$UserToProcMap;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v1, v9

    move v2, v1

    :goto_202
    if-ge v1, v0, :cond_274

    if-nez v1, :cond_20c

    const-string v3, "  Dedicated processes:"

    .line 2170
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move v10, v13

    .line 2172
    :cond_20c
    iget-object v3, v6, Lcom/android/server/wm/RecentTasks;->mUserToProcs:Lcom/android/server/wm/RecentTasks$UserToProcMap;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 2173
    iget-object v4, v6, Lcom/android/server/wm/RecentTasks;->mUserToProcs:Lcom/android/server/wm/RecentTasks$UserToProcMap;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 2174
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_271

    .line 2176
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v2, "    #"

    .line 2177
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2179
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v13

    :goto_237
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_270

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v8, ", "

    if-eqz v3, :cond_249

    move v3, v9

    goto :goto_24c

    .line 2183
    :cond_249
    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2186
    :goto_24c
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 2187
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_25c

    .line 2188
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_237

    :cond_25c
    const-string v14, "("

    .line 2190
    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2191
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2192
    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2193
    invoke-virtual {v7, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, ")"

    .line 2194
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_237

    :cond_270
    move v2, v13

    :cond_271
    add-int/lit8 v1, v1, 0x1

    goto :goto_202

    :cond_274
    if-nez v2, :cond_27b

    const-string v0, "(nothing)"

    .line 2200
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2202
    :cond_27b
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_27e
    if-nez v10, :cond_285

    const-string v0, "  (nothing)"

    .line 2207
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_285
    return-void
.end method

.method public final findRemoveIndexForAddTask(Lcom/android/server/wm/Task;)I
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1791
    iget-object v2, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1792
    iget-object v3, v1, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_18

    .line 1793
    invoke-virtual {v3}, Landroid/content/Intent;->isDocument()Z

    move-result v6

    if-eqz v6, :cond_18

    move v6, v5

    goto :goto_19

    :cond_18
    move v6, v4

    .line 1794
    :goto_19
    iget v7, v1, Lcom/android/server/wm/Task;->maxRecents:I

    sub-int/2addr v7, v5

    move v8, v4

    :goto_1d
    if-ge v8, v2, :cond_c1

    .line 1796
    iget-object v9, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/Task;

    if-eq v1, v9, :cond_c0

    .line 1798
    invoke-virtual {v0, v1, v9}, Lcom/android/server/wm/RecentTasks;->hasCompatibleActivityTypeAndWindowingMode(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)Z

    move-result v10

    if-eqz v10, :cond_bc

    iget v10, v1, Lcom/android/server/wm/Task;->mUserId:I

    iget v11, v9, Lcom/android/server/wm/Task;->mUserId:I

    if-eq v10, v11, :cond_37

    goto/16 :goto_bc

    .line 1802
    :cond_37
    iget-object v10, v9, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 1803
    iget-object v11, v1, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    if-eqz v11, :cond_47

    iget-object v12, v9, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    .line 1804
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_47

    move v11, v5

    goto :goto_48

    :cond_47
    move v11, v4

    :goto_48
    if-eqz v3, :cond_52

    .line 1805
    invoke-virtual {v3, v10}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v12

    if-eqz v12, :cond_52

    move v12, v5

    goto :goto_53

    :cond_52
    move v12, v4

    .line 1807
    :goto_53
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v13

    const/high16 v14, 0x10080000

    and-int/2addr v14, v13

    const/high16 v15, 0x8000000

    if-eqz v14, :cond_64

    and-int v14, v13, v15

    if-eqz v14, :cond_64

    move v14, v5

    goto :goto_65

    :cond_64
    move v14, v4

    :goto_65
    if-eqz v10, :cond_6f

    .line 1812
    invoke-virtual {v10}, Landroid/content/Intent;->isDocument()Z

    move-result v10

    if-eqz v10, :cond_6f

    move v10, v5

    goto :goto_70

    :cond_6f
    move v10, v4

    :goto_70
    if-eqz v6, :cond_77

    if-eqz v10, :cond_77

    move/from16 v16, v5

    goto :goto_79

    :cond_77
    move/from16 v16, v4

    :goto_79
    if-nez v11, :cond_80

    if-nez v12, :cond_80

    if-nez v16, :cond_80

    goto :goto_bc

    :cond_80
    if-eqz v16, :cond_9f

    .line 1820
    iget-object v10, v1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v10, :cond_92

    iget-object v9, v9, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v9, :cond_92

    .line 1822
    invoke-virtual {v10, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_92

    move v9, v5

    goto :goto_93

    :cond_92
    move v9, v4

    :goto_93
    if-nez v9, :cond_96

    goto :goto_bc

    :cond_96
    if-lez v7, :cond_c0

    add-int/lit8 v7, v7, -0x1

    if-eqz v12, :cond_bc

    if-eqz v14, :cond_c0

    goto :goto_bc

    :cond_9f
    if-nez v6, :cond_bc

    if-eqz v10, :cond_a4

    goto :goto_bc

    :cond_a4
    if-eqz v14, :cond_a7

    goto :goto_bc

    .line 1847
    :cond_a7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v10

    if-eqz v10, :cond_c0

    .line 1848
    iget v10, v10, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_c0

    .line 1850
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result v9

    if-eqz v9, :cond_c0

    and-int v9, v13, v15

    if-eqz v9, :cond_c0

    :cond_bc
    :goto_bc
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1d

    :cond_c0
    return v8

    :cond_c1
    const/4 v0, -0x1

    return v0
.end method

.method public flush()V
    .registers 2

    .line 715
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 716
    invoke-virtual {p0}, Lcom/android/server/wm/RecentTasks;->syncPersistentTaskIdsLocked()V

    .line 717
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 718
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskPersister;->flush()V

    return-void

    :catchall_15
    move-exception p0

    .line 717
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getAppTasksList(ILjava/lang/String;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 997
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 998
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_43

    .line 1000
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    .line 1004
    iget v4, v3, Lcom/android/server/wm/Task;->effectiveUid:I

    if-eq v4, p1, :cond_1b

    goto :goto_40

    .line 1007
    :cond_1b
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_40

    .line 1008
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_30

    goto :goto_40

    .line 1011
    :cond_30
    new-instance v4, Lcom/android/server/wm/AppTaskImpl;

    iget-object v5, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-direct {v4, v5, v3, p1}, Lcom/android/server/wm/AppTaskImpl;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;II)V

    .line 1012
    invoke-virtual {v4}, Landroid/app/IAppTask$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_40
    :goto_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_43
    return-object v0
.end method

.method public getCurrentProfileIds()[I
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1034
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getCurrentProfileIds()[I

    move-result-object p0

    return-object p0
.end method

.method public getDedicatedProcessCount(I)I
    .registers 2

    .line 2403
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mUserToProcs:Lcom/android/server/wm/RecentTasks$UserToProcMap;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks$UserToProcMap;->get(I)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    return p0
.end method

.method public getDedicatedProcesses(I)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_26

    .line 2411
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2412
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mUserToProcs:Lcom/android/server/wm/RecentTasks$UserToProcMap;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_25

    .line 2414
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mUserToProcs:Lcom/android/server/wm/RecentTasks$UserToProcMap;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/RecentTasks$UserToProcMap;->get(I)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_25
    return-object p1

    .line 2418
    :cond_26
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mUserToProcs:Lcom/android/server/wm/RecentTasks$UserToProcMap;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks$UserToProcMap;->get(I)Ljava/util/HashMap;

    move-result-object p0

    .line 2419
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public getDedicatedTaskIdsLocked(I)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2427
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2428
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 2429
    iget-boolean v4, v2, Lcom/android/server/wm/Task;->mDedicatedTask:Z

    if-eqz v4, :cond_b

    if-eq p1, v3, :cond_22

    iget v3, v2, Lcom/android/server/wm/Task;->mUserId:I

    if-ne p1, v3, :cond_b

    .line 2430
    :cond_22
    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_2c
    if-eq p1, v3, :cond_3b

    .line 2434
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->getDedicatedProcessCount(I)I

    move-result v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_3b

    .line 2435
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->cleanUpPackageNotInTasks(I)V

    :cond_3b
    return-object v0
.end method

.method public getInputListener()Landroid/view/WindowManagerPolicyConstants$PointerEventListener;
    .registers 1

    .line 307
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    return-object p0
.end method

.method public getNonFloatingFullscreenTaskIndex()I
    .registers 5

    const/4 v0, 0x0

    .line 2502
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3b

    .line 2503
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 2504
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v2

    if-nez v2, :cond_38

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v2

    if-nez v2, :cond_38

    .line 2505
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2a

    .line 2506
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result v2

    if-nez v2, :cond_38

    .line 2507
    :cond_2a
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v2

    if-nez v2, :cond_38

    .line 2508
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_37

    goto :goto_38

    :cond_37
    return v0

    :cond_38
    :goto_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3b
    const/4 p0, -0x1

    return p0
.end method

.method public getPersistableTaskIds(Landroid/util/ArraySet;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1176
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_31

    .line 1178
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1183
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 1184
    iget-boolean v4, v2, Lcom/android/server/wm/Task;->isPersistable:Z

    if-nez v4, :cond_1d

    iget-boolean v4, v2, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v4, :cond_2e

    :cond_1d
    if-eqz v3, :cond_25

    .line 1185
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v3

    if-nez v3, :cond_2e

    .line 1187
    :cond_25
    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_31
    return-void
.end method

.method public getProfileIds(I)Ljava/util/Set;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1019
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1020
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/UserManagerService;->getProfileIds(IZ)[I

    move-result-object p0

    .line 1021
    :goto_10
    array-length p1, p0

    if-ge v1, p1, :cond_1f

    .line 1022
    aget p1, p0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1f
    return-object v0
.end method

.method public getRawTasks()Ljava/util/ArrayList;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation

    .line 1199
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getRecentTaskIds()Landroid/util/SparseBooleanArray;
    .registers 13

    .line 1207
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 1208
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RecentTasks;->getTopTaskIndex(Ljava/util/ArrayList;)I

    move-result v0

    .line 1210
    new-instance v7, Landroid/util/SparseBooleanArray;

    invoke-direct {v7}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 1211
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v1, 0x0

    move v9, v1

    :goto_13
    if-ge v9, v8, :cond_3c

    .line 1214
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/android/server/wm/Task;

    .line 1215
    invoke-virtual {p0, v10}, Lcom/android/server/wm/RecentTasks;->isVisibleRecentTask(Lcom/android/server/wm/Task;)Z

    move-result v2

    if-eqz v2, :cond_39

    add-int/lit8 v11, v1, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, v10

    move v3, v9

    move v4, v11

    move v6, v0

    .line 1217
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/RecentTasks;->isInVisibleRange(Lcom/android/server/wm/Task;IIZI)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 1221
    iget v1, v10, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v2, 0x1

    invoke-virtual {v7, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_38
    move v1, v11

    :cond_39
    add-int/lit8 v9, v9, 0x1

    goto :goto_13

    :cond_3c
    return-object v7
.end method

.method public getRecentTasks(IIZII)Landroid/content/pm/ParceledListSlice;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZII)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .line 1047
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/RecentTasks;->getRecentTasksImpl(IIZII)Ljava/util/ArrayList;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final getRecentTasksImpl(IIZII)Ljava/util/ArrayList;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZII)",
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v8, p3

    move/from16 v0, p4

    and-int/lit8 v1, p2, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    const/4 v10, 0x1

    goto :goto_e

    :cond_d
    move v10, v2

    :goto_e
    const/4 v1, 0x4

    .line 1058
    invoke-virtual {v7, v0, v1}, Lcom/android/server/wm/RecentTasks;->isUserRunning(II)Z

    move-result v1

    const-string v11, "ActivityTaskManager"

    if-nez v1, :cond_37

    .line 1059
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is still locked. Cannot load recents"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 1062
    :cond_37
    invoke-virtual {v7, v0}, Lcom/android/server/wm/RecentTasks;->loadUserRecentsLocked(I)V

    .line 1064
    invoke-virtual {v7, v0}, Lcom/android/server/wm/RecentTasks;->getProfileIds(I)Ljava/util/Set;

    move-result-object v12

    .line 1065
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1081
    iget-object v0, v7, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 1082
    invoke-virtual {v7, v0}, Lcom/android/server/wm/RecentTasks;->getTopTaskIndex(Ljava/util/ArrayList;)I

    move-result v13

    .line 1084
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/RecentTasks;->getNonFloatingFullscreenTaskIndex()I

    move-result v14

    .line 1086
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1087
    iget-object v0, v7, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v5, v2

    :goto_5b
    if-ge v5, v6, :cond_195

    .line 1090
    iget-object v0, v7, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/wm/Task;

    .line 1092
    invoke-virtual {v7, v4}, Lcom/android/server/wm/RecentTasks;->isVisibleRecentTask(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-eqz v0, :cond_186

    add-int/lit8 v16, v2, 0x1

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    move/from16 v3, v16

    move-object v9, v4

    move v4, v10

    move/from16 v17, v5

    move v5, v13

    move/from16 v18, v6

    move v6, v14

    .line 1094
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/RecentTasks;->isInVisibleRange(Lcom/android/server/wm/Task;IIZII)Z

    move-result v0

    if-eqz v0, :cond_17e

    .line 1109
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v0

    move/from16 v1, p1

    if-lt v0, v1, :cond_8c

    goto/16 :goto_180

    .line 1114
    :cond_8c
    iget v0, v9, Lcom/android/server/wm/Task;->mUserId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b2

    .line 1115
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v0, :cond_180

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping, not user: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_180

    .line 1119
    :cond_b2
    iget-boolean v0, v9, Lcom/android/server/wm/Task;->realActivitySuspended:Z

    if-eqz v0, :cond_d0

    .line 1120
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v0, :cond_180

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping, activity suspended: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_180

    :cond_d0
    if-nez v8, :cond_f8

    .line 1127
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_f8

    iget v0, v9, Lcom/android/server/wm/Task;->effectiveUid:I

    move/from16 v3, p5

    if-eq v0, v3, :cond_fa

    .line 1128
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v0, :cond_182

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping, not allowed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_182

    :cond_f8
    move/from16 v3, p5

    .line 1133
    :cond_fa
    iget-boolean v0, v9, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    if-eqz v0, :cond_127

    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_127

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DEDICATED_MEMORY:Z

    if-eqz v0, :cond_10e

    .line 1135
    invoke-virtual {v7, v9}, Lcom/android/server/wm/RecentTasks;->okToRemove(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-eqz v0, :cond_127

    .line 1139
    :cond_10e
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v0, :cond_182

    .line 1140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping, auto-remove without activity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_182

    :cond_127
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_148

    .line 1144
    iget-boolean v0, v9, Lcom/android/server/wm/Task;->isAvailable:Z

    if-nez v0, :cond_148

    .line 1145
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v0, :cond_182

    .line 1146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping, unavail real act: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_182

    .line 1151
    :cond_148
    iget-boolean v0, v9, Lcom/android/server/wm/Task;->mUserSetupComplete:Z

    if-nez v0, :cond_165

    .line 1153
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v0, :cond_182

    .line 1154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping, user setup not complete: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_182

    :cond_165
    and-int/lit8 v0, p2, 0x10

    if-nez v0, :cond_175

    const/4 v0, 0x1

    .line 1160
    invoke-virtual {v9, v0}, Lcom/android/server/wm/Task;->getRootActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_176

    .line 1161
    iget-boolean v2, v2, Lcom/android/server/wm/ActivityRecord;->mIsAliasActivity:Z

    if-eqz v2, :cond_176

    goto :goto_183

    :cond_175
    const/4 v0, 0x1

    .line 1167
    :cond_176
    invoke-virtual {v7, v9, v0, v8}, Lcom/android/server/wm/RecentTasks;->createRecentTaskInfo(Lcom/android/server/wm/Task;ZZ)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_183

    :cond_17e
    move/from16 v1, p1

    :cond_180
    :goto_180
    move/from16 v3, p5

    :cond_182
    :goto_182
    const/4 v0, 0x1

    :goto_183
    move/from16 v2, v16

    goto :goto_18f

    :cond_186
    move/from16 v1, p1

    move/from16 v3, p5

    move/from16 v17, v5

    move/from16 v18, v6

    const/4 v0, 0x1

    :goto_18f
    add-int/lit8 v5, v17, 0x1

    move/from16 v6, v18

    goto/16 :goto_5b

    :cond_195
    return-object v15
.end method

.method public getRecentsComponent()Landroid/content/ComponentName;
    .registers 1

    .line 537
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getRecentsComponentFeatureId()Ljava/lang/String;
    .registers 1

    .line 545
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mFeatureId:Ljava/lang/String;

    return-object p0
.end method

.method public getRecentsComponentUid()I
    .registers 1

    .line 552
    iget p0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    return p0
.end method

.method public getTask(I)Lcom/android/server/wm/Task;
    .registers 6

    .line 1232
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_19

    .line 1234
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1235
    iget v3, v2, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v3, p1, :cond_16

    return-object v2

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2

    .line 707
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskPersister;->getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getTaskIdsForUser(I)Landroid/util/SparseBooleanArray;
    .registers 2

    .line 655
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->loadPersistedTaskIdsForUserLocked(I)V

    .line 656
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public getTopTaskIndex(Ljava/util/ArrayList;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;)I"
        }
    .end annotation

    const/4 p0, 0x0

    move v0, p0

    .line 2468
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_45

    .line 2469
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 2470
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 2471
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_2e

    .line 2473
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_2e

    goto :goto_41

    .line 2476
    :cond_2e
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_44

    .line 2477
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isAlwaysOnTopWhenVisible()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 2478
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_44

    :goto_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_44
    return v0

    :cond_45
    return p0
.end method

.method public getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1029
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method public final hasCompatibleActivityTypeAndWindowingMode(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)Z
    .registers 11

    .line 2251
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result p0

    .line 2252
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_e

    move v2, v0

    goto :goto_f

    :cond_e
    move v2, v1

    :goto_f
    if-nez p1, :cond_13

    move v3, v0

    goto :goto_14

    :cond_13
    move v3, v1

    .line 2255
    :goto_14
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v4

    .line 2256
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v5

    if-nez v4, :cond_20

    move v6, v0

    goto :goto_21

    :cond_20
    move v6, v1

    :goto_21
    if-nez v5, :cond_25

    move v7, v0

    goto :goto_26

    :cond_25
    move v7, v1

    :goto_26
    if-eq p0, v4, :cond_2f

    if-nez v2, :cond_2f

    if-eqz v6, :cond_2d

    goto :goto_2f

    :cond_2d
    move p0, v1

    goto :goto_30

    :cond_2f
    :goto_2f
    move p0, v0

    :goto_30
    if-eq p1, v5, :cond_39

    if-nez v3, :cond_39

    if-eqz v7, :cond_37

    goto :goto_39

    :cond_37
    move p1, v1

    goto :goto_3a

    :cond_39
    :goto_39
    move p1, v0

    .line 2268
    :goto_3a
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    if-nez p2, :cond_42

    move p2, v0

    goto :goto_43

    :cond_42
    move p2, v1

    :goto_43
    if-eqz p0, :cond_4a

    if-nez p1, :cond_4b

    if-eqz p2, :cond_4a

    goto :goto_4b

    :cond_4a
    move v0, v1

    :cond_4b
    :goto_4b
    return v0
.end method

.method public final isActiveRecentTask(Lcom/android/server/wm/Task;Landroid/util/SparseBooleanArray;)Z
    .registers 7

    .line 1518
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_24

    .line 1519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isActiveRecentTask: task="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " globalMax="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/RecentTasks;->mGlobalMaxNumTasks:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    :cond_24
    iget v0, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_37

    .line 1525
    sget-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz p0, :cond_36

    const-string p0, "\tisQuietProfileTask=true"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    return v2

    .line 1529
    :cond_37
    iget v0, p1, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_6a

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    if-eq v0, p1, :cond_6a

    .line 1531
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RecentTasks;->getTask(I)Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_6a

    .line 1533
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RecentTasks;->isActiveRecentTask(Lcom/android/server/wm/Task;Landroid/util/SparseBooleanArray;)Z

    move-result p0

    if-nez p0, :cond_6a

    .line 1534
    sget-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz p0, :cond_69

    .line 1535
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\taffiliatedWithTask="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not active"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_69
    return v2

    :cond_6a
    const/4 p0, 0x1

    return p0
.end method

.method public isCallerRecents(I)Z
    .registers 2

    .line 491
    iget p0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    invoke-static {p1, p0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    goto :goto_b

    :cond_a
    const/4 p0, 0x1

    :goto_b
    return p0
.end method

.method public isDedicatedProcess(ILjava/lang/String;)Z
    .registers 3

    .line 2453
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mUserToProcs:Lcom/android/server/wm/RecentTasks$UserToProcMap;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks$UserToProcMap;->get(I)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isEdgeUid(I)Z
    .registers 2

    .line 503
    iget p0, p0, Lcom/android/server/wm/RecentTasks;->mEdgeUid:I

    invoke-static {p1, p0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p0

    return p0
.end method

.method public isFreezeTaskListReorderingSet()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 369
    iget-boolean p0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    return p0
.end method

.method public final isInVisibleRange(Lcom/android/server/wm/Task;IIZI)Z
    .registers 13

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 1621
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/RecentTasks;->isInVisibleRange(Lcom/android/server/wm/Task;IIZII)Z

    move-result p0

    return p0
.end method

.method public isInVisibleRange(Lcom/android/server/wm/Task;IIZII)Z
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p4, :cond_67

    .line 1630
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Intent;->getFlags()I

    move-result p4

    const/high16 v2, 0x800000

    and-int/2addr p4, v2

    if-ne p4, v2, :cond_13

    move p4, v1

    goto :goto_14

    :cond_13
    move p4, v0

    :goto_14
    if-eqz p4, :cond_67

    .line 1633
    sget-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz p0, :cond_3c

    .line 1634
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\texcludeFromRecents=true, taskIndex = "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", isOnHomeDisplay: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1636
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isOnHomeDisplay()Z

    move-result p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p3, "ActivityTaskManager"

    .line 1634
    invoke-static {p3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    :cond_3c
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isOnHomeDisplay()Z

    move-result p0

    if-eqz p0, :cond_45

    if-ne p2, p6, :cond_45

    return v1

    .line 1644
    :cond_45
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result p0

    if-eqz p0, :cond_5d

    .line 1645
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getCreatedByOrganizerTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_5c

    .line 1646
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5c

    move v0, v1

    :cond_5c
    return v0

    .line 1649
    :cond_5d
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isOnHomeDisplay()Z

    move-result p0

    if-eqz p0, :cond_66

    if-ne p2, p5, :cond_66

    move v0, v1

    :cond_66
    return v0

    .line 1659
    :cond_67
    iget p2, p0, Lcom/android/server/wm/RecentTasks;->mMinNumVisibleTasks:I

    if-ltz p2, :cond_6e

    if-gt p3, p2, :cond_6e

    return v1

    .line 1666
    :cond_6e
    iget-object p2, p1, Lcom/android/server/wm/Task;->mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz p2, :cond_73

    return v1

    .line 1668
    :cond_73
    iget p2, p0, Lcom/android/server/wm/RecentTasks;->mMaxNumVisibleTasks:I

    if-ltz p2, :cond_7b

    if-gt p3, p2, :cond_7a

    move v0, v1

    :cond_7a
    return v0

    .line 1673
    :cond_7b
    iget-wide p2, p0, Lcom/android/server/wm/RecentTasks;->mActiveTasksSessionDurationMs:J

    const-wide/16 p4, 0x0

    cmp-long p2, p2, p4

    if-lez p2, :cond_8f

    .line 1676
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getInactiveDuration()J

    move-result-wide p1

    iget-wide p3, p0, Lcom/android/server/wm/RecentTasks;->mActiveTasksSessionDurationMs:J

    cmp-long p0, p1, p3

    if-gtz p0, :cond_8e

    return v1

    :cond_8e
    return v0

    :cond_8f
    return v1
.end method

.method public isRecentsComponent(Landroid/content/ComponentName;I)Z
    .registers 4

    .line 512
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    iget p0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    invoke-static {p2, p0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public isRecentsComponentHomeActivity(I)Z
    .registers 3

    .line 523
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 524
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 525
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_23

    .line 526
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x1

    goto :goto_24

    :cond_23
    :goto_23
    const/4 p0, 0x0

    :goto_24
    return p0
.end method

.method public isRecentsUid(I)Z
    .registers 2

    .line 499
    iget p0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    invoke-static {p1, p0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p0

    return p0
.end method

.method public final isSystemProcessName(Ljava/lang/String;)Z
    .registers 2

    const-string p0, "com.android.systemui"

    .line 2303
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    const-string/jumbo p0, "system:ui"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    goto :goto_14

    :cond_12
    const/4 p0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 p0, 0x1

    :goto_15
    return p0
.end method

.method public isTrimmable(Lcom/android/server/wm/Task;)Z
    .registers 5

    .line 1692
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_8

    return v0

    .line 1698
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isOnHomeDisplay()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_10

    return v1

    .line 1702
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-nez p0, :cond_1b

    return v1

    .line 1709
    :cond_1b
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result v2

    if-eqz v2, :cond_22

    return v1

    .line 1718
    :cond_22
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result p0

    if-gez p0, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v1

    :goto_2a
    return v0
.end method

.method public isUserRunning(II)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1039
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0, p1, p2}, Landroid/app/ActivityManagerInternal;->isUserRunning(II)Z

    move-result p0

    return p0
.end method

.method public isVisibleRecentTask(Lcom/android/server/wm/Task;)Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1552
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v0, :cond_84

    .line 1553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isVisibleRecentTask: task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " minVis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/RecentTasks;->mMinNumVisibleTasks:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " maxVis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/RecentTasks;->mMaxNumVisibleTasks:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sessionDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/RecentTasks;->mActiveTasksSessionDurationMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " inactiveDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1556
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getInactiveDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " activityType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1557
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " windowingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1558
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isAlwaysOnTopWhenVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1559
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isAlwaysOnTopWhenVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " intentFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1560
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isEmbedded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1561
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    .line 1553
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    :cond_84
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_dc

    const/4 v3, 0x3

    if-eq v0, v3, :cond_dc

    const/4 v3, 0x4

    if-eq v0, v3, :cond_96

    const/4 v3, 0x5

    if-eq v0, v3, :cond_dc

    goto :goto_a4

    .line 1573
    :cond_96
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v3, 0x800000

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_a4

    return v2

    .line 1581
    :cond_a4
    :goto_a4
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    if-eq v0, v1, :cond_dc

    const/4 v1, 0x6

    if-eq v0, v1, :cond_ae

    goto :goto_b5

    .line 1586
    :cond_ae
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isAlwaysOnTopWhenVisible()Z

    move-result v0

    if-eqz v0, :cond_b5

    return v2

    .line 1593
    :cond_b5
    :goto_b5
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-ne p1, p0, :cond_c2

    return v2

    .line 1598
    :cond_c2
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result p0

    if-eqz p0, :cond_c9

    return v2

    .line 1604
    :cond_c9
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-eqz p0, :cond_da

    .line 1605
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->canShowTasksInRecents()Z

    move-result p0

    if-nez p0, :cond_da

    return v2

    :cond_da
    const/4 p0, 0x1

    return p0

    :cond_dc
    return v2
.end method

.method public loadParametersFromResources(Landroid/content/res/Resources;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 377
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_19

    const v0, 0x10e00ce

    .line 378
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mMinNumVisibleTasks:I

    const v0, 0x10e00c5

    .line 380
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/RecentTasks;->mMaxNumVisibleTasks:I

    goto :goto_48

    :cond_19
    const/4 v0, 0x0

    const-string/jumbo v1, "ro.recents.grid"

    .line 382
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_36

    const v0, 0x10e00cd

    .line 383
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mMinNumVisibleTasks:I

    const v0, 0x10e00c4

    .line 385
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/RecentTasks;->mMaxNumVisibleTasks:I

    goto :goto_48

    :cond_36
    const v0, 0x10e00cc

    .line 388
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mMinNumVisibleTasks:I

    const v0, 0x10e00c3

    .line 390
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/RecentTasks;->mMaxNumVisibleTasks:I

    :goto_48
    const-wide/16 v0, -0x1

    .line 405
    iput-wide v0, p0, Lcom/android/server/wm/RecentTasks;->mActiveTasksSessionDurationMs:J

    return-void
.end method

.method public final loadPersistedTaskIdsForUserLocked(I)V
    .registers 3

    .line 637
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_29

    .line 638
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskPersister;->loadPersistedTaskIdsForUser(I)Landroid/util/SparseBooleanArray;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 639
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Loaded persisted task ids for user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    return-void
.end method

.method public loadRecentsComponent(Landroid/content/res/Resources;)V
    .registers 8

    .line 427
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_26

    .line 429
    :try_start_6
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-string v2, "com.samsung.android.app.appsedge"

    const-wide/16 v3, 0x0

    iget-object v5, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 431
    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    .line 430
    invoke-interface {v0, v2, v3, v4, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 433
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mEdgeUid:I
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_20} :catch_21

    goto :goto_26

    :catch_21
    const-string v0, "Could not load application info for recents edge"

    .line 436
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    :goto_26
    const v0, 0x1040389

    .line 440
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 442
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34

    return-void

    .line 446
    :cond_34
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_6d

    .line 449
    :try_start_3a
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 450
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x2200

    iget-object v5, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 453
    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    .line 449
    invoke-interface {v0, v2, v3, v4, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_6d

    .line 455
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    .line 456
    iput-object p1, p0, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_58} :catch_59

    goto :goto_6d

    .line 459
    :catch_59
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not load application info for recents component: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6d
    :goto_6d
    return-void
.end method

.method public loadUserRecentsLocked(I)V
    .registers 7

    .line 590
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 596
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->loadPersistedTaskIdsForUserLocked(I)V

    .line 599
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 600
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 601
    iget v4, v2, Lcom/android/server/wm/Task;->mUserId:I

    if-ne v4, p1, :cond_17

    invoke-static {v2}, Lcom/android/server/wm/RecentTasks;->shouldPersistTaskLocked(Lcom/android/server/wm/Task;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 602
    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_17

    .line 606
    :cond_34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading recents for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " into memory."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/wm/TaskPersister;->restoreTasksForUserLocked(ILandroid/util/SparseBooleanArray;)Ljava/util/List;

    move-result-object v1

    .line 608
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 609
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->cleanupLocked(I)V

    .line 610
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 613
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-lez v0, :cond_6b

    .line 614
    invoke-virtual {p0}, Lcom/android/server/wm/RecentTasks;->syncPersistentTaskIdsLocked()V

    .line 618
    :cond_6b
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DEDICATED_MEMORY:Z

    if-eqz v0, :cond_8c

    .line 619
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskPersister;->restoreDedicatedProcessForUserLocked(I)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_8c

    .line 621
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mUserToProcs:Lcom/android/server/wm/RecentTasks$UserToProcMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 624
    iget-object p1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/RecentTasks;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 628
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyDedicated(I)V

    :cond_8c
    return-void
.end method

.method public final moveAffiliatedTasksToFront(Lcom/android/server/wm/Task;I)Z
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1936
    iget-object v3, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object v4, v1

    move v5, v2

    .line 1939
    :goto_e
    iget-object v6, v4, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-eqz v6, :cond_18

    if-lez v5, :cond_18

    add-int/lit8 v5, v5, -0x1

    move-object v4, v6

    goto :goto_e

    .line 1943
    :cond_18
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    const-string v7, "ActivityTaskManager"

    if-eqz v6, :cond_3a

    .line 1944
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addRecent: adding affiliates starting at "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " from initial "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    :cond_3a
    iget v6, v4, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    iget v8, v1, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    if-ne v6, v8, :cond_42

    const/4 v6, 0x1

    goto :goto_43

    :cond_42
    const/4 v6, 0x0

    :goto_43
    move-object v11, v4

    move v8, v5

    :goto_45
    const-string v12, " @"

    const-string v13, "Bad chain @"

    if-ge v8, v3, :cond_1b1

    .line 1952
    iget-object v14, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/Task;

    .line 1953
    sget-boolean v15, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v15, :cond_73

    .line 1954
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addRecent: looking at next chain @"

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_73
    const/4 v10, -0x1

    if-ne v14, v4, :cond_9a

    .line 1959
    iget-object v15, v14, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-nez v15, :cond_7e

    iget v15, v14, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    if-eq v15, v10, :cond_a6

    .line 1960
    :cond_7e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": first task has next affiliate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b0

    .line 1967
    :cond_9a
    iget-object v15, v14, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-ne v15, v11, :cond_174

    iget v15, v14, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    iget v9, v11, Lcom/android/server/wm/Task;->mTaskId:I

    if-eq v15, v9, :cond_a6

    goto/16 :goto_174

    .line 1978
    :cond_a6
    iget v9, v14, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    const-string v11, ": last task "

    const-string v15, " has previous affiliate "

    if-ne v9, v10, :cond_ed

    .line 1980
    iget-object v3, v14, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    if-eqz v3, :cond_d3

    .line 1981
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    .line 1986
    :cond_d3
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v3, :cond_1b1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addRecent: end of chain @"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b1

    .line 1990
    :cond_ed
    iget-object v9, v14, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    const-string v10, ": task "

    if-nez v9, :cond_11f

    .line 1991
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " but should be id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b0

    .line 1999
    :cond_11f
    iget v9, v14, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    iget v15, v1, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    if-eq v9, v15, :cond_152

    .line 2000
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " has affiliated id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v14, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " but should be "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b0

    :cond_152
    add-int/lit8 v8, v8, 0x1

    if-lt v8, v3, :cond_171

    .line 2010
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad chain ran off index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b0

    :cond_171
    move-object v11, v14

    goto/16 :goto_45

    .line 1969
    :cond_174
    :goto_174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": middle task "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has bad next affiliate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v14, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1b0
    const/4 v6, 0x0

    :cond_1b1
    :goto_1b1
    if-eqz v6, :cond_1d6

    if-ge v8, v2, :cond_1d6

    .line 2018
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": did not extend to task "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :cond_1d6
    if-eqz v6, :cond_237

    move v2, v5

    :goto_1d9
    const-string v3, " to "

    if-gt v2, v8, :cond_217

    .line 2027
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v4, :cond_205

    .line 2028
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addRecent: moving affiliated "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " from "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v3, v2, v5

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    :cond_205
    iget-object v3, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    .line 2032
    iget-object v4, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    sub-int v6, v2, v5

    invoke-virtual {v4, v6, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d9

    .line 2034
    :cond_217
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v0, :cond_235

    .line 2035
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addRecent: done moving tasks  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_235
    const/4 v0, 0x1

    return v0

    :cond_237
    const/4 v0, 0x0

    return v0
.end method

.method public final notifyTaskAdded(Lcom/android/server/wm/Task;)V
    .registers 4

    const/4 v0, 0x0

    .line 564
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 565
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/RecentTasks$Callbacks;

    invoke-interface {v1, p1}, Lcom/android/server/wm/RecentTasks$Callbacks;->onRecentTaskAdded(Lcom/android/server/wm/Task;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 567
    :cond_17
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mTaskNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskListUpdated()V

    return-void
.end method

.method public notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V
    .registers 4

    if-eqz p1, :cond_7

    .line 663
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_11

    .line 664
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    .line 668
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/wm/RecentTasks;->syncPersistentTaskIdsLocked()V

    .line 669
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskPersister;->wakeup(Lcom/android/server/wm/Task;Z)V

    return-void
.end method

.method public final notifyTaskRemoved(Lcom/android/server/wm/Task;ZZ)V
    .registers 6

    .line 572
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DEDICATED_MEMORY:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mDedicatedTask:Z

    if-eqz v0, :cond_f

    .line 573
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyDedicated(I)V

    :cond_f
    const/4 v0, 0x0

    .line 577
    :goto_10
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 578
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/RecentTasks$Callbacks;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/wm/RecentTasks$Callbacks;->onRecentTaskRemoved(Lcom/android/server/wm/Task;ZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 580
    :cond_26
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mTaskNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskListUpdated()V

    return-void
.end method

.method public okToRemove(Lcom/android/server/wm/Task;)Z
    .registers 3

    .line 2458
    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mDedicatedTask:Z

    if-eqz v0, :cond_1d

    iget-object v0, p1, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1d

    .line 2459
    :cond_d
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/Task;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0

    :cond_1d
    :goto_1d
    const/4 p0, 0x1

    return p0
.end method

.method public onActivityIdle(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 1411
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1412
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->removeUnreachableHiddenTasks(I)V

    .line 1414
    :cond_15
    iget-boolean p1, p0, Lcom/android/server/wm/RecentTasks;->mCheckTrimmableTasksOnIdle:Z

    if-eqz p1, :cond_1f

    const/4 p1, 0x0

    .line 1415
    iput-boolean p1, p0, Lcom/android/server/wm/RecentTasks;->mCheckTrimmableTasksOnIdle:Z

    .line 1416
    invoke-virtual {p0}, Lcom/android/server/wm/RecentTasks;->trimInactiveRecentTasks()V

    :cond_1f
    return-void
.end method

.method public onLockTaskModeStateChanged(II)V
    .registers 5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    return-void

    .line 796
    :cond_4
    iget-object p1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v0

    :goto_b
    if-ltz p1, :cond_2c

    .line 797
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 798
    iget v1, v0, Lcom/android/server/wm/Task;->mUserId:I

    if-ne v1, p2, :cond_29

    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    iget v1, v0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    invoke-static {v1}, Lcom/android/server/wm/LockTaskController;->isTaskAuthAllowlisted(I)Z

    move-result v1

    if-nez v1, :cond_29

    .line 800
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/Task;)V

    :cond_29
    add-int/lit8 p1, p1, -0x1

    goto :goto_b

    :cond_2c
    return-void
.end method

.method public onPackagesSuspendedChanged([Ljava/lang/String;ZI)V
    .registers 10

    .line 776
    invoke-static {p1}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object p1

    .line 777
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_c
    if-ltz v0, :cond_3f

    .line 778
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 779
    iget-object v3, v2, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_3c

    .line 780
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    iget v3, v2, Lcom/android/server/wm/Task;->mUserId:I

    if-ne v3, p3, :cond_3c

    iget-boolean v3, v2, Lcom/android/server/wm/Task;->realActivitySuspended:Z

    if-eq v3, p2, :cond_3c

    .line 783
    iput-boolean p2, v2, Lcom/android/server/wm/Task;->realActivitySuspended:Z

    const/4 v3, 0x0

    if-eqz p2, :cond_39

    .line 785
    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const-string/jumbo v5, "suspended-package"

    invoke-virtual {v4, v2, v3, v1, v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V

    .line 787
    :cond_39
    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    :cond_3c
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_3f
    return-void
.end method

.method public onSystemReadyLocked()V
    .registers 2

    .line 702
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RecentTasks;->loadRecentsComponent(Landroid/content/res/Resources;)V

    .line 703
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final processNextAffiliateChainLocked(I)I
    .registers 12

    .line 1864
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 1865
    iget v1, v0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    .line 1868
    iget v2, v0, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v3, 0x1

    if-ne v2, v1, :cond_1b

    iget-object v2, v0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    if-nez v2, :cond_1b

    iget-object v2, v0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-nez v2, :cond_1b

    .line 1873
    iput-boolean v3, v0, Lcom/android/server/wm/Task;->inRecents:Z

    add-int/2addr p1, v3

    return p1

    .line 1878
    :cond_1b
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1879
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    :goto_27
    if-lt v0, p1, :cond_42

    .line 1880
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1881
    iget v4, v2, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    if-ne v4, v1, :cond_3f

    .line 1882
    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1883
    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3f
    add-int/lit8 v0, v0, -0x1

    goto :goto_27

    .line 1889
    :cond_42
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/wm/RecentTasks;->TASK_ID_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1893
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 1894
    iput-boolean v3, v0, Lcom/android/server/wm/Task;->inRecents:Z

    .line 1895
    iget-object v2, v0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    const/4 v4, 0x0

    const-string v5, "ActivityTaskManager"

    if-eqz v2, :cond_77

    .line 1896
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Link error 1 first.next="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    invoke-virtual {v0, v4}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    .line 1898
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    .line 1901
    :cond_77
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_7e
    add-int/lit8 v6, v0, -0x1

    if-ge v2, v6, :cond_f7

    .line 1903
    iget-object v6, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Task;

    .line 1904
    iget-object v7, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/Task;

    .line 1905
    iget-object v8, v6, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    if-eq v8, v7, :cond_c4

    .line 1906
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Link error 2 next="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " prev="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " setting prev="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    invoke-virtual {v6, v7}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    .line 1909
    invoke-virtual {p0, v6, v1}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    .line 1911
    :cond_c4
    iget-object v8, v7, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-eq v8, v6, :cond_f4

    .line 1912
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Link error 3 prev="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " next="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " setting next="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    invoke-virtual {v7, v6}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    .line 1915
    invoke-virtual {p0, v7, v1}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    .line 1917
    :cond_f4
    iput-boolean v3, v7, Lcom/android/server/wm/Task;->inRecents:Z

    goto :goto_7e

    .line 1920
    :cond_f7
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1921
    iget-object v3, v2, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    if-eqz v3, :cond_11f

    .line 1922
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Link error 4 last.prev="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    invoke-virtual {v2, v4}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    .line 1924
    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    .line 1928
    :cond_11f
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 1929
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    add-int/2addr p1, v0

    return p1
.end method

.method public registerCallback(Lcom/android/server/wm/RecentTasks$Callbacks;)V
    .registers 2

    .line 556
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public remove(Lcom/android/server/wm/Task;)V
    .registers 3

    .line 1400
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 1401
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/wm/RecentTasks;->notifyTaskRemoved(Lcom/android/server/wm/Task;ZZ)V

    return-void
.end method

.method public removeAllVisibleTasks(I)V
    .registers 14

    .line 818
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->getProfileIds(I)Ljava/util/Set;

    move-result-object p1

    .line 819
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_c
    if-ltz v0, :cond_79

    .line 820
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 821
    iget v3, v2, Lcom/android/server/wm/Task;->mUserId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    goto :goto_76

    .line 824
    :cond_23
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2d

    .line 827
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_49

    .line 828
    :cond_2d
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_49

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_49

    .line 829
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    :cond_49
    :goto_49
    move-object v6, v4

    if-eqz v6, :cond_68

    .line 831
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_68

    .line 832
    const-class v3, Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    .line 833
    iget v7, v2, Lcom/android/server/wm/Task;->mUserId:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual/range {v5 .. v11}, Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;->isApplicationStopDisabledAsUser(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_68

    goto :goto_76

    .line 840
    :cond_68
    invoke-virtual {p0, v2}, Lcom/android/server/wm/RecentTasks;->isVisibleRecentTask(Lcom/android/server/wm/Task;)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 841
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 842
    invoke-virtual {p0, v2, v1, v1}, Lcom/android/server/wm/RecentTasks;->notifyTaskRemoved(Lcom/android/server/wm/Task;ZZ)V

    :cond_76
    :goto_76
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_79
    return-void
.end method

.method public removeDedicatedProcessFromPackage(Ljava/lang/String;I)V
    .registers 10

    .line 2375
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mUserToProcs:Lcom/android/server/wm/RecentTasks$UserToProcMap;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/RecentTasks$UserToProcMap;->get(I)Ljava/util/HashMap;

    move-result-object v0

    .line 2376
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return-void

    .line 2380
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove dedicated process of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2382
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2383
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :cond_33
    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2384
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    const/4 v4, 0x1

    .line 2386
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_33

    :cond_50
    if-eqz v4, :cond_6b

    .line 2391
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_56
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2392
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_56

    .line 2395
    :cond_66
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    invoke-virtual {p0, v0, v3, p2}, Lcom/android/server/wm/TaskPersister;->saveDedicatedProcessName(Ljava/util/HashMap;ZI)V

    :cond_6b
    return-void
.end method

.method public final removeForAddTask(Lcom/android/server/wm/Task;)I
    .registers 8

    .line 1749
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1751
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->findRemoveIndexForAddTask(Lcom/android/server/wm/Task;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    return v0

    .line 1760
    :cond_d
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    const/4 v2, 0x0

    if-eq v1, p1, :cond_7b

    .line 1762
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result v3

    const-string v4, "ActivityTaskManager"

    if-eqz v3, :cond_41

    .line 1763
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Add "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to hidden list because adding "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1770
    :cond_41
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_DEDICATED_MEMORY:Z

    if-eqz v3, :cond_58

    .line 1771
    iget-boolean v3, v1, Lcom/android/server/wm/Task;->mDedicatedTask:Z

    iput-boolean v3, p1, Lcom/android/server/wm/Task;->mDedicatedTask:Z

    .line 1772
    iget-object v3, v1, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    iput-object v3, p1, Lcom/android/server/wm/Task;->mOldHostProcessName:Ljava/lang/String;

    .line 1773
    iget-boolean v3, v1, Lcom/android/server/wm/Task;->mDedicatedTask:Z

    if-eqz v3, :cond_58

    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v5, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyDedicated(I)V

    .line 1776
    :cond_58
    invoke-virtual {p0, v1, v2, v2}, Lcom/android/server/wm/RecentTasks;->notifyTaskRemoved(Lcom/android/server/wm/Task;ZZ)V

    .line 1777
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v3, :cond_7b

    .line 1778
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trimming task="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " for addition of task="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    :cond_7b
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    return v0
.end method

.method public removeTasksByPackageName(Ljava/lang/String;I)V
    .registers 8

    .line 806
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_35

    .line 807
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 809
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 810
    iget v4, v2, Lcom/android/server/wm/Task;->mUserId:I

    if-eq v4, p2, :cond_23

    goto :goto_32

    .line 811
    :cond_23
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    goto :goto_32

    .line 813
    :cond_2a
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const-string/jumbo v4, "remove-package-task"

    invoke-virtual {v3, v2, v1, v1, v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V

    :goto_32
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_35
    return-void
.end method

.method public final removeTasksForUserLocked(I)V
    .registers 14

    if-gtz p1, :cond_19

    .line 761
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t remove recent task on user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 765
    :cond_19
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_21
    if-ltz v0, :cond_54

    .line 766
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 767
    iget v3, v2, Lcom/android/server/wm/Task;->mUserId:I

    if-ne v3, p1, :cond_51

    .line 768
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v3, :cond_4e

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    int-to-long v4, p1

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, -0x62304b66

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v10, v1

    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 770
    :cond_4e
    invoke-virtual {p0, v2}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/Task;)V

    :cond_51
    add-int/lit8 v0, v0, -0x1

    goto :goto_21

    :cond_54
    return-void
.end method

.method public final removeUnreachableHiddenTasks(I)V
    .registers 7

    .line 1723
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_41

    .line 1724
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 1725
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result v2

    if-eqz v2, :cond_39

    iget-boolean v2, v1, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v2, :cond_1d

    goto :goto_39

    .line 1730
    :cond_1d
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v2

    if-ne v2, p1, :cond_3e

    .line 1731
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_2a

    goto :goto_3e

    .line 1737
    :cond_2a
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1738
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v3, 0x0

    const-string/jumbo v4, "remove-hidden-task"

    invoke-virtual {v2, v1, v3, v3, v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V

    goto :goto_3e

    .line 1727
    :cond_39
    :goto_39
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3e
    :goto_3e
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_41
    return-void
.end method

.method public resetFreezeTaskListReordering(Lcom/android/server/wm/Task;)V
    .registers 5

    .line 332
    iget-boolean v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 337
    iput-boolean v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    .line 338
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mResetFreezeTaskListOnTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_1d

    .line 342
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 343
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 347
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/wm/RecentTasks;->trimInactiveRecentTasks()V

    .line 349
    iget-object p1, p0, Lcom/android/server/wm/RecentTasks;->mTaskNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 350
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mTaskNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskListFrozen(Z)V

    return-void
.end method

.method public resetFreezeTaskListReorderingOnTimeout()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 361
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 362
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    .line 363
    :goto_16
    invoke-virtual {p0, v1}, Lcom/android/server/wm/RecentTasks;->resetFreezeTaskListReordering(Lcom/android/server/wm/Task;)V

    .line 364
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1e
    move-exception p0

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 3

    .line 711
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskPersister;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method public setFreezeTaskListReordering()V
    .registers 5

    .line 316
    iget-boolean v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    if-nez v0, :cond_c

    .line 317
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTaskNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskListFrozen(Z)V

    .line 318
    iput-boolean v1, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    .line 323
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mResetFreezeTaskListOnTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 324
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mResetFreezeTaskListOnTimeoutRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListTimeoutMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setFreezeTaskListTimeout(J)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 303
    iput-wide p1, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListTimeoutMs:J

    return-void
.end method

.method public setGlobalMaxNumTasks(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 298
    iput p1, p0, Lcom/android/server/wm/RecentTasks;->mGlobalMaxNumTasks:I

    return-void
.end method

.method public setParameters(IIJ)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 291
    iput p1, p0, Lcom/android/server/wm/RecentTasks;->mMinNumVisibleTasks:I

    .line 292
    iput p2, p0, Lcom/android/server/wm/RecentTasks;->mMaxNumVisibleTasks:I

    .line 293
    iput-wide p3, p0, Lcom/android/server/wm/RecentTasks;->mActiveTasksSessionDurationMs:J

    return-void
.end method

.method public final syncPersistentTaskIdsLocked()V
    .registers 7

    .line 673
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_26

    .line 674
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 675
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 678
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 681
    :cond_26
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_2d
    if-ltz v0, :cond_8f

    .line 682
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 683
    invoke-static {v2}, Lcom/android/server/wm/RecentTasks;->shouldPersistTaskLocked(Lcom/android/server/wm/Task;)Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 686
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    iget v4, v2, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_7d

    .line 687
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No task ids found for userId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ". task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " mPersistedTaskIds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    iget v4, v2, Lcom/android/server/wm/Task;->mUserId:I

    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 691
    :cond_7d
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    iget v4, v2, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseBooleanArray;

    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_8c
    add-int/lit8 v0, v0, -0x1

    goto :goto_2d

    :cond_8f
    return-void
.end method

.method public final trimInactiveRecentTasks()V
    .registers 14

    .line 1424
    iget-boolean v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    if-eqz v0, :cond_5

    return-void

    .line 1429
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1432
    :cond_b
    :goto_b
    iget v1, p0, Lcom/android/server/wm/RecentTasks;->mGlobalMaxNumTasks:I

    const-string v2, "ActivityTaskManager"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v0, v1, :cond_58

    .line 1434
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 1435
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->FW_DEDICATED_MEMORY:Z

    if-eqz v6, :cond_28

    iget-boolean v1, v1, Lcom/android/server/wm/Task;->mDedicatedTask:Z

    if-eqz v1, :cond_28

    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 1439
    :cond_28
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 1440
    invoke-virtual {p0, v1, v4, v3}, Lcom/android/server/wm/RecentTasks;->notifyTaskRemoved(Lcom/android/server/wm/Task;ZZ)V

    add-int/lit8 v0, v0, -0x1

    .line 1442
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v3, :cond_b

    .line 1443
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trimming over max-recents task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " max="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/RecentTasks;->mGlobalMaxNumTasks:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1450
    :cond_58
    invoke-virtual {p0}, Lcom/android/server/wm/RecentTasks;->getCurrentProfileIds()[I

    move-result-object v0

    .line 1451
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1452
    array-length v1, v0

    move v5, v3

    :goto_63
    if-ge v5, v1, :cond_a7

    aget v6, v0, v5

    .line 1453
    invoke-virtual {p0, v6}, Lcom/android/server/wm/RecentTasks;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    if-eqz v7, :cond_7e

    .line 1454
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v8

    if-eqz v8, :cond_7e

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v8

    if-eqz v8, :cond_7e

    .line 1455
    iget-object v8, p0, Lcom/android/server/wm/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v6, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1457
    :cond_7e
    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v8, :cond_a4

    .line 1458
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "User: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " quiet="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/wm/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    .line 1459
    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1458
    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a4
    add-int/lit8 v5, v5, 0x1

    goto :goto_63

    .line 1464
    :cond_a7
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 1465
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RecentTasks;->getTopTaskIndex(Ljava/util/ArrayList;)I

    move-result v0

    move v1, v3

    move v5, v1

    .line 1469
    :goto_af
    iget-object v6, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_12d

    .line 1470
    iget-object v6, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Lcom/android/server/wm/Task;

    .line 1472
    iget-object v6, p0, Lcom/android/server/wm/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, v11, v6}, Lcom/android/server/wm/RecentTasks;->isActiveRecentTask(Lcom/android/server/wm/Task;Landroid/util/SparseBooleanArray;)Z

    move-result v6

    if-eqz v6, :cond_109

    .line 1473
    iget-boolean v6, p0, Lcom/android/server/wm/RecentTasks;->mHasVisibleRecentTasks:Z

    if-nez v6, :cond_cf

    :goto_cc
    add-int/lit8 v1, v1, 0x1

    goto :goto_af

    .line 1479
    :cond_cf
    invoke-virtual {p0, v11}, Lcom/android/server/wm/RecentTasks;->isVisibleRecentTask(Lcom/android/server/wm/Task;)Z

    move-result v6

    if-nez v6, :cond_d6

    goto :goto_cc

    :cond_d6
    add-int/lit8 v12, v5, 0x1

    const/4 v9, 0x0

    move-object v5, p0

    move-object v6, v11

    move v7, v1

    move v8, v12

    move v10, v0

    .line 1485
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/RecentTasks;->isInVisibleRange(Lcom/android/server/wm/Task;IIZI)Z

    move-result v5

    if-nez v5, :cond_105

    .line 1489
    invoke-virtual {p0, v11}, Lcom/android/server/wm/RecentTasks;->isTrimmable(Lcom/android/server/wm/Task;)Z

    move-result v5

    if-nez v5, :cond_eb

    goto :goto_105

    .line 1496
    :cond_eb
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v5, :cond_103

    .line 1497
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trimming out-of-range visible task="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_103
    move v5, v12

    goto :goto_121

    :cond_105
    :goto_105
    add-int/lit8 v1, v1, 0x1

    move v5, v12

    goto :goto_af

    .line 1504
    :cond_109
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v6, :cond_121

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Trimming inactive task="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    :cond_121
    :goto_121
    iget-object v6, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1509
    invoke-virtual {p0, v11, v4, v3}, Lcom/android/server/wm/RecentTasks;->notifyTaskRemoved(Lcom/android/server/wm/Task;ZZ)V

    .line 1510
    invoke-virtual {p0, v11, v3}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    goto :goto_af

    :cond_12d
    return-void
.end method

.method public unloadUserDataFromMemoryLocked(I)V
    .registers 4

    .line 749
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unloading recents for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " from memory."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 752
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->removeTasksForUserLocked(I)V

    .line 754
    :cond_2b
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 755
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskPersister;->unloadUserDataFromMemory(I)V

    return-void
.end method

.method public unregisterCallback(Lcom/android/server/wm/RecentTasks$Callbacks;)V
    .registers 2

    .line 560
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public usersWithRecentsLoadedLocked()[I
    .registers 7

    .line 727
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v2, v0, :cond_22

    .line 730
    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    .line 731
    iget-object v5, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    if-eqz v5, :cond_1f

    add-int/lit8 v5, v3, 0x1

    .line 732
    aput v4, v1, v3

    move v3, v5

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_22
    if-ge v3, v0, :cond_29

    .line 737
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    return-object p0

    :cond_29
    return-object v1
.end method
