.class public Lcom/android/server/wm/TaskOrganizerController;
.super Landroid/window/ITaskOrganizerController$Stub;
.source "TaskOrganizerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskOrganizerController$StartingWindowAnimationAdaptor;,
        Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;,
        Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;,
        Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;,
        Lcom/android/server/wm/TaskOrganizerController$DeathRecipient;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "TaskOrganizerController"


# instance fields
.field public mDeferTaskOrgCallbacksConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public final mInterceptBackPressedOnRootTasks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mLastSentTaskInfos:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/android/server/wm/Task;",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mPendingTaskEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;",
            ">;"
        }
    .end annotation
.end field

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mTaskOrganizerStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;",
            ">;"
        }
    .end annotation
.end field

.field public final mTaskOrganizers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/window/ITaskOrganizer;",
            ">;"
        }
    .end annotation
.end field

.field public mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method public static synthetic $r8$lambda$ECwwl6ZUBEFwsTVPWVzQQfTaaP0([ILjava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/TaskOrganizerController;->lambda$getRootTasks$3([ILjava/util/ArrayList;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$alkZFEM6ImaOlZbJqdTz_RCRCfk(Lcom/android/server/wm/TaskOrganizerController;Landroid/window/ITaskOrganizer;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/TaskOrganizerController;->lambda$unregisterTaskOrganizer$2(Landroid/window/ITaskOrganizer;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$bmPTMqc2zBIQyfN1nhvXIS-s0jw(Lcom/android/server/wm/TaskOrganizerController;Landroid/window/ITaskOrganizer;ILjava/util/ArrayList;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/TaskOrganizerController;->lambda$registerTaskOrganizer$1(Landroid/window/ITaskOrganizer;ILjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kQTHXUXjzvt9VjDR_WxKXnE7uig(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/TaskOrganizerController;->lambda$registerTaskOrganizer$0(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmDeferTaskOrgCallbacksConsumer(Lcom/android/server/wm/TaskOrganizerController;)Ljava/util/function/Consumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mDeferTaskOrgCallbacksConsumer:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGlobalLock(Lcom/android/server/wm/TaskOrganizerController;)Lcom/android/server/wm/WindowManagerGlobalLock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInterceptBackPressedOnRootTasks(Lcom/android/server/wm/TaskOrganizerController;)Ljava/util/HashSet;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mInterceptBackPressedOnRootTasks:Ljava/util/HashSet;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/wm/TaskOrganizerController;)Lcom/android/server/wm/ActivityTaskManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTaskOrganizerStates(Lcom/android/server/wm/TaskOrganizerController;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTaskOrganizers(Lcom/android/server/wm/TaskOrganizerController;)Ljava/util/LinkedList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizers:Ljava/util/LinkedList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$monTaskVanishedInternal(Lcom/android/server/wm/TaskOrganizerController;Landroid/window/ITaskOrganizer;Lcom/android/server/wm/Task;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskOrganizerController;->onTaskVanishedInternal(Landroid/window/ITaskOrganizer;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3

    .line 343
    invoke-direct {p0}, Landroid/window/ITaskOrganizerController$Stub;-><init>()V

    .line 332
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizers:Ljava/util/LinkedList;

    .line 333
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    .line 334
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mLastSentTaskInfos:Ljava/util/WeakHashMap;

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    .line 338
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mInterceptBackPressedOnRootTasks:Ljava/util/HashSet;

    .line 344
    iput-object p1, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 345
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object p1, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-void
.end method

.method public static applyStartingWindowAnimation(Lcom/android/server/wm/WindowState;)Landroid/view/SurfaceControl;
    .registers 6

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyStartingWindowAnimation, window="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    .line 498
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskOrganizerController"

    .line 497
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 503
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getRelativeFrame()Landroid/graphics/Rect;

    move-result-object v1

    .line 504
    new-instance v2, Lcom/android/server/wm/TaskOrganizerController$StartingWindowAnimationAdaptor;

    invoke-direct {v2}, Lcom/android/server/wm/TaskOrganizerController$StartingWindowAnimationAdaptor;-><init>()V

    const/4 v3, 0x0

    const/16 v4, 0x80

    .line 505
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/android/server/wm/WindowContainer;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V

    .line 506
    iget-object p0, v2, Lcom/android/server/wm/TaskOrganizerController$StartingWindowAnimationAdaptor;->mAnimationLeash:Landroid/view/SurfaceControl;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v0, p0, v3, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 507
    iget-object p0, v2, Lcom/android/server/wm/TaskOrganizerController$StartingWindowAnimationAdaptor;->mAnimationLeash:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public static synthetic lambda$getRootTasks$3([ILjava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .registers 4

    if-eqz p0, :cond_d

    .line 1057
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p0

    if-nez p0, :cond_d

    return-void

    .line 1060
    :cond_d
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic lambda$registerTaskOrganizer$0(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .registers 4

    .line 393
    iget-boolean v0, p2, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    xor-int/lit8 v0, v0, 0x1

    .line 394
    invoke-virtual {p2, v0}, Lcom/android/server/wm/Task;->updateTaskOrganizerState(Z)Z

    if-eqz v0, :cond_1b

    const-string v0, "TaskOrganizerController.registerTaskOrganizer"

    .line 396
    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->addTaskWithoutCallback(Lcom/android/server/wm/Task;Ljava/lang/String;)Landroid/view/SurfaceControl;

    move-result-object p0

    .line 398
    new-instance v0, Landroid/window/TaskAppearedInfo;

    .line 399
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p2

    invoke-direct {v0, p2, p0}, Landroid/window/TaskAppearedInfo;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    .line 398
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    return-void
.end method

.method private synthetic lambda$registerTaskOrganizer$1(Landroid/window/ITaskOrganizer;ILjava/util/ArrayList;)V
    .registers 13

    .line 383
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v0, :cond_24

    invoke-interface {p1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    int-to-long v1, p2

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x6ad96a00

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, v0

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 385
    :cond_24
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 386
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizers:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 387
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;-><init>(Lcom/android/server/wm/TaskOrganizerController;Landroid/window/ITaskOrganizer;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    :cond_43
    iget-object p2, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 392
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance p2, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1, p3}, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;Ljava/util/ArrayList;)V

    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$unregisterTaskOrganizer$2(Landroid/window/ITaskOrganizer;I)V
    .registers 10

    .line 423
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    if-nez p0, :cond_f

    return-void

    .line 427
    :cond_f
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v0, :cond_33

    invoke-interface {p1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    int-to-long v0, p2

    sget-object p2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, -0x38bd7039

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 p1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, p1

    invoke-static {p2, v2, v3, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 429
    :cond_33
    invoke-virtual {p0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->unlinkDeath()V

    .line 430
    invoke-virtual {p0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->dispose()V

    return-void
.end method


# virtual methods
.method public addStartingWindow(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;ILandroid/window/TaskSnapshot;)Z
    .registers 7

    .line 512
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    .line 513
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-nez v0, :cond_c

    goto :goto_30

    .line 516
    :cond_c
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizers:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/window/ITaskOrganizer;

    if-nez p0, :cond_17

    return v1

    .line 520
    :cond_17
    invoke-virtual {p1, p2}, Lcom/android/server/wm/Task;->getStartingWindowInfo(Lcom/android/server/wm/ActivityRecord;)Landroid/window/StartingWindowInfo;

    move-result-object p1

    if-eqz p3, :cond_1f

    .line 522
    iput p3, p1, Landroid/window/StartingWindowInfo;->splashScreenThemeResId:I

    .line 524
    :cond_1f
    iput-object p4, p1, Landroid/window/StartingWindowInfo;->taskSnapshot:Landroid/window/TaskSnapshot;

    .line 527
    :try_start_21
    iget-object p2, p2, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-interface {p0, p1, p2}, Landroid/window/ITaskOrganizer;->addStartingWindow(Landroid/window/StartingWindowInfo;Landroid/os/IBinder;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_26} :catch_28

    const/4 p0, 0x1

    return p0

    :catch_28
    move-exception p0

    const-string p1, "TaskOrganizerController"

    const-string p2, "Exception sending onTaskStart callback"

    .line 529
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_30
    :goto_30
    return v1
.end method

.method public changeSplitScreenCreateMode(I)V
    .registers 3

    .line 1304
    new-instance v0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;-><init>()V

    .line 1305
    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->setSplitScreenCreateModeForLaunchAdjacent(I)V

    .line 1306
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskOrganizerController;->onSplitLayoutChangeRequested(Landroid/os/Bundle;)V

    return-void
.end method

.method public changeToHorizontalSplitLayout()V
    .registers 2

    .line 1296
    new-instance v0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;-><init>()V

    .line 1297
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->changeToHorizontalSplitLayout()V

    .line 1298
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskOrganizerController;->onSplitLayoutChangeRequested(Landroid/os/Bundle;)V

    return-void
.end method

.method public copySplashScreenView(Lcom/android/server/wm/Task;)Z
    .registers 4

    .line 595
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 599
    :cond_8
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizers:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/window/ITaskOrganizer;

    if-nez p0, :cond_13

    return v1

    .line 604
    :cond_13
    :try_start_13
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {p0, p1}, Landroid/window/ITaskOrganizer;->copySplashScreenView(I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_18} :catch_1a

    const/4 p0, 0x1

    return p0

    :catch_1a
    move-exception p0

    const-string p1, "TaskOrganizerController"

    const-string v0, "Exception sending copyStartingWindowView callback"

    .line 606
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public createRootTask(Lcom/android/server/wm/DisplayContent;ILandroid/os/IBinder;)Lcom/android/server/wm/Task;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 741
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/TaskOrganizerController;->createRootTask(Lcom/android/server/wm/DisplayContent;ILandroid/os/IBinder;I)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public createRootTask(Lcom/android/server/wm/DisplayContent;ILandroid/os/IBinder;I)Lcom/android/server/wm/Task;
    .registers 16
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 748
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_23

    iget v0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v3, v0

    int-to-long v5, p2

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, -0x739ff1cb

    const/4 v8, 0x5

    const/4 v9, 0x0

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v10, v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v10, v2

    invoke-static {v0, v7, v8, v9, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 753
    :cond_23
    new-instance v0, Lcom/android/server/wm/Task$Builder;

    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, p0}, Lcom/android/server/wm/Task$Builder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 754
    invoke-virtual {v0, p2}, Lcom/android/server/wm/Task$Builder;->setWindowingMode(I)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 755
    invoke-virtual {p0, p2}, Lcom/android/server/wm/Task$Builder;->setIntent(Landroid/content/Intent;)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    .line 756
    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task$Builder;->setCreatedByOrganizer(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    .line 757
    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task$Builder;->setDeferTaskAppear(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    .line 758
    invoke-virtual {p0, p3}, Lcom/android/server/wm/Task$Builder;->setLaunchCookie(Landroid/os/IBinder;)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    .line 759
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task$Builder;->setParent(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    .line 761
    invoke-virtual {p0, p4}, Lcom/android/server/wm/Task$Builder;->setStageType(I)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    .line 763
    invoke-virtual {p0}, Lcom/android/server/wm/Task$Builder;->build()Lcom/android/server/wm/Task;

    move-result-object p0

    .line 764
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setDeferTaskAppear(Z)V

    return-object p0
.end method

.method public createRootTask(IILandroid/os/IBinder;)V
    .registers 11

    const-string v0, "createRootTask()"

    .line 698
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 699
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 701
    :try_start_9
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_4a

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 702
    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-nez v3, :cond_39

    .line 704
    sget-boolean p0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz p0, :cond_31

    int-to-long p0, p1

    sget-object p2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const p3, 0x5342e5fa

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v5, v6

    invoke-static {p2, p3, v4, v3, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 706
    :cond_31
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_c .. :try_end_32} :catchall_44

    .line 712
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 709
    :cond_39
    :try_start_39
    invoke-virtual {p0, v3, p2, p3}, Lcom/android/server/wm/TaskOrganizerController;->createRootTask(Lcom/android/server/wm/DisplayContent;ILandroid/os/IBinder;)Lcom/android/server/wm/Task;

    .line 710
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_44

    :try_start_3d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_4a

    .line 712
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_44
    move-exception p0

    .line 710
    :try_start_45
    monitor-exit v2
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    :try_start_46
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_4a
    .catchall {:try_start_46 .. :try_end_4a} :catchall_4a

    :catchall_4a
    move-exception p0

    .line 712
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 713
    throw p0
.end method

.method public createStageRootTask(IIILandroid/os/IBinder;)V
    .registers 11

    const-string v0, "createStageRootTask()"

    .line 720
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 721
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 723
    :try_start_9
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_4a

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 724
    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-nez v3, :cond_39

    .line 726
    sget-boolean p0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz p0, :cond_31

    int-to-long p0, p1

    sget-object p2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const p3, 0x5dea487e

    const/4 p4, 0x0

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v4, v5

    invoke-static {p2, p3, v3, p4, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 728
    :cond_31
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_c .. :try_end_32} :catchall_44

    .line 733
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 730
    :cond_39
    :try_start_39
    invoke-virtual {p0, v3, p2, p4, p3}, Lcom/android/server/wm/TaskOrganizerController;->createRootTask(Lcom/android/server/wm/DisplayContent;ILandroid/os/IBinder;I)Lcom/android/server/wm/Task;

    .line 731
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_44

    :try_start_3d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_4a

    .line 733
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_44
    move-exception p0

    .line 731
    :try_start_45
    monitor-exit v2
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    :try_start_46
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_4a
    .catchall {:try_start_46 .. :try_end_4a} :catchall_4a

    :catchall_4a
    move-exception p0

    .line 733
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 734
    throw p0
.end method

.method public deleteRootTask(Landroid/window/WindowContainerToken;)Z
    .registers 15

    const-string v0, "deleteRootTask()"

    .line 770
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 771
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 773
    :try_start_9
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_80

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 774
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    const/4 v2, 0x0

    if-nez p1, :cond_22

    .line 775
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_7a

    .line 789
    :goto_1b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .line 776
    :cond_22
    :try_start_22
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-nez p1, :cond_2a

    .line 777
    monitor-exit p0

    goto :goto_1b

    .line 778
    :cond_2a
    iget-boolean v3, p1, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v3, :cond_63

    .line 783
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_56

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v3

    int-to-long v5, v3

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v3

    int-to-long v7, v3

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, -0x70f88d97

    const/4 v10, 0x5

    const/4 v11, 0x0

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v12, v2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v12, v4

    invoke-static {v3, v9, v10, v11, v12}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_56
    const-string v2, "deleteRootTask"

    .line 785
    invoke-virtual {p1, v4, v2}, Lcom/android/server/wm/TaskFragment;->remove(ZLjava/lang/String;)V

    .line 786
    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_22 .. :try_end_5c} :catchall_7a

    .line 789
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    .line 779
    :cond_63
    :try_start_63
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to delete task not created by organizer task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_7a
    move-exception p1

    .line 787
    monitor-exit p0
    :try_end_7c
    .catchall {:try_start_63 .. :try_end_7c} :catchall_7a

    :try_start_7c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_80
    .catchall {:try_start_7c .. :try_end_80} :catchall_80

    :catchall_80
    move-exception p0

    .line 789
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 790
    throw p0
.end method

.method public dispatchPendingEvents()V
    .registers 9

    .line 794
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->isLayoutDeferred()Z

    move-result v0

    if-nez v0, :cond_b4

    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    .line 795
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    goto/16 :goto_b4

    :cond_16
    const/4 v0, 0x0

    .line 799
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1d
    if-ge v0, v1, :cond_af

    .line 800
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    .line 801
    iget-object v3, v2, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mTask:Lcom/android/server/wm/Task;

    .line 803
    iget v4, v2, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mEventType:I

    if-eqz v4, :cond_8e

    const/4 v5, 0x1

    if-eq v4, v5, :cond_56

    const/4 v5, 0x2

    if-eq v4, v5, :cond_50

    const/4 v5, 0x3

    if-eq v4, v5, :cond_38

    goto/16 :goto_ab

    .line 840
    :cond_38
    iget-object v4, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    iget-object v2, v2, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mTaskOrg:Landroid/window/ITaskOrganizer;

    invoke-interface {v2}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    if-eqz v2, :cond_ab

    .line 842
    invoke-static {v2}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->-$$Nest$fgetmOrganizer(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->onBackPressedOnTaskRoot(Lcom/android/server/wm/Task;)V

    goto :goto_ab

    .line 837
    :cond_50
    iget-boolean v2, v2, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mForce:Z

    invoke-virtual {p0, v3, v2}, Lcom/android/server/wm/TaskOrganizerController;->dispatchTaskInfoChanged(Lcom/android/server/wm/Task;Z)V

    goto :goto_ab

    .line 819
    :cond_56
    :try_start_56
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    .line 821
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v6

    if-eqz v6, :cond_7a

    .line 822
    iget-object v6, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 823
    invoke-virtual {v6}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    .line 824
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInStageType(I)Lcom/android/server/wm/Task;

    move-result-object v6

    if-eqz v6, :cond_7a

    .line 825
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_7a

    .line 826
    iput-boolean v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->stageHasOtherChild:Z

    .line 830
    :cond_7a
    iget-object v2, v2, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mTaskOrg:Landroid/window/ITaskOrganizer;

    invoke-interface {v2, v4}, Landroid/window/ITaskOrganizer;->onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_7f} :catch_80

    goto :goto_88

    :catch_80
    move-exception v2

    const-string v4, "TaskOrganizerController"

    const-string v5, "Exception sending onTaskVanished callback"

    .line 832
    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 834
    :goto_88
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mLastSentTaskInfos:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ab

    .line 805
    :cond_8e
    iget-object v4, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    iget-object v2, v2, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mTaskOrg:Landroid/window/ITaskOrganizer;

    invoke-interface {v2}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    if-eqz v2, :cond_ab

    .line 806
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->taskAppearedReady()Z

    move-result v4

    if-eqz v4, :cond_ab

    .line 807
    invoke-static {v2}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->-$$Nest$fgetmOrganizer(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->onTaskAppeared(Lcom/android/server/wm/Task;)V

    :cond_ab
    :goto_ab
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1d

    .line 847
    :cond_af
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_b4
    :goto_b4
    return-void
.end method

.method public final dispatchTaskInfoChanged(Lcom/android/server/wm/Task;Z)V
    .registers 7

    .line 897
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mLastSentTaskInfos:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 898
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez v1, :cond_13

    .line 899
    new-instance v1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 901
    :cond_13
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->unset()V

    .line 902
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;)V

    .line 904
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager$RunningTaskInfo;->equalsForTaskOrganizer(Landroid/app/TaskInfo;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 905
    invoke-static {v1, v0}, Lcom/android/server/wm/WindowOrganizerController;->configurationsAreEqualForOrganizer(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result v0

    if-nez v0, :cond_35

    goto :goto_37

    :cond_35
    const/4 v0, 0x0

    goto :goto_38

    :cond_37
    :goto_37
    move v0, v2

    :goto_38
    if-nez v0, :cond_3d

    if-nez p2, :cond_3d

    return-void

    .line 911
    :cond_3d
    iget-object p2, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 914
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 915
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 916
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_76

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v1

    if-eqz v1, :cond_76

    .line 920
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getCreatedByOrganizerTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_69

    .line 922
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getAdjacentTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    if-eqz v1, :cond_69

    .line 923
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getAdjacentTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_6a

    :cond_69
    move-object v0, v3

    :goto_6a
    if-eqz v0, :cond_85

    .line 924
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_73

    goto :goto_85

    .line 926
    :cond_73
    iput-boolean v2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->adjacentStageHasRunningChild:Z

    goto :goto_85

    .line 929
    :cond_76
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v1

    if-eqz v1, :cond_85

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->hasChildTaskInSideStage()Z

    move-result v0

    if-eqz v0, :cond_85

    const/4 v0, 0x3

    .line 935
    iput v0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->activeStageInfo:I

    .line 940
    :cond_85
    :goto_85
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mLastSentTaskInfos:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    iput-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 946
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 951
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 952
    invoke-interface {v0}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 951
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    if-eqz p0, :cond_ab

    .line 954
    invoke-static {p0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->-$$Nest$fgetmOrganizer(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->onTaskInfoChanged(Lcom/android/server/wm/Task;Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_ab
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 10

    .line 1235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1236
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "TaskOrganizerController:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1237
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_23
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 1238
    invoke-static {p2}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->-$$Nest$fgetmOrganizedTasks(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1239
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1240
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->-$$Nest$fgetmOrganizer(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->-$$Nest$fgetmUid(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)I

    move-result p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 1241
    :goto_6c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p2, v3, :cond_23

    .line 1242
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    .line 1243
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    .line 1244
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "    ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1245
    invoke-static {v4}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1244
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_6c

    .line 1249
    :cond_a2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public getChildTasks(Landroid/window/WindowContainerToken;[I)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/WindowContainerToken;",
            "[I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "getChildTasks()"

    .line 1004
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 1005
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1007
    :try_start_9
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_af

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    if-eqz p1, :cond_a1

    .line 1011
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_3f

    const-string p2, "TaskOrganizerController"

    .line 1013
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t get children of "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " because it is not valid."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_c .. :try_end_38} :catchall_a9

    .line 1039
    :goto_38
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    .line 1016
    :cond_3f
    :try_start_3f
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-nez p1, :cond_5d

    const-string p1, "TaskOrganizerController"

    .line 1018
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a task..."

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    monitor-exit p0

    goto :goto_38

    .line 1022
    :cond_5d
    iget-boolean v2, p1, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-nez v2, :cond_6a

    const-string p1, "TaskOrganizerController"

    const-string p2, "Can only get children of root tasks created via createRootTask"

    .line 1023
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    monitor-exit p0

    goto :goto_38

    .line 1026
    :cond_6a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1027
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_75
    if-ltz v3, :cond_99

    .line 1028
    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-nez v4, :cond_82

    goto :goto_96

    :cond_82
    if-eqz p2, :cond_8f

    .line 1031
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v5

    invoke-static {p2, v5}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v5

    if-nez v5, :cond_8f

    goto :goto_96

    .line 1034
    :cond_8f
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_96
    add-int/lit8 v3, v3, -0x1

    goto :goto_75

    .line 1036
    :cond_99
    monitor-exit p0
    :try_end_9a
    .catchall {:try_start_3f .. :try_end_9a} :catchall_a9

    .line 1039
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    .line 1009
    :cond_a1
    :try_start_a1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t get children of null parent"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_a9
    move-exception p1

    .line 1037
    monitor-exit p0
    :try_end_ab
    .catchall {:try_start_a1 .. :try_end_ab} :catchall_a9

    :try_start_ab
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_af
    .catchall {:try_start_ab .. :try_end_af} :catchall_af

    :catchall_af
    move-exception p0

    .line 1039
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1040
    throw p0
.end method

.method public getImeTarget(I)Landroid/window/WindowContainerToken;
    .registers 7

    const-string v0, "getImeTarget()"

    .line 961
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 962
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 964
    :try_start_9
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_7c

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 965
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 966
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_24

    .line 968
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_76

    .line 997
    :goto_1d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :cond_24
    const/4 v3, 0x0

    .line 971
    :try_start_25
    invoke-virtual {p0, v3}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v3

    if-eqz v3, :cond_74

    .line 972
    invoke-interface {v3}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-nez v4, :cond_32

    goto :goto_74

    .line 977
    :cond_32
    invoke-interface {v3}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-nez v3, :cond_3e

    .line 979
    monitor-exit v2

    goto :goto_1d

    .line 985
    :cond_3e
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 986
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getImeInputTarget()Lcom/android/server/wm/InputTarget;

    move-result-object v4

    if-eqz v4, :cond_53

    .line 987
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getImeInputTarget()Lcom/android/server/wm/InputTarget;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object p0

    goto :goto_54

    :cond_53
    move-object p0, p1

    :goto_54
    if-eqz p0, :cond_5a

    .line 988
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    :cond_5a
    if-eqz p1, :cond_6c

    if-eq p1, v3, :cond_6c

    .line 990
    iget-object p0, p1, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object p0

    monitor-exit v2
    :try_end_65
    .catchall {:try_start_25 .. :try_end_65} :catchall_76

    .line 997
    :goto_65
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    .line 994
    :cond_6c
    :try_start_6c
    iget-object p0, v3, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object p0

    monitor-exit v2

    goto :goto_65

    .line 973
    :cond_74
    :goto_74
    monitor-exit v2

    goto :goto_1d

    :catchall_76
    move-exception p0

    .line 995
    monitor-exit v2
    :try_end_78
    .catchall {:try_start_6c .. :try_end_78} :catchall_76

    :try_start_78
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_7c
    .catchall {:try_start_78 .. :try_end_7c} :catchall_7c

    :catchall_7c
    move-exception p0

    .line 997
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 998
    throw p0
.end method

.method public getPendingEventList()Ljava/util/ArrayList;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;",
            ">;"
        }
    .end annotation

    .line 369
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getPendingLifecycleTaskEvent(Lcom/android/server/wm/Task;)Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1225
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_24

    .line 1226
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    .line 1227
    iget v2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v3, v1, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mTask:Lcom/android/server/wm/Task;

    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v2, v3, :cond_21

    invoke-virtual {v1}, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->isLifecycleEvent()Z

    move-result v2

    if-eqz v2, :cond_21

    return-object v1

    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_24
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPendingTaskEvent(Lcom/android/server/wm/Task;I)Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
    .registers 7

    .line 1213
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_22

    .line 1214
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    .line 1215
    iget v2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v3, v1, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mTask:Lcom/android/server/wm/Task;

    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v2, v3, :cond_1f

    iget v2, v1, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mEventType:I

    if-ne p2, v2, :cond_1f

    return-object v1

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_22
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRootTasks(I[I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "getRootTasks()"

    .line 1045
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 1046
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1048
    :try_start_9
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_50

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1049
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1050
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-eqz p0, :cond_2e

    .line 1054
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1055
    new-instance v3, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda3;

    invoke-direct {v3, p2, p1}, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda3;-><init>([ILjava/util/ArrayList;)V

    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 1062
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_4a

    .line 1065
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    .line 1052
    :cond_2e
    :try_start_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t exist"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_4a
    move-exception p0

    .line 1063
    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_2e .. :try_end_4c} :catchall_4a

    :try_start_4c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_50
    .catchall {:try_start_4c .. :try_end_50} :catchall_50

    :catchall_50
    move-exception p0

    .line 1065
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1066
    throw p0
.end method

.method public getTaskOrganizer()Landroid/window/ITaskOrganizer;
    .registers 1

    .line 448
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizers:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/window/ITaskOrganizer;

    return-object p0
.end method

.method public getTaskOrganizerState(Landroid/os/IBinder;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1254
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    return-object p0
.end method

.method public handleInterceptBackPressedOnTaskRoot(Lcom/android/server/wm/Task;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_41

    .line 1186
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v1

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mInterceptBackPressedOnRootTasks:Ljava/util/HashSet;

    iget v2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 1187
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_41

    :cond_18
    const/4 v1, 0x1

    .line 1192
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/TaskOrganizerController;->getPendingTaskEvent(Lcom/android/server/wm/Task;I)Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    move-result-object v2

    if-eqz v2, :cond_20

    return v0

    :cond_20
    const/4 v0, 0x3

    .line 1198
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskOrganizerController;->getPendingTaskEvent(Lcom/android/server/wm/Task;I)Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    move-result-object v2

    if-nez v2, :cond_2d

    .line 1201
    new-instance v2, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    invoke-direct {v2, p1, v0}, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;-><init>(Lcom/android/server/wm/Task;I)V

    goto :goto_32

    .line 1204
    :cond_2d
    iget-object p1, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1206
    :goto_32
    iget-object p1, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1207
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    return v1

    :cond_41
    :goto_41
    return v0
.end method

.method public handleSplitToSplitChange(IIIZ)V
    .registers 8

    .line 1272
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1273
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootStageTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 1274
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_4e

    .line 1279
    :cond_15
    :try_start_15
    new-instance v1, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;

    invoke-direct {v1}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;-><init>()V

    const/4 v2, 0x1

    .line 1280
    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->setSplitToSplitChange(Z)V

    .line 1281
    invoke-virtual {v1, p1}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->setNSTaskId(I)V

    .line 1282
    invoke-virtual {v1, p2}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->setStagePosition(I)V

    .line 1283
    invoke-virtual {v1, p3}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->setSplitScreenCreateModeForLaunchAdjacent(I)V

    .line 1284
    invoke-virtual {v1, p4}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->setReparentCell(Z)V

    .line 1285
    iget-object p1, v0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    invoke-interface {p1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskOrganizerController;->getTaskOrganizerState(Landroid/os/IBinder;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    move-result-object p0

    .line 1286
    invoke-static {p0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->-$$Nest$fgetmOrganizer(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    .line 1287
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    .line 1286
    invoke-interface {p0, p1, p2}, Landroid/window/ITaskOrganizer;->onSplitLayoutChangeRequested(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/os/Bundle;)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_45} :catch_46

    goto :goto_4e

    :catch_46
    move-exception p0

    const-string p1, "TaskOrganizerController"

    const-string p2, "Exception sending handleNaturalSwitching callback"

    .line 1289
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4e
    :goto_4e
    return-void
.end method

.method public notifySkipEvictSplitTask(Z)V
    .registers 3

    .line 1312
    new-instance v0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;-><init>()V

    .line 1313
    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->setSkipEvictSplitTask(Z)V

    .line 1314
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskOrganizerController;->onSplitLayoutChangeRequested(Landroid/os/Bundle;)V

    return-void
.end method

.method public notifySplitExitRemoteAnimationFinished()V
    .registers 2

    .line 1326
    new-instance v0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;-><init>()V

    .line 1327
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->setSplitExitRemoteAnimationFinished()V

    .line 1328
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskOrganizerController;->onSplitLayoutChangeRequested(Landroid/os/Bundle;)V

    return-void
.end method

.method public notifySplitExitRemoteAnimationStarted()V
    .registers 2

    .line 1320
    new-instance v0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;-><init>()V

    .line 1321
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->setSplitExitRemoteAnimationStarted()V

    .line 1322
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskOrganizerController;->onSplitLayoutChangeRequested(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAppSplashScreenViewRemoved(Lcom/android/server/wm/Task;)V
    .registers 3

    .line 619
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 623
    :cond_7
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizers:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/window/ITaskOrganizer;

    if-nez p0, :cond_12

    return-void

    .line 628
    :cond_12
    :try_start_12
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {p0, p1}, Landroid/window/ITaskOrganizer;->onAppSplashScreenViewRemoved(I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_18

    goto :goto_20

    :catch_18
    move-exception p0

    const-string p1, "TaskOrganizerController"

    const-string v0, "Exception sending onAppSplashScreenViewRemoved callback"

    .line 630
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    return-void
.end method

.method public onFreeformToSplitRequested(Lcom/android/server/wm/Task;ZIZ)V
    .registers 6

    .line 1259
    new-instance v0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;-><init>()V

    .line 1260
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->setFreeformToSplitTaskId(I)V

    .line 1261
    invoke-virtual {v0, p2}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->setWithRecentAllApps(Z)V

    .line 1262
    invoke-virtual {v0, p3}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->setStagePosition(I)V

    if-eqz p4, :cond_16

    const/4 p1, 0x1

    .line 1264
    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->setReparentCell(Z)V

    .line 1266
    :cond_16
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskOrganizerController;->onSplitLayoutChangeRequested(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSplitLayoutChangeRequested(Landroid/os/Bundle;)V
    .registers 5

    .line 1334
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1335
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootMainStageTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_f

    return-void

    .line 1339
    :cond_f
    new-instance v1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1340
    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;)V

    const/4 v1, 0x0

    .line 1342
    :try_start_1a
    iget-object v0, v0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {v0, v2, p1}, Landroid/window/ITaskOrganizer;->onSplitLayoutChangeRequested(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/os/Bundle;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_21} :catch_26
    .catchall {:try_start_1a .. :try_end_21} :catchall_24

    .line 1346
    :goto_21
    iput-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    goto :goto_2f

    :catchall_24
    move-exception p1

    goto :goto_30

    :catch_26
    move-exception p1

    :try_start_27
    const-string v0, "TaskOrganizerController"

    const-string v2, "Exception sending onSplitLayoutChangeRequested callback"

    .line 1344
    invoke-static {v0, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_24

    goto :goto_21

    :goto_2f
    return-void

    .line 1346
    :goto_30
    iput-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1347
    throw p1
.end method

.method public onTaskAppeared(Landroid/window/ITaskOrganizer;Lcom/android/server/wm/Task;)V
    .registers 4

    .line 661
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    if-eqz p1, :cond_25

    .line 662
    invoke-static {p1, p2}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->-$$Nest$maddTask(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;Lcom/android/server/wm/Task;)Z

    move-result p1

    if-eqz p1, :cond_25

    const/4 p1, 0x0

    .line 663
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/TaskOrganizerController;->getPendingTaskEvent(Lcom/android/server/wm/Task;I)Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    move-result-object v0

    if-nez v0, :cond_25

    .line 665
    new-instance v0, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    invoke-direct {v0, p2, p1}, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;-><init>(Lcom/android/server/wm/Task;I)V

    .line 666
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    return-void
.end method

.method public onTaskAppearedImmediately(Landroid/window/ITaskOrganizer;Lcom/android/server/wm/Task;)V
    .registers 3

    .line 651
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    if-eqz p0, :cond_21

    .line 652
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 653
    invoke-static {p0, p2}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->-$$Nest$maddTask(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;Lcom/android/server/wm/Task;)Z

    const/4 p1, 0x1

    .line 654
    iput-boolean p1, p2, Lcom/android/server/wm/Task;->mTaskAppearedSent:Z

    .line 655
    invoke-static {p0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->-$$Nest$fgetmOrganizer(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->onTaskAppeared(Lcom/android/server/wm/Task;)V

    :cond_21
    return-void
.end method

.method public onTaskInfoChanged(Lcom/android/server/wm/Task;Z)V
    .registers 5

    .line 862
    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mTaskAppearedSent:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p2, :cond_14

    .line 866
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 p2, 0x1

    .line 873
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskOrganizerController;->dispatchTaskInfoChanged(Lcom/android/server/wm/Task;Z)V

    return-void

    .line 879
    :cond_14
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskOrganizerController;->getPendingLifecycleTaskEvent(Lcom/android/server/wm/Task;)Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_21

    .line 881
    new-instance v0, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    invoke-direct {v0, p1, v1}, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;-><init>(Lcom/android/server/wm/Task;I)V

    goto :goto_2b

    .line 883
    :cond_21
    iget p1, v0, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mEventType:I

    if-eq p1, v1, :cond_26

    return-void

    .line 890
    :cond_26
    iget-object p1, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 892
    :goto_2b
    iget-boolean p1, v0, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mForce:Z

    or-int/2addr p1, p2

    iput-boolean p1, v0, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mForce:Z

    .line 893
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onTaskVanished(Landroid/window/ITaskOrganizer;Lcom/android/server/wm/Task;)V
    .registers 5

    .line 672
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    if-eqz v0, :cond_19

    .line 673
    iget-boolean v1, p2, Lcom/android/server/wm/Task;->mRemoveWithTaskOrganizer:Z

    invoke-static {v0, p2, v1}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->-$$Nest$mremoveTask(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;Lcom/android/server/wm/Task;Z)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 674
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskOrganizerController;->onTaskVanishedInternal(Landroid/window/ITaskOrganizer;Lcom/android/server/wm/Task;)V

    :cond_19
    return-void
.end method

.method public final onTaskVanishedInternal(Landroid/window/ITaskOrganizer;Lcom/android/server/wm/Task;)V
    .registers 8

    .line 679
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_2b

    .line 680
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    .line 681
    iget v3, p2, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v4, v2, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mTask:Lcom/android/server/wm/Task;

    iget v4, v4, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v3, v4, :cond_28

    iget-object v3, v2, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mTaskOrg:Landroid/window/ITaskOrganizer;

    if-ne v3, p1, :cond_28

    .line 683
    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 684
    iget v2, v2, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mEventType:I

    if-nez v2, :cond_28

    return-void

    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 691
    :cond_2b
    new-instance v0, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    invoke-direct {v0, p2, p1, v1}, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;-><init>(Lcom/android/server/wm/Task;Landroid/window/ITaskOrganizer;I)V

    .line 693
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 352
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/window/ITaskOrganizerController$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception p0

    const-string p1, "TaskOrganizerController"

    .line 354
    invoke-static {p1, p0}, Lcom/android/server/wm/ActivityTaskManagerService;->logAndRethrowRuntimeExceptionOnTransact(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public preloadSplashScreenAppIcon(Landroid/content/pm/ActivityInfo;ILandroid/content/res/Configuration;)V
    .registers 4

    .line 637
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizers:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/window/ITaskOrganizer;

    if-nez p0, :cond_b

    return-void

    .line 642
    :cond_b
    :try_start_b
    invoke-interface {p0, p1, p2, p3}, Landroid/window/ITaskOrganizer;->preloadSplashScreenAppIcon(Landroid/content/pm/ActivityInfo;ILandroid/content/res/Configuration;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_17

    :catch_f
    move-exception p0

    const-string p1, "TaskOrganizerController"

    const-string p2, "Exception sending preloadSplashScreenAppInfo callback"

    .line 644
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_17
    return-void
.end method

.method public registerTaskOrganizer(Landroid/window/ITaskOrganizer;)Landroid/content/pm/ParceledListSlice;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/ITaskOrganizer;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/window/TaskAppearedInfo;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "registerTaskOrganizer()"

    .line 377
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 378
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 379
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 381
    :try_start_e
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 382
    new-instance v4, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p1, v0, v3}, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/TaskOrganizerController;Landroid/window/ITaskOrganizer;ILjava/util/ArrayList;)V

    .line 403
    iget-object p1, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result p1

    if-eqz p1, :cond_32

    .line 404
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mRunningLock:Lcom/android/server/wm/TransitionController$Lock;

    const-wide/16 v5, 0x3e8

    invoke-virtual {p0, v5, v6, v4}, Lcom/android/server/wm/TransitionController$Lock;->runWhenIdle(JLjava/lang/Runnable;)V

    goto :goto_3f

    .line 406
    :cond_32
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0
    :try_end_35
    .catchall {:try_start_e .. :try_end_35} :catchall_4e

    :try_start_35
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 407
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 408
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_48

    :try_start_3c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 410
    :goto_3f
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_44
    .catchall {:try_start_3c .. :try_end_44} :catchall_4e

    .line 412
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_48
    move-exception p1

    .line 408
    :try_start_49
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    :try_start_4a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_4e

    :catchall_4e
    move-exception p0

    .line 412
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 413
    throw p0
.end method

.method public removeStartingWindow(Lcom/android/server/wm/Task;Z)V
    .registers 8

    .line 536
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const-string v1, "TaskOrganizerController"

    if-nez v0, :cond_f

    const-string/jumbo p0, "removeStartingWindow: rootTask is null"

    .line 540
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 545
    :cond_f
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizers:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/window/ITaskOrganizer;

    if-nez p0, :cond_20

    const-string/jumbo p0, "removeStartingWindow: lastOrganizer is null"

    .line 549
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 554
    :cond_20
    new-instance v0, Landroid/window/StartingWindowRemovalInfo;

    invoke-direct {v0}, Landroid/window/StartingWindowRemovalInfo;-><init>()V

    .line 555
    iget v2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iput v2, v0, Landroid/window/StartingWindowRemovalInfo;->taskId:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_3c

    .line 556
    iget-object p2, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz p2, :cond_3c

    .line 563
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p2

    iget p2, p2, Landroid/view/DisplayInfo;->state:I

    const/4 v4, 0x2

    if-ne p2, v4, :cond_3c

    move p2, v2

    goto :goto_3d

    :cond_3c
    move p2, v3

    :goto_3d
    iput-boolean p2, v0, Landroid/window/StartingWindowRemovalInfo;->playRevealAnimation:Z

    .line 564
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result p2

    xor-int/2addr p2, v2

    .line 565
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->topActivityContainsStartingWindow()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_7a

    .line 567
    iget-object v2, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 568
    invoke-virtual {v2, p1}, Lcom/android/server/wm/DisplayContent;->mayImeShowOnLaunchingActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    iput-boolean v2, v0, Landroid/window/StartingWindowRemovalInfo;->deferRemoveForIme:Z

    .line 569
    iget-boolean v2, v0, Landroid/window/StartingWindowRemovalInfo;->playRevealAnimation:Z

    if-eqz v2, :cond_7a

    if-eqz p2, :cond_7a

    .line 571
    invoke-virtual {p1, v3}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object p2

    if-eqz p2, :cond_7a

    .line 573
    invoke-static {p2}, Lcom/android/server/wm/TaskOrganizerController;->applyStartingWindowAnimation(Lcom/android/server/wm/WindowState;)Landroid/view/SurfaceControl;

    move-result-object v2

    iput-object v2, v0, Landroid/window/StartingWindowRemovalInfo;->windowAnimationLeash:Landroid/view/SurfaceControl;

    .line 574
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getRelativeFrame()Landroid/graphics/Rect;

    move-result-object p2

    iput-object p2, v0, Landroid/window/StartingWindowRemovalInfo;->mainFrame:Landroid/graphics/Rect;

    .line 577
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getAnimatingContainer()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    if-eqz p1, :cond_7a

    .line 579
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/wm/AnimationAdapter;->getDurationHint()J

    move-result-wide p1

    .line 580
    iput-wide p1, v0, Landroid/window/StartingWindowRemovalInfo;->duration:J

    .line 588
    :cond_7a
    :try_start_7a
    invoke-interface {p0, v0}, Landroid/window/ITaskOrganizer;->removeStartingWindow(Landroid/window/StartingWindowRemovalInfo;)V
    :try_end_7d
    .catch Landroid/os/RemoteException; {:try_start_7a .. :try_end_7d} :catch_7e

    goto :goto_84

    :catch_7e
    move-exception p0

    const-string p1, "Exception sending onStartTaskFinished callback"

    .line 590
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_84
    return-void
.end method

.method public reportImeDrawnOnTask(Lcom/android/server/wm/Task;)V
    .registers 3

    .line 851
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    invoke-interface {v0}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    if-eqz p0, :cond_24

    .line 854
    :try_start_10
    invoke-static {p0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->-$$Nest$fgetmOrganizer(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {p0, p1}, Landroid/window/ITaskOrganizer;->onImeDrawnOnTask(I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1b} :catch_1c

    goto :goto_24

    :catch_1c
    move-exception p0

    const-string p1, "TaskOrganizerController"

    const-string v0, "Exception sending onImeDrawnOnTask callback"

    .line 856
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_24
    :goto_24
    return-void
.end method

.method public restartTaskTopActivityProcessIfVisible(Landroid/window/WindowContainerToken;)V
    .registers 12

    const-string/jumbo v0, "restartTopActivityProcessIfVisible()"

    .line 1101
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 1110
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1112
    :try_start_a
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_69

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1113
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    if-nez p1, :cond_29

    const-string p1, "TaskOrganizerController"

    const-string v2, "Could not resolve window from token"

    .line 1115
    invoke-static {p1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_d .. :try_end_22} :catchall_63

    .line 1139
    :goto_22
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1118
    :cond_29
    :try_start_29
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-nez p1, :cond_38

    const-string p1, "TaskOrganizerController"

    const-string v2, "Could not resolve task from token"

    .line 1120
    invoke-static {p1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    monitor-exit p0

    goto :goto_22

    .line 1123
    :cond_38
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v2, :cond_52

    iget v2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    int-to-long v2, v2

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x75068c04

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v9

    invoke-static {v4, v5, v7, v6, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1125
    :cond_52
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_5b

    .line 1135
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->restartProcessIfVisible()V

    .line 1137
    :cond_5b
    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_29 .. :try_end_5c} :catchall_63

    :try_start_5c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_69

    .line 1139
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_63
    move-exception p1

    .line 1137
    :try_start_64
    monitor-exit p0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    :try_start_65
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_69
    .catchall {:try_start_65 .. :try_end_69} :catchall_69

    :catchall_69
    move-exception p0

    .line 1139
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1140
    throw p0
.end method

.method public setDeferTaskOrgCallbacksConsumer(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .line 364
    iput-object p1, p0, Lcom/android/server/wm/TaskOrganizerController;->mDeferTaskOrgCallbacksConsumer:Ljava/util/function/Consumer;

    return-void
.end method

.method public setInterceptBackPressedOnTaskRoot(Landroid/window/WindowContainerToken;Z)V
    .registers 13

    const-string/jumbo v0, "setInterceptBackPressedOnTaskRoot()"

    .line 1072
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 1073
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1075
    :try_start_a
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_77

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1076
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v3, :cond_28

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0xdd8e260

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1078
    :cond_28
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    if-nez p1, :cond_41

    const-string p0, "TaskOrganizerController"

    const-string p1, "Could not resolve window from token"

    .line 1080
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_d .. :try_end_3a} :catchall_71

    .line 1095
    :goto_3a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1083
    :cond_41
    :try_start_41
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-nez p1, :cond_50

    const-string p0, "TaskOrganizerController"

    const-string p1, "Could not resolve task from token"

    .line 1085
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    monitor-exit v2

    goto :goto_3a

    :cond_50
    if-eqz p2, :cond_5e

    .line 1089
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mInterceptBackPressedOnRootTasks:Ljava/util/HashSet;

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_69

    .line 1091
    :cond_5e
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mInterceptBackPressedOnRootTasks:Ljava/util/HashSet;

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1093
    :goto_69
    monitor-exit v2
    :try_end_6a
    .catchall {:try_start_41 .. :try_end_6a} :catchall_71

    :try_start_6a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_77

    .line 1095
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_71
    move-exception p0

    .line 1093
    :try_start_72
    monitor-exit v2
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    :try_start_73
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_77
    .catchall {:try_start_73 .. :try_end_77} :catchall_77

    :catchall_77
    move-exception p0

    .line 1095
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1096
    throw p0
.end method

.method public setIsIgnoreOrientationRequestDisabled(Z)V
    .registers 5

    const-string/jumbo v0, "setIsIgnoreOrientationRequestDisabled()"

    .line 1174
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 1175
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1177
    :try_start_a
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_25

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1178
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->setIsIgnoreOrientationRequestDisabled(Z)V

    .line 1179
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_1f

    :try_start_18
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_25

    .line 1181
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1f
    move-exception p0

    .line 1179
    :try_start_20
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    :try_start_21
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_25

    :catchall_25
    move-exception p0

    .line 1181
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1182
    throw p0
.end method

.method public unregisterTaskOrganizer(Landroid/window/ITaskOrganizer;)V
    .registers 8

    const-string/jumbo v0, "unregisterTaskOrganizer()"

    .line 418
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 419
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 420
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 422
    :try_start_e
    new-instance v3, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1, v0}, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/TaskOrganizerController;Landroid/window/ITaskOrganizer;I)V

    .line 432
    iget-object p1, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 433
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mRunningLock:Lcom/android/server/wm/TransitionController$Lock;

    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, v4, v5, v3}, Lcom/android/server/wm/TransitionController$Lock;->runWhenIdle(JLjava/lang/Runnable;)V

    goto :goto_3a

    .line 435
    :cond_2d
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0
    :try_end_30
    .catchall {:try_start_e .. :try_end_30} :catchall_44

    :try_start_30
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 436
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 437
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_3e

    :try_start_37
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_44

    .line 440
    :goto_3a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_3e
    move-exception p1

    .line 437
    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    :try_start_40
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_44
    .catchall {:try_start_40 .. :try_end_44} :catchall_44

    :catchall_44
    move-exception p0

    .line 440
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 441
    throw p0
.end method

.method public updateCameraCompatControlState(Landroid/window/WindowContainerToken;I)V
    .registers 14

    const-string/jumbo v0, "updateCameraCompatControlState()"

    .line 1145
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 1146
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1148
    :try_start_a
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_75

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1149
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    if-nez p1, :cond_29

    const-string p1, "TaskOrganizerController"

    const-string p2, "Could not resolve window from token"

    .line 1151
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_d .. :try_end_22} :catchall_6f

    .line 1168
    :goto_22
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1154
    :cond_29
    :try_start_29
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-nez p1, :cond_38

    const-string p1, "TaskOrganizerController"

    const-string p2, "Could not resolve task from token"

    .line 1156
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    monitor-exit p0

    goto :goto_22

    .line 1159
    :cond_38
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v2, :cond_5e

    invoke-static {p2}, Landroid/app/TaskInfo;->cameraCompatControlStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Lcom/android/server/wm/Task;->mTaskId:I

    int-to-long v3, v3

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x327b247c

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    const/4 v2, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v9, v2

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1162
    :cond_5e
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_67

    .line 1164
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->updateCameraCompatStateFromUser(I)V

    .line 1166
    :cond_67
    monitor-exit p0
    :try_end_68
    .catchall {:try_start_29 .. :try_end_68} :catchall_6f

    :try_start_68
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_75

    .line 1168
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_6f
    move-exception p1

    .line 1166
    :try_start_70
    monitor-exit p0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    :try_start_71
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_75
    .catchall {:try_start_71 .. :try_end_75} :catchall_75

    :catchall_75
    move-exception p0

    .line 1168
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1169
    throw p0
.end method
