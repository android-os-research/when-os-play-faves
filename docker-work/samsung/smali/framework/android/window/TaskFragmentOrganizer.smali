.class public Landroid/window/TaskFragmentOrganizer;
.super Landroid/window/WindowOrganizer;
.source "TaskFragmentOrganizer.java"


# static fields
.field private static final blacklist KEY_ERROR_CALLBACK_EXCEPTION:Ljava/lang/String; = "fragment_exception"

.field private static final blacklist KEY_ERROR_CALLBACK_OP_TYPE:Ljava/lang/String; = "operation_type"

.field private static final blacklist KEY_ERROR_CALLBACK_TASK_FRAGMENT_INFO:Ljava/lang/String; = "task_fragment_info"


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mInterface:Landroid/window/ITaskFragmentOrganizer;

.field private final blacklist mToken:Landroid/window/TaskFragmentOrganizerToken;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/window/TaskFragmentOrganizer;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/window/TaskFragmentOrganizer;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 67
    invoke-direct {p0}, Landroid/window/WindowOrganizer;-><init>()V

    .line 213
    new-instance v0, Landroid/window/TaskFragmentOrganizer$1;

    invoke-direct {v0, p0}, Landroid/window/TaskFragmentOrganizer$1;-><init>(Landroid/window/TaskFragmentOrganizer;)V

    iput-object v0, p0, Landroid/window/TaskFragmentOrganizer;->mInterface:Landroid/window/ITaskFragmentOrganizer;

    .line 263
    new-instance v1, Landroid/window/TaskFragmentOrganizerToken;

    invoke-direct {v1, v0}, Landroid/window/TaskFragmentOrganizerToken;-><init>(Landroid/window/ITaskFragmentOrganizer;)V

    iput-object v1, p0, Landroid/window/TaskFragmentOrganizer;->mToken:Landroid/window/TaskFragmentOrganizerToken;

    .line 68
    iput-object p1, p0, Landroid/window/TaskFragmentOrganizer;->mExecutor:Ljava/util/concurrent/Executor;

    .line 69
    return-void
.end method

.method private blacklist getController()Landroid/window/ITaskFragmentOrganizerController;
    .registers 3

    .line 272
    :try_start_0
    invoke-static {}, Landroid/window/TaskFragmentOrganizer;->getWindowOrganizerController()Landroid/window/IWindowOrganizerController;

    move-result-object v0

    invoke-interface {v0}, Landroid/window/IWindowOrganizerController;->getTaskFragmentOrganizerController()Landroid/window/ITaskFragmentOrganizerController;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 273
    :catch_9
    move-exception v0

    .line 274
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist putErrorInfoInBundle(Ljava/lang/Throwable;Landroid/window/TaskFragmentInfo;I)Landroid/os/Bundle;
    .registers 5
    .param p0, "exception"    # Ljava/lang/Throwable;
    .param p1, "info"    # Landroid/window/TaskFragmentInfo;
    .param p2, "opType"    # I

    .line 53
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 54
    .local v0, "errorBundle":Landroid/os/Bundle;
    const-string v1, "fragment_exception"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 55
    if-eqz p1, :cond_12

    .line 56
    const-string/jumbo v1, "task_fragment_info"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 58
    :cond_12
    const-string/jumbo v1, "operation_type"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    return-object v0
.end method


# virtual methods
.method public blacklist applyTransaction(Landroid/window/WindowContainerTransaction;)V
    .registers 3
    .param p1, "t"    # Landroid/window/WindowContainerTransaction;

    .line 209
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer;->mInterface:Landroid/window/ITaskFragmentOrganizer;

    invoke-virtual {p1, v0}, Landroid/window/WindowContainerTransaction;->setTaskFragmentOrganizer(Landroid/window/ITaskFragmentOrganizer;)Landroid/window/WindowContainerTransaction;

    .line 210
    invoke-super {p0, p1}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 211
    return-void
.end method

.method public blacklist getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 76
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public blacklist getOrganizerToken()Landroid/window/TaskFragmentOrganizerToken;
    .registers 2

    .line 267
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer;->mToken:Landroid/window/TaskFragmentOrganizerToken;

    return-object v0
.end method

.method public blacklist isActivityEmbedded(Landroid/os/IBinder;)Z
    .registers 4
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .line 285
    :try_start_0
    invoke-direct {p0}, Landroid/window/TaskFragmentOrganizer;->getController()Landroid/window/ITaskFragmentOrganizerController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/window/ITaskFragmentOrganizerController;->isActivityEmbedded(Landroid/os/IBinder;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 286
    :catch_9
    move-exception v0

    .line 287
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isSupportActivityEmbedded(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 298
    :try_start_0
    invoke-direct {p0}, Landroid/window/TaskFragmentOrganizer;->getController()Landroid/window/ITaskFragmentOrganizerController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/window/ITaskFragmentOrganizerController;->isSupportActivityEmbedded(Ljava/lang/String;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 299
    :catch_9
    move-exception v0

    .line 300
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist onActivityReparentToTask(ILandroid/content/Intent;Landroid/os/IBinder;)V
    .registers 4
    .param p1, "taskId"    # I
    .param p2, "activityIntent"    # Landroid/content/Intent;
    .param p3, "activityToken"    # Landroid/os/IBinder;

    .line 205
    return-void
.end method

.method public blacklist onTaskFragmentAppeared(Landroid/window/TaskFragmentInfo;)V
    .registers 2
    .param p1, "taskFragmentInfo"    # Landroid/window/TaskFragmentInfo;

    .line 135
    return-void
.end method

.method public blacklist onTaskFragmentError(Landroid/os/IBinder;Landroid/window/TaskFragmentInfo;ILjava/lang/Throwable;)V
    .registers 5
    .param p1, "errorCallbackToken"    # Landroid/os/IBinder;
    .param p2, "taskFragmentInfo"    # Landroid/window/TaskFragmentInfo;
    .param p3, "opType"    # I
    .param p4, "exception"    # Ljava/lang/Throwable;

    .line 186
    invoke-virtual {p0, p1, p4}, Landroid/window/TaskFragmentOrganizer;->onTaskFragmentError(Landroid/os/IBinder;Ljava/lang/Throwable;)V

    .line 187
    return-void
.end method

.method public blacklist onTaskFragmentError(Landroid/os/IBinder;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "errorCallbackToken"    # Landroid/os/IBinder;
    .param p2, "exception"    # Ljava/lang/Throwable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 168
    return-void
.end method

.method public blacklist onTaskFragmentInfoChanged(Landroid/window/TaskFragmentInfo;)V
    .registers 2
    .param p1, "taskFragmentInfo"    # Landroid/window/TaskFragmentInfo;

    .line 138
    return-void
.end method

.method public blacklist onTaskFragmentParentInfoChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "fragmentToken"    # Landroid/os/IBinder;
    .param p2, "parentConfig"    # Landroid/content/res/Configuration;

    .line 153
    return-void
.end method

.method public blacklist onTaskFragmentVanished(Landroid/window/TaskFragmentInfo;)V
    .registers 2
    .param p1, "taskFragmentInfo"    # Landroid/window/TaskFragmentInfo;

    .line 141
    return-void
.end method

.method public blacklist registerOrganizer()V
    .registers 3

    .line 85
    :try_start_0
    invoke-direct {p0}, Landroid/window/TaskFragmentOrganizer;->getController()Landroid/window/ITaskFragmentOrganizerController;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentOrganizer;->mInterface:Landroid/window/ITaskFragmentOrganizer;

    invoke-interface {v0, v1}, Landroid/window/ITaskFragmentOrganizerController;->registerOrganizer(Landroid/window/ITaskFragmentOrganizer;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 88
    nop

    .line 89
    return-void

    .line 86
    :catch_b
    move-exception v0

    .line 87
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist registerRemoteAnimations(ILandroid/view/RemoteAnimationDefinition;)V
    .registers 5
    .param p1, "taskId"    # I
    .param p2, "definition"    # Landroid/view/RemoteAnimationDefinition;

    .line 115
    :try_start_0
    invoke-direct {p0}, Landroid/window/TaskFragmentOrganizer;->getController()Landroid/window/ITaskFragmentOrganizerController;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentOrganizer;->mInterface:Landroid/window/ITaskFragmentOrganizer;

    invoke-interface {v0, v1, p1, p2}, Landroid/window/ITaskFragmentOrganizerController;->registerRemoteAnimations(Landroid/window/ITaskFragmentOrganizer;ILandroid/view/RemoteAnimationDefinition;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 118
    nop

    .line 119
    return-void

    .line 116
    :catch_b
    move-exception v0

    .line 117
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist unregisterOrganizer()V
    .registers 3

    .line 97
    :try_start_0
    invoke-direct {p0}, Landroid/window/TaskFragmentOrganizer;->getController()Landroid/window/ITaskFragmentOrganizerController;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentOrganizer;->mInterface:Landroid/window/ITaskFragmentOrganizer;

    invoke-interface {v0, v1}, Landroid/window/ITaskFragmentOrganizerController;->unregisterOrganizer(Landroid/window/ITaskFragmentOrganizer;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 100
    nop

    .line 101
    return-void

    .line 98
    :catch_b
    move-exception v0

    .line 99
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist unregisterRemoteAnimations(I)V
    .registers 4
    .param p1, "taskId"    # I

    .line 128
    :try_start_0
    invoke-direct {p0}, Landroid/window/TaskFragmentOrganizer;->getController()Landroid/window/ITaskFragmentOrganizerController;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentOrganizer;->mInterface:Landroid/window/ITaskFragmentOrganizer;

    invoke-interface {v0, v1, p1}, Landroid/window/ITaskFragmentOrganizerController;->unregisterRemoteAnimations(Landroid/window/ITaskFragmentOrganizer;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 131
    nop

    .line 132
    return-void

    .line 129
    :catch_b
    move-exception v0

    .line 130
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
