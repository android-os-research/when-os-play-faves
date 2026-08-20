.class public Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;
.super Ljava/lang/Object;
.source "TaskOrganizerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskOrganizerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskOrganizerCallbacks"
.end annotation


# instance fields
.field public final mDeferTaskOrgCallbacksConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final mTaskOrganizer:Landroid/window/ITaskOrganizer;

.field public final synthetic this$0:Lcom/android/server/wm/TaskOrganizerController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TaskOrganizerController;Landroid/window/ITaskOrganizer;Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/ITaskOrganizer;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->this$0:Lcom/android/server/wm/TaskOrganizerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p3, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mDeferTaskOrgCallbacksConsumer:Ljava/util/function/Consumer;

    .line 114
    iput-object p2, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    return-void
.end method


# virtual methods
.method public getBinder()Landroid/os/IBinder;
    .registers 1

    .line 118
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    invoke-interface {p0}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onBackPressedOnTaskRoot(Lcom/android/server/wm/Task;)V
    .registers 10

    .line 168
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v0, :cond_1a

    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    int-to-long v0, v0

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x7a2c55cf

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v2, v3, v5, v4, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 170
    :cond_1a
    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mTaskAppearedSent:Z

    if-nez v0, :cond_1f

    return-void

    .line 174
    :cond_1f
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-nez v0, :cond_26

    return-void

    .line 179
    :cond_26
    :try_start_26
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/window/ITaskOrganizer;->onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2f} :catch_30

    goto :goto_38

    :catch_30
    move-exception p0

    const-string p1, "TaskOrganizerController"

    const-string v0, "Exception sending onBackPressedOnTaskRoot callback"

    .line 181
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_38
    return-void
.end method

.method public onTaskAppeared(Lcom/android/server/wm/Task;)V
    .registers 10

    .line 126
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v0, :cond_1a

    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    int-to-long v0, v0

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x725932d9

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v2, v3, v5, v4, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 127
    :cond_1a
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    .line 129
    :try_start_1e
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    const-string v2, "TaskOrganizerController.onTaskAppeared"

    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->prepareLeash(Lcom/android/server/wm/Task;Ljava/lang/String;)Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-interface {v1, v0, p0}, Landroid/window/ITaskOrganizer;->onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_29} :catch_2a

    goto :goto_32

    :catch_2a
    move-exception p0

    const-string p1, "TaskOrganizerController"

    const-string v0, "Exception sending onTaskAppeared callback"

    .line 132
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_32
    return-void
.end method

.method public onTaskInfoChanged(Lcom/android/server/wm/Task;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 11

    .line 148
    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mTaskAppearedSent:Z

    if-nez v0, :cond_5

    return-void

    .line 152
    :cond_5
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v0, :cond_1f

    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    int-to-long v0, v0

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x120ef2a7

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v2, v3, v5, v4, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 153
    :cond_1f
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result p1

    if-nez p1, :cond_26

    return-void

    .line 161
    :cond_26
    :try_start_26
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    invoke-interface {p0, p2}, Landroid/window/ITaskOrganizer;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2c

    goto :goto_34

    :catch_2c
    move-exception p0

    const-string p1, "TaskOrganizerController"

    const-string p2, "Exception sending onTaskInfoChanged callback"

    .line 163
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_34
    return-void
.end method

.method public onTaskVanished(Lcom/android/server/wm/Task;)V
    .registers 10

    .line 138
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v0, :cond_1a

    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    int-to-long v0, v0

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x51588141

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v2, v3, v5, v4, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 139
    :cond_1a
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    .line 141
    :try_start_1e
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    invoke-interface {p0, p1}, Landroid/window/ITaskOrganizer;->onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_23} :catch_24

    goto :goto_2c

    :catch_24
    move-exception p0

    const-string p1, "TaskOrganizerController"

    const-string v0, "Exception sending onTaskVanished callback"

    .line 143
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2c
    return-void
.end method

.method public prepareLeash(Lcom/android/server/wm/Task;Ljava/lang/String;)Landroid/view/SurfaceControl;
    .registers 3

    .line 122
    new-instance p0, Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    return-object p0
.end method
