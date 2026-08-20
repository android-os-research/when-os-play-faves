.class public Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;
.super Ljava/lang/Object;
.source "TaskFragmentOrganizerController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskFragmentOrganizerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskFragmentOrganizerState"
.end annotation


# instance fields
.field public final mLastSentTaskFragmentInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/wm/TaskFragment;",
            "Landroid/window/TaskFragmentInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mLastSentTaskFragmentParentConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/wm/TaskFragment;",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field public final mOrganizedTaskFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/TaskFragment;",
            ">;"
        }
    .end annotation
.end field

.field public final mOrganizer:Landroid/window/ITaskFragmentOrganizer;

.field public final mOrganizerPid:I

.field public final mOrganizerUid:I

.field public final mRemoteAnimationDefinitions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/RemoteAnimationDefinition;",
            ">;"
        }
    .end annotation
.end field

.field public final mTemporaryActivityTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;


# direct methods
.method public static synthetic $r8$lambda$WDWRca8OtMa4bqGuai-zWuZ3OL8(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->lambda$onActivityReparentToTask$0(Landroid/os/IBinder;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmLastSentTaskFragmentInfos(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mLastSentTaskFragmentInfos:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOrganizerUid(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;)I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizerUid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRemoteAnimationDefinitions(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mRemoteAnimationDefinitions:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTemporaryActivityTokens(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mTemporaryActivityTokens:Ljava/util/Map;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/TaskFragmentOrganizerController;Landroid/window/ITaskFragmentOrganizer;II)V
    .registers 5

    .line 106
    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizedTaskFragments:Ljava/util/ArrayList;

    .line 91
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mLastSentTaskFragmentInfos:Ljava/util/Map;

    .line 93
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mLastSentTaskFragmentParentConfigs:Ljava/util/Map;

    .line 95
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mTemporaryActivityTokens:Ljava/util/Map;

    .line 103
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mRemoteAnimationDefinitions:Landroid/util/SparseArray;

    .line 107
    iput-object p2, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizer:Landroid/window/ITaskFragmentOrganizer;

    .line 108
    iput p3, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizerPid:I

    .line 109
    iput p4, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizerUid:I

    .line 111
    :try_start_2e
    invoke-interface {p2}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_36} :catch_37

    goto :goto_3e

    :catch_37
    const-string p0, "TaskFragmentOrganizerController"

    const-string p1, "TaskFragmentOrganizer failed to register death recipient"

    .line 113
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3e
    return-void
.end method

.method private synthetic lambda$onActivityReparentToTask$0(Landroid/os/IBinder;)V
    .registers 3

    .line 270
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-static {v0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->-$$Nest$fgetmGlobalLock(Lcom/android/server/wm/TaskFragmentOrganizerController;)Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 271
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mTemporaryActivityTokens:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_14
    move-exception p0

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method


# virtual methods
.method public addTaskFragment(Lcom/android/server/wm/TaskFragment;)Z
    .registers 4

    .line 128
    iget-boolean v0, p1, Lcom/android/server/wm/TaskFragment;->mTaskFragmentAppearedSent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 131
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizedTaskFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    return v1

    .line 134
    :cond_f
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizedTaskFragments:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public binderDied()V
    .registers 3

    .line 119
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-static {v0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->-$$Nest$fgetmGlobalLock(Lcom/android/server/wm/TaskFragmentOrganizerController;)Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 120
    iget-object v1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;

    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizer:Landroid/window/ITaskFragmentOrganizer;

    invoke-static {v1, p0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->-$$Nest$mremoveOrganizer(Lcom/android/server/wm/TaskFragmentOrganizerController;Landroid/window/ITaskFragmentOrganizer;)V

    .line 121
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_16
    move-exception p0

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public dispose()V
    .registers 3

    .line 143
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizedTaskFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    .line 144
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizedTaskFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskFragment;

    .line 145
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->removeImmediately()V

    .line 146
    iget-object v1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizedTaskFragments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 153
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizer:Landroid/window/ITaskFragmentOrganizer;

    invoke-interface {v0}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method

.method public onActivityReparentToTask(Lcom/android/server/wm/ActivityRecord;)V
    .registers 14

    .line 243
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const-string v1, "Reparent activity="

    const-string v2, "TaskFragmentOrganizerController"

    if-eqz v0, :cond_22

    .line 244
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is finishing"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 247
    :cond_22
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_b0

    .line 248
    iget v3, v0, Lcom/android/server/wm/Task;->effectiveUid:I

    iget v4, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizerUid:I

    if-eq v3, v4, :cond_30

    goto/16 :goto_b0

    .line 253
    :cond_30
    invoke-virtual {v0, p1, v4}, Lcom/android/server/wm/TaskFragment;->isAllowedToEmbedActivity(Lcom/android/server/wm/ActivityRecord;I)I

    move-result v3

    if-eqz v3, :cond_50

    .line 254
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not allowed to be embedded."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 260
    :cond_50
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getPid()I

    move-result v1

    iget v3, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizerPid:I

    if-ne v1, v3, :cond_5b

    .line 262
    iget-object v1, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    goto :goto_7b

    .line 267
    :cond_5b
    new-instance v1, Landroid/os/Binder;

    const-string v3, "TemporaryActivityToken"

    invoke-direct {v1, v3}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    .line 268
    iget-object v3, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mTemporaryActivityTokens:Ljava/util/Map;

    invoke-interface {v3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    new-instance v3, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;Landroid/os/IBinder;)V

    .line 274
    iget-object v4, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-static {v4}, Lcom/android/server/wm/TaskFragmentOrganizerController;->-$$Nest$fgetmAtmService(Lcom/android/server/wm/TaskFragmentOrganizerController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v5, 0x1388

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 277
    :goto_7b
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v3, :cond_9f

    iget-object v3, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Lcom/android/server/wm/Task;->mTaskId:I

    int-to-long v4, v4

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x340b60f4

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    const/4 v3, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v10, v3

    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 280
    :cond_9f
    :try_start_9f
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizer:Landroid/window/ITaskFragmentOrganizer;

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-interface {p0, v0, p1, v1}, Landroid/window/ITaskFragmentOrganizer;->onActivityReparentToTask(ILandroid/content/Intent;Landroid/os/IBinder;)V
    :try_end_a8
    .catch Landroid/os/RemoteException; {:try_start_9f .. :try_end_a8} :catch_a9

    goto :goto_af

    :catch_a9
    move-exception p0

    const-string p1, "Exception sending onActivityReparentToTask callback"

    .line 282
    invoke-static {v2, p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_af
    return-void

    .line 249
    :cond_b0
    :goto_b0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not in a task belong to the organizer app."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTaskFragmentAppeared(Lcom/android/server/wm/TaskFragment;)V
    .registers 9

    .line 157
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x4c8a259d    # 7.2428776E7f

    const/4 v4, 0x0

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 158
    :cond_1b
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTaskFragmentInfo()Landroid/window/TaskFragmentInfo;

    move-result-object v0

    .line 160
    :try_start_1f
    iget-object v2, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizer:Landroid/window/ITaskFragmentOrganizer;

    invoke-interface {v2, v0}, Landroid/window/ITaskFragmentOrganizer;->onTaskFragmentAppeared(Landroid/window/TaskFragmentInfo;)V

    .line 161
    iget-object v2, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mLastSentTaskFragmentInfos:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iput-boolean v1, p1, Lcom/android/server/wm/TaskFragment;->mTaskFragmentAppearedSent:Z
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_2b} :catch_2c

    goto :goto_34

    :catch_2c
    move-exception v0

    const-string v1, "TaskFragmentOrganizerController"

    const-string v2, "Exception sending onTaskFragmentAppeared callback"

    .line 164
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    :goto_34
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->onTaskFragmentParentInfoChanged(Lcom/android/server/wm/TaskFragment;)V

    return-void
.end method

.method public onTaskFragmentError(Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V
    .registers 11

    .line 230
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    invoke-virtual {p4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x2c4faa37

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v5, v1, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1b
    if-eqz p2, :cond_21

    .line 233
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getTaskFragmentInfo()Landroid/window/TaskFragmentInfo;

    move-result-object v1

    .line 234
    :cond_21
    invoke-static {p4, v1, p3}, Landroid/window/TaskFragmentOrganizer;->putErrorInfoInBundle(Ljava/lang/Throwable;Landroid/window/TaskFragmentInfo;I)Landroid/os/Bundle;

    move-result-object p2

    .line 236
    :try_start_25
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizer:Landroid/window/ITaskFragmentOrganizer;

    invoke-interface {p0, p1, p2}, Landroid/window/ITaskFragmentOrganizer;->onTaskFragmentError(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2a} :catch_2b

    goto :goto_33

    :catch_2b
    move-exception p0

    const-string p1, "TaskFragmentOrganizerController"

    const-string p2, "Exception sending onTaskFragmentError callback"

    .line 238
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_33
    return-void
.end method

.method public onTaskFragmentInfoChanged(Lcom/android/server/wm/TaskFragment;)V
    .registers 9

    .line 184
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->onTaskFragmentParentInfoChanged(Lcom/android/server/wm/TaskFragment;)V

    .line 187
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTaskFragmentInfo()Landroid/window/TaskFragmentInfo;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mLastSentTaskFragmentInfos:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TaskFragmentInfo;

    .line 189
    invoke-virtual {v0, v1}, Landroid/window/TaskFragmentInfo;->equalsForTaskFragmentOrganizer(Landroid/window/TaskFragmentInfo;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 190
    invoke-virtual {v0}, Landroid/window/TaskFragmentInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1}, Landroid/window/TaskFragmentInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 189
    invoke-static {v2, v1}, Lcom/android/server/wm/WindowOrganizerController;->configurationsAreEqualForOrganizer(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_24

    return-void

    .line 193
    :cond_24
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v1, :cond_3f

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x3cebf0eb

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 196
    :cond_3f
    :try_start_3f
    iget-object v1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizer:Landroid/window/ITaskFragmentOrganizer;

    invoke-interface {v1, v0}, Landroid/window/ITaskFragmentOrganizer;->onTaskFragmentInfoChanged(Landroid/window/TaskFragmentInfo;)V

    .line 197
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mLastSentTaskFragmentInfos:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_49} :catch_4a

    goto :goto_52

    :catch_4a
    move-exception p0

    const-string p1, "TaskFragmentOrganizerController"

    const-string v0, "Exception sending onTaskFragmentInfoChanged callback"

    .line 199
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_52
    return-void
.end method

.method public onTaskFragmentParentInfoChanged(Lcom/android/server/wm/TaskFragment;)V
    .registers 12

    .line 205
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_7d

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_7d

    .line 209
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 211
    iget-object v2, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mLastSentTaskFragmentParentConfigs:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Configuration;

    .line 212
    invoke-static {v1, v2}, Lcom/android/server/wm/WindowOrganizerController;->configurationsAreEqualForOrganizer(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 213
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v3

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 214
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v2

    if-ne v3, v2, :cond_3a

    return-void

    .line 217
    :cond_3a
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v2, :cond_60

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    int-to-long v3, v0

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x2a1c0f19

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    const/4 v2, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v8, v2

    invoke-static {v0, v5, v6, v7, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 221
    :cond_60
    :try_start_60
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizer:Landroid/window/ITaskFragmentOrganizer;

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getFragmentToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/window/ITaskFragmentOrganizer;->onTaskFragmentParentInfoChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;)V

    .line 222
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mLastSentTaskFragmentParentConfigs:Ljava/util/Map;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_73} :catch_74

    goto :goto_7c

    :catch_74
    move-exception p0

    const-string p1, "TaskFragmentOrganizerController"

    const-string v0, "Exception sending onTaskFragmentParentInfoChanged callback"

    .line 224
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7c
    return-void

    .line 206
    :cond_7d
    :goto_7d
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mLastSentTaskFragmentParentConfigs:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onTaskFragmentVanished(Lcom/android/server/wm/TaskFragment;)V
    .registers 8

    .line 170
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x2059ccfd

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-static {v2, v3, v1, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 172
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizer:Landroid/window/ITaskFragmentOrganizer;

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTaskFragmentInfo()Landroid/window/TaskFragmentInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/window/ITaskFragmentOrganizer;->onTaskFragmentVanished(Landroid/window/TaskFragmentInfo;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_24} :catch_25

    goto :goto_2d

    :catch_25
    move-exception v0

    const-string v2, "TaskFragmentOrganizerController"

    const-string v3, "Exception sending onTaskFragmentVanished callback"

    .line 174
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    :goto_2d
    iput-boolean v1, p1, Lcom/android/server/wm/TaskFragment;->mTaskFragmentAppearedSent:Z

    .line 177
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mLastSentTaskFragmentInfos:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mLastSentTaskFragmentParentConfigs:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeTaskFragment(Lcom/android/server/wm/TaskFragment;)V
    .registers 2

    .line 139
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizedTaskFragments:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
