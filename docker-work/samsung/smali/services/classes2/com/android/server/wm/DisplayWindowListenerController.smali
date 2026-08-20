.class public Lcom/android/server/wm/DisplayWindowListenerController;
.super Ljava/lang/Object;
.source "DisplayWindowListenerController.java"


# instance fields
.field public mDisplayListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/IDisplayWindowListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$MjweUNs2a4e3vbdSGHMpGMzdHTM(Landroid/util/IntArray;Lcom/android/server/wm/DisplayContent;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/DisplayWindowListenerController;->lambda$registerListener$0(Landroid/util/IntArray;Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    .line 39
    iput-object p1, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mService:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method public static synthetic lambda$registerListener$0(Landroid/util/IntArray;Lcom/android/server/wm/DisplayContent;)V
    .registers 2

    .line 47
    iget p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p0, p1}, Landroid/util/IntArray;->add(I)V

    return-void
.end method


# virtual methods
.method public dispatchDisplayAdded(Lcom/android/server/wm/DisplayContent;)V
    .registers 6

    .line 58
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_19

    .line 61
    :try_start_9
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IDisplayWindowListener;

    iget v3, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-interface {v2, v3}, Landroid/view/IDisplayWindowListener;->onDisplayAdded(I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_16} :catch_16

    :catch_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 65
    :cond_19
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public dispatchDisplayChanged(Lcom/android/server/wm/DisplayContent;Landroid/content/res/Configuration;)V
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 71
    :goto_3
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1b

    .line 72
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-ne v3, p1, :cond_18

    const/4 v2, 0x1

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1b
    if-nez v2, :cond_1e

    return-void

    .line 79
    :cond_1e
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    :goto_24
    if-ge v0, v1, :cond_38

    .line 82
    :try_start_26
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IDisplayWindowListener;

    .line 83
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    .line 82
    invoke-interface {v2, v3, p2}, Landroid/view/IDisplayWindowListener;->onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_35} :catch_35

    :catch_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 87
    :cond_38
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public dispatchDisplayRemoved(Lcom/android/server/wm/DisplayContent;)V
    .registers 6

    .line 91
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_19

    .line 94
    :try_start_9
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IDisplayWindowListener;

    iget v3, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-interface {v2, v3}, Landroid/view/IDisplayWindowListener;->onDisplayRemoved(I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_16} :catch_16

    :catch_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 98
    :cond_19
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public dispatchFixedRotationFinished(Lcom/android/server/wm/DisplayContent;)V
    .registers 6

    .line 114
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_19

    .line 117
    :try_start_9
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IDisplayWindowListener;

    iget v3, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-interface {v2, v3}, Landroid/view/IDisplayWindowListener;->onFixedRotationFinished(I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_16} :catch_16

    :catch_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 121
    :cond_19
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public dispatchFixedRotationStarted(Lcom/android/server/wm/DisplayContent;I)V
    .registers 7

    .line 102
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_19

    .line 105
    :try_start_9
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IDisplayWindowListener;

    iget v3, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-interface {v2, v3, p2}, Landroid/view/IDisplayWindowListener;->onFixedRotationStarted(II)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_16} :catch_16

    :catch_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 110
    :cond_19
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public dispatchKeepClearAreasChanged(Lcom/android/server/wm/DisplayContent;Ljava/util/Set;Ljava/util/Set;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/DisplayContent;",
            "Ljava/util/Set<",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_23

    .line 129
    :try_start_9
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IDisplayWindowListener;

    iget v3, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v3, v4, v5}, Landroid/view/IDisplayWindowListener;->onKeepClearAreasChanged(ILjava/util/List;Ljava/util/List;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_20} :catch_20

    :catch_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 134
    :cond_23
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public registerListener(Landroid/view/IDisplayWindowListener;)[I
    .registers 4

    .line 43
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 44
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 45
    new-instance p1, Landroid/util/IntArray;

    invoke-direct {p1}, Landroid/util/IntArray;-><init>()V

    .line 46
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance v1, Lcom/android/server/wm/DisplayWindowListenerController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/wm/DisplayWindowListenerController$$ExternalSyntheticLambda0;-><init>(Landroid/util/IntArray;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 49
    invoke-virtual {p1}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_29

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p0

    :catchall_29
    move-exception p0

    .line 50
    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public unregisterListener(Landroid/view/IDisplayWindowListener;)V
    .registers 2

    .line 54
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method
