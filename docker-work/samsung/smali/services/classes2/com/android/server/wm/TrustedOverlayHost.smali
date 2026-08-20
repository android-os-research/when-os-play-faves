.class public Lcom/android/server/wm/TrustedOverlayHost;
.super Ljava/lang/Object;
.source "TrustedOverlayHost.java"


# instance fields
.field public final mOverlays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/SurfaceControlViewHost$SurfacePackage;",
            ">;"
        }
    .end annotation
.end field

.field public mSurfaceControl:Landroid/view/SurfaceControl;

.field public final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TrustedOverlayHost;->mOverlays:Ljava/util/ArrayList;

    .line 49
    iput-object p1, p0, Lcom/android/server/wm/TrustedOverlayHost;->mWmService:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method


# virtual methods
.method public addOverlay(Landroid/view/SurfaceControlViewHost$SurfacePackage;Landroid/view/SurfaceControl;)V
    .registers 6

    .line 84
    invoke-virtual {p0}, Lcom/android/server/wm/TrustedOverlayHost;->requireOverlaySurfaceControl()V

    .line 85
    iget-object v0, p0, Lcom/android/server/wm/TrustedOverlayHost;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lcom/android/server/wm/TrustedOverlayHost;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mEmbeddedWindowController:Lcom/android/server/wm/EmbeddedWindowController;

    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getInputToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/EmbeddedWindowController;->setIsOverlay(Landroid/os/IBinder;)V

    .line 89
    iget-object v0, p0, Lcom/android/server/wm/TrustedOverlayHost;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 90
    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/TrustedOverlayHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 91
    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 92
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/TrustedOverlayHost;->setParent(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 93
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    .line 112
    iget-object v0, p0, Lcom/android/server/wm/TrustedOverlayHost;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_20

    .line 113
    iget-object v1, p0, Lcom/android/server/wm/TrustedOverlayHost;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 115
    :try_start_12
    invoke-virtual {v1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getRemoteInterface()Landroid/view/ISurfaceControlViewHost;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/ISurfaceControlViewHost;->onConfigurationChanged(Landroid/content/res/Configuration;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_19} :catch_1a

    goto :goto_1d

    .line 117
    :catch_1a
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TrustedOverlayHost;->removeOverlay(Landroid/view/SurfaceControlViewHost$SurfacePackage;)Z

    :goto_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_20
    return-void
.end method

.method public final dispatchDetachedFromWindow()V
    .registers 4

    .line 123
    iget-object v0, p0, Lcom/android/server/wm/TrustedOverlayHost;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1f

    .line 124
    iget-object v1, p0, Lcom/android/server/wm/TrustedOverlayHost;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 126
    :try_start_12
    invoke-virtual {v1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getRemoteInterface()Landroid/view/ISurfaceControlViewHost;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ISurfaceControlViewHost;->onDispatchDetachedFromWindow()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_19} :catch_19

    .line 130
    :catch_19
    invoke-virtual {v1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->release()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1f
    return-void
.end method

.method public dispatchInsetsChanged(Landroid/view/InsetsState;Landroid/graphics/Rect;)V
    .registers 5

    .line 135
    iget-object v0, p0, Lcom/android/server/wm/TrustedOverlayHost;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1c

    .line 136
    iget-object v1, p0, Lcom/android/server/wm/TrustedOverlayHost;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 138
    :try_start_12
    invoke-virtual {v1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getRemoteInterface()Landroid/view/ISurfaceControlViewHost;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/view/ISurfaceControlViewHost;->onInsetsChanged(Landroid/view/InsetsState;Landroid/graphics/Rect;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_19} :catch_19

    :catch_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1c
    return-void
.end method

.method public release()V
    .registers 3

    .line 145
    invoke-virtual {p0}, Lcom/android/server/wm/TrustedOverlayHost;->dispatchDetachedFromWindow()V

    .line 146
    iget-object v0, p0, Lcom/android/server/wm/TrustedOverlayHost;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 147
    iget-object v0, p0, Lcom/android/server/wm/TrustedOverlayHost;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 148
    iget-object v1, p0, Lcom/android/server/wm/TrustedOverlayHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lcom/android/server/wm/TrustedOverlayHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-void
.end method

.method public removeOverlay(Landroid/view/SurfaceControlViewHost$SurfacePackage;)Z
    .registers 8

    .line 97
    iget-object v0, p0, Lcom/android/server/wm/TrustedOverlayHost;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 99
    iget-object v1, p0, Lcom/android/server/wm/TrustedOverlayHost;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_12
    if-ltz v1, :cond_3d

    .line 100
    iget-object v3, p0, Lcom/android/server/wm/TrustedOverlayHost;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 101
    invoke-virtual {v3}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl;->isSameSurface(Landroid/view/SurfaceControl;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 102
    iget-object v4, p0, Lcom/android/server/wm/TrustedOverlayHost;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 103
    invoke-virtual {v3}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 104
    invoke-virtual {v3}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->release()V

    :cond_3a
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 107
    :cond_3d
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 108
    iget-object p0, p0, Lcom/android/server/wm/TrustedOverlayHost;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_49

    goto :goto_4a

    :cond_49
    const/4 v2, 0x0

    :goto_4a
    return v2
.end method

.method public requireOverlaySurfaceControl()V
    .registers 4

    .line 53
    iget-object v0, p0, Lcom/android/server/wm/TrustedOverlayHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_33

    .line 54
    iget-object v0, p0, Lcom/android/server/wm/TrustedOverlayHost;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 56
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v2, "Overlay Host Leash"

    .line 57
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/TrustedOverlayHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 60
    iget-object v0, p0, Lcom/android/server/wm/TrustedOverlayHost;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 61
    iget-object p0, p0, Lcom/android/server/wm/TrustedOverlayHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p0, v1}, Landroid/view/SurfaceControl$Transaction;->setTrustedOverlay(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_33
    return-void
.end method

.method public setLayer(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 3

    .line 78
    iget-object p0, p0, Lcom/android/server/wm/TrustedOverlayHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz p0, :cond_7

    .line 79
    invoke-virtual {p1, p0, p2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_7
    return-void
.end method

.method public setParent(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 4

    .line 66
    iget-object v0, p0, Lcom/android/server/wm/TrustedOverlayHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    return-void

    .line 69
    :cond_5
    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    if-eqz p2, :cond_10

    .line 71
    iget-object p0, p0, Lcom/android/server/wm/TrustedOverlayHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_15

    .line 73
    :cond_10
    iget-object p0, p0, Lcom/android/server/wm/TrustedOverlayHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_15
    return-void
.end method
