.class public Lcom/android/server/wm/EmulatorDisplayOverlay;
.super Ljava/lang/Object;
.source "EmulatorDisplayOverlay.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "WindowManager"

.field public static final TITLE:Ljava/lang/String; = "EmulatorDisplayOverlay"


# instance fields
.field public final mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

.field public mDrawNeeded:Z

.field public mLastDH:I

.field public mLastDW:I

.field public final mOverlay:Landroid/graphics/drawable/Drawable;

.field public mRotation:I

.field public mScreenSize:Landroid/graphics/Point;

.field public final mSurface:Landroid/view/Surface;

.field public final mSurfaceControl:Landroid/view/SurfaceControl;

.field public mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/DisplayContent;ILandroid/view/SurfaceControl$Transaction;)V
    .registers 13

    const-string v0, "EmulatorDisplayOverlay"

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v1

    .line 57
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mScreenSize:Landroid/graphics/Point;

    .line 58
    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    const/4 v1, 0x0

    .line 62
    :try_start_14
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 63
    invoke-virtual {v2, v0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 64
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    const/4 v3, -0x3

    .line 65
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 66
    invoke-virtual {v2, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 67
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    .line 68
    invoke-virtual {p4, v1, p3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    const/4 p3, 0x0

    .line 69
    invoke-virtual {p4, v1, p3, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 70
    invoke-virtual {p4, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 72
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p2

    invoke-static {v1, p4, p2, v0}, Lcom/android/server/wm/InputMonitor;->setTrustedOverlayInputInfo(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILjava/lang/String;)V
    :try_end_3e
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_14 .. :try_end_3e} :catch_3e

    :catch_3e
    move-object v4, v1

    .line 75
    iput-object v4, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 p2, 0x1

    .line 76
    iput-boolean p2, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mDrawNeeded:Z

    const p2, 0x10802ef

    .line 77
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mOverlay:Landroid/graphics/drawable/Drawable;

    .line 80
    new-instance p1, Landroid/graphics/BLASTBufferQueue;

    iget-object p2, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mScreenSize:Landroid/graphics/Point;

    iget v5, p2, Landroid/graphics/Point;->x:I

    iget v6, p2, Landroid/graphics/Point;->y:I

    const/4 v7, 0x1

    const-string v3, "EmulatorDisplayOverlay"

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Landroid/graphics/BLASTBufferQueue;-><init>(Ljava/lang/String;Landroid/view/SurfaceControl;III)V

    iput-object p1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 82
    invoke-virtual {p1}, Landroid/graphics/BLASTBufferQueue;->createSurface()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurface:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public final drawIfNeeded(Landroid/view/SurfaceControl$Transaction;)V
    .registers 6

    .line 86
    iget-boolean v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mDrawNeeded:Z

    if-eqz v0, :cond_3a

    iget-boolean v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mVisible:Z

    if-nez v0, :cond_9

    goto :goto_3a

    :cond_9
    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mDrawNeeded:Z

    const/4 v1, 0x0

    .line 93
    :try_start_d
    iget-object v2, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, v1}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v1
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_13} :catch_13
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_d .. :try_end_13} :catch_13

    :catch_13
    if-nez v1, :cond_16

    return-void

    .line 99
    :cond_16
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 100
    iget-object v2, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 102
    iget-object p1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mScreenSize:Landroid/graphics/Point;

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 103
    iget-object v2, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v0, p1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 104
    iget-object p1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 105
    iget-object p0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_3a
    :goto_3a
    return-void
.end method

.method public positionSurface(IIILandroid/view/SurfaceControl$Transaction;)V
    .registers 6

    .line 124
    iget v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mLastDW:I

    if-ne v0, p1, :cond_d

    iget v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mLastDH:I

    if-ne v0, p2, :cond_d

    iget v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mRotation:I

    if-ne v0, p3, :cond_d

    return-void

    .line 127
    :cond_d
    iput p1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mLastDW:I

    .line 128
    iput p2, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mLastDH:I

    const/4 p1, 0x1

    .line 129
    iput-boolean p1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mDrawNeeded:Z

    .line 130
    iput p3, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mRotation:I

    .line 131
    invoke-virtual {p0, p4}, Lcom/android/server/wm/EmulatorDisplayOverlay;->drawIfNeeded(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public setVisibility(ZLandroid/view/SurfaceControl$Transaction;)V
    .registers 4

    .line 111
    iget-object v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    return-void

    .line 114
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mVisible:Z

    .line 115
    invoke-virtual {p0, p2}, Lcom/android/server/wm/EmulatorDisplayOverlay;->drawIfNeeded(Landroid/view/SurfaceControl$Transaction;)V

    if-eqz p1, :cond_12

    .line 117
    iget-object p0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_17

    .line 119
    :cond_12
    iget-object p0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_17
    return-void
.end method
