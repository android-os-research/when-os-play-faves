.class public Lcom/android/server/wm/TaskFragmentOrganizerController;
.super Landroid/window/ITaskFragmentOrganizerController$Stub;
.source "TaskFragmentOrganizerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;,
        Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "TaskFragmentOrganizerController"

.field public static final TEMPORARY_ACTIVITY_TOKEN_TIMEOUT_MS:J = 0x1388L


# instance fields
.field public final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public final mPendingTaskFragmentEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;",
            ">;"
        }
    .end annotation
.end field

.field public final mTaskFragmentOrganizerState:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$f6AYYDYyR7oksSVcR8wV84xh08I([Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/TaskFragment;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->lambda$onActivityReparentToTask$0([Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/TaskFragment;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAtmService(Lcom/android/server/wm/TaskFragmentOrganizerController;)Lcom/android/server/wm/ActivityTaskManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGlobalLock(Lcom/android/server/wm/TaskFragmentOrganizerController;)Lcom/android/server/wm/WindowManagerGlobalLock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mremoveOrganizer(Lcom/android/server/wm/TaskFragmentOrganizerController;Landroid/window/ITaskFragmentOrganizer;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->removeOrganizer(Landroid/window/ITaskFragmentOrganizer;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3

    .line 77
    invoke-direct {p0}, Landroid/window/ITaskFragmentOrganizerController$Stub;-><init>()V

    .line 69
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Ljava/util/ArrayList;

    .line 78
    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 79
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-void
.end method

.method public static isTaskVisible(Lcom/android/server/wm/Task;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/Task;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;)Z"
        }
    .end annotation

    .line 739
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 742
    :cond_8
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    return v2

    :cond_10
    const/4 v0, 0x0

    .line 745
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 746
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v1

    .line 749
    :cond_1b
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v2
.end method

.method public static synthetic lambda$onActivityReparentToTask$0([Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/TaskFragment;)Z
    .registers 4

    .line 502
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isOrganizedTaskFragment()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 503
    aput-object p1, p0, v1

    const/4 p0, 0x1

    return p0

    :cond_b
    return v1
.end method


# virtual methods
.method public final dispatchEvent(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)V
    .registers 5

    .line 766
    invoke-static {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmTaskFragmentOrg(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Landroid/window/ITaskFragmentOrganizer;

    move-result-object v0

    .line 767
    invoke-static {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmTaskFragment(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    .line 768
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    .line 769
    invoke-interface {v0}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    if-nez p0, :cond_17

    return-void

    .line 773
    :cond_17
    invoke-static {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmEventType(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)I

    move-result v0

    if-eqz v0, :cond_51

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4d

    const/4 v2, 0x2

    if-eq v0, v2, :cond_49

    const/4 v2, 0x3

    if-eq v0, v2, :cond_45

    const/4 v2, 0x4

    if-eq v0, v2, :cond_35

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2d

    goto :goto_54

    .line 791
    :cond_2d
    invoke-static {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmActivity(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->onActivityReparentToTask(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_54

    .line 787
    :cond_35
    invoke-static {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmErrorCallbackToken(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmOpType(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)I

    move-result v2

    invoke-static {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmException(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->onTaskFragmentError(Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    goto :goto_54

    .line 784
    :cond_45
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->onTaskFragmentParentInfoChanged(Lcom/android/server/wm/TaskFragment;)V

    goto :goto_54

    .line 781
    :cond_49
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->onTaskFragmentInfoChanged(Lcom/android/server/wm/TaskFragment;)V

    goto :goto_54

    .line 778
    :cond_4d
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->onTaskFragmentVanished(Lcom/android/server/wm/TaskFragment;)V

    goto :goto_54

    .line 775
    :cond_51
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->onTaskFragmentAppeared(Lcom/android/server/wm/TaskFragment;)V

    :goto_54
    return-void
.end method

.method public dispatchPendingEvents()V
    .registers 13

    .line 708
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->isLayoutDeferred()Z

    move-result v0

    if-nez v0, :cond_84

    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Ljava/util/ArrayList;

    .line 709
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    goto/16 :goto_84

    .line 713
    :cond_16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 714
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 715
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 716
    iget-object v3, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_2d
    if-ge v5, v3, :cond_6b

    .line 717
    iget-object v6, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    .line 718
    invoke-static {v6}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmTaskFragment(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Lcom/android/server/wm/TaskFragment;

    move-result-object v7

    if-eqz v7, :cond_46

    invoke-static {v6}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmTaskFragment(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Lcom/android/server/wm/TaskFragment;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v7

    goto :goto_47

    :cond_46
    const/4 v7, 0x0

    :goto_47
    if-eqz v7, :cond_65

    .line 719
    iget-wide v8, v7, Lcom/android/server/wm/Task;->lastActiveTime:J

    invoke-static {v6}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmDeferTime(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_5f

    .line 720
    invoke-static {v7, v0, v1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->isTaskVisible(Lcom/android/server/wm/Task;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v8

    if-nez v8, :cond_65

    .line 721
    invoke-virtual {p0, v6}, Lcom/android/server/wm/TaskFragmentOrganizerController;->shouldSendEventWhenTaskInvisible(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Z

    move-result v8

    if-nez v8, :cond_65

    .line 723
    :cond_5f
    iget-wide v7, v7, Lcom/android/server/wm/Task;->lastActiveTime:J

    invoke-static {v6, v7, v8}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fputmDeferTime(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;J)V

    goto :goto_68

    .line 726
    :cond_65
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_68
    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    .line 728
    :cond_6b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_6f
    if-ge v4, v0, :cond_7d

    .line 730
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->dispatchEvent(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6f

    :cond_7d
    if-lez v0, :cond_84

    .line 733
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_84
    :goto_84
    return-void
.end method

.method public dispatchPendingInfoChangedEvent(Lcom/android/server/wm/TaskFragment;)V
    .registers 3

    const/4 v0, 0x2

    .line 755
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->getPendingTaskFragmentEvent(Lcom/android/server/wm/TaskFragment;I)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    move-result-object p1

    if-nez p1, :cond_8

    return-void

    .line 761
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->dispatchEvent(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)V

    .line 762
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getLastPendingLifecycleEvent(Lcom/android/server/wm/TaskFragment;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;
    .registers 5

    .line 671
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_22

    .line 672
    iget-object v1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    .line 673
    invoke-static {v1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmTaskFragment(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    if-ne p1, v2, :cond_1f

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->isLifecycleEvent()Z

    move-result v2

    if-eqz v2, :cond_1f

    return-object v1

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_22
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPendingTaskFragmentEvent(Lcom/android/server/wm/TaskFragment;I)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;
    .registers 6

    .line 683
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_22

    .line 684
    iget-object v1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    .line 685
    invoke-static {v1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmTaskFragment(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    if-ne p1, v2, :cond_1f

    invoke-static {v1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmEventType(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)I

    move-result v2

    if-ne p2, v2, :cond_1f

    return-object v1

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_22
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRemoteAnimationDefinition(Landroid/window/ITaskFragmentOrganizer;I)Landroid/view/RemoteAnimationDefinition;
    .registers 4

    .line 387
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 388
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    .line 389
    invoke-interface {p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    if-eqz p0, :cond_1f

    .line 391
    invoke-static {p0}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->-$$Nest$fgetmRemoteAnimationDefinitions(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/RemoteAnimationDefinition;

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    .line 392
    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_25

    .line 390
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p0

    :catchall_25
    move-exception p0

    .line 393
    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getReparentActivityFromTemporaryToken(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1f

    if-nez p2, :cond_6

    goto :goto_1f

    .line 293
    :cond_6
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    .line 294
    invoke-interface {p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 293
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    if-eqz p0, :cond_1f

    .line 296
    invoke-static {p0}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->-$$Nest$fgetmTemporaryActivityTokens(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    :cond_1f
    :goto_1f
    return-object v0
.end method

.method public getTaskFragmentOrganizerUid(Landroid/window/ITaskFragmentOrganizer;)I
    .registers 2

    .line 397
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->validateAndGetState(Landroid/window/ITaskFragmentOrganizer;)Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    move-result-object p0

    .line 398
    invoke-static {p0}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->-$$Nest$fgetmOrganizerUid(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;)I

    move-result p0

    return p0
.end method

.method public final handleTaskFragmentInfoChanged(Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;I)V
    .registers 5

    .line 430
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->validateAndGetState(Landroid/window/ITaskFragmentOrganizer;)Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    .line 431
    iget-boolean v0, p2, Lcom/android/server/wm/TaskFragment;->mTaskFragmentAppearedSent:Z

    if-nez v0, :cond_8

    return-void

    .line 435
    :cond_8
    invoke-virtual {p0, p2}, Lcom/android/server/wm/TaskFragmentOrganizerController;->getLastPendingLifecycleEvent(Lcom/android/server/wm/TaskFragment;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 437
    new-instance v0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;

    invoke-direct {v0, p3, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;-><init>(ILandroid/window/ITaskFragmentOrganizer;)V

    .line 438
    invoke-virtual {v0, p2}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->setTaskFragment(Lcom/android/server/wm/TaskFragment;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;

    move-result-object p1

    .line 439
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->build()Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    move-result-object v0

    goto :goto_2e

    .line 441
    :cond_1c
    invoke-static {v0}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmEventType(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_24

    return-void

    .line 446
    :cond_24
    iget-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-wide/16 p1, 0x0

    .line 450
    invoke-static {v0, p1, p2}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fputmDeferTime(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;J)V

    .line 452
    :goto_2e
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isActivityEmbedded(Landroid/os/IBinder;)Z
    .registers 5

    .line 798
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 799
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_12

    .line 801
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 803
    :cond_12
    :try_start_12
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p1

    if-nez p1, :cond_1d

    .line 805
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 807
    :cond_1d
    :try_start_1d
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 809
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 810
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 811
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_38

    const/4 v0, 0x1

    :cond_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_1d .. :try_end_39} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 813
    :cond_3d
    :try_start_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :catchall_42
    move-exception p1

    .line 814
    :try_start_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public isSupportActivityEmbedded(Ljava/lang/String;)Z
    .registers 4

    .line 820
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 821
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 822
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 821
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/MultiTaskingController;->getEmbedActivityPackageEnabled(Ljava/lang/String;I)Z

    move-result p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_17
    move-exception p0

    .line 823
    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onActivityReparentToTask(Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    .line 494
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mLastTaskFragmentOrganizerBeforePip:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v0, :cond_5

    goto :goto_1e

    .line 499
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/server/wm/TaskFragment;

    .line 501
    new-instance v2, Lcom/android/server/wm/TaskFragmentOrganizerController$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/server/wm/TaskFragmentOrganizerController$$ExternalSyntheticLambda0;-><init>([Lcom/android/server/wm/TaskFragment;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskFragment;->forAllLeafTaskFragments(Ljava/util/function/Predicate;)Z

    const/4 v0, 0x0

    aget-object v0, v1, v0

    if-nez v0, :cond_1a

    return-void

    .line 511
    :cond_1a
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    move-result-object v0

    .line 513
    :goto_1e
    iget-object v1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    invoke-interface {v0}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    const-string p0, "TaskFragmentOrganizerController"

    const-string p1, "The last TaskFragmentOrganizer no longer exists"

    .line 514
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 517
    :cond_32
    new-instance v1, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v0}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;-><init>(ILandroid/window/ITaskFragmentOrganizer;)V

    .line 519
    invoke-virtual {v1, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->setActivity(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;

    move-result-object p1

    .line 520
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->build()Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    move-result-object p1

    .line 521
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onTaskFragmentAppeared(Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;)V
    .registers 5

    .line 402
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->validateAndGetState(Landroid/window/ITaskFragmentOrganizer;)Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    move-result-object v0

    .line 403
    invoke-virtual {v0, p2}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->addTaskFragment(Lcom/android/server/wm/TaskFragment;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    const/4 v0, 0x0

    .line 406
    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->getPendingTaskFragmentEvent(Lcom/android/server/wm/TaskFragment;I)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    move-result-object v1

    if-nez v1, :cond_24

    .line 409
    new-instance v1, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;

    invoke-direct {v1, v0, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;-><init>(ILandroid/window/ITaskFragmentOrganizer;)V

    .line 411
    invoke-virtual {v1, p2}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->setTaskFragment(Lcom/android/server/wm/TaskFragment;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;

    move-result-object p1

    .line 412
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->build()Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    move-result-object p1

    .line 413
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24
    return-void
.end method

.method public onTaskFragmentError(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V
    .registers 8

    .line 480
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->validateAndGetState(Landroid/window/ITaskFragmentOrganizer;)Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    const-string v0, "TaskFragmentOrganizerController"

    const-string/jumbo v1, "onTaskFragmentError "

    .line 481
    invoke-static {v0, v1, p5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 482
    new-instance v0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;-><init>(ILandroid/window/ITaskFragmentOrganizer;)V

    .line 484
    invoke-virtual {v0, p2}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->setErrorCallbackToken(Landroid/os/IBinder;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;

    move-result-object p1

    .line 485
    invoke-virtual {p1, p3}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->setTaskFragment(Lcom/android/server/wm/TaskFragment;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;

    move-result-object p1

    .line 486
    invoke-virtual {p1, p5}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->setException(Ljava/lang/Throwable;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;

    move-result-object p1

    .line 487
    invoke-virtual {p1, p4}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->setOpType(I)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;

    move-result-object p1

    .line 488
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->build()Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    move-result-object p1

    .line 489
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onTaskFragmentInfoChanged(Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;)V
    .registers 4

    const/4 v0, 0x2

    .line 418
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->handleTaskFragmentInfoChanged(Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;I)V

    return-void
.end method

.method public onTaskFragmentParentInfoChanged(Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;)V
    .registers 4

    const/4 v0, 0x3

    .line 424
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->handleTaskFragmentInfoChanged(Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;I)V

    return-void
.end method

.method public onTaskFragmentVanished(Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;)V
    .registers 8

    .line 456
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->validateAndGetState(Landroid/window/ITaskFragmentOrganizer;)Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    move-result-object v0

    .line 457
    iget-object v1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_c
    if-ltz v1, :cond_2b

    .line 458
    iget-object v3, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    .line 459
    invoke-static {v3}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmTaskFragment(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    if-ne p2, v4, :cond_28

    .line 460
    iget-object v4, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 461
    invoke-static {v3}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmEventType(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)I

    move-result v3

    if-nez v3, :cond_28

    return-void

    :cond_28
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 467
    :cond_2b
    iget-boolean v1, p2, Lcom/android/server/wm/TaskFragment;->mTaskFragmentAppearedSent:Z

    if-nez v1, :cond_30

    return-void

    .line 470
    :cond_30
    new-instance v1, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;

    invoke-direct {v1, v2, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;-><init>(ILandroid/window/ITaskFragmentOrganizer;)V

    .line 472
    invoke-virtual {v1, p2}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->setTaskFragment(Lcom/android/server/wm/TaskFragment;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;

    move-result-object p1

    .line 473
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->build()Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    move-result-object p1

    .line 474
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    invoke-virtual {v0, p2}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->removeTaskFragment(Lcom/android/server/wm/TaskFragment;)V

    return-void
.end method

.method public registerOrganizer(Landroid/window/ITaskFragmentOrganizer;)V
    .registers 16

    .line 302
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 303
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 304
    iget-object v2, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 305
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v3, :cond_3b

    invoke-interface {p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    int-to-long v4, v1

    int-to-long v6, v0

    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, 0x62872a51

    const/16 v10, 0x14

    const/4 v11, 0x0

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    const/4 v3, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v12, v3

    const/4 v3, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v12, v3

    invoke-static {v8, v9, v10, v11, v12}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 308
    :cond_3b
    iget-object v3, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5a

    .line 312
    iget-object v3, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    new-instance v5, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    invoke-direct {v5, p0, p1, v0, v1}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;-><init>(Lcom/android/server/wm/TaskFragmentOrganizerController;Landroid/window/ITaskFragmentOrganizer;II)V

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    monitor-exit v2
    :try_end_56
    .catchall {:try_start_b .. :try_end_56} :catchall_62

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 309
    :cond_5a
    :try_start_5a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Replacing existing organizer currently unsupported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_62
    move-exception p0

    .line 314
    monitor-exit v2
    :try_end_64
    .catchall {:try_start_5a .. :try_end_64} :catchall_62

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public registerRemoteAnimations(Landroid/window/ITaskFragmentOrganizer;ILandroid/view/RemoteAnimationDefinition;)V
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    .line 338
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 339
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 340
    iget-object v5, v0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v5

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 341
    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v6, :cond_42

    invoke-interface/range {p1 .. p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    int-to-long v7, v4

    int-to-long v9, v3

    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v12, 0x481fb6ca

    const/16 v13, 0x14

    const/4 v14, 0x0

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v6, v15, v16

    const/4 v6, 0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v15, v6

    const/4 v6, 0x2

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v15, v6

    invoke-static {v11, v12, v13, v14, v15}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 344
    :cond_42
    iget-object v0, v0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    .line 345
    invoke-interface/range {p1 .. p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    if-eqz v0, :cond_90

    .line 349
    invoke-static {v0}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->-$$Nest$fgetmRemoteAnimationDefinitions(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v6

    if-nez v6, :cond_69

    .line 356
    invoke-virtual {v2, v3, v4}, Landroid/view/RemoteAnimationDefinition;->setCallingPidUid(II)V

    .line 357
    invoke-static {v0}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->-$$Nest$fgetmRemoteAnimationDefinitions(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 358
    monitor-exit v5
    :try_end_65
    .catchall {:try_start_11 .. :try_end_65} :catchall_98

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 350
    :cond_69
    :try_start_69
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The organizer has already registered remote animations="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->-$$Nest$fgetmRemoteAnimationDefinitions(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;)Landroid/util/SparseArray;

    move-result-object v0

    .line 352
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for TaskId="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 347
    :cond_90
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The organizer hasn\'t been registered."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_98
    move-exception v0

    .line 358
    monitor-exit v5
    :try_end_9a
    .catchall {:try_start_69 .. :try_end_9a} :catchall_98

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public final removeOrganizer(Landroid/window/ITaskFragmentOrganizer;)V
    .registers 3

    .line 525
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->validateAndGetState(Landroid/window/ITaskFragmentOrganizer;)Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    move-result-object v0

    .line 527
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->dispose()V

    .line 528
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final shouldSendEventWhenTaskInvisible(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Z
    .registers 5

    .line 693
    invoke-static {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmEventType(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_9

    return v1

    .line 697
    :cond_9
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    invoke-static {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmTaskFragmentOrg(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Landroid/window/ITaskFragmentOrganizer;

    move-result-object v0

    .line 698
    invoke-interface {v0}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    .line 699
    invoke-static {p0}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->-$$Nest$fgetmLastSentTaskFragmentInfos(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmTaskFragment(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/window/TaskFragmentInfo;

    .line 700
    invoke-static {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmTaskFragment(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getTaskFragmentInfo()Landroid/window/TaskFragmentInfo;

    move-result-object v0

    .line 703
    invoke-static {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmEventType(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_45

    if-eqz p0, :cond_45

    .line 704
    invoke-virtual {p0}, Landroid/window/TaskFragmentInfo;->hasRunningActivity()Z

    move-result p0

    if-eqz p0, :cond_45

    invoke-virtual {v0}, Landroid/window/TaskFragmentInfo;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_45

    goto :goto_46

    :cond_45
    const/4 v1, 0x0

    :goto_46
    return v1
.end method

.method public unregisterOrganizer(Landroid/window/ITaskFragmentOrganizer;)V
    .registers 16

    .line 319
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->validateAndGetState(Landroid/window/ITaskFragmentOrganizer;)Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    .line 320
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 321
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    .line 322
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 324
    :try_start_10
    iget-object v5, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v5
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_53

    :try_start_13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 325
    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v6, :cond_42

    invoke-interface {p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    int-to-long v7, v0

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, -0x4e2aede8

    const/16 v10, 0x14

    const/4 v11, 0x0

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    const/4 v6, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v12, v6

    const/4 v1, 0x2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v12, v1

    invoke-static {v0, v9, v10, v11, v12}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 328
    :cond_42
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->removeOrganizer(Landroid/window/ITaskFragmentOrganizer;)V

    .line 329
    monitor-exit v5
    :try_end_46
    .catchall {:try_start_13 .. :try_end_46} :catchall_4d

    :try_start_46
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_53

    .line 331
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_4d
    move-exception p0

    .line 329
    :try_start_4e
    monitor-exit v5
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    :try_start_4f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_53
    .catchall {:try_start_4f .. :try_end_53} :catchall_53

    :catchall_53
    move-exception p0

    .line 331
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 332
    throw p0
.end method

.method public unregisterRemoteAnimations(Landroid/window/ITaskFragmentOrganizer;I)V
    .registers 15

    .line 363
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 364
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    .line 365
    iget-object v3, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 366
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v4, :cond_3b

    invoke-interface {p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    int-to-long v5, v0

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, -0x437186f

    const/16 v8, 0x14

    const/4 v9, 0x0

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    const/4 v4, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v10, v4

    const/4 v1, 0x2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v10, v1

    invoke-static {v0, v7, v8, v9, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 369
    :cond_3b
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    .line 370
    invoke-interface {p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    if-nez p0, :cond_55

    const-string p0, "TaskFragmentOrganizerController"

    const-string p1, "The organizer hasn\'t been registered."

    .line 372
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    monitor-exit v3
    :try_end_51
    .catchall {:try_start_c .. :try_end_51} :catchall_61

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 376
    :cond_55
    :try_start_55
    invoke-static {p0}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->-$$Nest$fgetmRemoteAnimationDefinitions(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 377
    monitor-exit v3
    :try_end_5d
    .catchall {:try_start_55 .. :try_end_5d} :catchall_61

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_61
    move-exception p0

    :try_start_62
    monitor-exit v3
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final validateAndGetState(Landroid/window/ITaskFragmentOrganizer;)Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;
    .registers 4

    .line 538
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    .line 539
    invoke-interface {p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    if-eqz p0, :cond_f

    return-object p0

    .line 541
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskFragmentOrganizer has not been registered. Organizer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
