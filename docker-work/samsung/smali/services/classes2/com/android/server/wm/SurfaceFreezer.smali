.class public Lcom/android/server/wm/SurfaceFreezer;
.super Ljava/lang/Object;
.source "SurfaceFreezer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/SurfaceFreezer$Freezable;,
        Lcom/android/server/wm/SurfaceFreezer$Snapshot;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SurfaceFreezer"


# instance fields
.field public final mAnimatable:Lcom/android/server/wm/SurfaceFreezer$Freezable;

.field public mChangeTransitMode:I
    .annotation build Lcom/samsung/android/multiwindow/MultiWindowManager$ChangeTransitionMode;
    .end annotation
.end field

.field public mCornerRadius:F

.field public mCustomDuration:J

.field public final mEndBounds:Landroid/graphics/Rect;

.field public final mFreezeBounds:Landroid/graphics/Rect;

.field public mInternalPresentationOnly:Z

.field public mLeash:Landroid/view/SurfaceControl;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

.field public final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAnimatable(Lcom/android/server/wm/SurfaceFreezer;)Lcom/android/server/wm/SurfaceFreezer$Freezable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/SurfaceFreezer;->mAnimatable:Lcom/android/server/wm/SurfaceFreezer$Freezable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWmService(Lcom/android/server/wm/SurfaceFreezer;)Lcom/android/server/wm/WindowManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/SurfaceFreezer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/SurfaceFreezer$Freezable;Lcom/android/server/wm/WindowManagerService;)V
    .registers 5

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mFreezeBounds:Landroid/graphics/Rect;

    .line 80
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mEndBounds:Landroid/graphics/Rect;

    const-wide/16 v0, 0x0

    .line 81
    iput-wide v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mCustomDuration:J

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mChangeTransitMode:I

    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mCornerRadius:F

    .line 96
    iput-object p1, p0, Lcom/android/server/wm/SurfaceFreezer;->mAnimatable:Lcom/android/server/wm/SurfaceFreezer$Freezable;

    .line 97
    iput-object p2, p0, Lcom/android/server/wm/SurfaceFreezer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method public static createSnapshotBuffer(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .registers 3

    const/4 v0, 0x0

    .line 283
    invoke-static {p0, p1, v0, v0}, Lcom/android/server/wm/SurfaceFreezer;->createSnapshotBuffer(Landroid/view/SurfaceControl;Landroid/graphics/Rect;[Landroid/view/SurfaceControl;Landroid/graphics/Point;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static createSnapshotBuffer(Landroid/view/SurfaceControl;Landroid/graphics/Rect;[Landroid/view/SurfaceControl;Landroid/graphics/Point;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .registers 5

    if-eqz p1, :cond_15

    .line 292
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 p1, 0x0

    .line 293
    invoke-virtual {v0, p1, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    if-eqz p3, :cond_16

    .line 296
    iget p1, p3, Landroid/graphics/Point;->x:I

    iget p3, p3, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, p1, p3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 300
    :cond_16
    :goto_16
    new-instance p1, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    invoke-direct {p1, p0}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 302
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    const/4 p1, 0x1

    .line 303
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setCaptureSecureLayers(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    .line 304
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setAllowProtected(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    if-eqz p2, :cond_33

    .line 307
    invoke-virtual {p0, p2}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setExcludeLayers([Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    .line 310
    :cond_33
    invoke-virtual {p0}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->build()Landroid/view/SurfaceControl$LayerCaptureArgs;

    move-result-object p0

    .line 311
    invoke-static {p0}, Landroid/view/SurfaceControl;->captureLayers(Landroid/view/SurfaceControl$LayerCaptureArgs;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public changeToDismissTransitMode()V
    .registers 3

    .line 446
    iget v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mChangeTransitMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    invoke-virtual {p0}, Lcom/android/server/wm/SurfaceFreezer;->hasLeash()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x2

    .line 447
    iput v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mChangeTransitMode:I

    .line 448
    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mEndBounds:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/server/wm/SurfaceFreezer;->mFreezeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_15
    return-void
.end method

.method public createFromHardwareBufferInner(Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;)Landroid/graphics/GraphicBuffer;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 323
    invoke-virtual {p1}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/GraphicBuffer;->createFromHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/graphics/GraphicBuffer;

    move-result-object p0

    return-object p0
.end method

.method public createSnapshotBufferInner(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 317
    invoke-static {p1, p2}, Lcom/android/server/wm/SurfaceFreezer;->createSnapshotBuffer(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object p0

    return-object p0
.end method

.method public freeze(Landroid/view/SurfaceControl$Transaction;ILandroid/graphics/Rect;Landroid/graphics/Point;Landroid/view/SurfaceControl;Landroid/graphics/Rect;FZ)V
    .registers 23

    move-object v0, p0

    move-object v11, p1

    move/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    .line 127
    iput v12, v0, Lcom/android/server/wm/SurfaceFreezer;->mChangeTransitMode:I

    move/from16 v3, p7

    .line 128
    iput v3, v0, Lcom/android/server/wm/SurfaceFreezer;->mCornerRadius:F

    const-wide/16 v3, 0x0

    .line 129
    iput-wide v3, v0, Lcom/android/server/wm/SurfaceFreezer;->mCustomDuration:J

    if-nez v2, :cond_1c

    .line 131
    iget-object v2, v0, Lcom/android/server/wm/SurfaceFreezer;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_21

    .line 133
    :cond_1c
    iget-object v3, v0, Lcom/android/server/wm/SurfaceFreezer;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_21
    move/from16 v2, p8

    .line 136
    iput-boolean v2, v0, Lcom/android/server/wm/SurfaceFreezer;->mInternalPresentationOnly:Z

    .line 140
    invoke-virtual {p0, p1}, Lcom/android/server/wm/SurfaceFreezer;->reset(Landroid/view/SurfaceControl$Transaction;)V

    .line 141
    iget-object v2, v0, Lcom/android/server/wm/SurfaceFreezer;->mFreezeBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 143
    iget-object v2, v0, Lcom/android/server/wm/SurfaceFreezer;->mAnimatable:Lcom/android/server/wm/SurfaceFreezer$Freezable;

    invoke-interface {v2}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    const/4 v4, 0x2

    .line 144
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget v7, v1, Landroid/graphics/Point;->x:I

    iget v8, v1, Landroid/graphics/Point;->y:I

    const/4 v9, 0x0

    iget-object v1, v0, Lcom/android/server/wm/SurfaceFreezer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    move-object v1, v2

    move-object v2, v3

    move-object v3, p1

    .line 143
    invoke-static/range {v1 .. v10}, Lcom/android/server/wm/SurfaceAnimator;->createAnimationLeash(Lcom/android/server/wm/SurfaceAnimator$Animatable;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;IIIIIZLjava/util/function/Supplier;)Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    .line 147
    iget-object v2, v0, Lcom/android/server/wm/SurfaceFreezer;->mAnimatable:Lcom/android/server/wm/SurfaceFreezer$Freezable;

    invoke-interface {v2, p1, v1}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 150
    iget v1, v0, Lcom/android/server/wm/SurfaceFreezer;->mCornerRadius:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_5f

    .line 151
    iget-object v2, v0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 153
    :cond_5f
    iget-boolean v1, v0, Lcom/android/server/wm/SurfaceFreezer;->mInternalPresentationOnly:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_69

    .line 154
    iget-object v1, v0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setInternalPresentationOnly(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 156
    :cond_69
    iget v1, v0, Lcom/android/server/wm/SurfaceFreezer;->mChangeTransitMode:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_6f

    return-void

    :cond_6f
    if-eqz p5, :cond_74

    move-object/from16 v1, p5

    goto :goto_7a

    .line 163
    :cond_74
    iget-object v1, v0, Lcom/android/server/wm/SurfaceFreezer;->mAnimatable:Lcom/android/server/wm/SurfaceFreezer$Freezable;

    invoke-interface {v1}, Lcom/android/server/wm/SurfaceFreezer$Freezable;->getFreezeSnapshotTarget()Landroid/view/SurfaceControl;

    move-result-object v1

    :goto_7a
    if-eqz v1, :cond_ce

    .line 165
    invoke-virtual {p0, v1, v13}, Lcom/android/server/wm/SurfaceFreezer;->createSnapshotBufferInner(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    .line 169
    iget-object v3, v0, Lcom/android/server/wm/SurfaceFreezer;->mAnimatable:Lcom/android/server/wm/SurfaceFreezer$Freezable;

    .line 170
    invoke-interface {v3}, Lcom/android/server/wm/SurfaceFreezer$Freezable;->getFreezeSnapshotExcludeLayers()[Landroid/view/SurfaceControl;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/wm/SurfaceFreezer;->mAnimatable:Lcom/android/server/wm/SurfaceFreezer$Freezable;

    .line 171
    invoke-interface {v4}, Lcom/android/server/wm/SurfaceFreezer$Freezable;->getFreezeSnapshotOffset()Landroid/graphics/Point;

    move-result-object v4

    .line 169
    invoke-static {v1, v13, v3, v4}, Lcom/android/server/wm/SurfaceFreezer;->createSnapshotBuffer(Landroid/view/SurfaceControl;Landroid/graphics/Rect;[Landroid/view/SurfaceControl;Landroid/graphics/Point;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v1

    if-nez v1, :cond_93

    const/4 v3, 0x0

    goto :goto_97

    .line 178
    :cond_93
    invoke-virtual {v1}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v3

    :goto_97
    if-eqz v3, :cond_b3

    .line 179
    invoke-virtual {v3}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v4

    if-le v4, v2, :cond_b3

    invoke-virtual {v3}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v3

    if-gt v3, v2, :cond_a6

    goto :goto_b3

    .line 185
    :cond_a6
    new-instance v2, Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    iget-object v3, v0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    invoke-direct {v2, p0, p1, v1, v3}, Lcom/android/server/wm/SurfaceFreezer$Snapshot;-><init>(Lcom/android/server/wm/SurfaceFreezer;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;Landroid/view/SurfaceControl;)V

    iput-object v2, v0, Lcom/android/server/wm/SurfaceFreezer;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    .line 188
    invoke-static {v2, v12}, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->-$$Nest$fputmChangeTransitMode(Lcom/android/server/wm/SurfaceFreezer$Snapshot;I)V

    goto :goto_ce

    .line 181
    :cond_b3
    :goto_b3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to capture screenshot for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/wm/SurfaceFreezer;->mAnimatable:Lcom/android/server/wm/SurfaceFreezer$Freezable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SurfaceFreezer"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p0, p1}, Lcom/android/server/wm/SurfaceFreezer;->unfreeze(Landroid/view/SurfaceControl$Transaction;)V

    :cond_ce
    :goto_ce
    return-void
.end method

.method public freeze(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/view/SurfaceControl;)V
    .registers 14

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 112
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/SurfaceFreezer;->freeze(Landroid/view/SurfaceControl$Transaction;ILandroid/graphics/Rect;Landroid/graphics/Point;Landroid/view/SurfaceControl;Landroid/graphics/Rect;FZ)V

    return-void
.end method

.method public freeze(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/view/SurfaceControl;Z)V
    .registers 15

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v8, p5

    .line 119
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/SurfaceFreezer;->freeze(Landroid/view/SurfaceControl$Transaction;ILandroid/graphics/Rect;Landroid/graphics/Point;Landroid/view/SurfaceControl;Landroid/graphics/Rect;FZ)V

    return-void
.end method

.method public getLeash()Landroid/view/SurfaceControl;
    .registers 1

    .line 437
    iget-object p0, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public getWmService()Lcom/android/server/wm/WindowManagerService;
    .registers 1

    .line 442
    iget-object p0, p0, Lcom/android/server/wm/SurfaceFreezer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method public hasLeash()Z
    .registers 1

    .line 277
    iget-object p0, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isDismissChangeTransitMode()Z
    .registers 2

    .line 429
    iget p0, p0, Lcom/android/server/wm/SurfaceFreezer;->mChangeTransitMode:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public isFreeformHeaderTypeChangeTransition()Z
    .registers 2

    .line 461
    iget p0, p0, Lcom/android/server/wm/SurfaceFreezer;->mChangeTransitMode:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public isFreeformModeChangeTransition()Z
    .registers 2

    .line 433
    iget p0, p0, Lcom/android/server/wm/SurfaceFreezer;->mChangeTransitMode:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public isFreezeTargetDexCompatMode()Z
    .registers 2

    .line 467
    iget-object p0, p0, Lcom/android/server/wm/SurfaceFreezer;->mAnimatable:Lcom/android/server/wm/SurfaceFreezer$Freezable;

    instance-of v0, p0, Lcom/android/server/wm/Task;

    if-eqz v0, :cond_d

    .line 468
    check-cast p0, Lcom/android/server/wm/Task;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isDexCompatEnabled()Z

    move-result p0

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public isThumbnailOnlyChangeTransition()Z
    .registers 2

    .line 455
    iget p0, p0, Lcom/android/server/wm/SurfaceFreezer;->mChangeTransitMode:I

    const/4 v0, 0x6

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public final reset(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    .line 254
    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 255
    invoke-virtual {v0, p1}, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->destroy(Landroid/view/SurfaceControl$Transaction;)V

    .line 256
    iput-object v1, p0, Lcom/android/server/wm/SurfaceFreezer;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    .line 258
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_13

    .line 259
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 260
    iput-object v1, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    :cond_13
    return-void
.end method

.method public setLayer(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 3

    .line 265
    iget-object p0, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    if-eqz p0, :cond_7

    .line 266
    invoke-virtual {p1, p0, p2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_7
    return-void
.end method

.method public setRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V
    .registers 4

    .line 271
    iget-object p0, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    if-eqz p0, :cond_7

    .line 272
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_7
    return-void
.end method

.method public takeLeashForAnimation()Landroid/view/SurfaceControl;
    .registers 3

    .line 199
    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    .line 200
    iput-object v1, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public takeSnapshotForAnimation()Lcom/android/server/wm/SurfaceFreezer$Snapshot;
    .registers 3

    .line 211
    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    const/4 v1, 0x0

    .line 212
    iput-object v1, p0, Lcom/android/server/wm/SurfaceFreezer;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    return-object v0
.end method

.method public unfreeze(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    .line 221
    invoke-virtual {p0, p1}, Lcom/android/server/wm/SurfaceFreezer;->unfreezeInner(Landroid/view/SurfaceControl$Transaction;)V

    .line 222
    iget-object p0, p0, Lcom/android/server/wm/SurfaceFreezer;->mAnimatable:Lcom/android/server/wm/SurfaceFreezer$Freezable;

    invoke-interface {p0}, Lcom/android/server/wm/SurfaceFreezer$Freezable;->onUnfrozen()V

    return-void
.end method

.method public final unfreezeInner(Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    .line 226
    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    .line 227
    invoke-virtual {v0, p1, v2}, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->cancelAnimation(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 228
    iput-object v1, p0, Lcom/android/server/wm/SurfaceFreezer;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    .line 232
    :cond_b
    iput v2, p0, Lcom/android/server/wm/SurfaceFreezer;->mChangeTransitMode:I

    .line 233
    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 236
    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    if-nez v0, :cond_17

    return-void

    .line 240
    :cond_17
    iput-object v1, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    .line 241
    iget-object v1, p0, Lcom/android/server/wm/SurfaceFreezer;->mAnimatable:Lcom/android/server/wm/SurfaceFreezer$Freezable;

    const/4 v2, 0x1

    invoke-static {p1, v1, v0, v2}, Lcom/android/server/wm/SurfaceAnimator;->removeLeash(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/SurfaceAnimator$Animatable;Landroid/view/SurfaceControl;Z)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 244
    iget-object p0, p0, Lcom/android/server/wm/SurfaceFreezer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    :cond_27
    return-void
.end method
