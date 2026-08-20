.class public Lcom/android/server/wm/ScreenRotationAnimation;
.super Ljava/lang/Object;
.source "ScreenRotationAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field public mAnimRunning:Z

.field public mBackColorSurface:Landroid/view/SurfaceControl;

.field public final mContext:Landroid/content/Context;

.field public mCurRotation:I

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mEndLuma:F

.field public mEnterBlackFrameLayer:Landroid/view/SurfaceControl;

.field public mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

.field public mFadeInOutAnimationNeeded:Z

.field public mFinishAnimReady:Z

.field public mFinishAnimStartTime:J

.field public mNoWaitRotationNeeded:Z

.field public final mOriginalHeight:I

.field public final mOriginalRotation:I

.field public final mOriginalWidth:I

.field public mRotateAlphaAnimation:Landroid/view/animation/Animation;

.field public mRotateEnterAnimation:Landroid/view/animation/Animation;

.field public final mRotateEnterTransformation:Landroid/view/animation/Transformation;

.field public mRotateExitAnimation:Landroid/view/animation/Animation;

.field public final mRotateExitTransformation:Landroid/view/animation/Transformation;

.field public mScreenshotLayer:Landroid/view/SurfaceControl;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mSnapshotInitialMatrix:Landroid/graphics/Matrix;

.field public mStartLuma:F

.field public mStarted:Z

.field public mSurfaceRotationAnimationController:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

.field public final mTmpFloats:[F

.field public mUseBlackScreenshot:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBackColorSurface(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayContent(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEndLuma(Lcom/android/server/wm/ScreenRotationAnimation;)F
    .registers 1

    iget p0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEndLuma:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEnterBlackFrameLayer(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterBlackFrameLayer:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEnteringBlackFrame(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/BlackFrame;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRotateAlphaAnimation(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/animation/Animation;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateAlphaAnimation:Landroid/view/animation/Animation;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRotateEnterAnimation(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/animation/Animation;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRotateExitAnimation(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/animation/Animation;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScreenshotLayer(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/WindowManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStartLuma(Lcom/android/server/wm/ScreenRotationAnimation;)F
    .registers 1

    iget p0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartLuma:F

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayContent;I)V
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    .line 151
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 101
    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    .line 102
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    .line 103
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    .line 105
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    .line 140
    iput-boolean v4, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mFadeInOutAnimationNeeded:Z

    .line 144
    iput-boolean v4, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mUseBlackScreenshot:Z

    .line 152
    iget-object v0, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 153
    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v5, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    .line 154
    iput-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 155
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 156
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 157
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 160
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v7

    .line 161
    iget v8, v7, Landroid/view/DisplayInfo;->rotation:I

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ScreenRotationAnimation;->shouldUseBlackScreenshot()Z

    move-result v9

    iput-boolean v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mUseBlackScreenshot:Z

    .line 166
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    const-string v11, "WindowManager"

    if-eqz v10, :cond_6f

    if-eqz v9, :cond_6f

    .line 167
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "BlackScreenshot is triggered, isScreenTurnedOn="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/WindowManagerPolicyExt;

    .line 168
    invoke-interface {v10}, Lcom/android/server/policy/WindowManagerPolicyExt;->isScreenTurnedOn()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 167
    invoke-static {v11, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_6f
    iput v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    .line 178
    invoke-static {v3, v8}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result v9

    const/4 v10, 0x3

    const/4 v12, 0x1

    if-eq v9, v12, :cond_7e

    if-ne v9, v10, :cond_7c

    goto :goto_7e

    :cond_7c
    move v9, v4

    goto :goto_7f

    :cond_7e
    :goto_7e
    move v9, v12

    :goto_7f
    if-eqz v9, :cond_83

    move v13, v5

    goto :goto_84

    :cond_83
    move v13, v6

    .line 180
    :goto_84
    iput v13, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    if-eqz v9, :cond_8a

    move v9, v6

    goto :goto_8b

    :cond_8a
    move v9, v5

    .line 181
    :goto_8b
    iput v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    .line 182
    new-instance v9, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    invoke-direct {v9, v1}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;-><init>(Lcom/android/server/wm/ScreenRotationAnimation;)V

    iput-object v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceRotationAnimationController:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    .line 185
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->hasSecureWindowOnScreen()Z

    move-result v9

    .line 186
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v13

    .line 187
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/view/SurfaceControl$Transaction;

    .line 191
    :try_start_a5
    iget-boolean v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mUseBlackScreenshot:Z
    :try_end_a7
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_a5 .. :try_end_a7} :catch_1f8

    const v10, 0x1eab90

    const-string v15, "ScreenRotationAnimation"

    if-eqz v0, :cond_da

    .line 192
    :try_start_ae
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v5, "BlackScreenshotSurface"

    .line 193
    invoke-virtual {v0, v5}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 194
    invoke-virtual {v0, v12}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 196
    invoke-virtual {v0, v15}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    .line 198
    invoke-virtual {v14, v0, v10}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 199
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    invoke-virtual {v14, v0, v5}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 200
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v14, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto/16 :goto_1fe

    .line 221
    :cond_da
    new-instance v0, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    .line 222
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v10

    invoke-direct {v0, v10}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 223
    invoke-virtual {v0, v12}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setCaptureSecureLayers(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    .line 224
    invoke-virtual {v0, v12}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setAllowProtected(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v4, v4, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 225
    invoke-virtual {v0, v10}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    .line 229
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->findRoundedCornerOverlays()[Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setExcludeLayers([Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->build()Landroid/view/SurfaceControl$LayerCaptureArgs;

    move-result-object v0

    .line 239
    invoke-static {v0}, Landroid/view/SurfaceControl;->captureLayers(Landroid/view/SurfaceControl$LayerCaptureArgs;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v0

    if-nez v0, :cond_121

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to take screenshot of display "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 248
    :cond_121
    invoke-virtual {v0}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->containsSecureLayers()Z

    move-result v5

    if-eqz v5, :cond_128

    move v9, v12

    :cond_128
    const/4 v5, 0x0

    .line 252
    invoke-virtual {v2, v5}, Lcom/android/server/wm/DisplayContent;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v6

    const-string v5, "BackColorSurface"

    .line 253
    invoke-virtual {v6, v5}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    .line 254
    invoke-virtual {v5}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    .line 255
    invoke-virtual {v5, v15}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    .line 256
    invoke-virtual {v5}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    const-string v5, "RotationLayer"

    .line 259
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    move-result-object v6

    .line 260
    invoke-virtual {v6, v5}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v6

    .line 261
    invoke-virtual {v6, v12}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v6

    .line 262
    invoke-virtual {v6, v9}, Landroid/view/SurfaceControl$Builder;->setSecure(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v6

    .line 263
    invoke-virtual {v6, v15}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v6

    .line 264
    invoke-virtual {v6}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v6

    .line 265
    invoke-virtual {v6}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    .line 269
    invoke-static {v6, v14, v13, v5}, Lcom/android/server/wm/InputMonitor;->setTrustedOverlayInputInfo(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILjava/lang/String;)V

    .line 271
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    const-string v6, "EnterBlackFrameLayer"

    .line 272
    invoke-virtual {v5, v6}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    .line 273
    invoke-virtual {v5}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    .line 274
    invoke-virtual {v5, v15}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    .line 275
    invoke-virtual {v5}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterBlackFrameLayer:Landroid/view/SurfaceControl;

    .line 277
    invoke-virtual {v0}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v5

    const-string v6, "ScreenRotationAnimation#getMedianBorderLuma"

    const-wide/16 v9, 0x20

    .line 278
    invoke-static {v9, v10, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 281
    invoke-virtual {v0}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v6

    .line 280
    invoke-static {v5, v6}, Lcom/android/server/wm/utils/RotationAnimationUtils;->getMedianBorderLuma(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)F

    move-result v5

    iput v5, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mStartLuma:F

    .line 282
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 285
    invoke-virtual {v0}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v5

    .line 284
    invoke-static {v5}, Landroid/graphics/GraphicBuffer;->createFromHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/graphics/GraphicBuffer;

    move-result-object v5

    .line 287
    iget-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    const v9, 0x1eab90

    invoke-virtual {v14, v6, v9}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 288
    iget-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v9

    invoke-virtual {v14, v6, v9}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 304
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->isDisplayDecorationSupported()Z

    move-result v6

    if-eqz v6, :cond_1c1

    .line 305
    iget-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->containsHdrLayers()Z

    move-result v9

    if-nez v9, :cond_1bd

    move v9, v12

    goto :goto_1be

    :cond_1bd
    move v9, v4

    :goto_1be
    invoke-virtual {v14, v6, v9}, Landroid/view/SurfaceControl$Transaction;->setDimmingEnabled(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 308
    :cond_1c1
    iget-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    const/4 v9, -0x1

    invoke-virtual {v14, v6, v9}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 309
    iget-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    const/4 v9, 0x3

    new-array v9, v9, [F

    iget v10, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mStartLuma:F

    aput v10, v9, v4

    aput v10, v9, v12

    const/4 v13, 0x2

    aput v10, v9, v13

    invoke-virtual {v14, v6, v9}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    .line 310
    iget-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v14, v6, v9}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 311
    iget-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v14, v6, v5}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/graphics/GraphicBuffer;)Landroid/view/SurfaceControl$Transaction;

    .line 312
    iget-object v5, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-virtual {v14, v5, v0}, Landroid/view/SurfaceControl$Transaction;->setColorSpace(Landroid/view/SurfaceControl;Landroid/graphics/ColorSpace;)Landroid/view/SurfaceControl$Transaction;

    .line 313
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v14, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 314
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v14, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    :try_end_1f7
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_ae .. :try_end_1f7} :catch_1f8

    goto :goto_1fe

    :catch_1f8
    move-exception v0

    const-string v5, "Unable to allocate freeze surface"

    .line 317
    invoke-static {v11, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    :goto_1fe
    iget v0, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 325
    iget v5, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 326
    iget v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    if-le v0, v6, :cond_208

    move v7, v12

    goto :goto_209

    :cond_208
    move v7, v4

    :goto_209
    iget v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    if-le v5, v9, :cond_20f

    move v10, v12

    goto :goto_210

    :cond_20f
    move v10, v4

    :goto_210
    if-ne v7, v10, :cond_22d

    if-ne v0, v6, :cond_216

    if-eq v5, v9, :cond_22d

    .line 328
    :cond_216
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    new-instance v9, Landroid/graphics/Rect;

    iget v10, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    iget v11, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-direct {v9, v4, v4, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v4, v4, v0, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v6, v7, v9, v10, v4}, Landroid/view/SurfaceControl$Transaction;->setGeometry(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/SurfaceControl$Transaction;

    .line 333
    :cond_22d
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_SURFACE_ALLOC_enabled:Z

    if-eqz v0, :cond_244

    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_SURFACE_ALLOC:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, 0xa1e0f4

    new-array v7, v12, [Ljava/lang/Object;

    aput-object v0, v7, v4

    const/4 v9, 0x0

    invoke-static {v5, v6, v4, v9, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_244
    if-ne v3, v8, :cond_24a

    .line 336
    invoke-virtual {v1, v14, v8}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotation(Landroid/view/SurfaceControl$Transaction;I)V

    goto :goto_256

    .line 341
    :cond_24a
    iput v8, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    .line 342
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 343
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v14, v0}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotationTransform(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;)V

    .line 345
    :goto_256
    invoke-virtual {v14}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 349
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->isFadeInOutAnimationNeeded()Z

    move-result v0

    if-eqz v0, :cond_267

    const-string v0, "applied"

    .line 350
    invoke-virtual {v2, v4, v0}, Lcom/android/server/wm/DisplayContent;->setFadeInOutAnimationNeeded(ZLjava/lang/String;)V

    .line 351
    iput-boolean v12, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mFadeInOutAnimationNeeded:Z

    goto :goto_269

    .line 353
    :cond_267
    iput-boolean v4, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mFadeInOutAnimationNeeded:Z

    :goto_269
    return-void
.end method


# virtual methods
.method public dismiss(Landroid/view/SurfaceControl$Transaction;JFIIII)Z
    .registers 12

    .line 573
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 577
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    if-nez v0, :cond_1f

    .line 578
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 579
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getWindowingLayer()Landroid/view/SurfaceControl;

    move-result-object v2

    .line 578
    invoke-static {v0, v2}, Lcom/android/server/wm/utils/RotationAnimationUtils;->getLumaOfSurfaceControl(Landroid/view/Display;Landroid/view/SurfaceControl;)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEndLuma:F

    .line 580
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/wm/ScreenRotationAnimation;->startAnimation(Landroid/view/SurfaceControl$Transaction;JFIIII)Z

    .line 583
    :cond_1f
    iget-boolean p1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    if-nez p1, :cond_24

    return v1

    :cond_24
    const/4 p1, 0x1

    .line 586
    iput-boolean p1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    return p1
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 360
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 361
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    const-wide v1, 0x10800000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 362
    iget-boolean p0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mAnimRunning:Z

    const-wide v0, 0x10800000002L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 363
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getMaxDuration()J
    .registers 9

    const/4 v0, 0x4

    new-array v1, v0, [Lcom/android/server/wm/SurfaceAnimator;

    .line 955
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceRotationAnimationController:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    invoke-static {v2}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->-$$Nest$fgetmDisplayAnimator(Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;)Lcom/android/server/wm/SurfaceAnimator;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceRotationAnimationController:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    invoke-static {v2}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->-$$Nest$fgetmScreenshotRotationAnimator(Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;)Lcom/android/server/wm/SurfaceAnimator;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceRotationAnimationController:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    invoke-static {v2}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->-$$Nest$fgetmRotateScreenAnimator(Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;)Lcom/android/server/wm/SurfaceAnimator;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    iget-object p0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceRotationAnimationController:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    invoke-static {p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->-$$Nest$fgetmEnterBlackFrameAnimator(Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;)Lcom/android/server/wm/SurfaceAnimator;

    move-result-object p0

    const/4 v2, 0x3

    aput-object p0, v1, v2

    const-wide/16 v4, 0x0

    :goto_29
    if-ge v3, v0, :cond_44

    .line 962
    aget-object p0, v1, v3

    if-eqz p0, :cond_41

    .line 963
    invoke-virtual {p0}, Lcom/android/server/wm/SurfaceAnimator;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v2

    if-eqz v2, :cond_41

    .line 964
    invoke-virtual {p0}, Lcom/android/server/wm/SurfaceAnimator;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/wm/AnimationAdapter;->getDurationHint()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    :cond_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    :cond_44
    return-wide v4
.end method

.method public hasScreenshot()Z
    .registers 1

    .line 367
    iget-object p0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isAnimating()Z
    .registers 1

    .line 644
    iget-object p0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceRotationAnimationController:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    if-eqz p0, :cond_c

    .line 645
    invoke-virtual {p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->isAnimating()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isRotating()Z
    .registers 2

    .line 649
    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    iget p0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    if-eq v0, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public kill()V
    .registers 7

    .line 591
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceRotationAnimationController:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 592
    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->cancel()V

    .line 593
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceRotationAnimationController:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    .line 596
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    if-eqz v0, :cond_62

    .line 597
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_SURFACE_ALLOC_enabled:Z

    if-eqz v3, :cond_24

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_SURFACE_ALLOC:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x40f3b7ee

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v3, v4, v2, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 598
    :cond_24
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 599
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 600
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 602
    :cond_3b
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    .line 604
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterBlackFrameLayer:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_4e

    .line 605
    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 606
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterBlackFrameLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 608
    :cond_4c
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterBlackFrameLayer:Landroid/view/SurfaceControl;

    .line 610
    :cond_4e
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_5f

    .line 611
    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 612
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 614
    :cond_5d
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    .line 616
    :cond_5f
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 619
    :cond_62
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_6b

    .line 620
    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->kill()V

    .line 621
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    .line 623
    :cond_6b
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_74

    .line 624
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 625
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 627
    :cond_74
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_7d

    .line 628
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 629
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 631
    :cond_7d
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateAlphaAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_86

    .line 632
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 633
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateAlphaAnimation:Landroid/view/animation/Animation;

    .line 638
    :cond_86
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFadeInOutAnimationNeeded:Z

    return-void
.end method

.method public printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6

    .line 387
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSurface="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 388
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnteringBlackFrame="

    .line 389
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 391
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_32

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/BlackFrame;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 394
    :cond_32
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCurRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mOriginalRotation="

    .line 395
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 396
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mOriginalWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mOriginalHeight="

    .line 397
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 398
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mAnimRunning="

    .line 399
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mAnimRunning:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mFinishAnimReady="

    .line 400
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mFinishAnimStartTime="

    .line 401
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 402
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRotateExitAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " "

    .line 403
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 404
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mRotateEnterAnimation="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 405
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 406
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mSnapshotInitialMatrix="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 407
    iget-object p0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p2}, Landroid/graphics/Matrix;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public setRotation(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 6

    .line 411
    iput p2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    .line 416
    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    invoke-static {p2, v0}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result p2

    .line 417
    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    iget v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-static {p2, v0, v1, v2}, Lcom/android/server/wm/utils/RotationAnimationUtils;->createRotationMatrix(IIILandroid/graphics/Matrix;)V

    .line 419
    iget-object p2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotationTransform(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public final setRotationTransform(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;)V
    .registers 11

    .line 371
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    return-void

    .line 374
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 375
    iget-object p2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v0, 0x2

    aget v0, p2, v0

    const/4 v1, 0x5

    .line 376
    aget p2, p2, v1

    .line 377
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 378
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    iget-object p2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v0, 0x0

    aget v4, p2, v0

    const/4 v0, 0x3

    aget v5, p2, v0

    const/4 v0, 0x1

    aget v6, p2, v0

    const/4 v0, 0x4

    aget v7, p2, v0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 382
    iget-object p2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 383
    iget-object p0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public final shouldUseBlackScreenshot()Z
    .registers 3

    .line 935
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p0, 0x0

    return p0

    .line 939
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->mUseBlackScreenshot:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    return v1

    .line 949
    :cond_16
    iget-object p0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/WindowManagerPolicyExt;

    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicyExt;->isScreenTurnedOn()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method public final startAnimation(Landroid/view/SurfaceControl$Transaction;JFIIII)Z
    .registers 29

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    move/from16 v0, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    .line 434
    iget-object v8, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    const/4 v9, 0x0

    if-nez v8, :cond_14

    return v9

    .line 438
    :cond_14
    iget-boolean v8, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    const/4 v10, 0x1

    if-eqz v8, :cond_1a

    return v10

    .line 442
    :cond_1a
    iput-boolean v10, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    .line 445
    iget v8, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    iget v11, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    invoke-static {v8, v11}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result v8

    .line 448
    iget-boolean v11, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mFadeInOutAnimationNeeded:Z

    if-nez v11, :cond_2c

    iget-boolean v11, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mUseBlackScreenshot:Z

    if-eqz v11, :cond_2d

    :cond_2c
    move v8, v9

    :cond_2d
    const/4 v11, 0x3

    const/4 v12, 0x2

    if-eqz v6, :cond_56

    if-eqz v7, :cond_56

    .line 458
    iget-object v8, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    invoke-static {v8, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 459
    iget-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 462
    iget-boolean v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mUseBlackScreenshot:Z

    if-eqz v6, :cond_49

    goto/16 :goto_ba

    .line 466
    :cond_49
    iget-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v7, 0x10a00ea

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateAlphaAnimation:Landroid/view/animation/Animation;

    move v6, v10

    goto :goto_bb

    :cond_56
    if-eqz v8, :cond_a4

    if-eq v8, v10, :cond_8d

    if-eq v8, v12, :cond_76

    if-eq v8, v11, :cond_5f

    goto :goto_ba

    .line 518
    :cond_5f
    iget-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v7, 0x10a00ef

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 520
    iget-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v7, 0x10a00ee

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    goto :goto_ba

    .line 503
    :cond_76
    iget-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v7, 0x10a00e8

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 505
    iget-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v7, 0x10a00e7

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    goto :goto_ba

    .line 488
    :cond_8d
    iget-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v7, 0x10a00f1

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 490
    iget-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v7, 0x10a00f0

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    goto :goto_ba

    .line 473
    :cond_a4
    iget-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v7, 0x10a00e6

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 475
    iget-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v7, 0x10a00c1

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    :goto_ba
    move v6, v9

    .line 526
    :goto_bb
    sget-boolean v7, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v7, :cond_e8

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    iget v8, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    invoke-static {v8}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget v13, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    invoke-static {v13}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v15, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v7, v11, v9

    aput-object v8, v11, v10

    aput-object v13, v11, v12

    const v7, -0xa8d6d15

    invoke-static {v14, v7, v9, v15, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 531
    :cond_e8
    iget-object v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget v8, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    iget v11, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-virtual {v7, v4, v5, v8, v11}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 532
    iget-object v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v7, v2, v3}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 533
    iget-object v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v7, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 534
    iget-object v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    iget v8, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    iget v11, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-virtual {v7, v4, v5, v8, v11}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 535
    iget-object v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v7, v2, v3}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 536
    iget-object v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v7, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 538
    iput-boolean v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mAnimRunning:Z

    .line 539
    iput-boolean v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    const-wide/16 v7, -0x1

    .line 540
    iput-wide v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    if-eqz v6, :cond_122

    .line 543
    iget-object v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateAlphaAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v7, v2, v3}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 544
    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateAlphaAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    :cond_122
    if-eqz v6, :cond_15c

    .line 547
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-nez v0, :cond_15c

    .line 549
    :try_start_128
    new-instance v14, Landroid/graphics/Rect;

    neg-int v0, v4

    neg-int v2, v5

    mul-int/lit8 v3, v4, 0x2

    mul-int/lit8 v7, v5, 0x2

    invoke-direct {v14, v0, v2, v3, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 551
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15, v9, v9, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 552
    new-instance v0, Lcom/android/server/wm/BlackFrame;

    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v2, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    const v16, 0x1eab90

    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v18, 0x0

    iget-object v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterBlackFrameLayer:Landroid/view/SurfaceControl;

    move-object v11, v0

    move-object/from16 v13, p1

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-direct/range {v11 .. v19}, Lcom/android/server/wm/BlackFrame;-><init>(Ljava/util/function/Supplier;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;ILcom/android/server/wm/DisplayContent;ZLandroid/view/SurfaceControl;)V

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;
    :try_end_153
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_128 .. :try_end_153} :catch_154

    goto :goto_15c

    :catch_154
    move-exception v0

    const-string v2, "WindowManager"

    const-string v3, "Unable to allocate black surface"

    .line 555
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15c
    :goto_15c
    if-eqz v6, :cond_164

    .line 560
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceRotationAnimationController:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->startCustomAnimation()V

    goto :goto_169

    .line 562
    :cond_164
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceRotationAnimationController:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->startScreenRotationAnimation()V

    :goto_169
    return v10
.end method
