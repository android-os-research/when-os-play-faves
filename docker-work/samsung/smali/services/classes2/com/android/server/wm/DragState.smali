.class public Lcom/android/server/wm/DragState;
.super Ljava/lang/Object;
.source "DragState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DragState$AnimationListener;,
        Lcom/android/server/wm/DragState$AlphaAnimationListener;,
        Lcom/android/server/wm/DragState$ScaleAnimationListener;,
        Lcom/android/server/wm/DragState$PositionAnimationListener;,
        Lcom/android/server/wm/DragState$InputInterceptor;
    }
.end annotation


# static fields
.field public static final ALPHA_WHEN_MOVED:F = 0.3f

.field public static final ANIMATED_PROPERTY_ALPHA:Ljava/lang/String; = "alpha"

.field public static final ANIMATED_PROPERTY_SCALE:Ljava/lang/String; = "scale"

.field public static final ANIMATED_PROPERTY_X:Ljava/lang/String; = "x"

.field public static final ANIMATED_PROPERTY_Y:Ljava/lang/String; = "y"

.field public static final ANIM_ALPHA:I = 0x0

.field public static final ANIM_POS:I = 0x1

.field public static final ANIM_SCALE:I = 0x2

.field public static final AXIS_X:I = 0x0

.field public static final AXIS_Y:I = 0x1

.field public static final COMPONENT_MAX_WIDTH:I = 0xc8

.field public static final COMPONENT_MIN_WIDTH:I = 0x64

.field public static final DRAG_FLAGS_URI_ACCESS:I = 0x3

.field public static final DRAG_FLAGS_URI_PERMISSIONS:I = 0xc3

.field public static final MAX_ANIMATION_DURATION_MS:J = 0x177L

.field public static final MIMETYPE_IMAGE:I = 0x0

.field public static final MIMETYPE_OTHERS:I = -0x1

.field public static final MIMETYPE_TEXT:I = 0x1

.field public static final MIN_ANIMATION_DURATION_MS:J = 0xc3L

.field public static final THRESHOLD_AREA:I = 0xa


# instance fields
.field public final mAlphaAnimInterpolator:Landroid/view/animation/PathInterpolator;

.field public volatile mAnimationCompleted:Z

.field public mAnimator:Landroid/animation/ValueAnimator;

.field public mAnimatorSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field public mApplyAlpha:Z

.field public mCallingPackageName:Ljava/lang/String;

.field public mCrossProfileCopyAllowed:Z

.field public final mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

.field public mCurrentX:F

.field public mCurrentY:F

.field public mData:Landroid/content/ClipData;

.field public mDataDescription:Landroid/content/ClipDescription;

.field public mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mDisplaySize:Landroid/graphics/Point;

.field public final mDragDropController:Lcom/android/server/wm/DragDropController;

.field public mDragInProgress:Z

.field public mDragMoved:Z

.field public mDragResult:Z

.field public mDragSplitAppIconHasDrawable:Z

.field public mFlags:I

.field public mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

.field public mInputSurface:Landroid/view/SurfaceControl;

.field public mIsClosing:Z

.field public mIsObjectCapture:Z

.field public mLocalWin:Landroid/os/IBinder;

.field public mMimeType:I

.field public mNeedAdjustPosition:Z

.field public mNotifiedWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field public mObjectCaptureRect:Landroid/graphics/RectF;

.field public mOriginalAlpha:F

.field public mOriginalX:F

.field public mOriginalY:F

.field public mPid:I

.field public final mPositionScaleAnimInterpolator:Landroid/view/animation/PathInterpolator;

.field public mRelinquishDragSurfaceToDropTarget:Z

.field public mScaleAnimSource:F

.field public mScaleAnimTarget:F

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public mSourceUserId:I

.field public mSourceX:F

.field public mSourceY:F

.field public mSurfaceControl:Landroid/view/SurfaceControl;

.field public mTargetX:F

.field public mTargetY:F

.field public mThumbOffsetX:F

.field public mThumbOffsetY:F

.field public final mTmpClipRect:Landroid/graphics/Rect;

.field public mTmpMatrix:Landroid/graphics/Matrix;

.field public mToken:Landroid/os/IBinder;

.field public mTouchSource:I

.field public final mTransaction:Landroid/view/SurfaceControl$Transaction;

.field public mUid:I


# direct methods
.method public static synthetic $r8$lambda$IpELvdfheqphJW19ewON2dWNPfw(Lcom/android/server/wm/DragState;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/DragState;->lambda$endAnimator$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$MNj9uOf89hD_dII_hPuVrlzK8Qk(Landroid/animation/ValueAnimator;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/DragState;->lambda$createReturnAnimationLocked$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QDloENmd6HIE2yX3wXMv3Bi0j1w(Ljava/lang/Integer;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/DragState;->lambda$cancelAnimatorAllLocked$0(Ljava/lang/Integer;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WKYtMmocKmjkXSrsBoY4o1fOA0k(Lcom/android/server/wm/DragState;FFZLcom/android/server/wm/WindowState;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DragState;->lambda$broadcastDragStartedLocked$2(FFZLcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pKKd10piD9tDkodXVF_219XyuyE(Landroid/animation/ValueAnimator;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/DragState;->lambda$createCancelAnimationLocked$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmNeedAdjustPosition(Lcom/android/server/wm/DragState;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/DragState;->mNeedAdjustPosition:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmNeedAdjustPosition(Lcom/android/server/wm/DragState;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/DragState;->mNeedAdjustPosition:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$madjustPosition(Lcom/android/server/wm/DragState;FI)F
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DragState;->adjustPosition(FI)F

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcalculateDistance(Lcom/android/server/wm/DragState;FFFF)F
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DragState;->calculateDistance(FFFF)F

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DragDropController;Landroid/os/IBinder;Landroid/view/SurfaceControl;ILandroid/os/IBinder;)V
    .registers 12

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 137
    iput-boolean v0, p0, Lcom/android/server/wm/DragState;->mAnimationCompleted:Z

    .line 145
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

    .line 146
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    .line 153
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mTmpClipRect:Landroid/graphics/Rect;

    const/4 v0, -0x1

    .line 1025
    iput v0, p0, Lcom/android/server/wm/DragState;->mMimeType:I

    .line 1037
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1045
    iput v0, p0, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    const v1, 0x3f4ccccd    # 0.8f

    iput v1, p0, Lcom/android/server/wm/DragState;->mScaleAnimTarget:F

    .line 1047
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v0, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/server/wm/DragState;->mAlphaAnimInterpolator:Landroid/view/animation/PathInterpolator;

    .line 1049
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e6147ae    # 0.22f

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-direct {v1, v3, v4, v2, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/server/wm/DragState;->mPositionScaleAnimInterpolator:Landroid/view/animation/PathInterpolator;

    .line 172
    iput-object p1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 173
    iput-object p2, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 174
    iput-object p3, p0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 175
    iput-object p4, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 176
    iput p5, p0, Lcom/android/server/wm/DragState;->mFlags:I

    .line 177
    iput-object p6, p0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    .line 178
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    .line 179
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    iput-object p1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 182
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->DSS_ENABLED:Z

    if-eqz p1, :cond_6c

    .line 183
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DragState;->mTmpMatrix:Landroid/graphics/Matrix;

    :cond_6c
    return-void
.end method

.method private synthetic lambda$broadcastDragStartedLocked$2(FFZLcom/android/server/wm/WindowState;)V
    .registers 5

    .line 569
    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/android/server/wm/DragState;->sendDragStartedLocked(Lcom/android/server/wm/WindowState;FFZ)V

    return-void
.end method

.method public static synthetic lambda$cancelAnimatorAllLocked$0(Ljava/lang/Integer;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 235
    :try_start_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 236
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 237
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception p0

    const-string p1, "WindowManager"

    const-string v0, "Unable to cancel animator"

    .line 239
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    return-void
.end method

.method public static synthetic lambda$createCancelAnimationLocked$4(Landroid/animation/ValueAnimator;)V
    .registers 1

    .line 1005
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static synthetic lambda$createReturnAnimationLocked$3(Landroid/animation/ValueAnimator;)V
    .registers 1

    .line 959
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$endAnimator$1(I)V
    .registers 3

    .line 247
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 248
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

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


# virtual methods
.method public final adjustPosition(FI)F
    .registers 4

    .line 1124
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->hasOneHandOpSpec()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    if-eqz p0, :cond_1d

    .line 1127
    iget v0, p0, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr p1, v0

    if-nez p2, :cond_1a

    iget p0, p0, Landroid/view/MagnificationSpec;->offsetX:F

    goto :goto_1c

    :cond_1a
    iget p0, p0, Landroid/view/MagnificationSpec;->offsetY:F

    :goto_1c
    add-float/2addr p1, p0

    :cond_1d
    return p1
.end method

.method public final adjustScale(F)F
    .registers 3

    .line 1134
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->hasOneHandOpSpec()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    if-eqz p0, :cond_15

    .line 1137
    iget p0, p0, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr p1, p0

    :cond_15
    return p1
.end method

.method public broadcastDragStartedLocked(FF)V
    .registers 7

    .line 548
    iput p1, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    iput p1, p0, Lcom/android/server/wm/DragState;->mOriginalX:F

    .line 549
    iput p2, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    iput p2, p0, Lcom/android/server/wm/DragState;->mOriginalY:F

    .line 553
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iput-object v0, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    .line 554
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    .line 555
    iput-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    .line 557
    iget v1, p0, Lcom/android/server/wm/DragState;->mUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    .line 559
    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    .line 560
    iget v2, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    const-string v3, "no_cross_profile_copy_paste"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/wm/DragState;->mCrossProfileCopyAllowed:Z

    .line 563
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_5e

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcasting DRAG_STARTED at ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_5e
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DragState;->containsApplicationExtras(Landroid/content/ClipDescription;)Z

    move-result v0

    .line 568
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/DragState;FFZ)V

    const/4 p0, 0x0

    invoke-virtual {v1, v2, p0}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public final calculateDistance(FFFF)F
    .registers 7

    sub-float/2addr p1, p3

    .line 1319
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double p0, p0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    sub-float/2addr p2, p4

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-double p2, p2

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p2

    add-double/2addr p0, p2

    .line 1318
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public final calculateScale()V
    .registers 5

    .line 1053
    iget v0, p0, Lcom/android/server/wm/DragState;->mMimeType:I

    const v1, 0x3f4ccccd    # 0.8f

    const/4 v2, 0x1

    if-ne v0, v2, :cond_f

    .line 1054
    iput v1, p0, Lcom/android/server/wm/DragState;->mScaleAnimTarget:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1055
    iput v0, p0, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    return-void

    .line 1059
    :cond_f
    iget v0, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    .line 1061
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    const/16 v3, 0xc7

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DragDropController;->dpToPixel(I)F

    move-result v2

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_2f

    .line 1062
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DragDropController;->dpToPixel(I)F

    move-result v2

    div-float/2addr v2, v0

    iput v2, p0, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    mul-float/2addr v2, v1

    .line 1063
    iput v2, p0, Lcom/android/server/wm/DragState;->mScaleAnimTarget:F

    goto :goto_49

    .line 1064
    :cond_2f
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    const/16 v3, 0x63

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DragDropController;->dpToPixel(I)F

    move-result v2

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_49

    .line 1065
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DragDropController;->dpToPixel(I)F

    move-result v2

    div-float/2addr v2, v0

    iput v2, p0, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    mul-float/2addr v2, v1

    .line 1066
    iput v2, p0, Lcom/android/server/wm/DragState;->mScaleAnimTarget:F

    :cond_49
    :goto_49
    return-void
.end method

.method public cancelAnimatorAllLocked()V
    .registers 3

    .line 233
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    new-instance v1, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 242
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public cancelDragLocked(Z)V
    .registers 3

    .line 727
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_5

    return-void

    .line 730
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    if-eqz v0, :cond_19

    if-nez p1, :cond_19

    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->isAccessibilityDragDrop()Z

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_19

    .line 739
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->createCancelAnimationLocked()Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    return-void

    .line 736
    :cond_19
    :goto_19
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->closeLocked()V

    return-void
.end method

.method public closeLocked()V
    .registers 2

    const/4 v0, 0x0

    .line 260
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DragState;->closeLocked(Z)V

    return-void
.end method

.method public closeLocked(Z)V
    .registers 25

    move-object/from16 v0, p0

    .line 266
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_DRAG_AND_DROP_ANIMATION:Z

    const/4 v2, 0x1

    const-string v3, "WindowManager"

    const/4 v4, 0x0

    if-eqz v1, :cond_25

    if-nez p1, :cond_25

    .line 268
    iput-boolean v2, v0, Lcom/android/server/wm/DragState;->mIsClosing:Z

    .line 270
    iget-object v1, v0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    if-eqz v1, :cond_25

    .line 271
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v1, :cond_1c

    const-string/jumbo v1, "unregistering drag input channel"

    .line 272
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_1c
    iget-object v1, v0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    iget-object v5, v0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    invoke-virtual {v1, v2, v5}, Lcom/android/server/wm/DragDropController;->sendHandlerMessage(ILjava/lang/Object;)V

    .line 277
    iput-object v4, v0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    .line 282
    :cond_25
    iget-boolean v1, v0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v1, :cond_b2

    .line 283
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 285
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v7, :cond_38

    const-string v7, "broadcasting DRAG_ENDED"

    .line 286
    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_38
    iget-object v7, v0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3e
    :goto_3e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_ab

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    .line 292
    iget-boolean v9, v0, Lcom/android/server/wm/DragState;->mDragResult:Z

    if-nez v9, :cond_6c

    iget-object v9, v8, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v9, v9, Lcom/android/server/wm/Session;->mPid:I

    iget v10, v0, Lcom/android/server/wm/DragState;->mPid:I

    if-ne v9, v10, :cond_6c

    .line 294
    iget v9, v0, Lcom/android/server/wm/DragState;->mCurrentX:F

    .line 295
    iget v10, v0, Lcom/android/server/wm/DragState;->mCurrentY:F

    .line 296
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DragState;->relinquishDragSurfaceToDragSource()Z

    move-result v11

    if-eqz v11, :cond_67

    .line 299
    iget-object v11, v0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    move v13, v9

    move v14, v10

    move-object/from16 v20, v11

    goto :goto_70

    :cond_67
    move-object/from16 v20, v4

    move v13, v9

    move v14, v10

    goto :goto_70

    :cond_6c
    move-object/from16 v20, v4

    move v13, v5

    move v14, v13

    :goto_70
    const/4 v12, 0x4

    .line 302
    iget v15, v0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    iget v9, v0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    iget-boolean v10, v0, Lcom/android/server/wm/DragState;->mDragResult:Z

    move/from16 v16, v9

    move/from16 v22, v10

    invoke-static/range {v12 .. v22}, Landroid/view/DragEvent;->obtain(IFFFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Landroid/view/SurfaceControl;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object v9

    .line 306
    :try_start_87
    iget-object v10, v8, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v10, v9}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V
    :try_end_8c
    .catch Landroid/os/RemoteException; {:try_start_87 .. :try_end_8c} :catch_8d

    goto :goto_a1

    .line 308
    :catch_8d
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to drag-end window "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :goto_a1
    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v8, v8, Lcom/android/server/wm/Session;->mPid:I

    if-eq v1, v8, :cond_3e

    .line 313
    invoke-virtual {v9}, Landroid/view/DragEvent;->recycle()V

    goto :goto_3e

    .line 316
    :cond_ab
    iget-object v1, v0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 317
    iput-boolean v6, v0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    .line 321
    :cond_b2
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_DRAG_AND_DROP_ANIMATION:Z

    if-eqz v1, :cond_b9

    if-eqz p1, :cond_b9

    return-void

    :cond_b9
    const/16 v1, 0x2002

    .line 327
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DragState;->isFromSource(I)Z

    move-result v1

    if-eqz v1, :cond_ce

    .line 332
    iget-object v1, v0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v8, v0, Lcom/android/server/wm/DragState;->mCurrentX:F

    iget v9, v0, Lcom/android/server/wm/DragState;->mCurrentY:F

    invoke-virtual {v1, v7, v8, v9, v2}, Lcom/android/server/wm/WindowManagerService;->restorePointerIconLocked(Lcom/android/server/wm/DisplayContent;FFZ)V

    .line 336
    iput v6, v0, Lcom/android/server/wm/DragState;->mTouchSource:I

    .line 340
    :cond_ce
    iget-object v1, v0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_dd

    .line 341
    iget-object v2, v0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 342
    iput-object v4, v0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    .line 344
    :cond_dd
    iget-object v1, v0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_110

    .line 345
    iget-boolean v1, v0, Lcom/android/server/wm/DragState;->mRelinquishDragSurfaceToDropTarget:Z

    if-nez v1, :cond_f7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DragState;->relinquishDragSurfaceToDragSource()Z

    move-result v1

    if-nez v1, :cond_f7

    .line 346
    iget-object v1, v0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, v0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, v4}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_101

    .line 348
    :cond_f7
    iget-object v1, v0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    const/4 v2, 0x3

    iget-object v7, v0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    const-wide/16 v8, 0x1388

    invoke-virtual {v1, v2, v7, v8, v9}, Lcom/android/server/wm/DragDropController;->sendTimeoutMessage(ILjava/lang/Object;J)V

    .line 352
    :goto_101
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_DRAG_AND_DROP_ANIMATION:Z

    if-eqz v1, :cond_10e

    .line 353
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DragState;->cancelAnimatorAllLocked()V

    .line 355
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_DRAG_AND_DROP_SEAMLESS_ANIMATION:Z

    if-eqz v1, :cond_10e

    .line 356
    iput-boolean v6, v0, Lcom/android/server/wm/DragState;->mNeedAdjustPosition:Z

    .line 360
    :cond_10e
    iput-object v4, v0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 362
    :cond_110
    iget-object v1, v0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_118

    iget-boolean v1, v0, Lcom/android/server/wm/DragState;->mAnimationCompleted:Z

    if-eqz v1, :cond_122

    :cond_118
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_DRAG_AND_DROP_ANIMATION:Z

    if-eqz v1, :cond_127

    .line 364
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DragState;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_127

    :cond_122
    const-string v1, "Unexpectedly destroying mSurfaceControl while animation is running"

    .line 366
    invoke-static {v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_127
    iput v6, v0, Lcom/android/server/wm/DragState;->mFlags:I

    .line 370
    iput-object v4, v0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    .line 371
    iput-object v4, v0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 372
    iput-object v4, v0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    .line 373
    iput v5, v0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    iput v5, v0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    .line 374
    iput-object v4, v0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    .line 377
    iget-object v1, v0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DragDropController;->onDragStateClosedLocked(Lcom/android/server/wm/DragState;)V

    .line 380
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->DSS_ENABLED:Z

    if-eqz v1, :cond_140

    .line 381
    iput-object v4, v0, Lcom/android/server/wm/DragState;->mTmpMatrix:Landroid/graphics/Matrix;

    :cond_140
    return-void
.end method

.method public final containsApplicationExtras(Landroid/content/ClipDescription;)Z
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    :cond_4
    const-string v0, "application/vnd.android.activity"

    .line 621
    invoke-virtual {p1, v0}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "application/vnd.android.shortcut"

    .line 622
    invoke-virtual {p1, v0}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "application/vnd.android.task"

    .line 623
    invoke-virtual {p1, v0}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1d

    :cond_1c
    const/4 p0, 0x1

    :cond_1d
    return p0
.end method

.method public final createAlphaAnimator(FFJJ)Landroid/animation/ValueAnimator;
    .registers 11

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/animation/PropertyValuesHolder;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    aput p2, v2, v0

    const-string p1, "alpha"

    .line 1103
    invoke-static {p1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v1, v3

    .line 1102
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 1105
    invoke-virtual {p1, p5, p6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1106
    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1107
    iget-object p2, p0, Lcom/android/server/wm/DragState;->mAlphaAnimInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1108
    new-instance p2, Lcom/android/server/wm/DragState$AlphaAnimationListener;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/server/wm/DragState$AlphaAnimationListener;-><init>(Lcom/android/server/wm/DragState;Lcom/android/server/wm/DragState$AlphaAnimationListener-IA;)V

    .line 1109
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1110
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method public final createCancelAnimationLocked()Landroid/animation/ValueAnimator;
    .registers 17

    move-object/from16 v0, p0

    .line 965
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_DRAG_AND_DROP_ANIMATION:Z

    if-eqz v1, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DragState;->isAnimationSet()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 966
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DragState;->cancelAnimatorAllLocked()V

    .line 967
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DragState;->createReleaseAnimationLocked()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0

    .line 975
    :cond_14
    iget-object v1, v0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->hasOneHandOpSpec()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 976
    iget-object v1, v0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v1

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    const-string v3, "alpha"

    const-string/jumbo v5, "scale"

    const-string/jumbo v6, "y"

    const-string/jumbo v7, "x"

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x2

    if-eqz v1, :cond_8e

    new-array v8, v8, [Landroid/animation/PropertyValuesHolder;

    new-array v13, v12, [F

    .line 979
    iget v14, v0, Lcom/android/server/wm/DragState;->mCurrentX:F

    iget v15, v0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float v15, v14, v15

    iget v2, v1, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v15, v2

    iget v4, v1, Landroid/view/MagnificationSpec;->offsetX:F

    add-float/2addr v15, v4

    aput v15, v13, v11

    mul-float/2addr v14, v2

    add-float/2addr v14, v4

    aput v14, v13, v10

    .line 980
    invoke-static {v7, v13}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v8, v11

    new-array v2, v12, [F

    iget v4, v0, Lcom/android/server/wm/DragState;->mCurrentY:F

    iget v7, v0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float v7, v4, v7

    iget v13, v1, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v7, v13

    iget v14, v1, Landroid/view/MagnificationSpec;->offsetY:F

    add-float/2addr v7, v14

    aput v7, v2, v11

    mul-float/2addr v4, v13

    add-float/2addr v4, v14

    aput v4, v2, v10

    .line 983
    invoke-static {v6, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v8, v10

    new-array v2, v12, [F

    iget v1, v1, Landroid/view/MagnificationSpec;->scale:F

    aput v1, v2, v11

    aput v9, v2, v10

    .line 986
    invoke-static {v5, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v8, v12

    new-array v1, v12, [F

    iget v2, v0, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    aput v2, v1, v11

    aput v9, v1, v10

    .line 987
    invoke-static {v3, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v8, v2

    .line 979
    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    goto :goto_d2

    :cond_8e
    new-array v1, v8, [Landroid/animation/PropertyValuesHolder;

    new-array v2, v12, [F

    .line 990
    iget v4, v0, Lcom/android/server/wm/DragState;->mCurrentX:F

    iget v8, v0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float v8, v4, v8

    aput v8, v2, v11

    aput v4, v2, v10

    .line 991
    invoke-static {v7, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v11

    new-array v2, v12, [F

    iget v4, v0, Lcom/android/server/wm/DragState;->mCurrentY:F

    iget v7, v0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float v7, v4, v7

    aput v7, v2, v11

    aput v4, v2, v10

    .line 993
    invoke-static {v6, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v10

    new-array v2, v12, [F

    fill-array-data v2, :array_f6

    .line 995
    invoke-static {v5, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v12

    new-array v2, v12, [F

    iget v4, v0, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    aput v4, v2, v11

    aput v9, v2, v10

    .line 996
    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 990
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 999
    :goto_d2
    new-instance v2, Lcom/android/server/wm/DragState$AnimationListener;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/android/server/wm/DragState$AnimationListener;-><init>(Lcom/android/server/wm/DragState;Lcom/android/server/wm/DragState$AnimationListener-IA;)V

    const-wide/16 v3, 0xc3

    .line 1000
    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1001
    iget-object v3, v0, Lcom/android/server/wm/DragState;->mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1002
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1003
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1005
    iget-object v0, v0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda0;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v1

    nop

    :array_f6
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final createClipDataWithContentsToWindowExtras(Landroid/content/ClipData;)Landroid/content/ClipData;
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 860
    :cond_4
    invoke-virtual {p1}, Landroid/content/ClipData;->copyForTransferWithActivityInfo()Landroid/content/ClipData;

    move-result-object p1

    .line 861
    iget v0, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    invoke-virtual {p1, v0}, Landroid/content/ClipData;->setCallingUserId(I)V

    .line 862
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mCallingPackageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/content/ClipData;->setCallingPackageName(Ljava/lang/String;)V

    return-object p1
.end method

.method public final createMoveAnimationLocked()V
    .registers 10

    const-string v0, "WindowManager"

    const-string v1, "createMoveAnimationLocked"

    .line 1158
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1161
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3e99999a    # 0.3f

    const-wide/16 v5, 0x96

    const-wide/16 v7, 0x0

    move-object v2, p0

    .line 1164
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/DragState;->createAlphaAnimator(FFJJ)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1166
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1168
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda1;-><init>(Landroid/animation/AnimatorSet;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final createObjectReleaseAnimationLocked()Landroid/animation/ValueAnimator;
    .registers 14

    const-string v0, "WindowManager"

    const-string v1, "createObjectReleaseAnimationLocked"

    .line 1214
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1217
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1220
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v2

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v2, v3, :cond_32

    .line 1223
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dragSurfaceWidth is wrong!!, width: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    goto :goto_41

    .line 1225
    :cond_32
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mObjectCaptureRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v0

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v2, v0

    :goto_41
    const-wide/16 v5, 0x15e

    .line 1228
    invoke-virtual {p0, v4, v2, v5, v6}, Lcom/android/server/wm/DragState;->createScaleAnimator(FFJ)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1230
    new-instance v2, Lcom/android/server/wm/DragState$1;

    invoke-direct {v2, p0}, Lcom/android/server/wm/DragState$1;-><init>(Lcom/android/server/wm/DragState;)V

    .line 1239
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1240
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1241
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1244
    iget v2, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    iget v4, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    iget v5, p0, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    mul-float/2addr v4, v5

    sub-float v7, v2, v4

    .line 1245
    iget v2, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    iget v4, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    mul-float/2addr v4, v5

    sub-float v9, v2, v4

    .line 1247
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mObjectCaptureRect:Landroid/graphics/RectF;

    iget v8, v2, Landroid/graphics/RectF;->left:F

    iget v10, v2, Landroid/graphics/RectF;->top:F

    const-wide/16 v11, 0x15e

    move-object v6, p0

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/wm/DragState;->createPositionAnimator(FFFFJ)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 1251
    iget-object v4, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1253
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1255
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_DRAG_AND_DROP_SEAMLESS_ANIMATION:Z

    if-eqz v2, :cond_97

    const/4 v2, 0x0

    .line 1256
    iput-boolean v2, p0, Lcom/android/server/wm/DragState;->mNeedAdjustPosition:Z

    .line 1258
    :cond_97
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda1;-><init>(Landroid/animation/AnimatorSet;)V

    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method public final createPositionAnimator(FFFFJ)Landroid/animation/ValueAnimator;
    .registers 11

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/animation/PropertyValuesHolder;

    new-array v2, v0, [F

    const/4 v3, 0x0

    .line 1146
    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/DragState;->adjustPosition(FI)F

    move-result p1

    aput p1, v2, v3

    invoke-virtual {p0, p2, v3}, Lcom/android/server/wm/DragState;->adjustPosition(FI)F

    move-result p1

    const/4 p2, 0x1

    aput p1, v2, p2

    const-string/jumbo p1, "x"

    .line 1145
    invoke-static {p1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v1, v3

    new-array p1, v0, [F

    .line 1148
    invoke-virtual {p0, p3, p2}, Lcom/android/server/wm/DragState;->adjustPosition(FI)F

    move-result p3

    aput p3, p1, v3

    invoke-virtual {p0, p4, p2}, Lcom/android/server/wm/DragState;->adjustPosition(FI)F

    move-result p3

    aput p3, p1, p2

    const-string/jumbo p3, "y"

    .line 1147
    invoke-static {p3, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v1, p2

    .line 1144
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 1149
    invoke-virtual {p1, p5, p6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1150
    iget-object p2, p0, Lcom/android/server/wm/DragState;->mPositionScaleAnimInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1151
    new-instance p2, Lcom/android/server/wm/DragState$PositionAnimationListener;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/server/wm/DragState$PositionAnimationListener;-><init>(Lcom/android/server/wm/DragState;Lcom/android/server/wm/DragState$PositionAnimationListener-IA;)V

    .line 1152
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1153
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method public final createPressAnimationLocked()V
    .registers 15

    const-string v0, "WindowManager"

    const-string v1, "createPressAnimationLocked"

    .line 1172
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1175
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/16 v5, 0xc8

    const-wide/16 v7, 0x0

    move-object v2, p0

    .line 1178
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/DragState;->createAlphaAnimator(FFJJ)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1180
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->calculateScale()V

    .line 1184
    iget v1, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    iget v2, p0, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    mul-float v3, v1, v2

    iget v4, p0, Lcom/android/server/wm/DragState;->mScaleAnimTarget:F

    mul-float v5, v1, v4

    sub-float/2addr v3, v5

    .line 1185
    iget v5, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    mul-float v6, v5, v2

    mul-float/2addr v4, v5

    sub-float/2addr v6, v4

    .line 1187
    iget v4, p0, Lcom/android/server/wm/DragState;->mOriginalX:F

    mul-float/2addr v1, v2

    sub-float v9, v4, v1

    iput v9, p0, Lcom/android/server/wm/DragState;->mTargetX:F

    .line 1188
    iget v1, p0, Lcom/android/server/wm/DragState;->mOriginalY:F

    mul-float/2addr v5, v2

    sub-float v11, v1, v5

    iput v11, p0, Lcom/android/server/wm/DragState;->mTargetY:F

    add-float v8, v9, v3

    .line 1189
    iput v8, p0, Lcom/android/server/wm/DragState;->mSourceX:F

    add-float v10, v11, v6

    .line 1190
    iput v10, p0, Lcom/android/server/wm/DragState;->mSourceY:F

    const-wide/16 v12, 0x15e

    move-object v7, p0

    .line 1192
    invoke-virtual/range {v7 .. v13}, Lcom/android/server/wm/DragState;->createPositionAnimator(FFFFJ)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1194
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    iget v1, p0, Lcom/android/server/wm/DragState;->mScaleAnimTarget:F

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DragState;->adjustScale(F)F

    move-result v1

    iget v2, p0, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    .line 1198
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DragState;->adjustScale(F)F

    move-result v2

    const-wide/16 v4, 0x15e

    .line 1197
    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/android/server/wm/DragState;->createScaleAnimator(FFJ)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1199
    new-instance v2, Lcom/android/server/wm/DragState$ScaleAnimationListener;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/android/server/wm/DragState$ScaleAnimationListener;-><init>(Lcom/android/server/wm/DragState;Lcom/android/server/wm/DragState$ScaleAnimationListener-IA;)V

    .line 1200
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1201
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1202
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1206
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_DRAG_AND_DROP_SEAMLESS_ANIMATION:Z

    if-eqz v1, :cond_9e

    .line 1207
    iput-boolean v3, p0, Lcom/android/server/wm/DragState;->mNeedAdjustPosition:Z

    .line 1209
    :cond_9e
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda1;-><init>(Landroid/animation/AnimatorSet;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final createReleaseAnimationLocked()Landroid/animation/ValueAnimator;
    .registers 13

    .line 1265
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DRAG_AND_DROP_OBJECT_CAPTURE:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mIsObjectCapture:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragResult:Z

    if-nez v0, :cond_11

    .line 1267
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->createObjectReleaseAnimationLocked()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0

    :cond_11
    const-string v0, "WindowManager"

    const-string v1, "createReleaseAnimationLocked"

    .line 1270
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1273
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const v1, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    const-wide/16 v3, 0x96

    const-wide/16 v5, 0x0

    move-object v0, p0

    .line 1276
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/DragState;->createAlphaAnimator(FFJJ)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1278
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1281
    iget v0, p0, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DragState;->adjustScale(F)F

    move-result v0

    iget v1, p0, Lcom/android/server/wm/DragState;->mScaleAnimTarget:F

    .line 1282
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DragState;->adjustScale(F)F

    move-result v1

    const-wide/16 v2, 0x15e

    .line 1281
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/wm/DragState;->createScaleAnimator(FFJ)Landroid/animation/ValueAnimator;

    move-result-object v9

    .line 1283
    new-instance v0, Lcom/android/server/wm/DragState$2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DragState$2;-><init>(Lcom/android/server/wm/DragState;)V

    .line 1292
    invoke-virtual {v9, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1293
    invoke-virtual {v9, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1294
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1297
    iget v0, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    iget v1, p0, Lcom/android/server/wm/DragState;->mScaleAnimTarget:F

    mul-float v2, v0, v1

    iget v3, p0, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    mul-float v4, v0, v3

    sub-float/2addr v2, v4

    .line 1298
    iget v4, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    mul-float/2addr v1, v4

    mul-float v5, v4, v3

    sub-float/2addr v1, v5

    .line 1299
    iget v5, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    mul-float/2addr v0, v3

    sub-float/2addr v5, v0

    .line 1300
    iget v0, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    mul-float/2addr v4, v3

    sub-float v3, v0, v4

    sub-float v2, v5, v2

    sub-float v4, v3, v1

    const-wide/16 v10, 0x15e

    move-object v0, p0

    move v1, v5

    move-wide v5, v10

    .line 1301
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/DragState;->createPositionAnimator(FFFFJ)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1305
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1307
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1309
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DRAG_AND_DROP_SEAMLESS_ANIMATION:Z

    if-eqz v0, :cond_a5

    .line 1310
    iput-boolean v8, p0, Lcom/android/server/wm/DragState;->mNeedAdjustPosition:Z

    .line 1312
    :cond_a5
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda1;

    invoke-direct {v1, v7}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda1;-><init>(Landroid/animation/AnimatorSet;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v9
.end method

.method public final createReturnAnimationLocked()Landroid/animation/ValueAnimator;
    .registers 17

    move-object/from16 v0, p0

    .line 907
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_DRAG_AND_DROP_ANIMATION:Z

    if-eqz v1, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DragState;->isAnimationSet()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 908
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DragState;->cancelAnimatorAllLocked()V

    .line 909
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DragState;->createReleaseAnimationLocked()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0

    .line 917
    :cond_14
    iget-object v1, v0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->hasOneHandOpSpec()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 918
    iget-object v1, v0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v1

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    const/high16 v3, 0x40000000    # 2.0f

    const-string v4, "alpha"

    const-string/jumbo v6, "scale"

    const-string/jumbo v7, "y"

    const-string/jumbo v8, "x"

    const/4 v9, 0x4

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x2

    if-eqz v1, :cond_94

    new-array v9, v9, [Landroid/animation/PropertyValuesHolder;

    new-array v13, v12, [F

    .line 921
    iget v14, v0, Lcom/android/server/wm/DragState;->mCurrentX:F

    iget v15, v0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float/2addr v14, v15

    iget v2, v1, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v14, v2

    iget v5, v1, Landroid/view/MagnificationSpec;->offsetX:F

    add-float/2addr v14, v5

    aput v14, v13, v11

    iget v14, v0, Lcom/android/server/wm/DragState;->mOriginalX:F

    sub-float/2addr v14, v15

    mul-float/2addr v14, v2

    add-float/2addr v14, v5

    aput v14, v13, v10

    .line 922
    invoke-static {v8, v13}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v9, v11

    new-array v2, v12, [F

    iget v5, v0, Lcom/android/server/wm/DragState;->mCurrentY:F

    iget v8, v0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float/2addr v5, v8

    iget v13, v1, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v5, v13

    iget v14, v1, Landroid/view/MagnificationSpec;->offsetY:F

    add-float/2addr v5, v14

    aput v5, v2, v11

    iget v5, v0, Lcom/android/server/wm/DragState;->mOriginalY:F

    sub-float/2addr v5, v8

    mul-float/2addr v5, v13

    add-float/2addr v5, v14

    aput v5, v2, v10

    .line 925
    invoke-static {v7, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v9, v10

    new-array v2, v12, [F

    iget v1, v1, Landroid/view/MagnificationSpec;->scale:F

    aput v1, v2, v11

    aput v1, v2, v10

    .line 928
    invoke-static {v6, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v9, v12

    new-array v1, v12, [F

    iget v2, v0, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    aput v2, v1, v11

    div-float/2addr v2, v3

    aput v2, v1, v10

    .line 929
    invoke-static {v4, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v9, v2

    .line 921
    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    goto :goto_dd

    :cond_94
    new-array v1, v9, [Landroid/animation/PropertyValuesHolder;

    new-array v2, v12, [F

    .line 933
    iget v5, v0, Lcom/android/server/wm/DragState;->mCurrentX:F

    iget v9, v0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float/2addr v5, v9

    aput v5, v2, v11

    iget v5, v0, Lcom/android/server/wm/DragState;->mOriginalX:F

    sub-float/2addr v5, v9

    aput v5, v2, v10

    .line 934
    invoke-static {v8, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v11

    new-array v2, v12, [F

    iget v5, v0, Lcom/android/server/wm/DragState;->mCurrentY:F

    iget v8, v0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float/2addr v5, v8

    aput v5, v2, v11

    iget v5, v0, Lcom/android/server/wm/DragState;->mOriginalY:F

    sub-float/2addr v5, v8

    aput v5, v2, v10

    .line 937
    invoke-static {v7, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v10

    new-array v2, v12, [F

    fill-array-data v2, :array_12a

    .line 940
    invoke-static {v6, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v12

    new-array v2, v12, [F

    iget v5, v0, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    aput v5, v2, v11

    div-float/2addr v5, v3

    aput v5, v2, v10

    .line 941
    invoke-static {v4, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 933
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 945
    :goto_dd
    iget v2, v0, Lcom/android/server/wm/DragState;->mOriginalX:F

    iget v3, v0, Lcom/android/server/wm/DragState;->mCurrentX:F

    sub-float/2addr v2, v3

    .line 946
    iget v3, v0, Lcom/android/server/wm/DragState;->mOriginalY:F

    iget v4, v0, Lcom/android/server/wm/DragState;->mCurrentY:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v2

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    float-to-double v2, v2

    .line 948
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 949
    iget-object v4, v0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    mul-int/2addr v5, v5

    iget v4, v4, Landroid/graphics/Point;->y:I

    mul-int/2addr v4, v4

    add-int/2addr v5, v4

    int-to-double v4, v5

    .line 950
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide/16 v6, 0xc3

    div-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    add-long/2addr v2, v6

    .line 953
    new-instance v4, Lcom/android/server/wm/DragState$AnimationListener;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lcom/android/server/wm/DragState$AnimationListener;-><init>(Lcom/android/server/wm/DragState;Lcom/android/server/wm/DragState$AnimationListener-IA;)V

    .line 954
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 955
    iget-object v2, v0, Lcom/android/server/wm/DragState;->mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 956
    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 957
    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 959
    iget-object v0, v0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda3;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v1

    nop

    :array_12a
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final createScaleAnimator(FFJ)Landroid/animation/ValueAnimator;
    .registers 9

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/animation/PropertyValuesHolder;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    aput p2, v2, v0

    const-string/jumbo p1, "scale"

    .line 1116
    invoke-static {p1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v1, v3

    .line 1115
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 1117
    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1118
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mPositionScaleAnimInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method

.method public endAnimator(I)V
    .registers 4

    .line 246
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/DragState;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public endDragLocked()V
    .registers 3

    .line 701
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_5

    return-void

    .line 704
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragResult:Z

    if-eqz v0, :cond_13

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DRAG_AND_DROP_ANIMATION:Z

    if-eqz v0, :cond_41

    .line 706
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->isAnimationSet()Z

    move-result v0

    if-eqz v0, :cond_41

    :cond_13
    iget v0, p0, Lcom/android/server/wm/DragState;->mFlags:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-nez v0, :cond_41

    .line 710
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->isAccessibilityDragDrop()Z

    move-result v0

    if-nez v0, :cond_41

    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->relinquishDragSurfaceToDragSource()Z

    move-result v0

    if-nez v0, :cond_41

    .line 714
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DRAG_AND_DROP_ANIMATION:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2f

    iget v0, p0, Lcom/android/server/wm/DragState;->mMimeType:I

    if-eq v0, v1, :cond_37

    :cond_2f
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DRAG_AND_DROP_OBJECT_CAPTURE:Z

    if-eqz v0, :cond_3a

    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mIsObjectCapture:Z

    if-eqz v0, :cond_3a

    .line 716
    :cond_37
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DragState;->closeLocked(Z)V

    .line 719
    :cond_3a
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->createReturnAnimationLocked()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    return-void

    .line 723
    :cond_41
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->closeLocked()V

    return-void
.end method

.method public getInputChannel()Landroid/view/InputChannel;
    .registers 1

    .line 524
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_8

    :cond_6
    iget-object p0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    :goto_8
    return-object p0
.end method

.method public getInputWindowHandle()Landroid/view/InputWindowHandle;
    .registers 1

    .line 528
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_8

    :cond_6
    iget-object p0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    :goto_8
    return-object p0
.end method

.method public final getPermissionsHandlerIfPossible(Lcom/android/server/wm/WindowState;)Lcom/android/internal/view/IDragAndDropPermissions;
    .registers 11

    if-eqz p1, :cond_31

    .line 867
    iget v0, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_31

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    if-eqz v0, :cond_31

    .line 870
    new-instance v0, Lcom/android/server/wm/DragAndDropPermissionsHandler;

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    iget v4, p0, Lcom/android/server/wm/DragState;->mUid:I

    .line 873
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v5

    iget v1, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit8 v6, v1, 0x3

    iget v7, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    .line 876
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/wm/DragAndDropPermissionsHandler;-><init>(Lcom/android/server/wm/WindowManagerGlobalLock;Landroid/content/ClipData;ILjava/lang/String;III)V

    return-object v0

    :cond_31
    const/4 p0, 0x0

    return-object p0
.end method

.method public final hasThresholdArea(FF)Z
    .registers 8

    .line 1093
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DragDropController;->dpToPixel(I)F

    move-result v0

    .line 1094
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/server/wm/DragState;->mOriginalX:F

    sub-float v3, v2, v0

    iget p0, p0, Lcom/android/server/wm/DragState;->mOriginalY:F

    sub-float v4, p0, v0

    add-float/2addr v2, v0

    add-float/2addr p0, v0

    invoke-direct {v1, v3, v4, v2, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1097
    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    return p0
.end method

.method public isAccessibilityDragDrop()Z
    .registers 1

    .line 1499
    iget p0, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 p0, p0, 0x400

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public final isAnimating()Z
    .registers 1

    .line 1089
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isAnimationSet()Z
    .registers 3

    .line 1082
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DRAG_AND_DROP_ANIMATION:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 1083
    iget p0, p0, Lcom/android/server/wm/DragState;->mMimeType:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_b

    const/4 v1, 0x1

    :cond_b
    return v1
.end method

.method public isClosing()Z
    .registers 1

    .line 189
    iget-boolean p0, p0, Lcom/android/server/wm/DragState;->mIsClosing:Z

    return p0
.end method

.method public final isFromSource(I)Z
    .registers 2

    .line 1443
    iget p0, p0, Lcom/android/server/wm/DragState;->mTouchSource:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public isInProgress()Z
    .registers 1

    .line 833
    iget-boolean p0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    return p0
.end method

.method public final isValidDropTarget(Lcom/android/server/wm/WindowState;ZZ)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 631
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_11

    move v1, v3

    goto :goto_12

    :cond_11
    move v1, v0

    :goto_12
    if-nez v1, :cond_19

    if-nez p3, :cond_19

    if-eqz p2, :cond_19

    return v0

    .line 637
    :cond_19
    invoke-virtual {p1, p3}, Lcom/android/server/wm/WindowState;->isPotentialDragTarget(Z)Z

    move-result p2

    if-nez p2, :cond_20

    return v0

    .line 640
    :cond_20
    iget p2, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 p2, p2, 0x100

    if-eqz p2, :cond_2c

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DragState;->targetWindowSupportsGlobalDrag(Lcom/android/server/wm/WindowState;)Z

    move-result p2

    if-nez p2, :cond_2f

    :cond_2c
    if-nez v1, :cond_2f

    return v0

    :cond_2f
    if-eqz p3, :cond_3e

    .line 648
    iget-object p2, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 649
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    if-eq p2, v1, :cond_3e

    return v0

    :cond_3e
    if-nez p3, :cond_50

    .line 654
    iget-boolean p2, p0, Lcom/android/server/wm/DragState;->mCrossProfileCopyAllowed:Z

    if-nez p2, :cond_50

    iget p0, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    .line 656
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    if-ne p0, p1, :cond_51

    :cond_50
    move v0, v3

    :cond_51
    return v0
.end method

.method public isWindowNotified(Lcom/android/server/wm/WindowState;)Z
    .registers 3

    .line 692
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public notifyDownEventLocked()V
    .registers 2

    .line 1071
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p0, "WindowManager"

    const-string v0, "notifyDownEventLocked(), isAnimating() is true"

    .line 1072
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1076
    :cond_e
    iget v0, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_17

    .line 1077
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->createPressAnimationLocked()V

    :cond_17
    return-void
.end method

.method public notifyLocationToEavesdropDragEventWindowLocked(FF)V
    .registers 14

    const-string v0, "WindowManager"

    .line 882
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getWindowEavesdropDragEvent()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_57

    .line 883
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v2

    if-nez v2, :cond_57

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DragState;->isWindowNotified(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    if-nez v2, :cond_17

    goto :goto_57

    .line 888
    :cond_17
    :try_start_17
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 890
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v3, :cond_34

    .line 891
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sending DRAG_LOCATION to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    const/4 v5, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    move v6, p1

    move v7, p2

    .line 893
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wm/DragState;->obtainDragEvent(IFFLandroid/content/ClipData;ZLcom/android/internal/view/IDragAndDropPermissions;)Landroid/view/DragEvent;

    move-result-object p0

    const/4 p1, 0x1

    .line 894
    invoke-virtual {p0, p1}, Landroid/view/DragEvent;->setEavesDrop(Z)V

    .line 895
    iget-object p1, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {p1, p0}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 896
    iget-object p1, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget p1, p1, Lcom/android/server/wm/Session;->mPid:I

    if-eq v2, p1, :cond_57

    .line 897
    invoke-virtual {p0}, Landroid/view/DragEvent;->recycle()V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_51} :catch_52

    goto :goto_57

    :catch_52
    const-string p0, "can\'t send drag notification to a window eavesdropping dragEvent"

    .line 900
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_57
    :goto_57
    return-void
.end method

.method public final obtainDragEvent(IFFLandroid/content/ClipData;ZLcom/android/internal/view/IDragAndDropPermissions;)Landroid/view/DragEvent;
    .registers 18

    move-object v0, p0

    .line 838
    iget v3, v0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    iget v4, v0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    iget-object v6, v0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    if-eqz p5, :cond_c

    .line 840
    iget-object v0, v0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    move-object v8, v0

    const/4 v10, 0x0

    const/4 v5, 0x0

    move v0, p1

    move v1, p2

    move v2, p3

    move-object v7, p4

    move-object/from16 v9, p6

    .line 838
    invoke-static/range {v0 .. v10}, Landroid/view/DragEvent;->obtain(IFFFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Landroid/view/SurfaceControl;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object v0

    return-object v0
.end method

.method public final obtainDragStartedEvent(Lcom/android/server/wm/WindowState;FFZ)Landroid/view/DragEvent;
    .registers 12

    if-eqz p4, :cond_16

    const/4 v1, 0x1

    .line 848
    iget-object p4, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    .line 849
    invoke-virtual {p0, p4}, Lcom/android/server/wm/DragState;->createClipDataWithContentsToWindowExtras(Landroid/content/ClipData;)Landroid/content/ClipData;

    move-result-object v4

    const/4 v5, 0x1

    .line 850
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DragState;->getPermissionsHandlerIfPossible(Lcom/android/server/wm/WindowState;)Lcom/android/internal/view/IDragAndDropPermissions;

    move-result-object v6

    move-object v0, p0

    move v2, p2

    move v3, p3

    .line 848
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/DragState;->obtainDragEvent(IFFLandroid/content/ClipData;ZLcom/android/internal/view/IDragAndDropPermissions;)Landroid/view/DragEvent;

    move-result-object p0

    return-object p0

    :cond_16
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p2

    move v3, p3

    .line 852
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/DragState;->obtainDragEvent(IFFLandroid/content/ClipData;ZLcom/android/internal/view/IDragAndDropPermissions;)Landroid/view/DragEvent;

    move-result-object p0

    return-object p0
.end method

.method public overridePointerIconLocked(I)V
    .registers 2

    .line 1447
    iput p1, p0, Lcom/android/server/wm/DragState;->mTouchSource:I

    const/16 p1, 0x2002

    .line 1448
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DragState;->isFromSource(I)Z

    move-result p0

    if-eqz p0, :cond_13

    .line 1449
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object p0

    const/16 p1, 0x3fd

    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    :cond_13
    return-void
.end method

.method public register(Landroid/view/Display;)V
    .registers 4

    .line 535
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 536
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_11

    const-string/jumbo v0, "registering drag input channel"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    if-eqz v0, :cond_1b

    const-string p0, "Duplicate register of drag input channel"

    .line 538
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 540
    :cond_1b
    new-instance v0, Lcom/android/server/wm/DragState$InputInterceptor;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/DragState$InputInterceptor;-><init>(Lcom/android/server/wm/DragState;Landroid/view/Display;)V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    .line 541
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->showInputSurface()V

    :goto_25
    return-void
.end method

.method public final relinquishDragSurfaceToDragSource()Z
    .registers 1

    .line 1503
    iget p0, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 p0, p0, 0x800

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public reportDropWindowLock(Landroid/os/IBinder;FF)Z
    .registers 16

    .line 391
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 395
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputToWindowMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 396
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DragState;->isWindowNotified(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    const-string v2, "WindowManager"

    if-nez v0, :cond_36

    .line 408
    iput-boolean v1, p0, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 409
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->endDragLocked()V

    .line 410
    sget-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz p0, :cond_35

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Drop outside a valid window "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    return v1

    .line 414
    :cond_36
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_4f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sending DROP to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_4f
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 419
    iget v3, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v4, v3, 0x100

    if-eqz v4, :cond_7f

    and-int/lit8 v3, v3, 0x3

    if-eqz v3, :cond_7f

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    if-eqz v3, :cond_7f

    .line 421
    new-instance v11, Lcom/android/server/wm/DragAndDropPermissionsHandler;

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iget-object v5, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    iget v6, p0, Lcom/android/server/wm/DragState;->mUid:I

    .line 424
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v7

    iget v3, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v8, v3, 0xc3

    iget v9, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    move-object v3, v11

    move v10, v0

    invoke-direct/range {v3 .. v10}, Lcom/android/server/wm/DragAndDropPermissionsHandler;-><init>(Lcom/android/server/wm/WindowManagerGlobalLock;Landroid/content/ClipData;ILjava/lang/String;III)V

    goto :goto_80

    :cond_7f
    const/4 v11, 0x0

    :goto_80
    move-object v9, v11

    .line 431
    iget v3, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    if-eq v3, v0, :cond_8c

    .line 432
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    if-eqz v0, :cond_8c

    .line 433
    invoke-virtual {v0, v3}, Landroid/content/ClipData;->fixUris(I)V

    .line 436
    :cond_8c
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 437
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    const/4 v4, 0x3

    .line 438
    iget-object v7, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    .line 439
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DragState;->targetInterceptsGlobalDrag(Lcom/android/server/wm/WindowState;)Z

    move-result v8

    move-object v3, p0

    move v5, p2

    move v6, p3

    .line 438
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/DragState;->obtainDragEvent(IFFLandroid/content/ClipData;ZLcom/android/internal/view/IDragAndDropPermissions;)Landroid/view/DragEvent;

    move-result-object p2

    .line 442
    :try_start_a4
    iget-object p3, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {p3, p2}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 445
    iget-object p3, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    const-wide/16 v3, 0x1388

    invoke-virtual {p3, v1, v10, v3, v4}, Lcom/android/server/wm/DragDropController;->sendTimeoutMessage(ILjava/lang/Object;J)V
    :try_end_b0
    .catch Landroid/os/RemoteException; {:try_start_a4 .. :try_end_b0} :catch_bf
    .catchall {:try_start_a4 .. :try_end_b0} :catchall_bd

    .line 452
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget p1, p1, Lcom/android/server/wm/Session;->mPid:I

    if-eq v0, p1, :cond_b9

    .line 453
    invoke-virtual {p2}, Landroid/view/DragEvent;->recycle()V

    .line 456
    :cond_b9
    iput-object v10, p0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    const/4 p0, 0x1

    return p0

    :catchall_bd
    move-exception p0

    goto :goto_e0

    .line 448
    :catch_bf
    :try_start_bf
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t send drop notification to win "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->endDragLocked()V
    :try_end_d6
    .catchall {:try_start_bf .. :try_end_d6} :catchall_bd

    .line 452
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget p0, p0, Lcom/android/server/wm/Session;->mPid:I

    if-eq v0, p0, :cond_df

    .line 453
    invoke-virtual {p2}, Landroid/view/DragEvent;->recycle()V

    :cond_df
    return v1

    .line 452
    :goto_e0
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget p1, p1, Lcom/android/server/wm/Session;->mPid:I

    if-eq v0, p1, :cond_e9

    .line 453
    invoke-virtual {p2}, Landroid/view/DragEvent;->recycle()V

    .line 455
    :cond_e9
    throw p0
.end method

.method public sendDragStartedIfNeededLocked(Lcom/android/server/wm/WindowState;)V
    .registers 5

    .line 678
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    if-eqz v0, :cond_32

    .line 680
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DragState;->isWindowNotified(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 683
    :cond_b
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_25

    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "need to send DRAG_STARTED to new window "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_25
    iget v0, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    iget v1, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    .line 687
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DragState;->containsApplicationExtras(Landroid/content/ClipDescription;)Z

    move-result v2

    .line 686
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/wm/DragState;->sendDragStartedLocked(Lcom/android/server/wm/WindowState;FFZ)V

    :cond_32
    return-void
.end method

.method public final sendDragStartedLocked(Lcom/android/server/wm/WindowState;FFZ)V
    .registers 7

    .line 583
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DragState;->targetInterceptsGlobalDrag(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    .line 584
    iget-boolean v1, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    if-eqz v1, :cond_6a

    invoke-virtual {p0, p1, p4, v0}, Lcom/android/server/wm/DragState;->isValidDropTarget(Lcom/android/server/wm/WindowState;ZZ)Z

    move-result p4

    if-eqz p4, :cond_6a

    if-eqz v0, :cond_15

    .line 586
    iget-object p4, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    invoke-virtual {p4}, Landroid/content/ClipData;->copyForTransferWithActivityInfo()Landroid/content/ClipData;

    .line 590
    :cond_15
    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowState;->translateToWindowX(F)F

    move-result p2

    .line 591
    invoke-virtual {p1, p3}, Lcom/android/server/wm/WindowState;->translateToWindowY(F)F

    move-result p3

    .line 590
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/DragState;->obtainDragStartedEvent(Lcom/android/server/wm/WindowState;FFZ)Landroid/view/DragEvent;

    move-result-object p2

    .line 600
    :try_start_21
    iget-object p3, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {p3, p2}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 602
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2b} :catch_3b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_39

    .line 607
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget p1, p1, Lcom/android/server/wm/Session;->mPid:I

    if-eq p0, p1, :cond_6a

    .line 608
    :goto_35
    invoke-virtual {p2}, Landroid/view/DragEvent;->recycle()V

    goto :goto_6a

    :catchall_39
    move-exception p0

    goto :goto_5c

    :catch_3b
    :try_start_3b
    const-string p0, "WindowManager"

    .line 604
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unable to drag-start window "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_3b .. :try_end_51} :catchall_39

    .line 607
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget p1, p1, Lcom/android/server/wm/Session;->mPid:I

    if-eq p0, p1, :cond_6a

    goto :goto_35

    :goto_5c
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p3

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget p1, p1, Lcom/android/server/wm/Session;->mPid:I

    if-eq p3, p1, :cond_69

    .line 608
    invoke-virtual {p2}, Landroid/view/DragEvent;->recycle()V

    .line 610
    :cond_69
    throw p0

    :cond_6a
    :goto_6a
    return-void
.end method

.method public setDragSplitAppIconHasDrawable(Z)V
    .registers 2

    .line 462
    iput-boolean p1, p0, Lcom/android/server/wm/DragState;->mDragSplitAppIconHasDrawable:Z

    return-void
.end method

.method public final showInputSurface()V
    .registers 8

    .line 193
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_30

    .line 194
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getSession()Landroid/view/SurfaceSession;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "Drag and Drop Input Consumer"

    .line 196
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "DragState.showInputSurface"

    .line 197
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 198
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getOverlayLayer()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    .line 201
    :cond_30
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->getInputWindowHandle()Landroid/view/InputWindowHandle;

    move-result-object v0

    if-nez v0, :cond_3e

    const-string p0, "WindowManager"

    const-string v0, "Drag is in progress but there is no drag window handle."

    .line 203
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 209
    :cond_3e
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mTmpClipRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 211
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    .line 212
    invoke-virtual {v1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    const v2, 0x7fffffff

    .line 213
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mTmpClipRect:Landroid/graphics/Rect;

    .line 214
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 216
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->hasOneHandOpSpec()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 217
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v0

    if-eqz v0, :cond_8e

    .line 219
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    iget v6, v0, Landroid/view/MagnificationSpec;->scale:F

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v3, v6

    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    iget v3, v0, Landroid/view/MagnificationSpec;->offsetX:F

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    .line 220
    invoke-virtual {v1, v2, v3, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 227
    :cond_8e
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->syncInputWindows()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    const/4 v0, 0x1

    .line 228
    invoke-virtual {p0, v0}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    return-void
.end method

.method public targetInterceptsGlobalDrag(Lcom/android/server/wm/WindowState;)Z
    .registers 2

    .line 670
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 p1, -0x80000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public final targetWindowSupportsGlobalDrag(Lcom/android/server/wm/WindowState;)Z
    .registers 2

    .line 662
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_d

    iget p0, p0, Lcom/android/server/wm/ActivityRecord;->mTargetSdk:I

    const/16 p1, 0x18

    if-lt p0, p1, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public updateDragSurfaceLocked(ZFF)V
    .registers 12

    .line 743
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_124

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DRAG_AND_DROP_ANIMATION:Z

    if-eqz v0, :cond_1c

    .line 745
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->isAnimationSet()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mApplyAlpha:Z

    if-nez v0, :cond_1c

    goto/16 :goto_124

    .line 762
    :cond_1c
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DRAG_AND_DROP_OBJECT_CAPTURE:Z

    const-string v3, "WindowManager"

    if-eqz v0, :cond_35

    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mIsObjectCapture:Z

    if-eqz v0, :cond_35

    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragMoved:Z

    if-nez v0, :cond_35

    .line 764
    iput-boolean v2, p0, Lcom/android/server/wm/DragState;->mApplyAlpha:Z

    .line 765
    iput-boolean v2, p0, Lcom/android/server/wm/DragState;->mDragMoved:Z

    const-string/jumbo p0, "skip createMoveAnimation"

    .line 766
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 770
    :cond_35
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DRAG_AND_DROP_ANIMATION:Z

    if-eqz v0, :cond_44

    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragMoved:Z

    if-nez v0, :cond_44

    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/DragState;->hasThresholdArea(FF)Z

    move-result v0

    if-eqz v0, :cond_44

    return-void

    .line 773
    :cond_44
    iput-boolean v2, p0, Lcom/android/server/wm/DragState;->mDragMoved:Z

    .line 776
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragSplitAppIconHasDrawable:Z

    if-eqz v0, :cond_53

    .line 777
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_74

    .line 778
    :cond_53
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DRAG_AND_DROP_ANIMATION:Z

    if-eqz v0, :cond_67

    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->isAnimationSet()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 779
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mApplyAlpha:Z

    if-nez v0, :cond_74

    .line 780
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->createMoveAnimationLocked()V

    .line 781
    iput-boolean v2, p0, Lcom/android/server/wm/DragState;->mApplyAlpha:Z

    goto :goto_74

    .line 783
    :cond_67
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragSplitAppIconHasDrawable:Z

    if-nez v0, :cond_74

    .line 784
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v5, p0, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    invoke-virtual {v0, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 788
    :cond_74
    :goto_74
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DRAG_AND_DROP_ANIMATION:Z

    if-eqz v0, :cond_7f

    iget v0, p0, Lcom/android/server/wm/DragState;->mMimeType:I

    if-nez v0, :cond_7f

    .line 789
    iget v0, p0, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    goto :goto_81

    :cond_7f
    const/high16 v0, 0x3f800000    # 1.0f

    .line 792
    :goto_81
    iput p2, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    .line 793
    iput p3, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    if-nez p1, :cond_88

    return-void

    .line 800
    :cond_88
    sget-boolean p1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz p1, :cond_91

    const-string p1, ">>> OPEN TRANSACTION notifyMoveLocked"

    .line 801
    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :cond_91
    iget-object p1, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->hasOneHandOpSpec()Z

    move-result p1

    if-eqz p1, :cond_c5

    .line 806
    iget-object p1, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object p1

    if-eqz p1, :cond_f2

    .line 809
    iget v3, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    mul-float/2addr v3, v0

    sub-float v3, p2, v3

    iget v4, p1, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v3, v4

    iget v5, p1, Landroid/view/MagnificationSpec;->offsetX:F

    add-float/2addr v3, v5

    float-to-int v3, v3

    .line 810
    iget v5, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    mul-float/2addr v5, v0

    sub-float v0, p3, v5

    mul-float/2addr v0, v4

    iget p1, p1, Landroid/view/MagnificationSpec;->offsetY:F

    add-float/2addr v0, p1

    float-to-int p1, v0

    .line 811
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    int-to-float v3, v3

    int-to-float p1, p1

    invoke-virtual {v0, v4, v3, p1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_f2

    .line 814
    :cond_c5
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_DRAG_AND_DROP_ANIMATION:Z

    if-eqz p1, :cond_df

    .line 815
    iget-object p1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v4, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    mul-float/2addr v4, v0

    sub-float v4, p2, v4

    iget v5, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    mul-float/2addr v5, v0

    sub-float v0, p3, v5

    invoke-virtual {p1, v3, v4, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    .line 816
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_f2

    .line 819
    :cond_df
    iget-object p1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v3, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float v3, p2, v3

    iget v4, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float v4, p3, v4

    invoke-virtual {p1, v0, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    .line 820
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 824
    :cond_f2
    :goto_f2
    sget-boolean p1, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_TRANSACTIONS_enabled:Z

    if-eqz p1, :cond_123

    iget-object p1, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float/2addr p2, v0

    float-to-int p2, p2

    int-to-long v3, p2

    iget p0, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float/2addr p3, p0

    float-to-int p0, p3

    int-to-long p2, p0

    sget-object p0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v0, 0x14698a26

    const/16 v5, 0x14

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v7, v2

    const/4 p1, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v7, p1

    invoke-static {p0, v0, v5, v6, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_123
    return-void

    .line 747
    :cond_124
    :goto_124
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_DRAG_AND_DROP_SEAMLESS_ANIMATION:Z

    if-eqz p1, :cond_15b

    iget-boolean p1, p0, Lcom/android/server/wm/DragState;->mNeedAdjustPosition:Z

    if-eqz p1, :cond_15b

    .line 748
    iput p2, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    .line 749
    iput p3, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    .line 751
    iget-object p1, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_15b

    .line 752
    iget-object p1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v3, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    iget v4, p0, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    mul-float/2addr v3, v4

    sub-float/2addr p2, v3

    .line 753
    invoke-virtual {p0, p2, v1}, Lcom/android/server/wm/DragState;->adjustPosition(FI)F

    move-result p2

    iget v1, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    iget v3, p0, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    mul-float/2addr v1, v3

    sub-float/2addr p3, v1

    .line 754
    invoke-virtual {p0, p3, v2}, Lcom/android/server/wm/DragState;->adjustPosition(FI)F

    move-result p0

    .line 752
    invoke-virtual {p1, v0, p2, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    .line 754
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_15b
    return-void
.end method
