.class public Landroid/window/WindowOrganizer;
.super Ljava/lang/Object;
.source "WindowOrganizer.java"


# static fields
.field private static final blacklist IWindowOrganizerControllerSingleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/window/IWindowOrganizerController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 175
    new-instance v0, Landroid/window/WindowOrganizer$1;

    invoke-direct {v0}, Landroid/window/WindowOrganizer$1;-><init>()V

    sput-object v0, Landroid/window/WindowOrganizer;->IWindowOrganizerControllerSingleton:Landroid/util/Singleton;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getTransitionMetricsReporter()Landroid/window/ITransitionMetricsReporter;
    .registers 2

    .line 165
    :try_start_0
    invoke-static {}, Landroid/window/WindowOrganizer;->getWindowOrganizerController()Landroid/window/IWindowOrganizerController;

    move-result-object v0

    invoke-interface {v0}, Landroid/window/IWindowOrganizerController;->getTransitionMetricsReporter()Landroid/window/ITransitionMetricsReporter;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 166
    :catch_9
    move-exception v0

    .line 167
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method static blacklist getWindowOrganizerController()Landroid/window/IWindowOrganizerController;
    .registers 1

    .line 172
    sget-object v0, Landroid/window/WindowOrganizer;->IWindowOrganizerControllerSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/IWindowOrganizerController;

    return-object v0
.end method


# virtual methods
.method public blacklist applySyncTransaction(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)I
    .registers 5
    .param p1, "t"    # Landroid/window/WindowContainerTransaction;
    .param p2, "callback"    # Landroid/window/WindowContainerTransactionCallback;

    .line 77
    :try_start_0
    invoke-static {}, Landroid/window/WindowOrganizer;->getWindowOrganizerController()Landroid/window/IWindowOrganizerController;

    move-result-object v0

    iget-object v1, p2, Landroid/window/WindowContainerTransactionCallback;->mInterface:Landroid/window/IWindowContainerTransactionCallback;

    invoke-interface {v0, p1, v1}, Landroid/window/IWindowOrganizerController;->applySyncTransaction(Landroid/window/WindowContainerTransaction;Landroid/window/IWindowContainerTransactionCallback;)I

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 78
    :catch_b
    move-exception v0

    .line 79
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist applyTransaction(Landroid/window/WindowContainerTransaction;)V
    .registers 4
    .param p1, "t"    # Landroid/window/WindowContainerTransaction;

    .line 52
    :try_start_0
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 53
    invoke-static {}, Landroid/window/WindowOrganizer;->getWindowOrganizerController()Landroid/window/IWindowOrganizerController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/window/IWindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    .line 57
    :cond_d
    nop

    .line 58
    return-void

    .line 55
    :catch_f
    move-exception v0

    .line 56
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist finishTransition(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)I
    .registers 6
    .param p1, "transitionToken"    # Landroid/os/IBinder;
    .param p2, "t"    # Landroid/window/WindowContainerTransaction;
    .param p3, "callback"    # Landroid/window/WindowContainerTransactionCallback;

    .line 118
    :try_start_0
    invoke-static {}, Landroid/window/WindowOrganizer;->getWindowOrganizerController()Landroid/window/IWindowOrganizerController;

    move-result-object v0

    .line 119
    if-eqz p3, :cond_9

    iget-object v1, p3, Landroid/window/WindowContainerTransactionCallback;->mInterface:Landroid/window/IWindowContainerTransactionCallback;

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    .line 118
    :goto_a
    invoke-interface {v0, p1, p2, v1}, Landroid/window/IWindowOrganizerController;->finishTransition(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;Landroid/window/IWindowContainerTransactionCallback;)I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return v0

    .line 120
    :catch_f
    move-exception v0

    .line 121
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist registerTransitionPlayer(Landroid/window/ITransitionPlayer;)V
    .registers 4
    .param p1, "player"    # Landroid/window/ITransitionPlayer;

    .line 153
    :try_start_0
    invoke-static {}, Landroid/window/WindowOrganizer;->getWindowOrganizerController()Landroid/window/IWindowOrganizerController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/window/IWindowOrganizerController;->registerTransitionPlayer(Landroid/window/ITransitionPlayer;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 156
    nop

    .line 157
    return-void

    .line 154
    :catch_9
    move-exception v0

    .line 155
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist startLegacyTransition(ILandroid/view/RemoteAnimationAdapter;Landroid/window/WindowContainerTransactionCallback;Landroid/window/WindowContainerTransaction;)I
    .registers 7
    .param p1, "type"    # I
    .param p2, "adapter"    # Landroid/view/RemoteAnimationAdapter;
    .param p3, "syncCallback"    # Landroid/window/WindowContainerTransactionCallback;
    .param p4, "t"    # Landroid/window/WindowContainerTransaction;

    .line 139
    :try_start_0
    invoke-static {}, Landroid/window/WindowOrganizer;->getWindowOrganizerController()Landroid/window/IWindowOrganizerController;

    move-result-object v0

    iget-object v1, p3, Landroid/window/WindowContainerTransactionCallback;->mInterface:Landroid/window/IWindowContainerTransactionCallback;

    invoke-interface {v0, p1, p2, v1, p4}, Landroid/window/IWindowOrganizerController;->startLegacyTransition(ILandroid/view/RemoteAnimationAdapter;Landroid/window/IWindowContainerTransactionCallback;Landroid/window/WindowContainerTransaction;)I

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 141
    :catch_b
    move-exception v0

    .line 142
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist startTransition(ILandroid/os/IBinder;Landroid/window/WindowContainerTransaction;)Landroid/os/IBinder;
    .registers 6
    .param p1, "type"    # I
    .param p2, "transitionToken"    # Landroid/os/IBinder;
    .param p3, "t"    # Landroid/window/WindowContainerTransaction;

    .line 97
    :try_start_0
    invoke-static {}, Landroid/window/WindowOrganizer;->getWindowOrganizerController()Landroid/window/IWindowOrganizerController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/window/IWindowOrganizerController;->startTransition(ILandroid/os/IBinder;Landroid/window/WindowContainerTransaction;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 98
    :catch_9
    move-exception v0

    .line 99
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
