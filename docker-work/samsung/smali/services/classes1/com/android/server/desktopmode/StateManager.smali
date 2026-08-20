.class public Lcom/android/server/desktopmode/StateManager;
.super Ljava/lang/Object;
.source "StateManager.java"

# interfaces
.implements Lcom/android/server/desktopmode/IStateManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/StateManager$StateListener;,
        Lcom/android/server/desktopmode/StateManager$InternalState;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public volatile mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

.field public final mLock:Ljava/lang/Object;

.field public volatile mState:Lcom/android/server/desktopmode/State;

.field public mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/server/desktopmode/StateManager$StateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0sBRQpqKxkKfPtvF6aXFafYH7v0(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/StateManager;->lambda$setTouchpadEnabled$15(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1-NFB3TAd7DzZjYtsTufATvfGmk(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/StateManager;->lambda$setCurrentUserId$10(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static synthetic $r8$lambda$466zUQxtPOgX0HM0gvlCkdw-bJ8(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/StateManager;->lambda$setForcedInternalScreenModeEnabled$7(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7MaQEZoykB9qWpG9_Q5d5G8Wid4(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/StateManager;->lambda$setMouseConnected$3(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7s0PoWxYMW15BYxVDljcoezetZU(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/StateManager;->lambda$setExternalDisplayConnected$0(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static synthetic $r8$lambda$80XkE2JeBpImuE-gFdEogvixmD4(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/StateManager;->lambda$setCoverState$9(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ABP4Xd4C0arbC6WL00_SduYU2Fc(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/StateManager;->lambda$setSpenEnabled$16(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AQQ-IKXXcE40lplOLQwvnMBKIx0(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/StateManager;->lambda$setDockState$6(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GayMBdY9AFPtd3oy5voVZqAglCs(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/StateManager;->lambda$setExternalDisplayUpdated$1(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OsbbNpfhUCyjWoV9db-OXiYIYGw(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/StateManager;->lambda$setNavBarGestureEnabled$17(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Pjv8ebwslumxale9qe7nNgBrN3w(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/StateManager;->lambda$setEmergencyModeEnabled$12(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_9ltRE5YUbF0p4CF3HJ3K9CM0mY(Lcom/android/server/desktopmode/StateManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/desktopmode/StateManager;->lambda$notifyBootCompleted$18()V

    return-void
.end method

.method public static synthetic $r8$lambda$_smnUVFGExYsM5miZKYaPRyWffA(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/StateManager;->lambda$setDockLowChargerState$8(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jb_1rqRsEmwgmRP9-rEwugzRrXk(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/StateManager;->lambda$setPogoKeyboardConnected$4(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kTKfiS786LZ5-PaHbChiUV5zCk0(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/StateManager;->lambda$setTouchpadAvailable$14(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lkKizrp02YFxfJkvsaizUhPK84U(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/StateManager;->lambda$setDesktopDisplayId$2(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pPOdod7MlDNQDFaKiYpPXvP97to(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/StateManager;->lambda$setWiredCharging$5(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s8HiOQaRVxe1ug1E2TU6T1zamq4(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/StateManager;->lambda$setPackageState$11(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sCN9TlObIj4L80IlRxeASLbvHNw(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/StateManager;->lambda$setDesktopModeState$13(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/StateManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/ServiceThread;)V
    .registers 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    .line 31
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 32
    new-instance v0, Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-direct {v0}, Lcom/android/server/desktopmode/StateManager$InternalState;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mState:Lcom/android/server/desktopmode/State;

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$notifyBootCompleted$18()V
    .registers 2

    .line 373
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 374
    invoke-virtual {v0}, Lcom/android/server/desktopmode/StateManager$StateListener;->onBootCompleted()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private synthetic lambda$setCoverState$9(Lcom/android/server/desktopmode/State;)V
    .registers 3

    .line 206
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 207
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onCoverSupportStateChanged(Lcom/android/server/desktopmode/State;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private synthetic lambda$setCurrentUserId$10(Lcom/android/server/desktopmode/State;)V
    .registers 3

    .line 222
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 223
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onUserChanged(Lcom/android/server/desktopmode/State;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private synthetic lambda$setDesktopDisplayId$2(Lcom/android/server/desktopmode/State;)V
    .registers 3

    .line 90
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 91
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onDesktopDisplayIdChanged(Lcom/android/server/desktopmode/State;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private synthetic lambda$setDesktopModeState$13(Lcom/android/server/desktopmode/State;)V
    .registers 3

    .line 267
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 268
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onDesktopModeStateChanged(Lcom/android/server/desktopmode/State;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private synthetic lambda$setDockLowChargerState$8(Lcom/android/server/desktopmode/State;)V
    .registers 3

    .line 185
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 186
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onDockLowChargerPowerChanged(Lcom/android/server/desktopmode/State;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private synthetic lambda$setDockState$6(Lcom/android/server/desktopmode/State;)V
    .registers 3

    .line 154
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 155
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onDockStateChanged(Lcom/android/server/desktopmode/State;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private synthetic lambda$setEmergencyModeEnabled$12(Lcom/android/server/desktopmode/State;)V
    .registers 3

    .line 252
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 253
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onEmergencyModeChanged(Lcom/android/server/desktopmode/State;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private synthetic lambda$setExternalDisplayConnected$0(Lcom/android/server/desktopmode/State;)V
    .registers 3

    .line 55
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 56
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onExternalDisplayConnectionChanged(Lcom/android/server/desktopmode/State;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private synthetic lambda$setExternalDisplayUpdated$1(Lcom/android/server/desktopmode/State;)V
    .registers 3

    .line 74
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 75
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onExternalDisplayUpdated(Lcom/android/server/desktopmode/State;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private synthetic lambda$setForcedInternalScreenModeEnabled$7(Lcom/android/server/desktopmode/State;)V
    .registers 3

    .line 169
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 170
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onForcedInternalScreenStateChanged(Lcom/android/server/desktopmode/State;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private synthetic lambda$setMouseConnected$3(Lcom/android/server/desktopmode/State;)V
    .registers 3

    .line 106
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 107
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onMouseConnectionChanged(Lcom/android/server/desktopmode/State;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private synthetic lambda$setNavBarGestureEnabled$17(Lcom/android/server/desktopmode/State;)V
    .registers 3

    .line 353
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 354
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onNavBarGestureEnabled(Lcom/android/server/desktopmode/State;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private synthetic lambda$setPackageState$11(Lcom/android/server/desktopmode/State;)V
    .registers 3

    .line 237
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 238
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onPackageStateChanged(Lcom/android/server/desktopmode/State;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private synthetic lambda$setPogoKeyboardConnected$4(Lcom/android/server/desktopmode/State;)V
    .registers 3

    .line 122
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 123
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onPogoKeyboardConnectionChanged(Lcom/android/server/desktopmode/State;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private synthetic lambda$setSpenEnabled$16(Lcom/android/server/desktopmode/State;)V
    .registers 3

    .line 326
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 327
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onSpenEnabled(Lcom/android/server/desktopmode/State;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private synthetic lambda$setTouchpadAvailable$14(Lcom/android/server/desktopmode/State;)V
    .registers 3

    .line 293
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 294
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onTouchpadAvailabilityChanged(Lcom/android/server/desktopmode/State;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private synthetic lambda$setTouchpadEnabled$15(Lcom/android/server/desktopmode/State;)V
    .registers 3

    .line 310
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 311
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onTouchpadEnabled(Lcom/android/server/desktopmode/State;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private synthetic lambda$setWiredCharging$5(Lcom/android/server/desktopmode/State;)V
    .registers 3

    .line 138
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 139
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onWiredChargingChanged(Lcom/android/server/desktopmode/State;)V

    goto :goto_6

    :cond_16
    return-void
.end method


# virtual methods
.method public final copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;
    .registers 3

    .line 362
    invoke-static {p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fgetmSeq(Lcom/android/server/desktopmode/StateManager$InternalState;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fputmSeq(Lcom/android/server/desktopmode/StateManager$InternalState;I)V

    .line 363
    new-instance v0, Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-direct {v0, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;-><init>(Lcom/android/server/desktopmode/StateManager$InternalState;)V

    .line 364
    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mState:Lcom/android/server/desktopmode/State;

    .line 365
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_1d

    sget-object p0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    return-object v0
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 5

    .line 499
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 500
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/android/server/desktopmode/StateManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 501
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/desktopmode/StateManager;->mState:Lcom/android/server/desktopmode/State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mStateListeners="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 505
    monitor-exit v0

    return-void

    :catchall_58
    move-exception p0

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_3 .. :try_end_5a} :catchall_58

    throw p0
.end method

.method public getState()Lcom/android/server/desktopmode/State;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 39
    :try_start_3
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mState:Lcom/android/server/desktopmode/State;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 40
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public notifyBootCompleted()V
    .registers 3

    .line 371
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "notifyBootCompleted()"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_c
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/desktopmode/StateManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyDisplayDisconnectionRequest(I)V
    .registers 5

    .line 477
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyDisplayDisconnectionRequest(displayType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_20
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_26
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 480
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onDisplayDisconnectionRequested(I)V

    goto :goto_26

    :cond_36
    return-void
.end method

.method public notifyDualModeOnConfigurationChanged(Z)V
    .registers 5

    .line 453
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyDualOnConfigurationChanged(enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_20
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_26
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 455
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onDualModeConfigurationChanged(Z)V

    goto :goto_26

    :cond_36
    return-void
.end method

.method public notifyDualModeSetDesktopMode(Lcom/android/server/desktopmode/State;Z)V
    .registers 6

    .line 429
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyDualSetDesktopMode(enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_20
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_26
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 431
    invoke-virtual {v0, p1, p2}, Lcom/android/server/desktopmode/StateManager$StateListener;->onDualModeSetDesktopMode(Lcom/android/server/desktopmode/State;Z)V

    goto :goto_26

    :cond_36
    return-void
.end method

.method public notifyDualModeSetDesktopModeInternal(Z)V
    .registers 5

    .line 445
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyDualModeSetDesktopModeInternal(enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_20
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_26
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 447
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onDualModeSetDesktopModeInternal(Z)V

    goto :goto_26

    :cond_36
    return-void
.end method

.method public notifyDualModeStartLoadingScreen(Z)V
    .registers 5

    .line 437
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyDualStartLoadingScreen(enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_20
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_26
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 439
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onDualModeStartLoadingScreen(Z)V

    goto :goto_26

    :cond_36
    return-void
.end method

.method public notifyDualModeStopLoadingScreen(Z)V
    .registers 5

    .line 461
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyDualStopLoadingScreen(enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_20
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_26
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 463
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onDualModeStopLoadingScreen(Z)V

    goto :goto_26

    :cond_36
    return-void
.end method

.method public notifyLauncherPackageReplaced(Z)V
    .registers 5

    .line 381
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyLauncherPackageReplaced(dataCleared="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_20
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_26
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 383
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onLauncherPackageReplaced(Z)V

    goto :goto_26

    :cond_36
    return-void
.end method

.method public notifyOnConfigurationChanged(Z)V
    .registers 5

    .line 413
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyOnConfigurationChanged(enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_20
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_26
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 415
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onConfigurationChanged(Z)V

    goto :goto_26

    :cond_36
    return-void
.end method

.method public notifyScheduleUpdateDesktopMode(Z)V
    .registers 5

    .line 469
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyScheduleUpdateDesktopMode(enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_20
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_26
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 471
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onScheduleUpdateDesktopMode(Z)V

    goto :goto_26

    :cond_36
    return-void
.end method

.method public notifySetDesktopMode(Lcom/android/server/desktopmode/State;Z)V
    .registers 6

    .line 389
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifySetDesktopMode(enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_20
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_26
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 391
    invoke-virtual {v0, p1, p2}, Lcom/android/server/desktopmode/StateManager$StateListener;->onSetDesktopMode(Lcom/android/server/desktopmode/State;Z)V

    goto :goto_26

    :cond_36
    return-void
.end method

.method public notifySetDesktopModeInternal(Z)V
    .registers 5

    .line 405
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifySetDesktopModeInternal(enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_20
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_26
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 407
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onSetDesktopModeInternal(Z)V

    goto :goto_26

    :cond_36
    return-void
.end method

.method public notifyStartLoadingScreen(Z)V
    .registers 5

    .line 397
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyStartLoadingScreen(enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_20
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_26
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 399
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onStartLoadingScreen(Z)V

    goto :goto_26

    :cond_36
    return-void
.end method

.method public notifyStopLoadingScreen(Z)V
    .registers 5

    .line 421
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyStopLoadingScreen(enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_20
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_26
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 423
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onStopLoadingScreen(Z)V

    goto :goto_26

    :cond_36
    return-void
.end method

.method public registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V
    .registers 5

    .line 486
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerListener(StateListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_20
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    return-void
.end method

.method public setCoverState(Lcom/samsung/android/cover/CoverState;I)V
    .registers 6

    .line 195
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_28

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCoverState(coverState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", coverSupportState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    const/4 v0, 0x0

    .line 197
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 198
    :try_start_2c
    iget-object v2, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v2}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fgetmCoverSupportState(Lcom/android/server/desktopmode/StateManager$InternalState;)I

    move-result v2

    if-eq v2, p2, :cond_3a

    .line 199
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v0, p2}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fputmCoverSupportState(Lcom/android/server/desktopmode/StateManager$InternalState;I)V

    const/4 v0, 0x1

    .line 202
    :cond_3a
    iget-object p2, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {p2, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fputmCoverState(Lcom/android/server/desktopmode/StateManager$InternalState;Lcom/samsung/android/cover/CoverState;)V

    .line 203
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object p1

    if-eqz v0, :cond_51

    .line 205
    iget-object p2, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 211
    :cond_51
    monitor-exit v1

    return-void

    :catchall_53
    move-exception p0

    monitor-exit v1
    :try_end_55
    .catchall {:try_start_2c .. :try_end_55} :catchall_53

    throw p0
.end method

.method public setCurrentUserId(I)V
    .registers 5

    .line 216
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurrentUserId(userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_20
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 218
    :try_start_23
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/desktopmode/StateManager$InternalState;)I

    move-result v1

    if-eq v1, p1, :cond_40

    .line 219
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fputmCurrentUserId(Lcom/android/server/desktopmode/StateManager$InternalState;I)V

    .line 220
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object p1

    .line 221
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0, p1}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 227
    :cond_40
    monitor-exit v0

    return-void

    :catchall_42
    move-exception p0

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_23 .. :try_end_44} :catchall_42

    throw p0
.end method

.method public setDesktopDisplayId(I)V
    .registers 5

    .line 84
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDesktopDisplayId(displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_20
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    :try_start_23
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fgetmDesktopDisplayId(Lcom/android/server/desktopmode/StateManager$InternalState;)I

    move-result v1

    if-eq v1, p1, :cond_40

    .line 87
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fputmDesktopDisplayId(Lcom/android/server/desktopmode/StateManager$InternalState;I)V

    .line 88
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object p1

    .line 89
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0, p1}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 95
    :cond_40
    monitor-exit v0

    return-void

    :catchall_42
    move-exception p0

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_23 .. :try_end_44} :catchall_42

    throw p0
.end method

.method public setDesktopModeState(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .registers 5

    .line 262
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDesktopModeState(state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_20
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 264
    :try_start_23
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fputmDesktopModeState(Lcom/android/server/desktopmode/StateManager$InternalState;Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    .line 265
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object p1

    .line 266
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0, p1}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 271
    monitor-exit v0

    return-void

    :catchall_3a
    move-exception p0

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_23 .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public setDisplayResolutionUnsupported(Z)V
    .registers 5

    .line 336
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDisplayResolutionUnsupported(unsupported="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_20
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 338
    :try_start_23
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fgetmDisplayResolutionUnsupported(Lcom/android/server/desktopmode/StateManager$InternalState;)Z

    move-result v1

    if-eq v1, p1, :cond_35

    .line 339
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fputmDisplayResolutionUnsupported(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V

    .line 340
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    .line 342
    :cond_35
    monitor-exit v0

    return-void

    :catchall_37
    move-exception p0

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_23 .. :try_end_39} :catchall_37

    throw p0
.end method

.method public setDockLowChargerState(I)V
    .registers 5

    .line 179
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDockLowChargerState(dockLowChargerState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_20
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 181
    :try_start_23
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fgetmDockLowChargerState(Lcom/android/server/desktopmode/StateManager$InternalState;)I

    move-result v1

    if-eq v1, p1, :cond_40

    .line 182
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fputmDockLowChargerState(Lcom/android/server/desktopmode/StateManager$InternalState;I)V

    .line 183
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object p1

    .line 184
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, p1}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 190
    :cond_40
    monitor-exit v0

    return-void

    :catchall_42
    move-exception p0

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_23 .. :try_end_44} :catchall_42

    throw p0
.end method

.method public setDockState(Lcom/android/server/desktopmode/HardwareManager$DockState;)V
    .registers 5

    .line 148
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDockState(dockState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_20
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 150
    :try_start_23
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    iget-object v2, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v2}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fgetmDockState(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fputmPreviousDockState(Lcom/android/server/desktopmode/StateManager$InternalState;Lcom/android/server/desktopmode/HardwareManager$DockState;)V

    .line 151
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fputmDockState(Lcom/android/server/desktopmode/StateManager$InternalState;Lcom/android/server/desktopmode/HardwareManager$DockState;)V

    .line 152
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object p1

    .line 153
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, p1}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 158
    monitor-exit v0

    return-void

    :catchall_45
    move-exception p0

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_23 .. :try_end_47} :catchall_45

    throw p0
.end method

.method public setEmergencyModeEnabled(Z)V
    .registers 5

    .line 246
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEmergencyModeEnabled(enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_20
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 248
    :try_start_23
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fgetmEmergencyModeEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;)Z

    move-result v1

    if-eq v1, p1, :cond_40

    .line 249
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fputmEmergencyModeEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V

    .line 250
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object p1

    .line 251
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0, p1}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 257
    :cond_40
    monitor-exit v0

    return-void

    :catchall_42
    move-exception p0

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_23 .. :try_end_44} :catchall_42

    throw p0
.end method

.method public setExternalDisplayConnected(ZLcom/android/server/desktopmode/DisplayInfo;)V
    .registers 6

    .line 45
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_28

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setExternalDisplayConnected(connected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", display="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_28
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 47
    :try_start_2b
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fgetmIsExternalDisplayConnected(Lcom/android/server/desktopmode/StateManager$InternalState;)Z

    move-result v1

    if-eq v1, p1, :cond_55

    .line 48
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fputmIsExternalDisplayConnected(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V

    .line 49
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1, p2}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fputmConnectedDisplay(Lcom/android/server/desktopmode/StateManager$InternalState;Lcom/android/server/desktopmode/DisplayInfo;)V

    if-nez p1, :cond_45

    .line 51
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fputmDisplayResolutionUnsupported(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V

    .line 53
    :cond_45
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object p1

    .line 54
    iget-object p2, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    :cond_55
    monitor-exit v0

    return-void

    :catchall_57
    move-exception p0

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_2b .. :try_end_59} :catchall_57

    throw p0
.end method

.method public setExternalDisplayUpdated(Lcom/android/server/desktopmode/DisplayInfo;)V
    .registers 5

    .line 65
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setExternalDisplayUpdated(display="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_20
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_23
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fgetmConnectedDisplay(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/DisplayInfo;

    move-result-object v1

    if-nez v1, :cond_2d

    const/4 v1, -0x1

    goto :goto_37

    .line 68
    :cond_2d
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fgetmConnectedDisplay(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/DisplayInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/desktopmode/DisplayInfo;->getDisplayId()I

    move-result v1

    .line 69
    :goto_37
    invoke-virtual {p1}, Lcom/android/server/desktopmode/DisplayInfo;->getDisplayId()I

    move-result v2

    if-eq v1, v2, :cond_5d

    .line 70
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    iget-object v2, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v2}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fgetmConnectedDisplay(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/DisplayInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fputmPreviousConnectedDisplay(Lcom/android/server/desktopmode/StateManager$InternalState;Lcom/android/server/desktopmode/DisplayInfo;)V

    .line 71
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fputmConnectedDisplay(Lcom/android/server/desktopmode/StateManager$InternalState;Lcom/android/server/desktopmode/DisplayInfo;)V

    .line 72
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object p1

    .line 73
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    :cond_5d
    monitor-exit v0

    return-void

    :catchall_5f
    move-exception p0

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_23 .. :try_end_61} :catchall_5f

    throw p0
.end method

.method public setForcedInternalScreenModeEnabled(Z)V
    .registers 5

    .line 163
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setForcedInternalScreenModeEnabled(enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_20
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    :try_start_23
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fgetmForcedInternalScreenModeEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;)Z

    move-result v1

    if-eq v1, p1, :cond_40

    .line 166
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fputmForcedInternalScreenModeEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V

    .line 167
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object p1

    .line 168
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0, p1}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 174
    :cond_40
    monitor-exit v0

    return-void

    :catchall_42
    move-exception p0

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_23 .. :try_end_44} :catchall_42

    throw p0
.end method

.method public setModeChangeLocked(Z)V
    .registers 5

    .line 276
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setModeChangeLocked(locked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_20
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    :try_start_23
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fgetmModeChangeLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Z

    move-result v1

    if-eq v1, p1, :cond_35

    .line 279
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fputmModeChangeLocked(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V

    .line 280
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    .line 282
    :cond_35
    monitor-exit v0

    return-void

    :catchall_37
    move-exception p0

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_23 .. :try_end_39} :catchall_37

    throw p0
.end method

.method public setMouseConnected(Z)V
    .registers 5

    .line 100
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMouseConnected(connected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_20
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_23
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fgetmIsMouseConnected(Lcom/android/server/desktopmode/StateManager$InternalState;)Z

    move-result v1

    if-eq v1, p1, :cond_40

    .line 103
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fputmIsMouseConnected(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V

    .line 104
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object p1

    .line 105
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    :cond_40
    monitor-exit v0

    return-void

    :catchall_42
    move-exception p0

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_23 .. :try_end_44} :catchall_42

    throw p0
.end method

.method public setNavBarGestureEnabled(Z)V
    .registers 5

    .line 347
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNavBarGestureEnabled(enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_20
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 349
    :try_start_23
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fgetmIsNavBarGestureEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;)Z

    move-result v1

    if-eq v1, p1, :cond_40

    .line 350
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fputmIsNavBarGestureEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V

    .line 351
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object p1

    .line 352
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, p1}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 358
    :cond_40
    monitor-exit v0

    return-void

    :catchall_42
    move-exception p0

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_23 .. :try_end_44} :catchall_42

    throw p0
.end method

.method public setPackageState(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 232
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPackageState(packageState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_20
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :try_start_23
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fputmPackageState(Lcom/android/server/desktopmode/StateManager$InternalState;Ljava/util/Map;)V

    .line 235
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object p1

    .line 236
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 241
    monitor-exit v0

    return-void

    :catchall_3a
    move-exception p0

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_23 .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public setPogoKeyboardConnected(Z)V
    .registers 5

    .line 116
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPogoKeyboardConnected(state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_20
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_23
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fgetmIsPogoKeyboardConnected(Lcom/android/server/desktopmode/StateManager$InternalState;)Z

    move-result v1

    if-eq v1, p1, :cond_40

    .line 119
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fputmIsPogoKeyboardConnected(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V

    .line 120
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object p1

    .line 121
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, p1}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    :cond_40
    monitor-exit v0

    return-void

    :catchall_42
    move-exception p0

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_23 .. :try_end_44} :catchall_42

    throw p0
.end method

.method public setSpenEnabled(Z)V
    .registers 5

    .line 320
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSpenEnabled(enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_20
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 322
    :try_start_23
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fgetmSpenEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;)Z

    move-result v1

    if-eq v1, p1, :cond_40

    .line 323
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fputmSpenEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V

    .line 324
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object p1

    .line 325
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 331
    :cond_40
    monitor-exit v0

    return-void

    :catchall_42
    move-exception p0

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_23 .. :try_end_44} :catchall_42

    throw p0
.end method

.method public setTouchpadAvailable(Z)V
    .registers 5

    .line 287
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTouchpadAvailable(available="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_20
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 289
    :try_start_23
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fgetmTouchpadAvailable(Lcom/android/server/desktopmode/StateManager$InternalState;)Z

    move-result v1

    if-eq v1, p1, :cond_40

    .line 290
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fputmTouchpadAvailable(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V

    .line 291
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object p1

    .line 292
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, p1}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 298
    :cond_40
    monitor-exit v0

    return-void

    :catchall_42
    move-exception p0

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_23 .. :try_end_44} :catchall_42

    throw p0
.end method

.method public setTouchpadEnabled(Z)V
    .registers 5

    .line 304
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTouchpadEnabled(enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_20
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 306
    :try_start_23
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fgetmTouchpadEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;)Z

    move-result v1

    if-eq v1, p1, :cond_40

    .line 307
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fputmTouchpadEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V

    .line 308
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object p1

    .line 309
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 315
    :cond_40
    monitor-exit v0

    return-void

    :catchall_42
    move-exception p0

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_23 .. :try_end_44} :catchall_42

    throw p0
.end method

.method public setWiredCharging(Z)V
    .registers 5

    .line 132
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWiredCharging(isWiredCharging="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_20
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    :try_start_23
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fgetmIsWiredCharging(Lcom/android/server/desktopmode/StateManager$InternalState;)Z

    move-result v1

    if-eq v1, p1, :cond_40

    .line 135
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->-$$Nest$fputmIsWiredCharging(Lcom/android/server/desktopmode/StateManager$InternalState;Z)V

    .line 136
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object p1

    .line 137
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0, p1}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 143
    :cond_40
    monitor-exit v0

    return-void

    :catchall_42
    move-exception p0

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_23 .. :try_end_44} :catchall_42

    throw p0
.end method

.method public unregisterListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V
    .registers 5

    .line 493
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterListener(StateListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_20
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
