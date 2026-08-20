.class public Lcom/android/server/wm/WindowState;
.super Lcom/android/server/wm/WindowContainer;
.source "WindowState.java"

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicy$WindowState;
.implements Lcom/android/server/wm/InsetsControlTarget;
.implements Lcom/android/server/wm/InputTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowState$MoveAnimationSpec;,
        Lcom/android/server/wm/WindowState$WindowId;,
        Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;,
        Lcom/android/server/wm/WindowState$DeathRecipient;,
        Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;,
        Lcom/android/server/wm/WindowState$PowerManagerWrapper;,
        Lcom/android/server/wm/WindowState$DrawHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/WindowContainer<",
        "Lcom/android/server/wm/WindowState;",
        ">;",
        "Lcom/android/server/policy/WindowManagerPolicy$WindowState;",
        "Lcom/android/server/wm/InsetsControlTarget;",
        "Lcom/android/server/wm/InputTarget;"
    }
.end annotation


# static fields
.field public static final BLAST_TIMEOUT_DURATION:I = 0x1388

.field public static final DEFAULT_DIM_AMOUNT_DEAD_WINDOW:F = 0.5f

.field public static final EXCLUSION_LEFT:I = 0x0

.field public static final EXCLUSION_RIGHT:I = 0x1

.field public static final EXIT_ANIMATING_TYPES:I = 0x19

.field public static final LEGACY_POLICY_VISIBILITY:I = 0x1

.field public static final MINIMUM_VISIBLE_HEIGHT_IN_DP:I = 0x20

.field public static final MINIMUM_VISIBLE_WIDTH_IN_DP:I = 0x3a

.field public static final POLICY_VISIBILITY_ALL:I = 0x3

.field public static final RESIZE_HANDLE_WIDTH_IN_DP:I = 0x1e

.field public static final TAG:Ljava/lang/String; = "WindowManager"

.field public static final VISIBLE_FOR_USER:I = 0x2

.field public static final sTmpSB:Ljava/lang/StringBuilder;

.field public static final sWindowSubLayerComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mAboveInsetsState:Landroid/view/InsetsState;

.field public mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public mAnimateReplacingWindow:Z

.field public mAnimatingExit:Z

.field public mAppDied:Z

.field public mAppFreezing:Z

.field public final mAppOp:I

.field public mAppOpVisibility:Z

.field public mAppPreferredFrameRate:F

.field public final mAttrs:Landroid/view/WindowManager$LayoutParams;

.field public final mBaseLayer:I

.field public final mChildDimmingDialogs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field public final mClient:Landroid/view/IWindow;

.field public mClientWasDrawingForSync:Z

.field public final mClientWindowFrames:Landroid/window/ClientWindowFrames;

.field public final mContext:Landroid/content/Context;

.field public mDeadWindowEventReceiver:Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;

.field public final mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

.field public mDecorCaptionWin:Lcom/android/server/wm/WindowState;

.field public mDestroying:Z

.field public mDexCompatBaseWin:Lcom/android/server/wm/WindowState;

.field public mDisableFlags:I

.field public mDisableHideSViewOnce:Z

.field public mDisableTransientBars:Z

.field public mDragResizing:Z

.field public mDragResizingChangeReported:Z

.field public final mDrawHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wm/WindowState$DrawHandler;",
            ">;"
        }
    .end annotation
.end field

.field public mDrawLock:Landroid/os/PowerManager$WakeLock;

.field public mDrawnStateEvaluated:Z

.field public mDssEnabled:Z

.field public mDssScale:F

.field public final mExclusionRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public mFocusCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/IWindowFocusObserver;",
            ">;"
        }
    .end annotation
.end field

.field public mForceHideNonSystemOverlayWindow:Z

.field public mForceRelayout:Z

.field public final mForceSeamlesslyRotate:Z

.field public mFrameRateSelectionPriority:I

.field public mFrozenInsetsState:Landroid/view/InsetsState;

.field public final mGivenContentInsets:Landroid/graphics/Rect;

.field public mGivenInsetsPending:Z

.field public final mGivenTouchableRegion:Landroid/graphics/Region;

.field public final mGivenVisibleInsets:Landroid/graphics/Rect;

.field public mGlobalScale:F

.field public mHScale:F

.field public mHasSurface:Z

.field public mHaveFrame:Z

.field public mHidden:Z

.field public mHiddenWhileProfileLockedState:Z

.field public mHiddenWhileSuspended:Z

.field public final mIgnoreHideNonSystemOverlayWindow:Z

.field public mImeBlurEffectAppliedForDex:Z

.field public mInRelayout:Z

.field public mInputChannel:Landroid/view/InputChannel;

.field public mInputChannelToken:Landroid/os/IBinder;

.field public final mInputWindowHandle:Lcom/android/server/wm/InputWindowHandleWrapper;

.field public mInvGlobalScale:F

.field public mIsChildWindow:Z

.field public mIsDecorCaptionWin:Z

.field public mIsDimming:Z

.field public final mIsFloatingLayer:Z

.field public final mIsImWindow:Z

.field public mIsTspNoteMode:Z

.field public mIsWaitingForParamsUpdate:Z

.field public final mIsWallpaper:Z

.field public final mKeepClearAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public mKeyInterceptionInfo:Lcom/android/internal/policy/KeyInterceptionInfo;

.field public mLastBlurRadius:I

.field public mLastConfigReportedToClient:Z

.field public final mLastExclusionLogUptimeMillis:[J

.field public mLastFreezeDuration:I

.field public final mLastGrantedExclusionHeight:[I

.field public mLastHScale:F

.field public final mLastReportedConfiguration:Landroid/util/MergedConfiguration;

.field public final mLastRequestedExclusionHeight:[I

.field public mLastRequestedHeight:I

.field public mLastRequestedWidth:I

.field public mLastSat:I

.field public mLastSeqIdSentToRelayout:I

.field public mLastShownChangedReported:Z

.field public final mLastSurfaceInsets:Landroid/graphics/Rect;

.field public mLastTitle:Ljava/lang/CharSequence;

.field public mLastVScale:F

.field public mLastVisibleLayoutRotation:I

.field public mLayer:I

.field public final mLayoutAttached:Z

.field public mLayoutNeeded:Z

.field public mLayoutSeq:I

.field public mLayoutWithIme:Z

.field public mLegacyPolicyVisibilityAfterAnim:Z

.field public mLetterboxDirection:I

.field public mMergedLocalInsetsSources:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSource;",
            ">;"
        }
    .end annotation
.end field

.field public mMovedByIme:Z

.field public mMovedByResize:Z

.field public mNeedToForceUpdateMWHandlerLayer:Z

.field public mObscured:Z

.field public mOnBackInvokedCallbackInfo:Landroid/window/OnBackInvokedCallbackInfo;

.field public mOrientationChangeRedrawRequestTime:J

.field public mOrientationChangeTimedOut:Z

.field public mOrientationChanging:Z

.field public mOriginalDimAmount:F

.field public mOriginalDimBehind:I

.field public mOriginalDimDuration:J

.field public mOriginalLayoutInDisplayCutoutMode:I

.field public final mOverrideScale:F

.field public final mOwnerCanAddInternalSystemWindow:Z

.field public final mOwnerUid:I

.field public mPendingSeamlessRotate:Lcom/android/server/wm/SeamlessRotator;

.field public mPermanentlyHidden:Z

.field public final mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field public mPolicyVisibility:I

.field public mPopOverDimmer:Lcom/android/server/wm/Dimmer;

.field public mPopOverDimmerNeeded:Z

.field public mPowerManagerWrapper:Lcom/android/server/wm/WindowState$PowerManagerWrapper;

.field public mRedrawForChangeTransition:Z

.field public mRedrawForSyncReported:Z

.field public mRelayoutCalled:Z

.field public mRemoveOnExit:Z

.field public mRemoved:Z

.field public mReplacementWindow:Lcom/android/server/wm/WindowState;

.field public mReplacingRemoveRequested:Z

.field public mReportOrientationChanged:Z

.field public mRequestedHeight:I

.field public final mRequestedVisibilities:Landroid/view/InsetsVisibilities;

.field public mRequestedWidth:I

.field public mResizeMode:I

.field public mResizedWhileGone:Z

.field public mRestrictionPolicy:Lcom/samsung/android/knox/localservice/RestrictionPolicyInternal;

.field public final mSeamlessRotationFinishedConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field public mSeamlesslyRotated:Z

.field public final mSession:Lcom/android/server/wm/Session;

.field public final mSetSurfacePositionConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field public mShouldHideSViewOnce:Z

.field public mShouldScaleWallpaper:Z

.field public final mShowUserId:I

.field public mSkipEnterAnimationForSeamlessReplacement:Z

.field public mStartingData:Lcom/android/server/wm/StartingData;

.field public mStringNameCache:Ljava/lang/String;

.field public final mSubLayer:I

.field public mSurfacePlacementNeeded:Z

.field public final mSurfacePosition:Landroid/graphics/Point;

.field public mSurfaceTranslationX:I

.field public mSurfaceTranslationY:I

.field public mSyncSeqId:I

.field public final mTapExcludeRegion:Landroid/graphics/Region;

.field public final mTempConfiguration:Landroid/content/res/Configuration;

.field public final mTmpDimBoundsRect:Landroid/graphics/Rect;

.field public final mTmpMatrix:Landroid/graphics/Matrix;

.field public final mTmpMatrixArray:[F

.field public final mTmpPoint:Landroid/graphics/Point;

.field public final mTmpRect:Landroid/graphics/Rect;

.field public final mTmpRegion:Landroid/graphics/Region;

.field public final mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

.field public mToken:Lcom/android/server/wm/WindowToken;

.field public mTouchableInsets:I

.field public mTspDeadzone:Landroid/os/Bundle;

.field public final mUnrestrictedKeepClearAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public mVScale:F

.field public mViewVisibility:I

.field public mWaitToHandleResizing:Z

.field public mWallpaperDisplayOffsetX:I

.field public mWallpaperDisplayOffsetY:I

.field public mWallpaperScale:F

.field public mWallpaperX:F

.field public mWallpaperXStep:F

.field public mWallpaperY:F

.field public mWallpaperYStep:F

.field public mWallpaperZoomOut:F

.field public mWasExiting:Z

.field public mWillReplaceWindow:Z

.field public final mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field public final mWindowFrames:Lcom/android/server/wm/WindowFrames;

.field public final mWindowId:Lcom/android/server/wm/WindowState$WindowId;

.field public mWindowRemovalAllowed:Z

.field public final mWpcForDisplayAreaConfigChanges:Lcom/android/server/wm/WindowProcessController;

.field public mXOffset:I

.field public mYOffset:I


# direct methods
.method public static synthetic $r8$lambda$6NuvyPOqaDmlfygyI6L_WhFnBjs(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/WindowState;->lambda$updateLetterboxDirectionIfNeeded$7(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$8ZEm1mXCTEUGnRfJrdP0ALOiGso(Landroid/view/InsetsState;Landroid/util/ArraySet;Landroid/util/SparseArray;Lcom/android/server/wm/WindowState;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wm/WindowState;->lambda$updateAboveInsetsState$5(Landroid/view/InsetsState;Landroid/util/ArraySet;Landroid/util/SparseArray;Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$93zRD-fqAmIhzxq1JirTrJ1TN0w(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/Task;Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/WindowState;->lambda$assignLayer$6(Lcom/android/server/wm/Task;Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$KRT9GRK4XCFxbCtXhf99RTKi_oc(Lcom/android/server/wm/WindowState;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState;->lambda$updateResizingWindowIfNeeded$3(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NT7WFsAMtgJOW3JXl33VeUnZuCs(Lcom/android/server/wm/WindowState;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState;->lambda$new$1(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PgvOxmmaOkvx9z_ZQo_AdHOQTas(Lcom/android/server/wm/ActivityRecord;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/WindowState;->lambda$updateSourceFrame$2(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SRAE2lCsplLYV3Gn1td2jkfEkrc(Lcom/android/server/wm/WindowState;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/WindowState;->lambda$removeIfPossible$4(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$U3pXGv95Gb8PldAwEUs7x3QE3U8(Lcom/android/server/wm/WindowState;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState;->lambda$new$0(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveIfPossible(Lcom/android/server/wm/WindowState;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->removeIfPossible(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshouldKeepVisibleDeadAppWindow(Lcom/android/server/wm/WindowState;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->shouldKeepVisibleDeadAppWindow()Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowState;->sTmpSB:Ljava/lang/StringBuilder;

    .line 827
    new-instance v0, Lcom/android/server/wm/WindowState$1;

    invoke-direct {v0}, Lcom/android/server/wm/WindowState$1;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowState;->sWindowSubLayerComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/Session;Landroid/view/IWindow;Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowState;ILandroid/view/WindowManager$LayoutParams;IIIZ)V
    .registers 25

    .line 1248
    new-instance v12, Lcom/android/server/wm/WindowState$2;

    move-object v1, p1

    invoke-direct {v12, p1}, Lcom/android/server/wm/WindowState$2;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    move-object v0, p0

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v12}, Lcom/android/server/wm/WindowState;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/Session;Landroid/view/IWindow;Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowState;ILandroid/view/WindowManager$LayoutParams;IIIZLcom/android/server/wm/WindowState$PowerManagerWrapper;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/Session;Landroid/view/IWindow;Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowState;ILandroid/view/WindowManager$LayoutParams;IIIZLcom/android/server/wm/WindowState$PowerManagerWrapper;)V
    .registers 35

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    move/from16 v6, p11

    const-string v7, "com.sec.android.sdk.cover.MODE"

    .line 1266
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 378
    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v8}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    const/4 v9, 0x3

    .line 412
    iput v9, v1, Lcom/android/server/wm/WindowState;->mPolicyVisibility:I

    const/4 v10, 0x1

    .line 422
    iput-boolean v10, v1, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    .line 425
    iput-boolean v10, v1, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    .line 430
    iput-boolean v10, v1, Lcom/android/server/wm/WindowState;->mHidden:Z

    .line 432
    iput-boolean v10, v1, Lcom/android/server/wm/WindowState;->mDragResizingChangeReported:Z

    const/4 v11, 0x0

    .line 452
    iput v11, v1, Lcom/android/server/wm/WindowState;->mSyncSeqId:I

    .line 453
    iput v11, v1, Lcom/android/server/wm/WindowState;->mLastSeqIdSentToRelayout:I

    .line 461
    iput-boolean v11, v1, Lcom/android/server/wm/WindowState;->mClientWasDrawingForSync:Z

    const/4 v12, -0x1

    .line 491
    iput v12, v1, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 498
    new-instance v13, Landroid/util/MergedConfiguration;

    invoke-direct {v13}, Landroid/util/MergedConfiguration;-><init>()V

    iput-object v13, v1, Lcom/android/server/wm/WindowState;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    .line 503
    new-instance v13, Landroid/content/res/Configuration;

    invoke-direct {v13}, Landroid/content/res/Configuration;-><init>()V

    iput-object v13, v1, Lcom/android/server/wm/WindowState;->mTempConfiguration:Landroid/content/res/Configuration;

    .line 515
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    iput-object v13, v1, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    .line 521
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    iput-object v13, v1, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    .line 526
    new-instance v13, Landroid/graphics/Region;

    invoke-direct {v13}, Landroid/graphics/Region;-><init>()V

    iput-object v13, v1, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    .line 534
    iput v11, v1, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    const/high16 v13, 0x3f800000    # 1.0f

    .line 537
    iput v13, v1, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 538
    iput v13, v1, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 540
    iput v13, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    iput v13, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    .line 541
    iput v13, v1, Lcom/android/server/wm/WindowState;->mLastHScale:F

    iput v13, v1, Lcom/android/server/wm/WindowState;->mLastVScale:F

    .line 546
    iput v11, v1, Lcom/android/server/wm/WindowState;->mXOffset:I

    .line 547
    iput v11, v1, Lcom/android/server/wm/WindowState;->mYOffset:I

    .line 551
    iput v13, v1, Lcom/android/server/wm/WindowState;->mWallpaperScale:F

    .line 553
    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    iput-object v14, v1, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    const/16 v14, 0x9

    new-array v14, v14, [F

    .line 554
    iput-object v14, v1, Lcom/android/server/wm/WindowState;->mTmpMatrixArray:[F

    .line 556
    new-instance v14, Lcom/android/server/wm/WindowFrames;

    invoke-direct {v14}, Lcom/android/server/wm/WindowFrames;-><init>()V

    iput-object v14, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 558
    new-instance v14, Landroid/window/ClientWindowFrames;

    invoke-direct {v14}, Landroid/window/ClientWindowFrames;-><init>()V

    iput-object v14, v1, Lcom/android/server/wm/WindowState;->mClientWindowFrames:Landroid/window/ClientWindowFrames;

    .line 565
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v1, Lcom/android/server/wm/WindowState;->mExclusionRects:Ljava/util/List;

    .line 571
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v1, Lcom/android/server/wm/WindowState;->mKeepClearAreas:Ljava/util/List;

    .line 577
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v1, Lcom/android/server/wm/WindowState;->mUnrestrictedKeepClearAreas:Ljava/util/List;

    const/4 v14, 0x2

    new-array v15, v14, [I

    .line 580
    fill-array-data v15, :array_46a

    iput-object v15, v1, Lcom/android/server/wm/WindowState;->mLastRequestedExclusionHeight:[I

    new-array v15, v14, [I

    .line 581
    fill-array-data v15, :array_472

    iput-object v15, v1, Lcom/android/server/wm/WindowState;->mLastGrantedExclusionHeight:[I

    new-array v15, v14, [J

    .line 582
    fill-array-data v15, :array_47a

    iput-object v15, v1, Lcom/android/server/wm/WindowState;->mLastExclusionLogUptimeMillis:[J

    const/high16 v15, -0x40800000    # -1.0f

    .line 588
    iput v15, v1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 589
    iput v15, v1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 593
    iput v15, v1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    .line 601
    iput v15, v1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 602
    iput v15, v1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    const/high16 v15, -0x80000000

    .line 606
    iput v15, v1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    .line 607
    iput v15, v1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    .line 685
    iput v12, v1, Lcom/android/server/wm/WindowState;->mLastVisibleLayoutRotation:I

    .line 727
    iput-boolean v11, v1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 732
    iput-boolean v11, v1, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    .line 735
    iput-boolean v11, v1, Lcom/android/server/wm/WindowState;->mReplacingRemoveRequested:Z

    .line 737
    iput-boolean v11, v1, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    const/4 v15, 0x0

    .line 740
    iput-object v15, v1, Lcom/android/server/wm/WindowState;->mReplacementWindow:Lcom/android/server/wm/WindowState;

    .line 745
    iput-boolean v11, v1, Lcom/android/server/wm/WindowState;->mSkipEnterAnimationForSeamlessReplacement:Z

    .line 758
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, v1, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    .line 759
    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    iput-object v9, v1, Lcom/android/server/wm/WindowState;->mTmpPoint:Landroid/graphics/Point;

    .line 760
    new-instance v9, Landroid/graphics/Region;

    invoke-direct {v9}, Landroid/graphics/Region;-><init>()V

    iput-object v9, v1, Lcom/android/server/wm/WindowState;->mTmpRegion:Landroid/graphics/Region;

    .line 767
    iput-boolean v11, v1, Lcom/android/server/wm/WindowState;->mResizedWhileGone:Z

    .line 776
    iput-boolean v11, v1, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    .line 781
    new-instance v9, Landroid/view/InsetsState;

    invoke-direct {v9}, Landroid/view/InsetsState;-><init>()V

    iput-object v9, v1, Lcom/android/server/wm/WindowState;->mAboveInsetsState:Landroid/view/InsetsState;

    .line 786
    iput-object v15, v1, Lcom/android/server/wm/WindowState;->mMergedLocalInsetsSources:Landroid/util/SparseArray;

    .line 792
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, v1, Lcom/android/server/wm/WindowState;->mLastSurfaceInsets:Landroid/graphics/Rect;

    .line 801
    new-instance v14, Landroid/graphics/Point;

    invoke-direct {v14}, Landroid/graphics/Point;-><init>()V

    iput-object v14, v1, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    .line 806
    new-instance v14, Landroid/graphics/Region;

    invoke-direct {v14}, Landroid/graphics/Region;-><init>()V

    iput-object v14, v1, Lcom/android/server/wm/WindowState;->mTapExcludeRegion:Landroid/graphics/Region;

    .line 848
    iput-boolean v11, v1, Lcom/android/server/wm/WindowState;->mIsDimming:Z

    .line 850
    new-instance v14, Landroid/view/InsetsVisibilities;

    invoke-direct {v14}, Landroid/view/InsetsVisibilities;-><init>()V

    iput-object v14, v1, Lcom/android/server/wm/WindowState;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;

    .line 870
    iput v12, v1, Lcom/android/server/wm/WindowState;->mFrameRateSelectionPriority:I

    const/4 v14, 0x0

    .line 877
    iput v14, v1, Lcom/android/server/wm/WindowState;->mAppPreferredFrameRate:F

    .line 892
    iput-boolean v11, v1, Lcom/android/server/wm/WindowState;->mImeBlurEffectAppliedForDex:Z

    .line 896
    iput-object v15, v1, Lcom/android/server/wm/WindowState;->mDexCompatBaseWin:Lcom/android/server/wm/WindowState;

    .line 897
    iput-object v15, v1, Lcom/android/server/wm/WindowState;->mDecorCaptionWin:Lcom/android/server/wm/WindowState;

    .line 898
    iput-boolean v11, v1, Lcom/android/server/wm/WindowState;->mIsDecorCaptionWin:Z

    .line 902
    iput-boolean v11, v1, Lcom/android/server/wm/WindowState;->mRedrawForChangeTransition:Z

    .line 903
    iput-boolean v11, v1, Lcom/android/server/wm/WindowState;->mForceRelayout:Z

    .line 907
    iput-boolean v11, v1, Lcom/android/server/wm/WindowState;->mNeedToForceUpdateMWHandlerLayer:Z

    .line 934
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v1, Lcom/android/server/wm/WindowState;->mDrawHandlers:Ljava/util/List;

    .line 936
    new-instance v14, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda1;

    invoke-direct {v14, v1}, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WindowState;)V

    iput-object v14, v1, Lcom/android/server/wm/WindowState;->mSeamlessRotationFinishedConsumer:Ljava/util/function/Consumer;

    .line 941
    new-instance v14, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda2;

    invoke-direct {v14, v1}, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/WindowState;)V

    iput-object v14, v1, Lcom/android/server/wm/WindowState;->mSetSurfacePositionConsumer:Ljava/util/function/Consumer;

    .line 1241
    iput-boolean v11, v1, Lcom/android/server/wm/WindowState;->mDssEnabled:Z

    .line 1242
    iput v13, v1, Lcom/android/server/wm/WindowState;->mDssScale:F

    .line 7346
    iput-boolean v11, v1, Lcom/android/server/wm/WindowState;->mIsTspNoteMode:Z

    .line 7654
    iput v11, v1, Lcom/android/server/wm/WindowState;->mLetterboxDirection:I

    .line 7690
    iput-boolean v11, v1, Lcom/android/server/wm/WindowState;->mShouldHideSViewOnce:Z

    .line 7691
    iput-boolean v11, v1, Lcom/android/server/wm/WindowState;->mDisableHideSViewOnce:Z

    .line 7713
    new-instance v14, Landroid/util/ArraySet;

    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    iput-object v14, v1, Lcom/android/server/wm/WindowState;->mChildDimmingDialogs:Landroid/util/ArraySet;

    .line 7718
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    iput-object v14, v1, Lcom/android/server/wm/WindowState;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    .line 1267
    iget-object v14, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v14}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/SurfaceControl$Transaction;

    iput-object v14, v1, Lcom/android/server/wm/WindowState;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1268
    iput-object v2, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    move-object/from16 v14, p3

    .line 1269
    iput-object v14, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move/from16 v13, p6

    .line 1270
    iput v13, v1, Lcom/android/server/wm/WindowState;->mAppOp:I

    .line 1271
    iput-object v3, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 1272
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v13

    iput-object v13, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    move/from16 v13, p9

    .line 1273
    iput v13, v1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    move/from16 v12, p10

    .line 1274
    iput v12, v1, Lcom/android/server/wm/WindowState;->mShowUserId:I

    .line 1275
    iput-boolean v6, v1, Lcom/android/server/wm/WindowState;->mOwnerCanAddInternalSystemWindow:Z

    .line 1276
    new-instance v12, Lcom/android/server/wm/WindowState$WindowId;

    invoke-direct {v12, v1, v15}, Lcom/android/server/wm/WindowState$WindowId;-><init>(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState$WindowId-IA;)V

    iput-object v12, v1, Lcom/android/server/wm/WindowState;->mWindowId:Lcom/android/server/wm/WindowState$WindowId;

    .line 1277
    invoke-virtual {v8, v5}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 1278
    iget-object v12, v8, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v9, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move/from16 v9, p8

    .line 1279
    iput v9, v1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    .line 1280
    iget-object v9, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v9, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v12, v1, Lcom/android/server/wm/WindowState;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 1281
    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v9, v1, Lcom/android/server/wm/WindowState;->mContext:Landroid/content/Context;

    .line 1282
    new-instance v10, Lcom/android/server/wm/WindowState$DeathRecipient;

    invoke-direct {v10, v1, v15}, Lcom/android/server/wm/WindowState$DeathRecipient;-><init>(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState$DeathRecipient-IA;)V

    move-object/from16 v15, p12

    .line 1283
    iput-object v15, v1, Lcom/android/server/wm/WindowState;->mPowerManagerWrapper:Lcom/android/server/wm/WindowState$PowerManagerWrapper;

    .line 1284
    iget-boolean v15, v3, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    iput-boolean v15, v1, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    .line 1285
    new-instance v15, Lcom/android/server/wm/InputWindowHandleWrapper;

    new-instance v11, Landroid/view/InputWindowHandle;

    .line 1286
    iget-object v13, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v13, :cond_1b0

    const/4 v14, 0x0

    .line 1287
    invoke-virtual {v13, v14}, Lcom/android/server/wm/ActivityRecord;->getInputApplicationHandle(Z)Landroid/view/InputApplicationHandle;

    move-result-object v13

    goto :goto_1b1

    :cond_1b0
    const/4 v13, 0x0

    .line 1288
    :goto_1b1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v14

    invoke-direct {v11, v13, v14}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;I)V

    invoke-direct {v15, v11}, Lcom/android/server/wm/InputWindowHandleWrapper;-><init>(Landroid/view/InputWindowHandle;)V

    iput-object v15, v1, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandleWrapper;

    const/4 v11, 0x0

    .line 1289
    invoke-virtual {v15, v11}, Lcom/android/server/wm/InputWindowHandleWrapper;->setFocusable(Z)V

    .line 1290
    iget v11, v2, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v15, v11}, Lcom/android/server/wm/InputWindowHandleWrapper;->setOwnerPid(I)V

    .line 1291
    iget v11, v2, Lcom/android/server/wm/Session;->mUid:I

    invoke-virtual {v15, v11}, Lcom/android/server/wm/InputWindowHandleWrapper;->setOwnerUid(I)V

    .line 1292
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Lcom/android/server/wm/InputWindowHandleWrapper;->setName(Ljava/lang/String;)V

    .line 1293
    iget-object v11, v8, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v11}, Lcom/android/server/wm/InputWindowHandleWrapper;->setPackageName(Ljava/lang/String;)V

    .line 1294
    iget v11, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v15, v11}, Lcom/android/server/wm/InputWindowHandleWrapper;->setLayoutParamsType(I)V

    .line 1297
    iget v11, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v13, 0x20000000

    and-int/2addr v11, v13

    if-eqz v11, :cond_1e5

    if-nez v6, :cond_1f7

    :cond_1e5
    iget v11, v8, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v13, 0x20000

    and-int/2addr v11, v13

    if-nez v11, :cond_1f7

    iget v11, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1304
    invoke-static {v11}, Lcom/android/server/wm/InputMonitor;->isTrustedOverlay(I)Z

    move-result v11

    if-eqz v11, :cond_1f5

    goto :goto_1f7

    :cond_1f5
    const/4 v11, 0x0

    goto :goto_1f8

    :cond_1f7
    :goto_1f7
    const/4 v11, 0x1

    .line 1297
    :goto_1f8
    invoke-virtual {v15, v11}, Lcom/android/server/wm/InputWindowHandleWrapper;->setTrustedOverlay(Z)V

    .line 1305
    sget-boolean v11, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG:Z

    if-eqz v11, :cond_23b

    .line 1306
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Window "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " client="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " token="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") params="

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v11, "WindowManager"

    invoke-static {v11, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    :cond_23b
    :try_start_23b
    invoke-interface/range {p3 .. p3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v11, 0x0

    invoke-interface {v3, v10, v11}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_243
    .catch Landroid/os/RemoteException; {:try_start_23b .. :try_end_243} :catch_44c

    .line 1328
    iput-object v10, v1, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    .line 1330
    iget v3, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v10, 0xa40

    const/16 v13, 0x7dc

    const/16 v14, 0x7db

    const/16 v15, 0x3e8

    if-lt v3, v15, :cond_28e

    const/16 v11, 0x7cf

    if-gt v3, v11, :cond_28e

    .line 1333
    invoke-interface {v12, v4}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x2710

    add-int/2addr v3, v15

    iput v3, v1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    .line 1335
    iget v3, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-interface {v12, v3}, Lcom/android/server/policy/WindowManagerPolicy;->getSubWindowLayerFromTypeLw(I)I

    move-result v3

    iput v3, v1, Lcom/android/server/wm/WindowState;->mSubLayer:I

    const/4 v3, 0x1

    .line 1336
    iput-boolean v3, v1, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    .line 1338
    iget v3, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v11, 0x3eb

    if-eq v3, v11, :cond_271

    const/4 v3, 0x1

    goto :goto_272

    :cond_271
    const/4 v3, 0x0

    :goto_272
    iput-boolean v3, v1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    .line 1340
    iget-object v3, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v3, v14, :cond_281

    if-eq v3, v13, :cond_281

    if-ne v3, v10, :cond_27f

    goto :goto_281

    :cond_27f
    const/4 v10, 0x0

    goto :goto_282

    :cond_281
    :goto_281
    const/4 v10, 0x1

    :goto_282
    iput-boolean v10, v1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    const/16 v10, 0x7dd

    if-ne v3, v10, :cond_28a

    const/4 v3, 0x1

    goto :goto_28b

    :cond_28a
    const/4 v3, 0x0

    .line 1346
    :goto_28b
    iput-boolean v3, v1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    goto :goto_2b5

    .line 1350
    :cond_28e
    invoke-interface {v12, v1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x2710

    add-int/2addr v3, v15

    iput v3, v1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    const/4 v3, 0x0

    .line 1352
    iput v3, v1, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 1353
    iput-boolean v3, v1, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    .line 1354
    iput-boolean v3, v1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    .line 1355
    iget v3, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v3, v14, :cond_2a9

    if-eq v3, v13, :cond_2a9

    if-ne v3, v10, :cond_2a7

    goto :goto_2a9

    :cond_2a7
    const/4 v10, 0x0

    goto :goto_2aa

    :cond_2a9
    :goto_2a9
    const/4 v10, 0x1

    :goto_2aa
    iput-boolean v10, v1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    const/16 v10, 0x7dd

    if-ne v3, v10, :cond_2b2

    const/4 v3, 0x1

    goto :goto_2b3

    :cond_2b2
    const/4 v3, 0x0

    .line 1361
    :goto_2b3
    iput-boolean v3, v1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    .line 1363
    :goto_2b5
    iget-boolean v3, v1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v3, :cond_2c0

    iget-boolean v3, v1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v3, :cond_2be

    goto :goto_2c0

    :cond_2be
    const/4 v3, 0x0

    goto :goto_2c1

    :cond_2c0
    :goto_2c0
    const/4 v3, 0x1

    :goto_2c1
    iput-boolean v3, v1, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    .line 1365
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_2d2

    iget-boolean v3, v3, Lcom/android/server/wm/ActivityRecord;->mShowForAllUsers:Z

    if-eqz v3, :cond_2d2

    .line 1368
    iget v3, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v10, 0x80000

    or-int/2addr v3, v10

    iput v3, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1371
    :cond_2d2
    new-instance v3, Lcom/android/server/wm/WindowStateAnimator;

    invoke-direct {v3, v1}, Lcom/android/server/wm/WindowStateAnimator;-><init>(Lcom/android/server/wm/WindowState;)V

    iput-object v3, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 1372
    iget v10, v5, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iput v10, v3, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    const/4 v3, -0x1

    .line 1374
    iput v3, v1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .line 1375
    iput v3, v1, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .line 1376
    iput v3, v1, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    .line 1377
    iput v3, v1, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    const/4 v3, 0x0

    .line 1378
    iput v3, v1, Lcom/android/server/wm/WindowState;->mLayer:I

    .line 1379
    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    iget-object v10, v8, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget v11, v2, Lcom/android/server/wm/Session;->mUid:I

    invoke-virtual {v3, v10, v11}, Lcom/android/server/wm/CompatModePackages;->getCompatScale(Ljava/lang/String;I)F

    move-result v3

    iput v3, v1, Lcom/android/server/wm/WindowState;->mOverrideScale:F

    .line 1381
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->updateGlobalScale()Z

    .line 1385
    iget v3, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v10, 0x7f6

    if-ne v3, v10, :cond_312

    if-nez v6, :cond_312

    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v6, v8, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1387
    invoke-virtual {v3, v6}, Lcom/android/server/wm/WindowManagerServiceExt;->ignoreHideNoneSystemOverlayWindowAllowed(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_312

    const/4 v3, 0x1

    goto :goto_313

    :cond_312
    const/4 v3, 0x0

    :goto_313
    if-eqz v3, :cond_359

    .line 1390
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_334

    .line 1391
    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v3

    if-nez v3, :cond_332

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1392
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v3

    if-eqz v3, :cond_330

    goto :goto_332

    :cond_330
    const/4 v3, 0x0

    goto :goto_359

    :cond_332
    :goto_332
    const/4 v3, 0x1

    goto :goto_359

    .line 1394
    :cond_334
    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v6, v8, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const-wide/16 v18, 0x0

    .line 1396
    invoke-static/range {p9 .. p9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v21

    move-object/from16 v16, v3

    move-object/from16 v17, v6

    move/from16 v20, p9

    .line 1394
    invoke-virtual/range {v16 .. v21}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_330

    .line 1397
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v6

    if-nez v6, :cond_332

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v3

    if-eqz v3, :cond_330

    goto :goto_332

    .line 1400
    :cond_359
    :goto_359
    iput-boolean v3, v1, Lcom/android/server/wm/WindowState;->mIgnoreHideNonSystemOverlayWindow:Z

    .line 1406
    iget-boolean v3, v1, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-eqz v3, :cond_382

    .line 1407
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    if-eqz v3, :cond_37d

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v11, -0x369ab4d5

    const/4 v12, 0x2

    new-array v13, v12, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v3, v13, v12

    const/4 v3, 0x1

    aput-object v6, v13, v3

    const/4 v3, 0x0

    invoke-static {v10, v11, v12, v3, v13}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1408
    :cond_37d
    sget-object v3, Lcom/android/server/wm/WindowState;->sWindowSubLayerComparator:Ljava/util/Comparator;

    invoke-virtual {v4, v1, v3}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 1412
    :cond_382
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->DSS_ENABLED:Z

    if-eqz v3, :cond_3a2

    .line 1413
    invoke-static {}, Lcom/android/server/DssController;->getService()Lcom/android/server/DssController;

    move-result-object v3

    .line 1414
    iget v4, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v6, 0x3

    if-eq v4, v6, :cond_3a2

    iget v4, v2, Lcom/android/server/wm/Session;->mPid:I

    .line 1415
    invoke-virtual {v3, v4}, Lcom/android/server/DssController;->isScaledApp(I)Z

    move-result v4

    if-eqz v4, :cond_3a2

    const/4 v4, 0x1

    .line 1416
    iput-boolean v4, v1, Lcom/android/server/wm/WindowState;->mDssEnabled:Z

    .line 1417
    iget v4, v2, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v3, v4}, Lcom/android/server/DssController;->getScalingFactor(I)F

    move-result v3

    iput v3, v1, Lcom/android/server/wm/WindowState;->mDssScale:F

    .line 1423
    :cond_3a2
    iget v3, v2, Lcom/android/server/wm/Session;->mPid:I

    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v3, v4, :cond_3b4

    if-gez v3, :cond_3ab

    goto :goto_3b4

    .line 1425
    :cond_3ab
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v2, v2, Lcom/android/server/wm/Session;->mUid:I

    invoke-virtual {v0, v3, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v15

    goto :goto_3b5

    :cond_3b4
    :goto_3b4
    const/4 v15, 0x0

    :goto_3b5
    iput-object v15, v1, Lcom/android/server/wm/WindowState;->mWpcForDisplayAreaConfigChanges:Lcom/android/server/wm/WindowProcessController;

    .line 1429
    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iput v0, v1, Lcom/android/server/wm/WindowState;->mOriginalLayoutInDisplayCutoutMode:I

    .line 1443
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_427

    .line 1444
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    if-eqz v0, :cond_427

    .line 1448
    :try_start_3cf
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, v8, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1450
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_3e9

    const/4 v2, 0x0

    .line 1451
    invoke-virtual {v0, v7, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_3e4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3cf .. :try_end_3e4} :catch_3e5

    goto :goto_3ea

    :catch_3e5
    move-exception v0

    .line 1454
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_3e9
    const/4 v0, 0x0

    :goto_3ea
    if-nez v0, :cond_402

    .line 1457
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_402

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_402

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_402

    const/4 v3, 0x0

    .line 1459
    invoke-virtual {v2, v7, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_402
    if-eqz v0, :cond_408

    .line 1464
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    .line 1467
    :cond_408
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getCoverMode()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_427

    .line 1468
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WmCoverState;->isCoverAppSupported()Z

    move-result v0

    if-eqz v0, :cond_420

    .line 1469
    iget-boolean v0, v1, Lcom/android/server/wm/WindowState;->mDisableHideSViewOnce:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mShouldHideSViewOnce:Z

    goto :goto_428

    :cond_420
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1471
    iput-boolean v3, v1, Lcom/android/server/wm/WindowState;->mShouldHideSViewOnce:Z

    .line 1472
    iput-boolean v2, v1, Lcom/android/server/wm/WindowState;->mDisableHideSViewOnce:Z

    goto :goto_428

    :cond_427
    const/4 v2, 0x1

    .line 1479
    :goto_428
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_435

    .line 1480
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowToken;->setPortraitWindowToken(Z)V

    .line 1485
    :cond_435
    invoke-static/range {p0 .. p0}, Lcom/android/server/wm/UdcCutoutPolicy;->updateUseLayoutInUdcCutoutIfNeeded(Lcom/android/server/wm/WindowContainer;)V

    .line 1489
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_44b

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getLastDispatchedWindowFocusInTask()Z

    move-result v0

    if-eqz v0, :cond_44b

    .line 1490
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowState;->notifyWindowFocusInTaskChanged(Z)V

    :cond_44b
    return-void

    :catch_44c
    const/4 v0, 0x0

    .line 1312
    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    const/4 v2, 0x0

    .line 1313
    iput-boolean v2, v1, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    .line 1314
    iput-boolean v2, v1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    .line 1315
    iput-boolean v2, v1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    .line 1316
    iput-boolean v2, v1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    .line 1317
    iput-boolean v2, v1, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    .line 1318
    iput v2, v1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    .line 1319
    iput v2, v1, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 1320
    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 1321
    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mWpcForDisplayAreaConfigChanges:Lcom/android/server/wm/WindowProcessController;

    .line 1323
    iput-boolean v2, v1, Lcom/android/server/wm/WindowState;->mIgnoreHideNonSystemOverlayWindow:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1325
    iput v0, v1, Lcom/android/server/wm/WindowState;->mOverrideScale:F

    return-void

    nop

    :array_46a
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_472
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_47a
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method public static applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 7

    .line 4460
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p2

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/graphics/Region;->set(IIII)Z

    return-void
.end method

.method public static hasCompatScale(Landroid/view/WindowManager$LayoutParams;Lcom/android/server/wm/WindowToken;F)Z
    .registers 6

    .line 1545
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, 0x80

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 1548
    :cond_8
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v0, 0x3

    const/4 v2, 0x0

    if-ne p0, v0, :cond_f

    return v2

    :cond_f
    if-eqz p1, :cond_17

    .line 1552
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->hasSizeCompatBounds()Z

    move-result p0

    if-nez p0, :cond_1f

    :cond_17
    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p2, p0

    if-eqz p0, :cond_1e

    goto :goto_1f

    :cond_1e
    move v1, v2

    :cond_1f
    :goto_1f
    return v1
.end method

.method private synthetic lambda$assignLayer$6(Lcom/android/server/wm/Task;Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 5

    .line 6726
    iget-object v0, p3, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    invoke-virtual {v0}, Lcom/android/server/wm/PopOverState;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object p3, p3, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 6727
    invoke-virtual {p3}, Lcom/android/server/wm/PopOverState;->isRemoveOutlineEffectSet()Z

    move-result p3

    if-eqz p3, :cond_23

    .line 6728
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleRequestedOrAdding()Z

    move-result p3

    if-eqz p3, :cond_23

    .line 6729
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result p3

    .line 6730
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/wm/WindowContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    const/4 p0, 0x1

    return p0

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    .line 937
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->finishSeamlessRotation(Landroid/view/SurfaceControl$Transaction;)V

    .line 938
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    .line 942
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 943
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    iget v1, p0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_17
    return-void
.end method

.method public static synthetic lambda$removeIfPossible$4(Lcom/android/server/wm/WindowState;)Z
    .registers 3

    const/4 v0, 0x0

    const/16 v1, 0x80

    .line 3056
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowState;->isSelfAnimating(II)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 3057
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    const/4 p0, 0x1

    return p0

    :cond_e
    return v0
.end method

.method public static synthetic lambda$updateAboveInsetsState$5(Landroid/view/InsetsState;Landroid/util/ArraySet;Landroid/util/SparseArray;Lcom/android/server/wm/WindowState;)V
    .registers 5

    .line 5690
    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mAboveInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v0, p0}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 5691
    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mAboveInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v0, p0}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;)V

    .line 5692
    invoke-virtual {p1, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 5695
    :cond_10
    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mMergedLocalInsetsSources:Landroid/util/SparseArray;

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->contentEquals(Landroid/util/SparseArray;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 5696
    invoke-static {p2}, Lcom/android/server/wm/WindowContainer;->createShallowCopy(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object p2

    iput-object p2, p3, Lcom/android/server/wm/WindowState;->mMergedLocalInsetsSources:Landroid/util/SparseArray;

    .line 5698
    invoke-virtual {p1, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 5701
    :cond_21
    iget-object p1, p3, Lcom/android/server/wm/WindowContainer;->mProvidedInsetsSources:Landroid/util/SparseArray;

    if-eqz p1, :cond_39

    .line 5703
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_2b
    if-ltz p2, :cond_39

    .line 5704
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/InsetsSource;

    invoke-virtual {p0, p3}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_2b

    :cond_39
    return-void
.end method

.method public static synthetic lambda$updateLetterboxDirectionIfNeeded$7(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 7662
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_c
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mLetterboxUiController:Lcom/android/server/wm/LetterboxUiController;

    .line 7663
    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxUiController;->getLetterboxDirection()I

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method private synthetic lambda$updateResizingWindowIfNeeded$3(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    .line 1919
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Clear waiting to handle resizing w="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", caller="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x5

    .line 1920
    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WindowManager"

    .line 1919
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 1922
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mWaitToHandleResizing:Z

    return-void
.end method

.method public static synthetic lambda$updateSourceFrame$2(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 1723
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 1724
    invoke-virtual {v0}, Lcom/android/server/wm/PopOverState;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 1725
    invoke-virtual {v0}, Lcom/android/server/wm/PopOverState;->isRemoveOutlineEffectSet()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1726
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->recomputeConfiguration()V

    :cond_19
    return-void
.end method

.method public static toInsetsSources(Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/InsetsSourceProvider;",
            ">;)",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSource;",
            ">;"
        }
    .end annotation

    .line 5712
    new-instance v0, Landroid/util/SparseArray;

    .line 5713
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v1, 0x0

    .line 5714
    :goto_a
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 5715
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 5716
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/InsetsSourceProvider;

    invoke-virtual {v3}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v3

    .line 5715
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_24
    return-object v0
.end method


# virtual methods
.method public adjustImeParamsForDex(Z)V
    .registers 2

    return-void
.end method

.method public final adjustNavInsetsForWindowAboveThanIme(ILandroid/view/InsetsState;)Landroid/view/InsetsState;
    .registers 5

    const/4 v0, -0x1

    if-ne p1, v0, :cond_8a

    .line 7616
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mAboveInsetsState:Landroid/view/InsetsState;

    const/16 v0, 0x13

    .line 7617
    invoke-virtual {p1, v0}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object p1

    if-nez p1, :cond_8a

    .line 7618
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicyExt;->isNavigationGestureMode()Z

    move-result p1

    if-eqz p1, :cond_8a

    .line 7619
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget v0, v0, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayPolicyExt;->isNavBarImeBtnAllowed(I)Z

    move-result p1

    if-eqz p1, :cond_8a

    .line 7621
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object p1

    .line 7622
    invoke-virtual {p1}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/InsetsSource;->isVisible()Z

    move-result p1

    if-nez p1, :cond_4a

    goto :goto_8a

    :cond_4a
    const/4 p1, 0x1

    .line 7626
    invoke-virtual {p2, p1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    if-eqz v0, :cond_8a

    .line 7627
    invoke-virtual {v0}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v1

    if-nez v1, :cond_58

    goto :goto_8a

    .line 7631
    :cond_58
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object p0

    .line 7632
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsStateController;->peekSourceProvider(I)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    move-result-object p0

    if-eqz p0, :cond_8a

    .line 7633
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->getImeOverrideFrame()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_75

    goto :goto_8a

    .line 7637
    :cond_75
    new-instance p1, Landroid/view/InsetsSource;

    invoke-direct {p1, v0}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    .line 7638
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->getImeOverrideFrame()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)V

    .line 7640
    new-instance p0, Landroid/view/InsetsState;

    invoke-direct {p0, p2}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    .line 7641
    invoke-virtual {p0, p1}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    return-object p0

    :cond_8a
    :goto_8a
    return-object p2
.end method

.method public final adjustRegionInActivityGroup(Landroid/graphics/Rect;)V
    .registers 3

    .line 7898
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isInSplitActivityMode()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 7901
    :cond_7
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityGroup()Lcom/android/server/wm/ActivityRecordGroup;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecordGroup;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 7902
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    return-void
.end method

.method public final adjustRegionInFreefromWindowMode(Landroid/graphics/Rect;)V
    .registers 3

    const/4 v0, 0x0

    .line 3552
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowState;->adjustRegionInFreefromWindowMode(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method public final adjustRegionInFreefromWindowMode(Landroid/graphics/Rect;Z)V
    .registers 4

    .line 3557
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 3563
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    if-eqz p2, :cond_18

    const/16 p2, 0xa

    .line 3567
    invoke-static {p2, p0}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result p0

    goto :goto_1a

    :cond_18
    const/16 p0, 0x30

    :goto_1a
    neg-int p0, p0

    .line 3573
    invoke-virtual {p1, p0, p0}, Landroid/graphics/Rect;->inset(II)V

    return-void
.end method

.method public adjustStartingWindowFlags()V
    .registers 4

    .line 3767
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_20

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_20

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    if-eqz p0, :cond_20

    .line 3774
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 3775
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x480002

    and-int/2addr v1, v2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, 0x480001

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_20
    return-void
.end method

.method public applyBlurEffectInTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 13

    .line 6981
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-nez v0, :cond_5

    return-void

    .line 6985
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    move v1, v2

    .line 6986
    :goto_17
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    if-eqz v1, :cond_34

    .line 6997
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 7001
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_34

    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v4, :cond_33

    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    .line 7002
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    :cond_33
    move v1, v2

    :cond_34
    if-eqz v1, :cond_3b

    .line 7007
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->getLegacyBlurRadius(F)I

    move-result v3

    goto :goto_3c

    :cond_3b
    move v3, v2

    :goto_3c
    if-eqz v1, :cond_43

    .line 7008
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->getLegacySaturation(F)I

    move-result v0

    goto :goto_44

    :cond_43
    move v0, v2

    .line 7010
    :goto_44
    iget v1, p0, Lcom/android/server/wm/WindowState;->mLastBlurRadius:I

    if-ne v1, v3, :cond_4d

    iget v1, p0, Lcom/android/server/wm/WindowState;->mLastSat:I

    if-ne v1, v0, :cond_4d

    return-void

    .line 7014
    :cond_4d
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v4, v1, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_58

    goto :goto_5a

    :cond_58
    const-wide/16 v4, 0xc8

    .line 7015
    :goto_5a
    invoke-static {}, Landroid/view/SurfaceEffects;->newBuilder()Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v1

    sget-object v6, Landroid/view/SurfaceEffects$PixEffectType;->BLUR:Landroid/view/SurfaceEffects$PixEffectType;

    .line 7016
    invoke-virtual {v1, v6}, Landroid/view/SurfaceEffects$Effect$Builder;->setPixelEffectType(Landroid/view/SurfaceEffects$PixEffectType;)Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v1

    .line 7024
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v8, -0x2

    if-eq v7, v8, :cond_6f

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v6, v8, :cond_72

    .line 7025
    :cond_6f
    invoke-virtual {v1}, Landroid/view/SurfaceEffects$Effect$Builder;->makeFullscreen()Landroid/view/SurfaceEffects$Effect$Builder;

    :cond_72
    if-lez v3, :cond_a3

    .line 7038
    sget-object v6, Landroid/view/SurfaceEffects$AnimationMode;->ONCE_STAY_END:Landroid/view/SurfaceEffects$AnimationMode;

    invoke-virtual {v1, v6}, Landroid/view/SurfaceEffects$Effect$Builder;->setAnimationMode(Landroid/view/SurfaceEffects$AnimationMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v6

    sget-object v7, Landroid/view/SurfaceEffects$AnimParam;->BLUR_RADIUS:Landroid/view/SurfaceEffects$AnimParam;

    iget v8, p0, Lcom/android/server/wm/WindowState;->mLastBlurRadius:I

    int-to-float v8, v8

    sget-object v9, Landroid/view/SurfaceEffects$InterpMode;->HOLD:Landroid/view/SurfaceEffects$InterpMode;

    .line 7039
    invoke-virtual {v6, v7, v2, v8, v9}, Landroid/view/SurfaceEffects$Effect$Builder;->addPixAnimation(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v6

    sget-object v7, Landroid/view/SurfaceEffects$AnimParam;->BLUR_RADIUS:Landroid/view/SurfaceEffects$AnimParam;

    long-to-int v8, v4

    int-to-float v9, v3

    sget-object v10, Landroid/view/SurfaceEffects$InterpMode;->SMOOTH_IN:Landroid/view/SurfaceEffects$InterpMode;

    .line 7040
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/SurfaceEffects$Effect$Builder;->addPixAnimation(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v6

    sget-object v7, Landroid/view/SurfaceEffects$AnimParam;->BLUR_SATURATION:Landroid/view/SurfaceEffects$AnimParam;

    iget v9, p0, Lcom/android/server/wm/WindowState;->mLastSat:I

    int-to-float v9, v9

    sget-object v10, Landroid/view/SurfaceEffects$InterpMode;->HOLD:Landroid/view/SurfaceEffects$InterpMode;

    .line 7041
    invoke-virtual {v6, v7, v2, v9, v10}, Landroid/view/SurfaceEffects$Effect$Builder;->addPixAnimation(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v2

    sget-object v6, Landroid/view/SurfaceEffects$AnimParam;->BLUR_SATURATION:Landroid/view/SurfaceEffects$AnimParam;

    int-to-float v7, v0

    sget-object v9, Landroid/view/SurfaceEffects$InterpMode;->SMOOTH_IN:Landroid/view/SurfaceEffects$InterpMode;

    .line 7042
    invoke-virtual {v2, v6, v8, v7, v9}, Landroid/view/SurfaceEffects$Effect$Builder;->addPixAnimation(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    goto :goto_d1

    .line 7048
    :cond_a3
    sget-object v6, Landroid/view/SurfaceEffects$AnimationMode;->ONCE_DESTROY:Landroid/view/SurfaceEffects$AnimationMode;

    invoke-virtual {v1, v6}, Landroid/view/SurfaceEffects$Effect$Builder;->setAnimationMode(Landroid/view/SurfaceEffects$AnimationMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v6

    sget-object v7, Landroid/view/SurfaceEffects$AnimParam;->BLUR_RADIUS:Landroid/view/SurfaceEffects$AnimParam;

    iget v8, p0, Lcom/android/server/wm/WindowState;->mLastBlurRadius:I

    int-to-float v8, v8

    sget-object v9, Landroid/view/SurfaceEffects$InterpMode;->HOLD:Landroid/view/SurfaceEffects$InterpMode;

    .line 7049
    invoke-virtual {v6, v7, v2, v8, v9}, Landroid/view/SurfaceEffects$Effect$Builder;->addPixAnimation(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v6

    sget-object v7, Landroid/view/SurfaceEffects$AnimParam;->BLUR_RADIUS:Landroid/view/SurfaceEffects$AnimParam;

    long-to-int v8, v4

    int-to-float v9, v3

    sget-object v10, Landroid/view/SurfaceEffects$InterpMode;->SMOOTH_OUT:Landroid/view/SurfaceEffects$InterpMode;

    .line 7050
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/SurfaceEffects$Effect$Builder;->addPixAnimation(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v6

    sget-object v7, Landroid/view/SurfaceEffects$AnimParam;->BLUR_SATURATION:Landroid/view/SurfaceEffects$AnimParam;

    iget v9, p0, Lcom/android/server/wm/WindowState;->mLastSat:I

    int-to-float v9, v9

    sget-object v10, Landroid/view/SurfaceEffects$InterpMode;->HOLD:Landroid/view/SurfaceEffects$InterpMode;

    .line 7051
    invoke-virtual {v6, v7, v2, v9, v10}, Landroid/view/SurfaceEffects$Effect$Builder;->addPixAnimation(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v2

    sget-object v6, Landroid/view/SurfaceEffects$AnimParam;->BLUR_SATURATION:Landroid/view/SurfaceEffects$AnimParam;

    const/4 v7, 0x0

    sget-object v9, Landroid/view/SurfaceEffects$InterpMode;->SMOOTH_OUT:Landroid/view/SurfaceEffects$InterpMode;

    .line 7052
    invoke-virtual {v2, v6, v8, v7, v9}, Landroid/view/SurfaceEffects$Effect$Builder;->addPixAnimation(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    .line 7058
    :goto_d1
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v2, :cond_123

    .line 7059
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "applyBlurEffectInTransaction, duration="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", blurRadius="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mLastBlurRadius="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/wm/WindowState;->mLastBlurRadius:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", saturation="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mLastSat="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/wm/WindowState;->mLastSat:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", dimAmount="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", win="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "WindowManager"

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7066
    :cond_123
    invoke-virtual {v1}, Landroid/view/SurfaceEffects$Effect$Builder;->build()Landroid/view/SurfaceEffects$Effect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceEffects$Effect;->getBytes()Ljava/lang/String;

    move-result-object v1

    .line 7067
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/wm/WindowSurfaceController;->startSurfaceAnimationInTransaction(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)Z

    .line 7068
    iput v3, p0, Lcom/android/server/wm/WindowState;->mLastBlurRadius:I

    .line 7069
    iput v0, p0, Lcom/android/server/wm/WindowState;->mLastSat:I

    return-void
.end method

.method public final applyDims()V
    .registers 5

    .line 6380
    iget v0, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    if-eqz v0, :cond_76

    iget v0, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    if-nez v0, :cond_a

    goto/16 :goto_76

    .line 6384
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    const/4 v1, 0x1

    if-nez v0, :cond_23

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppDied:Z

    if-eqz v0, :cond_23

    .line 6385
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsDimming:Z

    .line 6386
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDimmer()Lcom/android/server/wm/Dimmer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/wm/Dimmer;->dimAbove(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;F)V

    goto :goto_76

    .line 6387
    :cond_23
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_31

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->shouldDrawBlurBehind()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 6388
    :cond_31
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v0

    if-eqz v0, :cond_76

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHidden:Z

    if-nez v0, :cond_76

    .line 6396
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 6397
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/FreeformController;->canApplyDimsLocked(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    goto :goto_4d

    :cond_4c
    move v0, v1

    :goto_4d
    if-eqz v0, :cond_76

    .line 6401
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsDimming:Z

    .line 6408
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_5c

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    goto :goto_5d

    :cond_5c
    const/4 v0, 0x0

    .line 6409
    :goto_5d
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->shouldDrawBlurBehind()Z

    move-result v1

    if-eqz v1, :cond_6a

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getBlurBehindRadius()I

    move-result v1

    goto :goto_6b

    :cond_6a
    const/4 v1, 0x0

    .line 6410
    :goto_6b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDimmer()Lcom/android/server/wm/Dimmer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-virtual {v2, v3, p0, v0, v1}, Lcom/android/server/wm/Dimmer;->dimBelow(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;FI)V

    :cond_76
    :goto_76
    return-void
.end method

.method public final applyImeWindowsIfNeeded(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    .line 5760
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isImeLayeringTarget()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 5767
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getImeInputTarget()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 5768
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1b

    return v1

    .line 5781
    :cond_1b
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->forAllImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result p0

    return p0
.end method

.method public final applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p2, :cond_10

    .line 5787
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowState;->applyImeWindowsIfNeeded(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result p2

    if-nez p2, :cond_f

    .line 5788
    invoke-interface {p1, p0}, Lcom/android/internal/util/ToBooleanFunction;->apply(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    :cond_f
    return v0

    .line 5792
    :cond_10
    invoke-interface {p1, p0}, Lcom/android/internal/util/ToBooleanFunction;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 5793
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowState;->applyImeWindowsIfNeeded(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    return p0

    :cond_1f
    :goto_1f
    return v0
.end method

.method public applyWithNextDraw(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 7383
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowState;->applyWithNextDraw(Ljava/util/function/Consumer;I)V

    return-void
.end method

.method public applyWithNextDraw(Ljava/util/function/Consumer;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;I)V"
        }
    .end annotation

    .line 7388
    iget v0, p0, Lcom/android/server/wm/WindowState;->mSyncSeqId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowState;->mSyncSeqId:I

    .line 7389
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDrawHandlers:Ljava/util/List;

    new-instance v2, Lcom/android/server/wm/WindowState$DrawHandler;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/wm/WindowState$DrawHandler;-><init>(Lcom/android/server/wm/WindowState;ILjava/util/function/Consumer;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7393
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mDrawHandlers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowState$DrawHandler;

    iput p2, p1, Lcom/android/server/wm/WindowState$DrawHandler;->mType:I

    .line 7396
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "applyWithNextDraw, mSyncSeqId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/wm/WindowState;->mSyncSeqId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mType="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", win="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", caller="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x6

    .line 7397
    invoke-static {p2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WindowManager"

    .line 7396
    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7401
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->requestRedrawForSync()V

    .line 7403
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 p2, 0x40

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p2, p0, v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendNewMessageDelayed(ILjava/lang/Object;J)V

    return-void
.end method

.method public areAppWindowBoundsLetterboxed()Z
    .registers 2

    .line 4909
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_12

    .line 4910
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->areBoundsLetterboxed()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isLetterboxedForDisplayCutout()Z

    move-result p0

    if-eqz p0, :cond_12

    :cond_10
    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public asWindow()Lcom/android/server/wm/WindowState;
    .registers 1

    return-object p0
.end method

.method public asWindowState()Lcom/android/server/wm/WindowState;
    .registers 1

    return-object p0
.end method

.method public assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V
    .registers 7

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 6837
    :goto_2
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_57

    .line 6838
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 6844
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3e9

    if-ne v3, v4, :cond_31

    .line 6845
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v3

    const/4 v4, -0x2

    if-eqz v3, :cond_2d

    .line 6846
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v3, v3, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/WindowContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    goto :goto_4f

    .line 6848
    :cond_2d
    invoke-virtual {v2, p1, v4}, Lcom/android/server/wm/WindowState;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    goto :goto_4f

    :cond_31
    const/16 v4, 0x3ec

    if-ne v3, v4, :cond_4c

    .line 6851
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_48

    .line 6852
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v3, v3, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/WindowContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    goto :goto_4f

    .line 6854
    :cond_48
    invoke-virtual {v2, p1, v4}, Lcom/android/server/wm/WindowState;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    goto :goto_4f

    .line 6857
    :cond_4c
    invoke-virtual {v2, p1, v0}, Lcom/android/server/wm/WindowState;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 6859
    :goto_4f
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowState;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_57
    return-void
.end method

.method public assignLayer(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 8

    .line 6715
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_b4

    .line 6716
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 6717
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1f

    .line 6718
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_2c

    goto :goto_2e

    .line 6719
    :cond_1f
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_2c

    goto :goto_2e

    :cond_2c
    move v2, v3

    goto :goto_2f

    :cond_2e
    :goto_2e
    move v2, v1

    :goto_2f
    if-eqz v2, :cond_69

    .line 6720
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleRequestedOrAdding()Z

    move-result v2

    if-eqz v2, :cond_69

    .line 6721
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isMultiWindowHandler()Z

    move-result v2

    if-nez v2, :cond_5a

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isMultiWindowMenuPopup()Z

    move-result v2

    if-nez v2, :cond_5a

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_58

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 6722
    invoke-virtual {v2}, Lcom/android/server/wm/PopOverState;->isActivated()Z

    move-result v2

    if-nez v2, :cond_58

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3ed

    if-ne v2, v4, :cond_58

    goto :goto_5a

    :cond_58
    move v2, v3

    goto :goto_5b

    :cond_5a
    :goto_5a
    move v2, v1

    :goto_5b
    if-eqz v2, :cond_69

    .line 6725
    new-instance v2, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/Task;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_69

    return-void

    .line 6739
    :cond_69
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isMultiWindowHandler()Z

    move-result v0

    if-nez v0, :cond_75

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isMultiWindowMenuPopup()Z

    move-result v0

    if-eqz v0, :cond_b4

    :cond_75
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_b4

    .line 6740
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_b4

    .line 6742
    iget-object p2, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result p2

    add-int/lit8 v0, p2, -0x1

    :goto_87
    if-ltz v0, :cond_a8

    .line 6744
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 6745
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isMultiWindowHandler()Z

    move-result v4

    if-nez v4, :cond_a3

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isMultiWindowMenuPopup()Z

    move-result v4

    if-eqz v4, :cond_a0

    goto :goto_a3

    :cond_a0
    add-int/lit8 v0, v0, -0x1

    goto :goto_87

    :cond_a3
    :goto_a3
    if-ne v2, p0, :cond_a6

    goto :goto_a7

    :cond_a6
    move v1, v3

    :goto_a7
    move v3, v1

    :cond_a8
    if-eqz v3, :cond_b3

    .line 6751
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wm/WindowContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    :cond_b3
    return-void

    .line 6758
    :cond_b4
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_bf

    const p2, 0x7fffffff

    .line 6762
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->setLayer(Landroid/view/SurfaceControl$Transaction;I)V

    return-void

    .line 6772
    :cond_bf
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->shouldRelativeToNaturalSwitchingAnchor()Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 6774
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p2

    .line 6775
    invoke-virtual {p2}, Lcom/android/server/wm/TaskDisplayArea;->getNaturalSwitchingAnchor()Landroid/view/SurfaceControl;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/WindowContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    return-void

    .line 6778
    :cond_d5
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mNaturalSwitchingController:Lcom/android/server/wm/NaturalSwitchingController;

    .line 6779
    invoke-virtual {v0}, Lcom/android/server/wm/NaturalSwitchingController;->isRunning()Z

    move-result v0

    const/16 v1, 0x8e9

    if-eqz v0, :cond_fa

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v0, v1, :cond_fa

    .line 6783
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p2

    .line 6784
    invoke-virtual {p2}, Lcom/android/server/wm/TaskDisplayArea;->getNaturalSwitchingAnchor()Landroid/view/SurfaceControl;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/WindowContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    return-void

    .line 6789
    :cond_fa
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v0, v1, :cond_11f

    .line 6791
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getWindowEavesdropDragEvent()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_11f

    .line 6792
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_11f

    .line 6793
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_11f

    .line 6794
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p2

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/WindowContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    return-void

    .line 6801
    :cond_11f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->needsRelativeLayeringToIme()Z

    move-result v0

    if-eqz v0, :cond_12d

    .line 6802
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/android/server/wm/DisplayContent;->assignRelativeLayerForImeTargetChild(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V

    return-void

    .line 6805
    :cond_12d
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    return-void
.end method

.method public attach()V
    .registers 3

    .line 1506
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG:Z

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attaching "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    :cond_24
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {p0}, Lcom/android/server/wm/Session;->windowAddedLocked()V

    return-void
.end method

.method public canAddInternalSystemWindow()Z
    .registers 1

    .line 1590
    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mOwnerCanAddInternalSystemWindow:Z

    return p0
.end method

.method public canAffectSystemUiFlags()Z
    .registers 5

    .line 2522
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isFullyTransparent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 2525
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x1

    if-nez v0, :cond_25

    .line 2526
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v0

    .line 2527
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v3, :cond_1e

    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz p0, :cond_1c

    goto :goto_1e

    :cond_1c
    move p0, v1

    goto :goto_1f

    :cond_1e
    :goto_1e
    move p0, v2

    :goto_1f
    if-eqz v0, :cond_24

    if-nez p0, :cond_24

    move v1, v2

    :cond_24
    return v1

    .line 2530
    :cond_25
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 2531
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->canAffectSystemUiFlags()Z

    move-result v0

    if-eqz v0, :cond_33

    move v0, v2

    goto :goto_34

    :cond_33
    move v0, v1

    :goto_34
    if-eqz v0, :cond_3f

    .line 2532
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_3f

    move v1, v2

    :cond_3f
    return v1
.end method

.method public canBeHiddenByKeyguard()Z
    .registers 5

    .line 4840
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExtraDisplayController:Lcom/android/server/wm/ExtraDisplayController;

    .line 4841
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ExtraDisplayController;->canHaveCoverHomeDisplay(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    return v1

    .line 4847
    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_15

    return v1

    .line 4850
    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d0

    if-eq v2, v3, :cond_3f

    const/16 v3, 0x7dd

    if-eq v2, v3, :cond_3f

    const/16 v3, 0x7e3

    if-eq v2, v3, :cond_3f

    const/16 v3, 0x7f8

    if-eq v2, v3, :cond_3f

    .line 4858
    invoke-static {v0}, Lcom/android/server/wm/TaskbarController;->isTaskbar(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_30

    return v1

    .line 4863
    :cond_30
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p0}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v0

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 4864
    invoke-interface {p0, v3}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result p0

    if-ge v0, p0, :cond_3f

    const/4 v1, 0x1

    :cond_3f
    return v1
.end method

.method public canBeImeTarget()Z
    .registers 7

    .line 3265
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 3271
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_d

    return v1

    .line 3275
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7f4

    if-ne v0, v2, :cond_16

    return v1

    .line 3280
    :cond_16
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x1

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->windowsAreFocusable()Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_24

    :cond_22
    move v0, v1

    goto :goto_25

    :cond_24
    :goto_24
    move v0, v2

    :goto_25
    if-nez v0, :cond_28

    return v1

    .line 3286
    :cond_28
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 3287
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isFocusable()Z

    move-result v3

    if-nez v3, :cond_35

    return v1

    .line 3293
    :cond_35
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3d

    goto :goto_48

    .line 3305
    :cond_3d
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, 0x20008

    and-int/2addr v3, v4

    if-eqz v3, :cond_48

    if-eq v3, v4, :cond_48

    return v1

    :cond_48
    :goto_48
    if-eqz v0, :cond_57

    .line 3315
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_57

    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 3316
    invoke-virtual {v3, v0}, Lcom/android/server/wm/TransitionController;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_57

    return v1

    .line 3320
    :cond_57
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v0, :cond_11c

    .line 3321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVisibleRequestedOrAdding "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3322
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleRequestedOrAdding()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isVisible: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_8b

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_8b

    .line 3323
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_8b

    move v3, v2

    goto :goto_8c

    :cond_8b
    move v3, v1

    :goto_8c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "WindowManager"

    .line 3321
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3324
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleRequestedOrAdding()Z

    move-result v0

    if-nez v0, :cond_11c

    .line 3325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mSurfaceController="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " relayoutCalled="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " viewVis="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " policyVis="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3328
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " policyVisAfterAnim="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " parentHidden="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3330
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " exiting="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " destroying="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3325
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3332
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_11c

    .line 3333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mActivityRecord.visibleRequested="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3338
    :cond_11c
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleRequestedOrAdding()Z

    move-result v0

    if-nez v0, :cond_132

    .line 3339
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_133

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_133

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_133

    :cond_132
    move v1, v2

    :cond_133
    return v1
.end method

.method public final canPlayMoveAnimation()Z
    .registers 3

    .line 2790
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_f

    .line 2791
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->hasMovementAnimations()Z

    move-result v0

    goto :goto_1b

    .line 2792
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->hasMovementAnimations()Z

    move-result v0

    .line 2793
    :goto_1b
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->okToAnimate()Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_35

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_BOUNDS_COMPAT_ALIGNMENT_ANIMATION:Z

    if-eqz v1, :cond_49

    .line 2797
    invoke-static {p0}, Lcom/android/server/wm/BoundsCompatAlignmentController;->shouldPlayMoveAnimation(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 2799
    :cond_35
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v1

    if-nez v1, :cond_49

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-nez v0, :cond_49

    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-nez p0, :cond_49

    const/4 p0, 0x1

    goto :goto_4a

    :cond_49
    const/4 p0, 0x0

    :goto_4a
    return p0
.end method

.method public canReceiveKeys()Z
    .registers 2

    const/4 v0, 0x0

    .line 3848
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->canReceiveKeys(Z)Z

    move-result p0

    return p0
.end method

.method public canReceiveKeys(Z)Z
    .registers 5

    .line 3865
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleRequestedOrAdding()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2a

    iget v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v0, :cond_2a

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_22

    .line 3868
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityRecord;->windowsAreFocusable(Z)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 3869
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->canReceiveTouchInput()Z

    move-result v0

    if-eqz v0, :cond_2a

    move v0, v1

    goto :goto_2b

    :cond_2a
    move v0, v2

    :goto_2b
    if-nez v0, :cond_2e

    return v2

    :cond_2e
    if-nez p1, :cond_46

    .line 3875
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isOnTop()Z

    move-result p1

    if-nez p1, :cond_46

    .line 3876
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isTrusted()Z

    move-result p0

    if-eqz p0, :cond_45

    goto :goto_46

    :cond_45
    move v1, v2

    :cond_46
    :goto_46
    return v1
.end method

.method public canReceiveKeysReason(Z)Ljava/lang/String;
    .registers 4

    .line 3852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fromTouch= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isVisibleRequestedOrAdding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3853
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleRequestedOrAdding()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mViewVisibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mRemoveOnExit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " appWindowsAreFocusable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_4b

    .line 3858
    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityRecord;->windowsAreFocusable(Z)Z

    move-result p1

    if-eqz p1, :cond_49

    goto :goto_4b

    :cond_49
    const/4 p1, 0x0

    goto :goto_4c

    :cond_4b
    :goto_4b
    const/4 p1, 0x1

    :goto_4c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " canReceiveTouchInput="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3859
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->canReceiveTouchInput()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " displayIsOnTop="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3860
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isOnTop()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " displayIsTrusted="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3861
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isTrusted()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public canReceiveTouchInput()Z
    .registers 3

    .line 3892
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x1

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_24

    .line 3896
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->shouldIgnoreInput()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz p0, :cond_23

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :cond_24
    :goto_24
    return v1
.end method

.method public canScreenshotIme()Z
    .registers 1

    .line 7587
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isSecureLocked()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public canShowTransient()Z
    .registers 1

    .line 4835
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object p0, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget p0, p0, Landroid/view/InsetsFlags;->behavior:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public canShowWhenLocked()Z
    .registers 5

    .line 3881
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    .line 3882
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    .line 3883
    :goto_f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x80000

    and-int/2addr p0, v3

    if-eqz p0, :cond_1c

    move p0, v1

    goto :goto_1d

    :cond_1c
    move p0, v2

    :goto_1d
    if-nez v0, :cond_23

    if-eqz p0, :cond_22

    goto :goto_23

    :cond_22
    move v1, v2

    :cond_23
    :goto_23
    return v1
.end method

.method public cancelSeamlessRotation()V
    .registers 2

    .line 1074
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->finishSeamlessRotation(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public checkPolicyVisibilityChange()V
    .registers 6

    .line 3635
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isLegacyPolicyVisibility()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    if-eq v0, v1, :cond_6b

    .line 3636
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_2e

    .line 3637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Policy visibility changing after anim in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3640
    :cond_2e
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_37

    .line 3641
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowState;->setPolicyVisibilityFlag(I)V

    goto :goto_3a

    .line 3643
    :cond_37
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowState;->clearPolicyVisibilityFlag(I)V

    .line 3645
    :goto_3a
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v0

    if-nez v0, :cond_6b

    .line 3646
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-static {}, Landroid/view/SurfaceControl;->getGlobalTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    const-string v3, "checkPolicyVisibilityChange"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/WindowStateAnimator;->hide(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    .line 3647
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 3648
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    if-eqz v0, :cond_5f

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, 0x2954cf78

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3650
    :cond_5f
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 3652
    :cond_63
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 3656
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    :cond_6b
    return-void
.end method

.method public cleanupAnimatingExitWindow()V
    .registers 7

    .line 5921
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->shouldFinishAnimatingExit()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 5922
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v0, :cond_21

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, 0x40d1da05

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5924
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->onExitAnimationDone()V

    :cond_24
    return-void
.end method

.method public clearAnimatingFlags()Z
    .registers 8

    .line 6031
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isMultiWindowHandler()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    const/16 v3, 0x8

    if-ne v0, v3, :cond_f

    goto :goto_45

    .line 6035
    :cond_f
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-nez v0, :cond_45

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-nez v0, :cond_45

    .line 6043
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v0, :cond_34

    .line 6044
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 6045
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ANIM_enabled:Z

    if-eqz v0, :cond_32

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x4813b8e0

    const/4 v5, 0x0

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-static {v3, v4, v2, v5, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_32
    move v0, v1

    goto :goto_35

    :cond_34
    move v0, v2

    .line 6049
    :goto_35
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v3, :cond_44

    .line 6050
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 6051
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move v2, v1

    goto :goto_45

    :cond_44
    move v2, v0

    .line 6056
    :cond_45
    :goto_45
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_4c
    if-ltz v0, :cond_5e

    .line 6057
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->clearAnimatingFlags()Z

    move-result v1

    or-int/2addr v2, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_4c

    :cond_5e
    return v2
.end method

.method public clearClientTouchableRegion()V
    .registers 2

    const/4 v0, 0x0

    .line 7576
    iput v0, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    .line 7577
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {p0}, Landroid/graphics/Region;->setEmpty()V

    return-void
.end method

.method public clearForceUpdateMWHandlerLayer()V
    .registers 2

    const/4 v0, 0x0

    .line 7828
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mNeedToForceUpdateMWHandlerLayer:Z

    return-void
.end method

.method public clearFrozenInsetsState()V
    .registers 2

    const/4 v0, 0x0

    .line 1012
    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mFrozenInsetsState:Landroid/view/InsetsState;

    return-void
.end method

.method public clearPolicyVisibilityFlag(I)V
    .registers 3

    .line 2317
    iget v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:I

    .line 2318
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    return-void
.end method

.method public clearPopOverDimmer()V
    .registers 3

    .line 7753
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mPopOverDimmer:Lcom/android/server/wm/Dimmer;

    if-nez v0, :cond_5

    return-void

    .line 7756
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Dimmer;->stopDim(Landroid/view/SurfaceControl$Transaction;)V

    const/4 v0, 0x0

    .line 7757
    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mPopOverDimmer:Lcom/android/server/wm/Dimmer;

    const/4 v0, 0x0

    .line 7758
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPopOverDimmerNeeded:Z

    return-void
.end method

.method public clearTspDeadzone()V
    .registers 2

    const/4 v0, 0x0

    .line 7341
    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mTspDeadzone:Landroid/os/Bundle;

    return-void
.end method

.method public clearWillReplaceWindow()V
    .registers 3

    const/4 v0, 0x0

    .line 5375
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    const/4 v1, 0x0

    .line 5376
    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mReplacementWindow:Lcom/android/server/wm/WindowState;

    .line 5377
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    .line 5379
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_10
    if-ltz v0, :cond_20

    .line 5380
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 5381
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->clearWillReplaceWindow()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    :cond_20
    return-void
.end method

.method public final computeDragResizing()Z
    .registers 6

    .line 4993
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 4997
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v2

    if-nez v2, :cond_17

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-nez v2, :cond_17

    return v1

    .line 5001
    :cond_17
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1f

    return v1

    .line 5006
    :cond_1f
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4c

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v2, v4, :cond_2b

    goto :goto_4c

    .line 5010
    :cond_2b
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isDragResizing()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_33

    return v3

    .line 5014
    :cond_33
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedTaskDividerController;

    invoke-virtual {v2}, Lcom/android/server/wm/DockedTaskDividerController;->isResizing()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 5015
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_4c

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isGoneForLayout()Z

    move-result p0

    if-nez p0, :cond_4c

    move v1, v3

    :cond_4c
    :goto_4c
    return v1
.end method

.method public final cropRegionToRootTaskBoundsIfNeeded(Landroid/graphics/Region;)V
    .registers 4

    .line 4519
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 4520
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->cropWindowsToRootTaskBounds()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_30

    .line 4524
    :cond_d
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 4525
    iget-boolean v1, v0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v1, :cond_18

    goto :goto_30

    .line 4530
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isMultiWindowMenuPopup()Z

    move-result v1

    if-eqz v1, :cond_1f

    return-void

    .line 4536
    :cond_1f
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 4537
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->adjustRegionInFreefromWindowMode(Landroid/graphics/Rect;)V

    .line 4538
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    :cond_30
    :goto_30
    return-void
.end method

.method public final cutRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 8

    .line 2203
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 2204
    :cond_7
    iget p0, p2, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-ge p0, v0, :cond_2c

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-le v1, v2, :cond_2c

    .line 2205
    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    if-lt v1, v2, :cond_22

    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->left:I

    if-lt v3, v4, :cond_22

    .line 2206
    iput v3, p1, Landroid/graphics/Rect;->right:I

    goto :goto_2c

    .line 2207
    :cond_22
    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->left:I

    if-gt v3, v4, :cond_2c

    if-gt v1, v2, :cond_2c

    .line 2208
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 2211
    :cond_2c
    :goto_2c
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    if-ge v1, v2, :cond_4b

    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    if-le v1, v2, :cond_4b

    .line 2212
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    if-lt p2, v0, :cond_43

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-lt p0, v1, :cond_43

    .line 2213
    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_4b

    .line 2214
    :cond_43
    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-gt p0, v1, :cond_4b

    if-gt p2, v0, :cond_4b

    .line 2215
    iput p2, p1, Landroid/graphics/Rect;->top:I

    :cond_4b
    :goto_4b
    return-void
.end method

.method public destroySurface(ZZ)Z
    .registers 15

    .line 4242
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4243
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_f
    if-ltz v1, :cond_1f

    .line 4244
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 4245
    invoke-virtual {v5, p1, p2}, Lcom/android/server/wm/WindowState;->destroySurface(ZZ)Z

    move-result v5

    or-int/2addr v4, v5

    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    :cond_1f
    if-nez p2, :cond_28

    .line 4248
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    if-nez v0, :cond_28

    if-nez p1, :cond_28

    return v4

    .line 4252
    :cond_28
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v0, :cond_b7

    .line 4255
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_FORCE_DEBUG_ADD_REMOVE_enabled:Z

    if-eqz v0, :cond_7a

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    iget v5, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    int-to-long v5, v5

    const/4 v7, 0x7

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, 0x23a1fa87

    const/16 v11, 0x7fc

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v7, v2

    const/4 p2, 0x2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v7, p2

    const/4 p2, 0x3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v7, p2

    const/4 p2, 0x4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v7, p2

    const/4 p2, 0x5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, p2

    const/4 p2, 0x6

    aput-object v8, v7, p2

    const-string/jumbo p2, "win=%s destroySurfaces: appStopped=%b cleanupOnResume=%b win.mWindowRemovalAllowed=%b win.mRemoveOnExit=%b win.mViewVisibility=%d caller=%s"

    invoke-static {v9, v10, v11, p2, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_7a
    if-eqz p1, :cond_84

    .line 4272
    iget-boolean p2, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-nez p2, :cond_84

    iget p2, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-eqz p2, :cond_87

    .line 4280
    :cond_84
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->destroySurfaceUnchecked()V

    .line 4282
    :cond_87
    iget-boolean p2, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-eqz p2, :cond_8e

    .line 4283
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    :cond_8e
    if-eqz p1, :cond_93

    .line 4286
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->requestUpdateWallpaperIfNeeded()V

    .line 4288
    :cond_93
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 4293
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {p1}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result p1

    if-eqz p1, :cond_b8

    .line 4294
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    iget-object p2, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b8

    .line 4295
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    goto :goto_b8

    :cond_b7
    move v2, v4

    :cond_b8
    :goto_b8
    return v2
.end method

.method public destroySurfaceUnchecked()V
    .registers 7

    .line 4306
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked(Landroid/view/SurfaceControl$Transaction;)V

    .line 4307
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const/4 v0, 0x0

    .line 4311
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 4312
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ANIM_enabled:Z

    if-eqz v1, :cond_25

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x7a4fd1c5

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v0

    invoke-static {v2, v3, v0, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 4316
    :cond_25
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mReportOrientationChanged:Z

    .line 4318
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->useBLASTSync()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 4319
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->immediatelyNotifyBlastSync()V

    :cond_30
    return-void
.end method

.method public disableHideSViewCoverOnce(Z)V
    .registers 2

    .line 7694
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mDisableHideSViewOnce:Z

    return-void
.end method

.method public disableTransientBars()V
    .registers 2

    const/4 v0, 0x1

    .line 7930
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDisableTransientBars:Z

    return-void
.end method

.method public disposeInputChannel()V
    .registers 4

    .line 3381
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDeadWindowEventReceiver:Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 3382
    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 3383
    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mDeadWindowEventReceiver:Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;

    .line 3385
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    if-eqz v0, :cond_29

    .line 3387
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/input/InputManagerService;->removeInputChannel(Landroid/os/IBinder;)V

    .line 3388
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mKeyInterceptionInfoForToken:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3389
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputToWindowMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3390
    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    .line 3393
    :cond_29
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_32

    .line 3394
    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 3395
    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    .line 3397
    :cond_32
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandleWrapper;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/InputWindowHandleWrapper;->setToken(Landroid/os/IBinder;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 8
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 5106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5107
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 5108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " rootTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getRootTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5110
    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mClient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 5111
    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5110
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mOwnerUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " showForAllUsers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5113
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->showForAllUsers()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " appop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    .line 5115
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5112
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mAttrs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, p2}, Landroid/view/WindowManager$LayoutParams;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Requested w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mLayoutSeq="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5120
    iget v0, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    iget v2, p0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    if-ne v0, v2, :cond_f2

    iget v0, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    iget v2, p0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    if-eq v0, v2, :cond_113

    .line 5121
    :cond_f2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "LastRequested w="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5124
    :cond_113
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-nez v0, :cond_11b

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-eqz v0, :cond_140

    .line 5125
    :cond_11b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mParentWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mLayoutAttached="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5128
    :cond_140
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v0, :cond_14c

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-nez v0, :cond_14c

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    if-eqz v0, :cond_179

    .line 5129
    :cond_14c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mIsImWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsWallpaper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsFloatingLayer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_179
    if-eqz p3, :cond_192

    .line 5134
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBaseLayer="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mSubLayer="

    .line 5135
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    :cond_192
    if-eqz p3, :cond_26f

    .line 5138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5139
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_219

    .line 5140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mActivityRecord="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mAppDied="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAppDied:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "drawnStateEvaluated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDrawnStateEvaluated()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mightAffectAllDrawn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->mightAffectAllDrawn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5145
    :cond_219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mViewVisibility=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mHaveFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mObscured="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mObscured:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5148
    iget v0, p0, Lcom/android/server/wm/WindowState;->mDisableFlags:I

    if-eqz v0, :cond_26f

    .line 5149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mDisableFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Landroid/view/View;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mDisableFlags:I

    const-string v3, "mSystemUiVisibility"

    invoke-static {v1, v3, v2}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5153
    :cond_26f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v0

    if-eqz v0, :cond_28f

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    if-eqz v0, :cond_28f

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    if-eqz v0, :cond_28f

    .line 5154
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v0

    if-nez v0, :cond_28f

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    if-nez v0, :cond_28f

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mForceHideNonSystemOverlayWindow:Z

    if-nez v0, :cond_28f

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHiddenWhileSuspended:Z

    if-eqz v0, :cond_2e8

    .line 5156
    :cond_28f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mPolicyVisibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mLegacyPolicyVisibilityAfterAnim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mAppOpVisibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " parentHidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5159
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mPermanentlyHidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mHiddenWhileSuspended="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHiddenWhileSuspended:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mForceHideNonSystemOverlayWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mForceHideNonSystemOverlayWindow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5156
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5164
    :cond_2e8
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-eqz v0, :cond_2f0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    if-eqz v0, :cond_313

    .line 5165
    :cond_2f0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mRelayoutCalled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mLayoutNeeded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_313
    if-eqz p3, :cond_3c3

    .line 5169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mGivenContentInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    sget-object v2, Lcom/android/server/wm/WindowState;->sTmpSB:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mGivenVisibleInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    .line 5170
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5169
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5171
    iget v0, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    if-nez v0, :cond_34a

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    if-eqz v0, :cond_38d

    .line 5172
    :cond_34a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mTouchableInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mGivenInsetsPending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5174
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    .line 5175
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 5176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "touchable region="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5178
    :cond_38d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mFullConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mLastReportedConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getLastReportedConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5181
    :cond_3c3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mHasSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isReadyForDisplay()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5182
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mWindowRemovalAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5181
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5184
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->hasCompatScale()Z

    move-result v0

    if-eqz v0, :cond_419

    .line 5185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mCompatFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    sget-object v2, Lcom/android/server/wm/WindowState;->sTmpSB:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_419
    if-eqz p3, :cond_441

    .line 5188
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowFrames;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " surface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    sget-object v2, Lcom/android/server/wm/WindowState;->sTmpSB:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5191
    :cond_441
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 5192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5193
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/android/server/wm/WindowStateAnimator;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 5194
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v0, :cond_483

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-nez v0, :cond_483

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v0, :cond_483

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz v0, :cond_4ba

    .line 5195
    :cond_483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mAnimatingExit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mRemoveOnExit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mDestroying="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mRemoved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5200
    :cond_4ba
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v0

    if-nez v0, :cond_4c8

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v0, :cond_4c8

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mReportOrientationChanged:Z

    if-eqz v0, :cond_50e

    .line 5201
    :cond_4c8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mOrientationChanging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " configOrientationChanging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5203
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getLastReportedConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_4ef

    const/4 v1, 0x1

    goto :goto_4f0

    :cond_4ef
    const/4 v1, 0x0

    :goto_4f0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mAppFreezing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mReportOrientationChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mReportOrientationChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5201
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5207
    :cond_50e
    iget v0, p0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    if-eqz v0, :cond_52f

    .line 5208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mLastFreezeDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5209
    iget v0, p0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 5210
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5212
    :cond_52f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mForceSeamlesslyRotate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " seamlesslyRotate: pending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5214
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mPendingSeamlessRotate:Lcom/android/server/wm/SeamlessRotator;

    if-eqz v0, :cond_555

    .line 5215
    invoke-virtual {v0, p1}, Lcom/android/server/wm/SeamlessRotator;->dump(Ljava/io/PrintWriter;)V

    goto :goto_55a

    :cond_555
    const-string v0, "null"

    .line 5217
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5220
    :goto_55a
    iget v0, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_568

    iget v0, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_58b

    .line 5221
    :cond_568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mHScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " mVScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5224
    :cond_58b
    iget v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_599

    iget v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5bc

    .line 5225
    :cond_599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mWallpaperX="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " mWallpaperY="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5228
    :cond_5bc
    iget v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5c8

    iget v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5eb

    .line 5229
    :cond_5c8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mWallpaperXStep="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " mWallpaperYStep="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5232
    :cond_5eb
    iget v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_60a

    .line 5233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mWallpaperZoomOut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5235
    :cond_60a
    iget v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_614

    iget v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v0, v1, :cond_637

    .line 5237
    :cond_614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mWallpaperDisplayOffsetX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mWallpaperDisplayOffsetY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5240
    :cond_637
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_654

    .line 5241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mDrawLock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5243
    :cond_654
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v0

    if-eqz v0, :cond_675

    .line 5244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isDragResizing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5246
    :cond_675
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->computeDragResizing()Z

    move-result v0

    if-eqz v0, :cond_696

    .line 5247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "computeDragResizing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->computeDragResizing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5249
    :cond_696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isOnScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "keepClearAreas: restricted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mKeepClearAreas:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", unrestricted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mUnrestrictedKeepClearAreas:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz p3, :cond_714

    .line 5254
    iget-object p3, p0, Lcom/android/server/wm/WindowState;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;

    invoke-virtual {p3}, Landroid/view/InsetsVisibilities;->toString()Ljava/lang/String;

    move-result-object p3

    .line 5255
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_714

    .line 5256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Requested visibilities: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5261
    :cond_714
    iget-boolean p3, p0, Lcom/android/server/wm/WindowState;->mPopOverDimmerNeeded:Z

    if-eqz p3, :cond_72c

    .line 5262
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mPopOverDimmerNeeded=true"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5264
    :cond_72c
    iget-object p3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p3, p3, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget v0, p0, Lcom/android/server/wm/WindowState;->mOriginalLayoutInDisplayCutoutMode:I

    if-eq p3, v0, :cond_74d

    .line 5266
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mOriginalLayoutInDisplayCutoutMode="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/wm/WindowState;->mOriginalLayoutInDisplayCutoutMode:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5269
    :cond_74d
    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mWaitToHandleResizing:Z

    if-eqz p0, :cond_765

    .line 5270
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mWaitToHandleResizing=true"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_765
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 8

    .line 5047
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    const/4 v1, 0x2

    if-ne p4, v1, :cond_a

    if-nez v0, :cond_a

    return-void

    .line 5052
    :cond_a
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v1, 0x10b00000001L

    .line 5053
    invoke-super {p0, p1, v1, v2, p4}, Lcom/android/server/wm/WindowContainer;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    const-wide v1, 0x10500000003L

    .line 5054
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result p4

    invoke-virtual {p1, v1, v2, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10500000004L

    .line 5055
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getRootTaskId()I

    move-result p4

    invoke-virtual {p1, v1, v2, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5056
    iget-object p4, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    const-wide v1, 0x10b00000005L

    invoke-virtual {p4, p1, v1, v2}, Landroid/view/WindowManager$LayoutParams;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5057
    iget-object p4, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    const-wide v1, 0x10b00000006L

    invoke-virtual {p4, p1, v1, v2}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5058
    iget-object p4, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    const-wide v1, 0x10b00000029L

    invoke-virtual {p4, p1, v1, v2}, Lcom/android/server/wm/WindowFrames;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5059
    iget-object p4, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object p4, p4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    const-wide v1, 0x10b0000000cL

    invoke-virtual {p4, p1, v1, v2}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5060
    iget-object p4, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    const-wide v1, 0x10b00000010L

    invoke-static {p4, p1, v1, v2}, Landroid/graphics/GraphicsProtos;->dumpPointProto(Landroid/graphics/Point;Landroid/util/proto/ProtoOutputStream;J)V

    .line 5061
    iget-object p4, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-wide v1, 0x10b0000000dL

    invoke-virtual {p4, p1, v1, v2}, Lcom/android/server/wm/WindowStateAnimator;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    const-wide v1, 0x1080000000eL

    .line 5062
    iget-boolean p4, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    invoke-virtual {p1, v1, v2, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10500000012L

    .line 5063
    iget p4, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    invoke-virtual {p1, v1, v2, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10500000013L

    .line 5064
    iget p4, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    invoke-virtual {p1, v1, v2, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10500000014L

    .line 5065
    iget p4, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    invoke-virtual {p1, v1, v2, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10800000016L

    .line 5066
    iget-boolean p4, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    invoke-virtual {p1, v1, v2, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10800000017L

    .line 5067
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result p4

    invoke-virtual {p1, v1, v2, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10800000022L

    .line 5068
    iget-boolean p4, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    invoke-virtual {p1, v1, v2, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10800000023L

    .line 5069
    iget-boolean p4, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    invoke-virtual {p1, v1, v2, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10800000024L

    .line 5070
    iget-boolean p4, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    invoke-virtual {p1, v1, v2, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10800000025L

    .line 5071
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result p4

    invoke-virtual {p1, v1, v2, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10800000026L

    .line 5072
    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10800000027L

    .line 5073
    iget-object p4, p0, Lcom/android/server/wm/WindowState;->mPendingSeamlessRotate:Lcom/android/server/wm/SeamlessRotator;

    if-eqz p4, :cond_e7

    const/4 p4, 0x1

    goto :goto_e8

    :cond_e7
    const/4 p4, 0x0

    :goto_e8
    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x1080000002aL

    .line 5074
    iget-boolean p4, p0, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x1080000002bL

    .line 5075
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->hasCompatScale()Z

    move-result p4

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x1020000002cL

    .line 5076
    iget p4, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 5077
    iget-object p4, p0, Lcom/android/server/wm/WindowState;->mKeepClearAreas:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_111
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_126

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    const-wide v1, 0x20b0000002dL

    .line 5078
    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_111

    .line 5080
    :cond_126
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mUnrestrictedKeepClearAreas:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_12c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_141

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/graphics/Rect;

    const-wide v0, 0x20b0000002eL

    .line 5081
    invoke-virtual {p4, p1, v0, v1}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_12c

    .line 5083
    :cond_141
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public dumpProto(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 5

    .line 7610
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    return-void
.end method

.method public enableTransientBars()V
    .registers 2

    const/4 v0, 0x0

    .line 7934
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDisableTransientBars:Z

    return-void
.end method

.method public executeDrawHandlers(Landroid/view/SurfaceControl$Transaction;I)Z
    .registers 13

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_8

    .line 7440
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    move v2, v1

    goto :goto_9

    :cond_8
    move v2, v0

    .line 7444
    :goto_9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v4, v0

    move v5, v4

    .line 7447
    :goto_10
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mDrawHandlers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_7f

    .line 7448
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mDrawHandlers:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState$DrawHandler;

    .line 7449
    iget v7, v6, Lcom/android/server/wm/WindowState$DrawHandler;->mSeqId:I

    const-string v8, "WindowManager"

    if-gt v7, p2, :cond_4e

    .line 7450
    iget-object v5, v6, Lcom/android/server/wm/WindowState$DrawHandler;->mConsumer:Ljava/util/function/Consumer;

    invoke-interface {v5, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 7451
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7455
    iget v5, v6, Lcom/android/server/wm/WindowState$DrawHandler;->mType:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_4d

    .line 7458
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mClientWasDrawingForSync:Z

    .line 7460
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v5, :cond_4d

    .line 7461
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mClientWasDrawingForSync is set by resizing, w="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    move v5, v1

    .line 7469
    :cond_4e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "executeDrawHandlers, seqId="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", h.mSeqId="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v6, Lcom/android/server/wm/WindowState$DrawHandler;->mSeqId:I

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", hadHandlers="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", win="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 7474
    :cond_7f
    :goto_7f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_93

    .line 7475
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/WindowState$DrawHandler;

    .line 7476
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDrawHandlers:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_7f

    :cond_93
    if-eqz v5, :cond_9e

    .line 7480
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v0, 0x40

    invoke-virtual {p2, v0, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_9e
    if-eqz v2, :cond_a3

    .line 7484
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_a3
    return v5
.end method

.method public fillClientWindowFramesAndConfiguration(Landroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;ZZ)V
    .registers 7

    .line 4627
    iget-object v0, p1, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4628
    iget-object v0, p1, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4629
    iget v0, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->hasCompatScale()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 4630
    iget-object v0, p1, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 4634
    :cond_27
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->DSS_ENABLED:Z

    if-eqz v0, :cond_3a

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDssEnabled:Z

    if-eqz v0, :cond_3a

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-nez v0, :cond_3a

    .line 4635
    iget-object p1, p1, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    iget v0, p0, Lcom/android/server/wm/WindowState;->mDssScale:F

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->scale(F)V

    :cond_3a
    if-nez p3, :cond_53

    if-eqz p4, :cond_4d

    .line 4643
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->shouldCheckTokenVisibleRequested()Z

    move-result p1

    if-nez p1, :cond_53

    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 4644
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p1

    if-eqz p1, :cond_4d

    goto :goto_53

    .line 4659
    :cond_4d
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {p2, p1}, Landroid/util/MergedConfiguration;->setTo(Landroid/util/MergedConfiguration;)V

    goto :goto_7a

    .line 4645
    :cond_53
    :goto_53
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getProcessGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 4646
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    .line 4647
    invoke-virtual {p2, p1, p3}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 4648
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    if-eq p2, p1, :cond_7a

    .line 4650
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->DSS_ENABLED:Z

    if-eqz p1, :cond_75

    iget-boolean p1, p0, Lcom/android/server/wm/WindowState;->mDssEnabled:Z

    if-eqz p1, :cond_75

    .line 4651
    invoke-static {}, Lcom/android/server/DssController;->getService()Lcom/android/server/DssController;

    move-result-object p1

    .line 4652
    iget-object p3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object p3, p3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/android/server/DssController;->scaleExistingMergedConfiguration(Landroid/util/MergedConfiguration;Ljava/lang/String;)V

    .line 4656
    :cond_75
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {p1, p2}, Landroid/util/MergedConfiguration;->setTo(Landroid/util/MergedConfiguration;)V

    :cond_7a
    :goto_7a
    const/4 p1, 0x1

    .line 4661
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mLastConfigReportedToClient:Z

    return-void
.end method

.method public fillsDisplay()Z
    .registers 4

    .line 2873
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 2874
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object p0, p0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    if-gtz v1, :cond_1e

    iget v1, p0, Landroid/graphics/Rect;->top:I

    if-gtz v1, :cond_1e

    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/view/DisplayInfo;->appWidth:I

    if-lt v1, v2, :cond_1e

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/view/DisplayInfo;->appHeight:I

    if-lt p0, v0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method

.method public fillsParent()Z
    .registers 2

    .line 7290
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public finishDrawing(Landroid/view/SurfaceControl$Transaction;I)Z
    .registers 13

    .line 7234
    iget-wide v0, p0, Lcom/android/server/wm/WindowState;->mOrientationChangeRedrawRequestTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "ms"

    const-string v4, " "

    const-string v5, "WindowManager"

    if-lez v0, :cond_35

    .line 7236
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/wm/WindowState;->mOrientationChangeRedrawRequestTime:J

    sub-long/2addr v6, v8

    .line 7237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "finishDrawing of orientation change: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7238
    iput-wide v2, p0, Lcom/android/server/wm/WindowState;->mOrientationChangeRedrawRequestTime:J

    goto :goto_6f

    .line 7239
    :cond_35
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_6f

    iget-wide v6, v0, Lcom/android/server/wm/ActivityRecord;->mRelaunchStartTime:J

    cmp-long v6, v6, v2

    if-eqz v6, :cond_6f

    .line 7240
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-ne v0, p0, :cond_6f

    .line 7242
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-wide v8, v0, Lcom/android/server/wm/ActivityRecord;->mRelaunchStartTime:J

    sub-long/2addr v6, v8

    .line 7243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "finishDrawing of relaunch: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7244
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iput-wide v2, v0, Lcom/android/server/wm/ActivityRecord;->mRelaunchStartTime:J

    .line 7246
    :cond_6f
    :goto_6f
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_89

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_89

    .line 7247
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 7248
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyStartingWindowDrawn(Lcom/android/server/wm/ActivityRecord;)V

    .line 7251
    :cond_89
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowState;->executeDrawHandlers(Landroid/view/SurfaceControl$Transaction;I)Z

    move-result v0

    .line 7255
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 7256
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_a4

    .line 7258
    invoke-virtual {v1, p0, p1}, Lcom/android/server/wm/AsyncRotationController;->handleFinishDrawing(Lcom/android/server/wm/WindowState;Landroid/view/SurfaceControl$Transaction;)Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 7264
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->clearSyncState()V

    move v1, v2

    move-object p1, v3

    goto :goto_b3

    .line 7265
    :cond_a4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->onSyncFinishedDrawing()Z

    move-result v1

    if-eqz v1, :cond_b2

    if-eqz p1, :cond_b2

    .line 7266
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSyncTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p1}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    move-object p1, v3

    :cond_b2
    move v1, v4

    .line 7271
    :goto_b3
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v5, p0, Lcom/android/server/wm/WindowState;->mClientWasDrawingForSync:Z

    .line 7272
    invoke-virtual {v3, p1, v5, p2}, Lcom/android/server/wm/WindowStateAnimator;->finishDrawingLocked(Landroid/view/SurfaceControl$Transaction;ZI)Z

    move-result p1

    .line 7276
    iput-boolean v4, p0, Lcom/android/server/wm/WindowState;->mClientWasDrawingForSync:Z

    if-nez v1, :cond_c4

    if-nez v0, :cond_c5

    if-eqz p1, :cond_c4

    goto :goto_c5

    :cond_c4
    move v2, v4

    :cond_c5
    :goto_c5
    return v2
.end method

.method public finishSeamlessRotation(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    .line 1078
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mPendingSeamlessRotate:Lcom/android/server/wm/SeamlessRotator;

    if-nez v0, :cond_5

    return-void

    .line 1082
    :cond_5
    invoke-virtual {v0, p1, p0}, Lcom/android/server/wm/SeamlessRotator;->finish(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V

    const/4 p1, 0x0

    .line 1083
    iput-object p1, p0, Lcom/android/server/wm/WindowState;->mPendingSeamlessRotate:Lcom/android/server/wm/SeamlessRotator;

    .line 1085
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/server/wm/DisplayRotation;->markForSeamlessRotation(Lcom/android/server/wm/WindowState;Z)V

    .line 1087
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    if-eqz p0, :cond_1e

    .line 1088
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->finishSeamlessRotation()V

    :cond_1e
    return-void
.end method

.method public finishSync(Landroid/view/SurfaceControl$Transaction;Z)V
    .registers 5

    .line 7227
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRedrawForSyncReported:Z

    if-eqz v0, :cond_b

    .line 7228
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mClientWasDrawingForSync:Z

    .line 7230
    :cond_b
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->finishSync(Landroid/view/SurfaceControl$Transaction;Z)V

    return-void
.end method

.method public fitToStableAreaForHandler(Landroid/window/ClientWindowFrames;)V
    .registers 6

    .line 7845
    iget-object v0, p1, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    .line 7846
    iget-object p1, p1, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    .line 7849
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isMultiWindowMenuPopup()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_19

    .line 7850
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v1

    if-nez v1, :cond_40

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_3f

    goto :goto_40

    .line 7851
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isMultiWindowHandler()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 7852
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_26

    goto :goto_40

    .line 7854
    :cond_26
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_3f

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 7855
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 7856
    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowState;->getRequestedVisibility(I)Z

    move-result v1

    if-nez v1, :cond_3f

    goto :goto_40

    :cond_3f
    move v2, v3

    :cond_40
    :goto_40
    if-eqz v2, :cond_71

    .line 7861
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    .line 7862
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isMultiWindowHandler()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 7863
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 7865
    :cond_5a
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v1, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 7866
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 7867
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-static {p0, v0, p1}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_71
    return-void
.end method

.method public final forAllWindowBottomToTop(Lcom/android/internal/util/ToBooleanFunction;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;)Z"
        }
    .end annotation

    .line 5637
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5638
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    move v3, v2

    :goto_10
    const/4 v4, 0x1

    if-ge v3, v0, :cond_2c

    .line 5640
    iget v5, v1, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-gez v5, :cond_2c

    .line 5641
    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v5

    if-eqz v5, :cond_1e

    return v4

    :cond_1e
    add-int/lit8 v3, v3, 0x1

    if-lt v3, v0, :cond_23

    goto :goto_2c

    .line 5648
    :cond_23
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    goto :goto_10

    .line 5651
    :cond_2c
    :goto_2c
    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v5

    if-eqz v5, :cond_33

    return v4

    :cond_33
    :goto_33
    if-ge v3, v0, :cond_4a

    .line 5656
    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v1

    if-eqz v1, :cond_3c

    return v4

    :cond_3c
    add-int/lit8 v3, v3, 0x1

    if-lt v3, v0, :cond_41

    goto :goto_4a

    .line 5663
    :cond_41
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    goto :goto_33

    :cond_4a
    :goto_4a
    return v2
.end method

.method public final forAllWindowTopToBottom(Lcom/android/internal/util/ToBooleanFunction;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;)Z"
        }
    .end annotation

    .line 5725
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 5726
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    :goto_10
    if-ltz v0, :cond_2b

    .line 5728
    iget v3, v2, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-ltz v3, :cond_2b

    .line 5729
    invoke-virtual {v2, p1, v1}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v3

    if-eqz v3, :cond_1d

    return v1

    :cond_1d
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_22

    goto :goto_2b

    .line 5736
    :cond_22
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    goto :goto_10

    .line 5739
    :cond_2b
    :goto_2b
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v3

    if-eqz v3, :cond_32

    return v1

    :cond_32
    :goto_32
    if-ltz v0, :cond_49

    .line 5744
    invoke-virtual {v2, p1, v1}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v2

    if-eqz v2, :cond_3b

    return v1

    :cond_3b
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_40

    goto :goto_49

    .line 5751
    :cond_40
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    goto :goto_32

    :cond_49
    :goto_49
    const/4 p0, 0x0

    return p0
.end method

.method public forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    .line 5620
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 5622
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result p0

    return p0

    :cond_d
    if-eqz p2, :cond_14

    .line 5626
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->forAllWindowTopToBottom(Lcom/android/internal/util/ToBooleanFunction;)Z

    move-result p0

    return p0

    .line 5628
    :cond_14
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->forAllWindowBottomToTop(Lcom/android/internal/util/ToBooleanFunction;)Z

    move-result p0

    return p0
.end method

.method public forceExecuteDrawHandlers(I)V
    .registers 8

    .line 7409
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 7411
    :goto_7
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mDrawHandlers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_46

    .line 7412
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mDrawHandlers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState$DrawHandler;

    .line 7413
    iget v4, v3, Lcom/android/server/wm/WindowState$DrawHandler;->mType:I

    if-ne v4, p1, :cond_43

    .line 7414
    iget-object v4, v3, Lcom/android/server/wm/WindowState$DrawHandler;->mConsumer:Ljava/util/function/Consumer;

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-interface {v4, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 7415
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7416
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "forceExecuteDrawHandlers: win="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", handler="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 7419
    :cond_46
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_76

    .line 7420
    :goto_4c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_60

    .line 7421
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowState$DrawHandler;

    .line 7422
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mDrawHandlers:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    .line 7424
    :cond_60
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mDrawHandlers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_71

    .line 7425
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v0, 0x40

    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 7427
    :cond_71
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_76
    return-void
.end method

.method public forceReportingRelayout()V
    .registers 2

    const/4 v0, 0x1

    .line 6940
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mForceRelayout:Z

    return-void
.end method

.method public forceReportingResized()V
    .registers 1

    .line 6935
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowFrames;->forceReportingResized()V

    return-void
.end method

.method public final frameCoversEntireAppTokenBounds()Z
    .registers 3

    .line 4947
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4948
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 4949
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public freezeInsetsState()V
    .registers 4

    .line 1006
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrozenInsetsState:Landroid/view/InsetsState;

    if-nez v0, :cond_10

    .line 1007
    new-instance v0, Landroid/view/InsetsState;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getInsetsState()Landroid/view/InsetsState;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mFrozenInsetsState:Landroid/view/InsetsState;

    :cond_10
    return-void
.end method

.method public getActivityGroupBounds(Landroid/graphics/Rect;)V
    .registers 2

    .line 7892
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_7

    .line 7893
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->getActivityGroupBounds(Landroid/graphics/Rect;)V

    :cond_7
    return-void
.end method

.method public getActivityRecord()Lcom/android/server/wm/ActivityRecord;
    .registers 1

    .line 7592
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    return-object p0
.end method

.method public getAnimationFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 6

    .line 7160
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 7161
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_46

    .line 7162
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->areAppWindowBoundsLetterboxed()Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_3b

    .line 7169
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDockedResizing()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 7172
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_46

    .line 7174
    :cond_33
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_46

    .line 7168
    :cond_3b
    :goto_3b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 7176
    :goto_46
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {p4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 7177
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    move-result-object p0

    .line 7178
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result p4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p4, v0}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object p4

    .line 7179
    invoke-virtual {p4}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object p4

    .line 7178
    invoke-virtual {p2, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 7180
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result p2

    const/4 p4, 0x1

    invoke-virtual {p0, p1, p2, p4}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object p0

    .line 7181
    invoke-virtual {p0}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object p0

    .line 7180
    invoke-virtual {p3, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getAnimationLeashParent()Landroid/view/SurfaceControl;
    .registers 2

    .line 6824
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isStartingWindowAssociatedToTask()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 6825
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mStartingData:Lcom/android/server/wm/StartingData;

    iget-object p0, p0, Lcom/android/server/wm/StartingData;->mAssociatedTask:Lcom/android/server/wm/Task;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object p0

    .line 6827
    :cond_d
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public getAttrs()Landroid/view/WindowManager$LayoutParams;
    .registers 1

    .line 1773
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method public getBaseLayer()I
    .registers 1

    .line 7784
    iget p0, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    return p0
.end method

.method public getBaseType()I
    .registers 1

    .line 1792
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTopParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    return p0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .registers 2

    .line 1738
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->hasSizeCompatBounds()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_13

    :cond_f
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    :goto_13
    return-object p0
.end method

.method public getClientViewRootSurface()Landroid/view/SurfaceControl;
    .registers 1

    .line 7194
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public getCompatFrame()Landroid/graphics/Rect;
    .registers 1

    .line 1764
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object p0, p0, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getCompatInsetsState()Landroid/view/InsetsState;
    .registers 4

    .line 2117
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getInsetsState()Landroid/view/InsetsState;

    move-result-object v0

    .line 2118
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->hasCompatScale()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_16

    .line 2119
    new-instance v1, Landroid/view/InsetsState;

    invoke-direct {v1, v0, v2}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    .line 2120
    iget v0, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    invoke-virtual {v1, v0}, Landroid/view/InsetsState;->scale(F)V

    move-object v0, v1

    .line 2123
    :cond_16
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->DSS_ENABLED:Z

    if-eqz v1, :cond_29

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDssEnabled:Z

    if-eqz v1, :cond_29

    .line 2124
    new-instance v1, Landroid/view/InsetsState;

    invoke-direct {v1, v0, v2}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    .line 2125
    iget p0, p0, Lcom/android/server/wm/WindowState;->mDssScale:F

    invoke-virtual {v1, p0}, Landroid/view/InsetsState;->scale(F)V

    move-object v0, v1

    :cond_29
    return-object v0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .registers 3

    .line 4596
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->registeredForDisplayAreaConfigChanges()Z

    move-result v0

    if-nez v0, :cond_b

    .line 4597
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    return-object p0

    .line 4602
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getProcessGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 4603
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 4604
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mTempConfiguration:Landroid/content/res/Configuration;

    return-object p0
.end method

.method public getCoverMode()I
    .registers 3

    .line 7702
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 7703
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x833

    if-ne v0, v1, :cond_15

    const/16 p0, 0xa

    return p0

    .line 7706
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    return p0

    .line 7708
    :cond_1e
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    return p0
.end method

.method public getDimmer()Lcom/android/server/wm/Dimmer;
    .registers 3

    .line 7724
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPopOverDimmerNeeded:Z

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isPopOver()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 7725
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mPopOverDimmer:Lcom/android/server/wm/Dimmer;

    if-nez v0, :cond_19

    .line 7726
    new-instance v0, Lcom/android/server/wm/Dimmer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wm/Dimmer;-><init>(Lcom/android/server/wm/WindowContainer;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mPopOverDimmer:Lcom/android/server/wm/Dimmer;

    .line 7728
    :cond_19
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mPopOverDimmer:Lcom/android/server/wm/Dimmer;

    return-object p0

    .line 7730
    :cond_1c
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getDimmer()Lcom/android/server/wm/Dimmer;

    move-result-object p0

    return-object p0
.end method

.method public getDisableFlags()I
    .registers 1

    .line 1787
    iget p0, p0, Lcom/android/server/wm/WindowState;->mDisableFlags:I

    return p0
.end method

.method public getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .registers 1

    .line 1981
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayFrame()Landroid/graphics/Rect;
    .registers 1

    .line 1756
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object p0, p0, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getDisplayFrames(Lcom/android/server/wm/DisplayFrames;)Lcom/android/server/wm/DisplayFrames;
    .registers 3

    .line 2011
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayFrames()Lcom/android/server/wm/DisplayFrames;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    .line 2016
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isLayoutNeededInUdcCutout()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2017
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

    iget-object p0, p0, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    return-object p0

    :cond_16
    return-object p1
.end method

.method public getDisplayId()I
    .registers 1

    .line 2150
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, -0x1

    return p0

    .line 2154
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p0

    return p0
.end method

.method public getDisplayInfo()Landroid/view/DisplayInfo;
    .registers 2

    .line 2024
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    .line 2028
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDrawnStateEvaluated()Z
    .registers 1

    .line 1559
    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mDrawnStateEvaluated:Z

    return p0
.end method

.method public getEffectiveTouchableRegion(Landroid/graphics/Region;)V
    .registers 4

    .line 4507
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 4509
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->isModal()Z

    move-result v1

    if-eqz v1, :cond_1c

    if-eqz v0, :cond_1c

    .line 4510
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 4511
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->cropRegionToRootTaskBoundsIfNeeded(Landroid/graphics/Region;)V

    .line 4512
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->subtractTouchExcludeRegionIfNeeded(Landroid/graphics/Region;)V

    goto :goto_1f

    .line 4514
    :cond_1c
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    :goto_1f
    return-void
.end method

.method public getFrame()Landroid/graphics/Rect;
    .registers 1

    .line 1743
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object p0, p0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getFrozenInsetsState()Landroid/view/InsetsState;
    .registers 1

    .line 1016
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mFrozenInsetsState:Landroid/view/InsetsState;

    return-object p0
.end method

.method public getIWindow()Landroid/view/IWindow;
    .registers 1

    .line 2164
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    return-object p0
.end method

.method public getImeControlTarget()Lcom/android/server/wm/InsetsControlTarget;
    .registers 2

    .line 6709
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayContent;->getImeHostOrFallback(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object p0

    return-object p0
.end method

.method public getImeInputTarget()Lcom/android/server/wm/WindowState;
    .registers 1

    .line 6924
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getImeInputTarget()Lcom/android/server/wm/InputTarget;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 6925
    invoke-interface {p0}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object p0

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return-object p0
.end method

.method public getImeLayeringTarget()Lcom/android/server/wm/WindowState;
    .registers 2

    .line 6919
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 6920
    invoke-interface {p0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return-object p0
.end method

.method public getInputDispatchingTimeoutMillis()J
    .registers 3

    .line 2247
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_7

    .line 2248
    iget-wide v0, p0, Lcom/android/server/wm/ActivityRecord;->mInputDispatchingTimeoutMillis:J

    goto :goto_a

    .line 2249
    :cond_7
    sget p0, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    int-to-long v0, p0

    :goto_a
    return-wide v0
.end method

.method public getInsetsState()Landroid/view/InsetsState;
    .registers 2

    const/4 v0, 0x0

    .line 2044
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->getInsetsState(Z)Landroid/view/InsetsState;

    move-result-object p0

    return-object p0
.end method

.method public getInsetsState(Z)Landroid/view/InsetsState;
    .registers 7

    .line 2056
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformInsetsState()Landroid/view/InsetsState;

    move-result-object v0

    .line 2057
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v1

    if-eqz v0, :cond_15

    .line 2059
    invoke-virtual {v1, p0, v0}, Lcom/android/server/wm/InsetsPolicy;->adjustInsetsForWindow(Lcom/android/server/wm/WindowState;Landroid/view/InsetsState;)Landroid/view/InsetsState;

    move-result-object p0

    return-object p0

    .line 2061
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 2063
    invoke-virtual {v0}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getType()I

    move-result v0

    goto :goto_25

    :cond_24
    const/4 v0, -0x1

    .line 2065
    :goto_25
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mFrozenInsetsState:Landroid/view/InsetsState;

    if-eqz v2, :cond_2a

    goto :goto_2e

    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getMergedInsetsState()Landroid/view/InsetsState;

    move-result-object v2

    .line 2069
    :goto_2e
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTop()Z

    move-result v4

    .line 2068
    invoke-virtual {v1, v0, v3, v4, v2}, Lcom/android/server/wm/InsetsPolicy;->enforceInsetsPolicyForTarget(IIZLandroid/view/InsetsState;)Landroid/view/InsetsState;

    move-result-object v2

    .line 2071
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isLayoutNeededInUdcCutout()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 2072
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

    invoke-virtual {v3, p0, v2}, Lcom/android/server/wm/UdcCutoutPolicy;->adjustInsetsForUdc(Lcom/android/server/wm/WindowContainer;Landroid/view/InsetsState;)Landroid/view/InsetsState;

    move-result-object v2

    .line 2075
    :cond_48
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->CARLIFE_NAVBAR:Z

    if-eqz v3, :cond_54

    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    move-result v3

    if-nez v3, :cond_64

    .line 2076
    :cond_54
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicyExt;->getTaskbarController()Lcom/android/server/wm/TaskbarController;

    move-result-object v3

    .line 2077
    invoke-virtual {v3, v2}, Lcom/android/server/wm/TaskbarController;->adjustInsetsForTaskbar(Landroid/view/InsetsState;)Landroid/view/InsetsState;

    move-result-object v2

    .line 2081
    :cond_64
    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/WindowState;->adjustNavInsetsForWindowAboveThanIme(ILandroid/view/InsetsState;)Landroid/view/InsetsState;

    move-result-object v0

    .line 2093
    invoke-virtual {v1, p0, v0, p1}, Lcom/android/server/wm/InsetsPolicy;->adjustInsetsForWindow(Lcom/android/server/wm/WindowState;Landroid/view/InsetsState;Z)Landroid/view/InsetsState;

    move-result-object p0

    return-object p0
.end method

.method public getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;
    .registers 6

    .line 2135
    new-instance v0, Landroid/view/InsetsState;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getInsetsState()Landroid/view/InsetsState;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    const/4 v1, 0x0

    :goto_a
    const/16 v2, 0x18

    if-ge v1, v2, :cond_2c

    .line 2137
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowState;->getRequestedVisibility(I)Z

    move-result v2

    .line 2138
    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v3

    if-eqz v3, :cond_29

    .line 2139
    invoke-virtual {v3}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v4

    if-eq v4, v2, :cond_29

    .line 2140
    new-instance v4, Landroid/view/InsetsSource;

    invoke-direct {v4, v3}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    .line 2141
    invoke-virtual {v4, v2}, Landroid/view/InsetsSource;->setVisible(Z)V

    .line 2142
    invoke-virtual {v0, v4}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_2c
    return-object v0
.end method

.method public getKeepClearAreas(Ljava/util/Collection;Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/Collection<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 1142
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [F

    .line 1144
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/wm/WindowState;->getKeepClearAreas(Ljava/util/Collection;Ljava/util/Collection;Landroid/graphics/Matrix;[F)V

    return-void
.end method

.method public getKeepClearAreas(Ljava/util/Collection;Ljava/util/Collection;Landroid/graphics/Matrix;[F)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/Collection<",
            "Landroid/graphics/Rect;",
            ">;",
            "Landroid/graphics/Matrix;",
            "[F)V"
        }
    .end annotation

    .line 1160
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mKeepClearAreas:Ljava/util/List;

    invoke-virtual {p0, v0, p3, p4}, Lcom/android/server/wm/WindowState;->getRectsInScreenSpace(Ljava/util/List;Landroid/graphics/Matrix;[F)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 1161
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mUnrestrictedKeepClearAreas:Ljava/util/List;

    .line 1162
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/wm/WindowState;->getRectsInScreenSpace(Ljava/util/List;Landroid/graphics/Matrix;[F)Ljava/util/List;

    move-result-object p0

    .line 1161
    invoke-interface {p2, p0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public getKeyInterceptionInfo()Lcom/android/internal/policy/KeyInterceptionInfo;
    .registers 5

    .line 7143
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mKeyInterceptionInfo:Lcom/android/internal/policy/KeyInterceptionInfo;

    if-eqz v0, :cond_24

    iget v0, v0, Lcom/android/internal/policy/KeyInterceptionInfo;->layoutParamsPrivateFlags:I

    .line 7144
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mKeyInterceptionInfo:Lcom/android/internal/policy/KeyInterceptionInfo;

    iget v0, v0, Lcom/android/internal/policy/KeyInterceptionInfo;->layoutParamsType:I

    .line 7145
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mKeyInterceptionInfo:Lcom/android/internal/policy/KeyInterceptionInfo;

    iget-object v0, v0, Lcom/android/internal/policy/KeyInterceptionInfo;->windowTitle:Ljava/lang/String;

    .line 7146
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v1

    if-eq v0, v1, :cond_3f

    .line 7147
    :cond_24
    new-instance v0, Lcom/android/internal/policy/KeyInterceptionInfo;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 7148
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/KeyInterceptionInfo;-><init>(IILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mKeyInterceptionInfo:Lcom/android/internal/policy/KeyInterceptionInfo;

    .line 7150
    :cond_3f
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mKeyInterceptionInfo:Lcom/android/internal/policy/KeyInterceptionInfo;

    return-object p0
.end method

.method public getLastReportedBounds()Landroid/graphics/Rect;
    .registers 3

    .line 3762
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getLastReportedConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 3763
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_15

    :cond_11
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    :goto_15
    return-object v0
.end method

.method public getLastReportedConfiguration()Landroid/content/res/Configuration;
    .registers 1

    .line 3757
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    return-object p0
.end method

.method public getLayoutingAttrs(I)Landroid/view/WindowManager$LayoutParams;
    .registers 5

    .line 1777
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_10

    .line 1778
    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_10

    aget-object p1, v0, p1

    if-nez p1, :cond_f

    goto :goto_10

    :cond_f
    return-object p1

    :cond_10
    :goto_10
    return-object p0
.end method

.method public final getLegacyBlurRadius(F)I
    .registers 2

    const p0, 0x3ecccccd    # 0.4f

    div-float/2addr p1, p0

    const/high16 p0, 0x43b00000    # 352.0f

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public final getLegacySaturation(F)I
    .registers 2

    const p0, 0x3ecccccd    # 0.4f

    div-float/2addr p1, p0

    const/high16 p0, -0x3e600000    # -20.0f

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public getMaxBounds()Landroid/graphics/Rect;
    .registers 2

    .line 2033
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformMaxBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    .line 2037
    :cond_9
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public final getMergedInsetsState()Landroid/view/InsetsState;
    .registers 4

    .line 2098
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v0, v0, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    if-eqz v0, :cond_13

    .line 2099
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v0

    goto :goto_15

    .line 2100
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAboveInsetsState:Landroid/view/InsetsState;

    .line 2101
    :goto_15
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mMergedLocalInsetsSources:Landroid/util/SparseArray;

    if-nez v1, :cond_1a

    return-object v0

    .line 2105
    :cond_1a
    new-instance v1, Landroid/view/InsetsState;

    invoke-direct {v1, v0}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    const/4 v0, 0x0

    .line 2106
    :goto_20
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mMergedLocalInsetsSources:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_36

    .line 2107
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mMergedLocalInsetsSources:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSource;

    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_36
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 5280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5281
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOnBackInvokedCallbackInfo()Landroid/window/OnBackInvokedCallbackInfo;
    .registers 1

    .line 1230
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mOnBackInvokedCallbackInfo:Landroid/window/OnBackInvokedCallbackInfo;

    return-object p0
.end method

.method public getOrientationChanging()Z
    .registers 3

    .line 1951
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1952
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getLastReportedConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_22

    :cond_18
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-nez v0, :cond_22

    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mOrientationChangeTimedOut:Z

    if-nez p0, :cond_22

    const/4 p0, 0x1

    goto :goto_23

    :cond_22
    const/4 p0, 0x0

    :goto_23
    return p0
.end method

.method public getOwningPackage()Ljava/lang/String;
    .registers 1

    .line 1585
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object p0, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public getOwningUid()I
    .registers 1

    .line 1580
    iget p0, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    return p0
.end method

.method public getParentFrame()Landroid/graphics/Rect;
    .registers 1

    .line 1760
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object p0, p0, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getParentWindow()Lcom/android/server/wm/WindowState;
    .registers 2

    .line 5327
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-eqz v0, :cond_b

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowState;

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public getPid()I
    .registers 1

    .line 2169
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget p0, p0, Lcom/android/server/wm/Session;->mPid:I

    return p0
.end method

.method public final getProcessGlobalConfiguration()Landroid/content/res/Configuration;
    .registers 3

    .line 3738
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v1, :cond_21

    if-gez v0, :cond_b

    goto :goto_21

    .line 3746
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 3747
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    goto :goto_16

    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    :goto_16
    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    .line 3748
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 3749
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfigurationForPid(I)Landroid/content/res/Configuration;

    move-result-object p0

    return-object p0

    .line 3741
    :cond_21
    :goto_21
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfigurationForPid(I)Landroid/content/res/Configuration;

    move-result-object p0

    return-object p0
.end method

.method public getProtoFieldId()J
    .registers 3

    const-wide v0, 0x10b00000008L

    return-wide v0
.end method

.method public getRectsInScreenSpace(Ljava/util/List;Landroid/graphics/Matrix;[F)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;",
            "Landroid/graphics/Matrix;",
            "[F)",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 1169
    invoke-virtual {p0, p3, p2}, Lcom/android/server/wm/WindowState;->getTransformationMatrix([FLandroid/graphics/Matrix;)V

    .line 1171
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1172
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    .line 1174
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 1175
    invoke-virtual {p3, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1176
    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1177
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1178
    invoke-virtual {p3, v0}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 1179
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_2f
    return-object p0
.end method

.method public getRelativeFrame()Landroid/graphics/Rect;
    .registers 1

    .line 1748
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object p0, p0, Lcom/android/server/wm/WindowFrames;->mRelFrame:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getReplacingWindow()Lcom/android/server/wm/WindowState;
    .registers 3

    .line 5465
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    if-eqz v0, :cond_d

    return-object p0

    .line 5468
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_15
    if-ltz v0, :cond_29

    .line 5469
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 5470
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getReplacingWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_26

    return-object v1

    :cond_26
    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    :cond_29
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRequestedVisibilities()Landroid/view/InsetsVisibilities;
    .registers 1

    .line 990
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;

    return-object p0
.end method

.method public getRequestedVisibility(I)Z
    .registers 5

    .line 971
    invoke-static {p1}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_12

    .line 972
    invoke-static {p0}, Lcom/android/server/wm/PolicyControl;->shouldApplyImmersiveStatus(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_12

    return v2

    .line 975
    :cond_12
    invoke-static {p1}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    if-ne v0, v1, :cond_23

    .line 976
    invoke-static {p0}, Lcom/android/server/wm/PolicyControl;->shouldApplyImmersiveNavigation(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_23

    return v2

    .line 981
    :cond_23
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;

    invoke-virtual {p0, p1}, Landroid/view/InsetsVisibilities;->getVisibility(I)Z

    move-result p0

    return p0
.end method

.method public getResizeMode()I
    .registers 1

    .line 4989
    iget p0, p0, Lcom/android/server/wm/WindowState;->mResizeMode:I

    return p0
.end method

.method public final getRestrictionPolicy()Lcom/samsung/android/knox/localservice/RestrictionPolicyInternal;
    .registers 2

    .line 7536
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mRestrictionPolicy:Lcom/samsung/android/knox/localservice/RestrictionPolicyInternal;

    if-nez v0, :cond_e

    .line 7537
    const-class v0, Lcom/samsung/android/knox/localservice/RestrictionPolicyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/localservice/RestrictionPolicyInternal;

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mRestrictionPolicy:Lcom/samsung/android/knox/localservice/RestrictionPolicyInternal;

    .line 7539
    :cond_e
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mRestrictionPolicy:Lcom/samsung/android/knox/localservice/RestrictionPolicyInternal;

    return-object p0
.end method

.method public getRootTask()Lcom/android/server/wm/Task;
    .registers 3

    .line 2186
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2188
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0

    .line 2192
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2194
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    if-lt p0, v1, :cond_22

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/Task;

    move-result-object p0

    goto :goto_23

    :cond_22
    const/4 p0, 0x0

    :goto_23
    return-object p0
.end method

.method public final getRootTaskId()I
    .registers 1

    .line 4869
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, -0x1

    return p0

    .line 4873
    :cond_8
    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    return p0
.end method

.method public getRotationAnimationHint()I
    .registers 1

    .line 5479
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_7

    .line 5480
    iget p0, p0, Lcom/android/server/wm/ActivityRecord;->mRotationAnimationHint:I

    return p0

    :cond_7
    const/4 p0, -0x1

    return p0
.end method

.method public getSession()Landroid/view/SurfaceSession;
    .registers 2

    .line 6355
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v0, v0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    if-eqz v0, :cond_7

    return-object v0

    .line 6358
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSession()Landroid/view/SurfaceSession;

    move-result-object p0

    return-object p0
.end method

.method public getSurfaceTouchableRegion(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/view/WindowManager$LayoutParams;)V
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_c

    .line 3474
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_c

    move v2, v0

    goto :goto_d

    :cond_c
    move v2, v1

    .line 3476
    :goto_d
    invoke-virtual {p3}, Landroid/view/WindowManager$LayoutParams;->isModal()Z

    move-result p3

    if-eqz p3, :cond_45

    .line 3478
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_20

    .line 3480
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->updateRegionForModalActivityWindow(Landroid/graphics/Region;)V

    if-eqz v2, :cond_3c

    .line 3483
    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/WindowState;->updateRegionForModalActivityWindow(Landroid/graphics/Region;Z)V

    goto :goto_3c

    .line 3490
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    .line 3491
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 3492
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    neg-int v4, v0

    neg-int v5, v3

    add-int/2addr v0, v0

    add-int/2addr v3, v3

    .line 3493
    invoke-virtual {p1, v4, v5, v0, v3}, Landroid/graphics/Region;->set(IIII)Z

    .line 3495
    :cond_3c
    :goto_3c
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->subtractTouchExcludeRegionIfNeeded(Landroid/graphics/Region;)V

    if-eqz v2, :cond_48

    .line 3498
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowState;->subtractTouchExcludeRegionIfNeeded(Landroid/graphics/Region;)V

    goto :goto_48

    .line 3504
    :cond_45
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 3508
    :cond_48
    :goto_48
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 3509
    iget v3, v0, Landroid/graphics/Rect;->left:I

    if-nez v3, :cond_54

    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-eqz v4, :cond_66

    :cond_54
    neg-int v3, v3

    .line 3510
    iget v4, v0, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Region;->translate(II)V

    if-eqz v2, :cond_66

    .line 3513
    iget v3, v0, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Region;->translate(II)V

    :cond_66
    if-eqz p3, :cond_8f

    .line 3517
    iget p3, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    const/4 v3, 0x3

    if-ne p3, v3, :cond_8f

    .line 3521
    iget-object p3, p0, Lcom/android/server/wm/WindowState;->mTmpRegion:Landroid/graphics/Region;

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p3, v1, v1, v3, v0}, Landroid/graphics/Region;->set(IIII)Z

    .line 3522
    iget-object p3, p0, Lcom/android/server/wm/WindowState;->mTmpRegion:Landroid/graphics/Region;

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 3523
    iget-object p3, p0, Lcom/android/server/wm/WindowState;->mTmpRegion:Landroid/graphics/Region;

    sget-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    if-eqz v2, :cond_8f

    .line 3526
    iget-object p3, p0, Lcom/android/server/wm/WindowState;->mTmpRegion:Landroid/graphics/Region;

    sget-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p2, p3, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 3535
    :cond_8f
    iget p2, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    const/high16 p3, 0x3f800000    # 1.0f

    cmpl-float p3, p2, p3

    if-eqz p3, :cond_9a

    .line 3536
    invoke-virtual {p1, p2}, Landroid/graphics/Region;->scale(F)V

    .line 3540
    :cond_9a
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->DSS_ENABLED:Z

    if-eqz p2, :cond_a7

    iget-boolean p2, p0, Lcom/android/server/wm/WindowState;->mDssEnabled:Z

    if-eqz p2, :cond_a7

    .line 3541
    iget p0, p0, Lcom/android/server/wm/WindowState;->mDssScale:F

    invoke-virtual {p1, p0}, Landroid/graphics/Region;->scale(F)V

    :cond_a7
    return-void
.end method

.method public getSurfaceTouchableRegion(Landroid/graphics/Region;Landroid/view/WindowManager$LayoutParams;)V
    .registers 4

    const/4 v0, 0x0

    .line 3469
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wm/WindowState;->getSurfaceTouchableRegion(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public getSystemGestureExclusion()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 1093
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mExclusionRects:Ljava/util/List;

    return-object p0
.end method

.method public getTapExcludeRegion(Landroid/graphics/Region;)V
    .registers 4

    .line 6899
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6900
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 6902
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTapExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {p1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 6903
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 6907
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object p0, p0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Region;->translate(II)V

    return-void
.end method

.method public getTask()Lcom/android/server/wm/Task;
    .registers 1

    .line 2178
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public getTaskFragment()Lcom/android/server/wm/TaskFragment;
    .registers 1

    .line 2182
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public getTopParentWindow()Lcom/android/server/wm/WindowState;
    .registers 3

    :goto_0
    move-object v0, p0

    :cond_1
    if-eqz p0, :cond_e

    .line 5334
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-eqz v1, :cond_e

    .line 5335
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_e
    return-object v0
.end method

.method public getTouchOcclusionMode()I
    .registers 4

    .line 1496
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    return v1

    :cond_c
    const/4 v0, 0x3

    const/4 v2, -0x1

    .line 1499
    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    move-result p0

    if-eqz p0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p0, 0x0

    return p0

    :cond_1d
    :goto_1d
    return v1
.end method

.method public getTouchableRegion(Landroid/graphics/Region;)V
    .registers 5

    .line 4467
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 4468
    iget v1, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2c

    const/4 v2, 0x2

    if-eq v1, v2, :cond_26

    const/4 v2, 0x3

    if-eq v1, v2, :cond_13

    .line 4471
    invoke-virtual {p1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    goto :goto_31

    .line 4480
    :cond_13
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {p1, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 4481
    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-nez v1, :cond_20

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-eqz v2, :cond_31

    .line 4482
    :cond_20
    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Region;->translate(II)V

    goto :goto_31

    .line 4477
    :cond_26
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    invoke-static {p1, v0, v1}, Lcom/android/server/wm/WindowState;->applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_31

    .line 4474
    :cond_2c
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-static {p1, v0, v1}, Lcom/android/server/wm/WindowState;->applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 4487
    :cond_31
    :goto_31
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->cropRegionToRootTaskBoundsIfNeeded(Landroid/graphics/Region;)V

    .line 4488
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->subtractTouchExcludeRegionIfNeeded(Landroid/graphics/Region;)V

    return-void
.end method

.method public getTransformationMatrix([FLandroid/graphics/Matrix;)V
    .registers 9

    .line 6232
    iget v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    const/4 v1, 0x0

    aput v0, p1, v1

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 6233
    aput v2, p1, v1

    const/4 v1, 0x1

    .line 6234
    aput v2, p1, v1

    const/4 v1, 0x4

    .line 6235
    aput v0, p1, v1

    .line 6236
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpPoint:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowState;->transformSurfaceInsetsPosition(Landroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 6237
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mTmpPoint:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v4

    .line 6238
    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v0, v3

    .line 6241
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    .line 6242
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result v4

    if-eqz v4, :cond_49

    .line 6243
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    .line 6244
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v3, v3, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object p0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v5, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 6245
    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, p0

    add-int/2addr v0, v3

    goto :goto_55

    :cond_49
    if-eqz v3, :cond_55

    .line 6247
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 6248
    iget v3, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    .line 6249
    iget p0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p0

    :cond_55
    :goto_55
    const/4 p0, 0x2

    int-to-float v1, v1

    .line 6251
    aput v1, p1, p0

    const/4 p0, 0x5

    int-to-float v0, v0

    .line 6252
    aput v0, p1, p0

    const/4 p0, 0x6

    .line 6253
    aput v2, p1, p0

    const/4 p0, 0x7

    .line 6254
    aput v2, p1, p0

    const/16 p0, 0x8

    const/high16 v0, 0x3f800000    # 1.0f

    .line 6255
    aput v0, p1, p0

    .line 6256
    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->setValues([F)V

    return-void
.end method

.method public getTspDeadzone()Landroid/os/Bundle;
    .registers 1

    .line 7337
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mTspDeadzone:Landroid/os/Bundle;

    return-object p0
.end method

.method public getUid()I
    .registers 1

    .line 2174
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget p0, p0, Lcom/android/server/wm/Session;->mUid:I

    return p0
.end method

.method public getVisibleBounds(Landroid/graphics/Rect;)V
    .registers 10

    .line 2225
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 2226
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->cropWindowsToRootTaskBounds()Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    move v2, v1

    .line 2227
    :goto_10
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 2228
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    if-eqz v2, :cond_25

    .line 2230
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 2232
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    :cond_25
    move v1, v2

    .line 2238
    :cond_26
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2239
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2240
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v5

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object v3, p1

    .line 2239
    invoke-virtual/range {v2 .. v7}, Landroid/view/InsetsState;->calculateVisibleInsets(Landroid/graphics/Rect;IIII)Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    if-eqz v1, :cond_4e

    .line 2242
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    :cond_4e
    return-void
.end method

.method public getWindow()Lcom/android/server/wm/WindowState;
    .registers 1

    return-object p0
.end method

.method public getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/WindowState;",
            ">;)",
            "Lcom/android/server/wm/WindowState;"
        }
    .end annotation

    .line 5801
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 5802
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_11

    :cond_10
    move-object p0, v1

    :goto_11
    return-object p0

    .line 5808
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 5809
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    :goto_22
    if-ltz v0, :cond_3d

    .line 5811
    iget v3, v2, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-ltz v3, :cond_3d

    .line 5812
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    return-object v2

    :cond_2f
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_34

    goto :goto_3d

    .line 5819
    :cond_34
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    goto :goto_22

    .line 5822
    :cond_3d
    :goto_3d
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    return-object p0

    :cond_44
    :goto_44
    if-ltz v0, :cond_5b

    .line 5827
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    return-object v2

    :cond_4d
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_52

    goto :goto_5b

    .line 5834
    :cond_52
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    goto :goto_44

    :cond_5b
    :goto_5b
    return-object v1
.end method

.method public getWindowFrames()Lcom/android/server/wm/WindowFrames;
    .registers 1

    .line 6954
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    return-object p0
.end method

.method public getWindowInfo()Landroid/view/WindowInfo;
    .registers 8

    .line 5572
    invoke-static {}, Landroid/view/WindowInfo;->obtain()Landroid/view/WindowInfo;

    move-result-object v0

    .line 5573
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    iput v1, v0, Landroid/view/WindowInfo;->displayId:I

    .line 5574
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v1, v0, Landroid/view/WindowInfo;->type:I

    .line 5575
    iget v1, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    iput v1, v0, Landroid/view/WindowInfo;->layer:I

    .line 5576
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    .line 5577
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_24

    .line 5578
    iget-object v1, v1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    .line 5580
    :cond_24
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    iput-object v2, v0, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    .line 5583
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x3e8

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v1, v3, :cond_38

    const/16 v3, 0x7cf

    if-gt v1, v3, :cond_38

    move v1, v4

    goto :goto_39

    :cond_38
    move v1, v5

    .line 5587
    :goto_39
    iget v3, v0, Landroid/view/WindowInfo;->type:I

    const/16 v6, 0x7f0

    if-ne v3, v6, :cond_41

    move v3, v4

    goto :goto_42

    :cond_41
    move v3, v5

    .line 5589
    :goto_42
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5b

    if-nez v1, :cond_4c

    if-eqz v3, :cond_5b

    .line 5590
    :cond_4c
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 5591
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_59

    const/4 v1, 0x0

    :cond_59
    iput-object v1, v0, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    .line 5593
    :cond_5b
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v1, v1, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    iput-wide v1, v0, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    .line 5594
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v1

    iput-boolean v1, v0, Landroid/view/WindowInfo;->focused:Z

    .line 5595
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_75

    .line 5596
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_75

    move v2, v4

    goto :goto_76

    :cond_75
    move v2, v5

    :goto_76
    iput-boolean v2, v0, Landroid/view/WindowInfo;->inPictureInPicture:Z

    if-nez v1, :cond_7c

    const/4 v1, -0x1

    goto :goto_7e

    .line 5597
    :cond_7c
    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    :goto_7e
    iput v1, v0, Landroid/view/WindowInfo;->taskId:I

    .line 5598
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_8a

    goto :goto_8b

    :cond_8a
    move v4, v5

    :goto_8b
    iput-boolean v4, v0, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    .line 5601
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-eqz v1, :cond_9d

    .line 5602
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    .line 5605
    :cond_9d
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_c8

    .line 5607
    iget-object v2, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-nez v2, :cond_b0

    .line 5608
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    :cond_b0
    :goto_b0
    if-ge v5, v1, :cond_c8

    .line 5611
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 5612
    iget-object v3, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_b0

    :cond_c8
    return-object v0
.end method

.method public getWindowState()Lcom/android/server/wm/WindowState;
    .registers 1

    return-object p0
.end method

.method public getWindowTag()Ljava/lang/CharSequence;
    .registers 3

    .line 5285
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 5286
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gtz v1, :cond_12

    .line 5287
    :cond_e
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    :cond_12
    return-object v0
.end method

.method public getWindowType()I
    .registers 1

    .line 7517
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    return p0
.end method

.method public handleCompleteDeferredRemoval()Z
    .registers 3

    .line 6011
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-eqz v0, :cond_12

    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/WindowState;->isSelfAnimating(II)Z

    move-result v0

    if-nez v0, :cond_12

    .line 6012
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    .line 6013
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    .line 6015
    :cond_12
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->handleCompleteDeferredRemoval()Z

    move-result p0

    return p0
.end method

.method public handleTapOutsideFocusInsideSelf()V
    .registers 5

    .line 7559
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 7560
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isOnTop()Z

    move-result v1

    if-nez v1, :cond_15

    .line 7568
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    const v2, 0x7fffffff

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 7572
    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/WindowManagerService;->handleTaskFocusChange(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public handleTapOutsideFocusOutsideSelf()V
    .registers 1

    return-void
.end method

.method public handleWindowMovedIfNeeded()V
    .registers 7

    .line 2747
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->hasMoved()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2748
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->shouldNotifyMoved()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 2754
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 2755
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 2757
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->canPlayMoveAnimation()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 2758
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->shouldApplyMoveAnimation()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 2759
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/WindowState;->startMoveAnimation(II)V

    .line 2763
    :cond_24
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_BOUNDS_COMPAT_ALIGNMENT_ANIMATION:Z

    if-eqz v2, :cond_2f

    .line 2764
    invoke-static {p0}, Lcom/android/server/wm/BoundsCompatAlignmentController;->shouldPlayMoveAnimation(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    if-eqz v2, :cond_2f

    return-void

    .line 2769
    :cond_2f
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v2}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4a

    .line 2770
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    const/4 v4, 0x1

    new-array v4, v4, [I

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v5

    aput v5, v4, v3

    invoke-virtual {v2, v4}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMoved([I)V

    .line 2774
    :cond_4a
    :try_start_4a
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2, v1, v0}, Landroid/view/IWindow;->moved(II)V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_4f} :catch_4f

    .line 2777
    :catch_4f
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mMovedByResize:Z

    .line 2779
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mMovedByIme:Z

    if-eqz v0, :cond_57

    .line 2780
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mMovedByIme:Z

    :cond_57
    return-void
.end method

.method public hasAppShownWindows()Z
    .registers 2

    .line 2260
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    if-nez v0, :cond_c

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->startingDisplayed:Z

    if-eqz p0, :cond_e

    :cond_c
    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public hasCompatScale()Z
    .registers 3

    .line 1535
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget p0, p0, Lcom/android/server/wm/WindowState;->mOverrideScale:F

    invoke-static {v0, v1, p0}, Lcom/android/server/wm/WindowState;->hasCompatScale(Landroid/view/WindowManager$LayoutParams;Lcom/android/server/wm/WindowToken;F)Z

    move-result p0

    return p0
.end method

.method public hasContentToDisplay()Z
    .registers 2

    .line 2266
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v0, :cond_23

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v0

    if-eqz v0, :cond_23

    iget v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-eqz v0, :cond_21

    const/4 v0, 0x3

    .line 2267
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2268
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-nez v0, :cond_23

    :cond_21
    const/4 p0, 0x1

    return p0

    .line 2272
    :cond_23
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->hasContentToDisplay()Z

    move-result p0

    return p0
.end method

.method public hasDrawn()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3907
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public final hasMoved()Z
    .registers 5

    .line 2835
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowFrames;->hasContentChanged()Z

    move-result v0

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mMovedByResize:Z

    if-eqz v0, :cond_48

    :cond_10
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v0, Lcom/android/server/wm/WindowFrames;->mRelFrame:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mLastRelFrame:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-ne v2, v3, :cond_30

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-ne v1, v0, :cond_30

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_BOUNDS_COMPAT_ALIGNMENT_ANIMATION:Z

    if-eqz v0, :cond_48

    .line 2841
    invoke-static {p0}, Lcom/android/server/wm/BoundsCompatAlignmentController;->shouldPlayMoveAnimation(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_48

    :cond_30
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-eqz v0, :cond_3e

    .line 2843
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->hasMoved()Z

    move-result v0

    if-nez v0, :cond_48

    :cond_3e
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 2844
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result p0

    if-nez p0, :cond_48

    const/4 p0, 0x1

    goto :goto_49

    :cond_48
    const/4 p0, 0x0

    :goto_49
    return p0
.end method

.method public hasTapExcludeRegion()Z
    .registers 1

    .line 6911
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mTapExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {p0}, Landroid/graphics/Region;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public hasWallpaper()Z
    .registers 3

    .line 7305
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->hasWallpaperForLetterboxBackground()Z

    move-result p0

    if-eqz p0, :cond_10

    goto :goto_12

    :cond_10
    const/4 p0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 p0, 0x1

    :goto_13
    return p0
.end method

.method public hasWallpaperForLetterboxBackground()Z
    .registers 1

    .line 7309
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasWallpaperBackgroudForLetterbox()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public hide(ZZ)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    .line 3974
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->okToAnimate()Z

    move-result v1

    if-nez v1, :cond_c

    move p1, v0

    :cond_c
    if-eqz p1, :cond_11

    .line 3979
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    goto :goto_15

    :cond_11
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isLegacyPolicyVisibility()Z

    move-result v1

    :goto_15
    if-nez v1, :cond_18

    return v0

    :cond_18
    if-eqz p1, :cond_28

    .line 3985
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    const/4 v1, 0x3

    .line 3986
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result v1

    if-nez v1, :cond_28

    move p1, v0

    .line 3990
    :cond_28
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    .line 3991
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v1

    const/4 v2, 0x1

    if-nez p1, :cond_66

    .line 3993
    sget-boolean p1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz p1, :cond_4b

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Policy visibility false: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "WindowManager"

    invoke-static {v3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3994
    :cond_4b
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowState;->clearPolicyVisibilityFlag(I)V

    .line 3998
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    if-eqz v1, :cond_66

    .line 4000
    sget-boolean p1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    if-eqz p1, :cond_62

    sget-object p1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x4cd07ca6    # 1.09307184E8f

    const/4 v4, 0x0

    invoke-static {p1, v3, v0, v4, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 4002
    :cond_62
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v2, p1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    :cond_66
    if-eqz p2, :cond_6d

    .line 4006
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    :cond_6d
    if-eqz v1, :cond_74

    .line 4009
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    :cond_74
    return v2
.end method

.method public hideInsets(IZ)V
    .registers 3

    .line 4827
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {p0, p1, p2}, Landroid/view/IWindow;->hideInsets(IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p0

    const-string p1, "WindowManager"

    const-string p2, "Failed to deliver showInsets"

    .line 4829
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public hideNonSystemOverlayWindowsWhenVisible()Z
    .registers 3

    .line 5319
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_11

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-boolean p0, p0, Lcom/android/server/wm/Session;->mCanHideNonSystemOverlayWindows:Z

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method public hidePermanentlyLw()V
    .registers 2

    .line 4141
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    .line 4142
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    .line 4143
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    :cond_a
    return-void
.end method

.method public immediatelyNotifyBlastSync()V
    .registers 3

    const/4 v0, 0x0

    const v1, 0x7fffffff

    .line 7283
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowState;->finishDrawing(Landroid/view/SurfaceControl$Transaction;I)Z

    .line 7284
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x40

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 7285
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->useBLASTSync()Z

    return-void
.end method

.method public inTransitionSelfOrParent()Z
    .registers 3

    .line 5870
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x3

    const/16 v1, 0x9

    .line 5871
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result p0

    return p0

    .line 5874
    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->inTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result p0

    return p0
.end method

.method public initAppOpsState()V
    .registers 8

    .line 4095
    iget v1, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_27

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    if-nez v0, :cond_a

    goto :goto_27

    .line 4102
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v2

    .line 4103
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "init-default-visibility"

    .line 4102
    invoke-virtual/range {v0 .. v6}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_27

    const/4 v1, 0x3

    if-eq v0, v1, :cond_27

    const/4 v0, 0x0

    .line 4106
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->setAppOpVisibilityLw(Z)V

    :cond_27
    :goto_27
    return-void
.end method

.method public final initExclusionRestrictions()V
    .registers 4

    .line 4377
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 4378
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mLastExclusionLogUptimeMillis:[J

    const/4 v2, 0x0

    aput-wide v0, p0, v2

    const/4 v2, 0x1

    .line 4379
    aput-wide v0, p0, v2

    return-void
.end method

.method public isAlive()Z
    .registers 1

    .line 4172
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {p0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result p0

    return p0
.end method

.method public isAllowedSeamlessRotation()Z
    .registers 1

    .line 7940
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_a

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->mIsAllowedSeamlessRotation:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isAnimatingLw()Z
    .registers 2

    const/4 v0, 0x3

    .line 2552
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result p0

    return p0
.end method

.method public isChildWindow()Z
    .registers 1

    .line 5309
    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    return p0
.end method

.method public isClientLocal()Z
    .registers 1

    .line 4759
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    instance-of p0, p0, Landroid/view/IWindow$Stub;

    return p0
.end method

.method public isClosing()Z
    .registers 2

    .line 4176
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v0, :cond_11

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isClosingOrEnteringPip()Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method public isDexCompatModeLw()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isDimming()Z
    .registers 1

    .line 6809
    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mIsDimming:Z

    return p0
.end method

.method public isDisableTransientBars()Z
    .registers 1

    .line 7926
    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mDisableTransientBars:Z

    return p0
.end method

.method public isDisplayed()Z
    .registers 3

    .line 2541
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2542
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 2543
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v1

    if-nez v1, :cond_1a

    if-eqz v0, :cond_21

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v0, :cond_21

    :cond_1a
    const/4 v0, 0x3

    .line 2544
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result p0

    if-eqz p0, :cond_23

    :cond_21
    const/4 p0, 0x1

    goto :goto_24

    :cond_23
    const/4 p0, 0x0

    :goto_24
    return p0
.end method

.method public isDockedResizing()Z
    .registers 3

    .line 5039
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getResizeMode()I

    move-result v0

    if-eq v0, v1, :cond_1d

    .line 5040
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDockedResizing()Z

    move-result p0

    if-eqz p0, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :cond_1d
    :goto_1d
    return v1
.end method

.method public isDragResizeChanged()Z
    .registers 2

    .line 4961
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->computeDragResizing()Z

    move-result p0

    if-eq v0, p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isDragResizing()Z
    .registers 1

    .line 5035
    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    return p0
.end method

.method public final isDragResizingChangeReported()Z
    .registers 1

    .line 4976
    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mDragResizingChangeReported:Z

    return p0
.end method

.method public isDrawFinishedLw()Z
    .registers 2

    .line 2576
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v0, :cond_17

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_15

    const/4 v0, 0x3

    if-eq p0, v0, :cond_15

    const/4 v0, 0x4

    if-ne p0, v0, :cond_17

    :cond_15
    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method

.method public isDrawn()Z
    .registers 2

    .line 2588
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v0, :cond_14

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_12

    const/4 v0, 0x4

    if-ne p0, v0, :cond_14

    :cond_12
    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public isDreamWindow()Z
    .registers 2

    .line 2421
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_d

    .line 2422
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public isEavesdropDragEvent()Z
    .registers 3

    .line 7648
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_11

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->multiwindowFlags:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method public isEmbedded()Z
    .registers 1

    .line 7909
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isEmbedded()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isExitAnimationRunningSelfOrChild()Z
    .registers 3

    const/4 v0, 0x4

    const/16 v1, 0x10

    .line 5862
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result p0

    return p0
.end method

.method public isExitAnimationRunningSelfOrParent()Z
    .registers 3

    .line 5857
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inTransitionSelfOrParent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    const/16 v0, 0x10

    .line 5858
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result p0

    if-eqz p0, :cond_10

    :cond_f
    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method public isFocused()Z
    .registers 2

    .line 4894
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-ne v0, p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isFullscreenEmbedded()Z
    .registers 1

    .line 7913
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isFullscreenEmbedded()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isFullyTransparent()Z
    .registers 2

    .line 2513
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public isFullyTransparentBarAllowed(Landroid/graphics/Rect;)Z
    .registers 2

    .line 4957
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_d

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->isFullyTransparentBarAllowed(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_b

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

.method public isGoneForLayout()Z
    .registers 4

    .line 2557
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2558
    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_37

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-eqz v1, :cond_37

    if-nez v0, :cond_1a

    .line 2564
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->wouldBeVisibleIfPolicyIgnored()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v1

    if-eqz v1, :cond_37

    :cond_1a
    if-eqz v0, :cond_20

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v0, :cond_37

    .line 2566
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowGoneForLayout()Z

    move-result v0

    if-nez v0, :cond_37

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v0, :cond_30

    .line 2567
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v0

    if-eqz v0, :cond_37

    :cond_30
    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz p0, :cond_35

    goto :goto_37

    :cond_35
    const/4 p0, 0x0

    goto :goto_38

    :cond_37
    :goto_37
    const/4 p0, 0x1

    :goto_38
    return p0
.end method

.method public isImeInputTarget()Z
    .registers 2

    .line 6930
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getImeInputTarget()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-ne v0, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isImeLayeringTarget()Z
    .registers 3

    .line 6915
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v0

    if-ne v0, p0, :cond_c

    const/4 v1, 0x1

    :cond_c
    return v1
.end method

.method public isImplicitlyExcludingAllSystemGestures()Z
    .registers 5

    .line 1111
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, v0, Landroid/view/InsetsFlags;->behavior:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_13

    .line 1113
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowState;->getRequestedVisibility(I)Z

    move-result v0

    if-nez v0, :cond_13

    move v0, v2

    goto :goto_14

    :cond_13
    move v0, v1

    :goto_14
    if-eqz v0, :cond_29

    .line 1114
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mConstants:Lcom/android/server/wm/WindowManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExcludedByPreQStickyImmersive:Z

    if-eqz v0, :cond_29

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_29

    iget p0, p0, Lcom/android/server/wm/ActivityRecord;->mTargetSdk:I

    const/16 v0, 0x1d

    if-ge p0, v0, :cond_29

    move v1, v2

    :cond_29
    return v1
.end method

.method public isInBubbleMode()Z
    .registers 3

    .line 6946
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 6947
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1d

    .line 6948
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result p0

    if-nez p0, :cond_1d

    const/4 p0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    return p0
.end method

.method public isInSplitActivityMode()Z
    .registers 1

    .line 7888
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isInSplitActivityMode()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isInputMethodClientFocus(II)Z
    .registers 3

    .line 7604
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->isInputMethodClientFocus(II)Z

    move-result p0

    return p0
.end method

.method public isInteresting()Z
    .registers 3

    .line 2476
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_18

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAppDied:Z

    if-nez v1, :cond_18

    .line 2477
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isFreezingScreen()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v0, :cond_18

    :cond_12
    iget p0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public isLaidOut()Z
    .registers 2

    .line 6152
    iget p0, p0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public isLastConfigReportedToClient()Z
    .registers 1

    .line 2897
    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mLastConfigReportedToClient:Z

    return p0
.end method

.method public isLayoutWithIme()Z
    .registers 1

    .line 7875
    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mLayoutWithIme:Z

    return p0
.end method

.method public final isLegacyPolicyVisibility()Z
    .registers 2

    .line 2327
    iget p0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isLetterboxedForDisplayCutout()Z
    .registers 5

    .line 4915
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 4920
    :cond_6
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX:Z

    if-eqz v2, :cond_17

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    .line 4921
    invoke-virtual {v0}, Lcom/android/server/wm/BoundsCompatRecord;->getController()Lcom/android/server/wm/BoundsCompatController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wm/BoundsCompatController;->isCustomLetterboxEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    return v1

    .line 4925
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowFrames;->parentFrameWasClippedByDisplayCutout()Z

    move-result v0

    if-nez v0, :cond_20

    return v1

    .line 4929
    :cond_20
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_28

    return v1

    .line 4933
    :cond_28
    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v0

    if-nez v0, :cond_2f

    return v1

    .line 4939
    :cond_2f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->frameCoversEntireAppTokenBounds()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isMultiWindowHandler()Z
    .registers 2

    .line 7802
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->multiwindowFlags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isMultiWindowMenuPopup()Z
    .registers 1

    .line 7806
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->multiwindowFlags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isObscuringDisplay()Z
    .registers 4

    .line 2865
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 2866
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_18

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->fillsParent()Z

    move-result v0

    if-nez v0, :cond_18

    return v1

    .line 2869
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isOpaqueDrawn()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->fillsDisplay()Z

    move-result p0

    if-eqz p0, :cond_25

    const/4 v1, 0x1

    :cond_25
    return v1
.end method

.method public isOnScreen()Z
    .registers 6

    .line 2405
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4d

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v0, :cond_4d

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_4d

    .line 2408
    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v0, :cond_2a

    .line 2410
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v4

    if-nez v4, :cond_22

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-nez v0, :cond_28

    .line 2411
    :cond_22
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result p0

    if-eqz p0, :cond_29

    :cond_28
    move v1, v3

    :cond_29
    return v1

    .line 2413
    :cond_2a
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 2415
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result p0

    if-nez p0, :cond_3f

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperWindowToken;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_3f

    move v1, v3

    :cond_3f
    return v1

    .line 2417
    :cond_40
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result p0

    if-eqz p0, :cond_4d

    :cond_4c
    move v1, v3

    :cond_4d
    :goto_4d
    return v1
.end method

.method public final isOnVirtualDisplay()Z
    .registers 2

    .line 4350
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Landroid/view/Display;->getType()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public final isOpaqueDrawn()Z
    .registers 6

    .line 2600
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    move v0, v2

    :goto_d
    if-nez v0, :cond_16

    .line 2601
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_20

    :cond_16
    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 2602
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2603
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result p0

    if-nez p0, :cond_2e

    goto :goto_2f

    :cond_2e
    move v1, v2

    :goto_2f
    return v1
.end method

.method public final isParentWindowGoneForLayout()Z
    .registers 1

    .line 5352
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 5353
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isGoneForLayout()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isParentWindowHidden()Z
    .registers 1

    .line 5347
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 5348
    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mHidden:Z

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isPopOver()Z
    .registers 1

    .line 7762
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_e

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    invoke-virtual {p0}, Lcom/android/server/wm/PopOverState;->isActivated()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isPotentialDragTarget(Z)Z
    .registers 2

    if-nez p1, :cond_8

    .line 2377
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result p1

    if-eqz p1, :cond_16

    :cond_8
    iget-boolean p1, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez p1, :cond_16

    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-eqz p1, :cond_16

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandleWrapper;

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public isReadyForDisplay()Z
    .registers 5

    .line 2486
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_14

    return v1

    .line 2489
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_29

    iget v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 2490
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_29

    move v0, v2

    goto :goto_2a

    :cond_29
    move v0, v1

    .line 2491
    :goto_2a
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v3, :cond_42

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v3

    if-eqz v3, :cond_42

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v3, :cond_42

    if-nez v0, :cond_41

    const/4 v0, 0x3

    .line 2492
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result p0

    if-eqz p0, :cond_42

    :cond_41
    move v1, v2

    :cond_42
    return v1
.end method

.method public isReadyToDispatchInsetsState()Z
    .registers 2

    .line 1024
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->shouldCheckTokenVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1025
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleRequested()Z

    move-result v0

    goto :goto_f

    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    :goto_f
    if-eqz v0, :cond_17

    .line 1026
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mFrozenInsetsState:Landroid/view/InsetsState;

    if-nez p0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method

.method public isRtl()Z
    .registers 2

    .line 6064
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public final isScreenCaptureDisabledByMdm()Z
    .registers 5

    const/4 v0, 0x0

    .line 2446
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getRestrictionPolicy()Lcom/samsung/android/knox/localservice/RestrictionPolicyInternal;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mRestrictionPolicy:Lcom/samsung/android/knox/localservice/RestrictionPolicyInternal;

    if-eqz v1, :cond_34

    .line 2447
    iget v2, p0, Lcom/android/server/wm/WindowState;->mShowUserId:I

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/knox/localservice/RestrictionPolicyInternal;->isScreenCaptureEnabledEx(IZ)Z

    move-result v1

    if-nez v1, :cond_34

    const-string v1, "WindowManager"

    .line 2449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Screen Capture is disabled by mdm for user("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/WindowState;->mShowUserId:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2e} :catch_30

    const/4 p0, 0x1

    return p0

    :catch_30
    move-exception p0

    .line 2453
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_34
    return v0
.end method

.method public isSecureLocked()Z
    .registers 3

    .line 2426
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x2000

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 2431
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isScreenCaptureDisabledByMdm()Z

    move-result v0

    if-eqz v0, :cond_11

    return v1

    .line 2434
    :cond_11
    invoke-static {}, Landroid/app/admin/DevicePolicyCache;->getInstance()Landroid/app/admin/DevicePolicyCache;

    move-result-object v0

    if-nez v0, :cond_19

    const/4 p0, 0x0

    return p0

    .line 2440
    :cond_19
    invoke-static {}, Landroid/app/admin/DevicePolicyCache;->getInstance()Landroid/app/admin/DevicePolicyCache;

    move-result-object v0

    iget p0, p0, Lcom/android/server/wm/WindowState;->mShowUserId:I

    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyCache;->isScreenCaptureAllowed(I)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method public isSelfAnimating(II)Z
    .registers 4

    .line 6170
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    if-eqz v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 6173
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->isSelfAnimating(II)Z

    move-result p0

    return p0
.end method

.method public isSelfOrAncestorWindowAnimatingExit()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5848
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 5851
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0
.end method

.method public isSplitEmbedded()Z
    .registers 1

    .line 7918
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isSplitEmbedded()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public final isStartingWindowAssociatedToTask()Z
    .registers 1

    .line 6375
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz p0, :cond_a

    iget-object p0, p0, Lcom/android/server/wm/StartingData;->mAssociatedTask:Lcom/android/server/wm/Task;

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isSyncFinished()Z
    .registers 4

    .line 7216
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    iget v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_12

    .line 7217
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleRequested()Z

    move-result v0

    if-nez v0, :cond_12

    return v1

    .line 7222
    :cond_12
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->isSyncFinished()Z

    move-result p0

    return p0
.end method

.method public isTrustedOverlay()Z
    .registers 1

    .line 7544
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandleWrapper;

    invoke-virtual {p0}, Lcom/android/server/wm/InputWindowHandleWrapper;->isTrustedOverlay()Z

    move-result p0

    return p0
.end method

.method public isTspNoteMode()Z
    .registers 1

    .line 7353
    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mIsTspNoteMode:Z

    return p0
.end method

.method public isVisible()Z
    .registers 2

    .line 2285
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->wouldBeVisibleIfPolicyIgnored()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicyOrInsets()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isVisibleByPolicy()Z
    .registers 2

    .line 2313
    iget p0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:I

    const/4 v0, 0x3

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public final isVisibleByPolicyOrInsets()Z
    .registers 2

    .line 2276
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    if-eqz p0, :cond_10

    .line 2280
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->isClientVisible()Z

    move-result p0

    if-eqz p0, :cond_12

    :cond_10
    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public isVisibleNow()Z
    .registers 3

    .line 2367
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_17

    .line 2368
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method

.method public isVisibleRequested()Z
    .registers 3

    .line 2291
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->wouldBeVisibleRequestedIfPolicyIgnored()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicyOrInsets()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    if-eqz v0, :cond_1e

    .line 2292
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->shouldCheckTokenVisibleRequested()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 2293
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p0

    return p0

    :cond_1e
    return v0
.end method

.method public isVisibleRequestedOrAdding()Z
    .registers 3

    .line 2392
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2393
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-nez v1, :cond_e

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-nez v1, :cond_2a

    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v1, :cond_2a

    .line 2394
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v1

    if-nez v1, :cond_2a

    if-eqz v0, :cond_20

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v0, :cond_2a

    :cond_20
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v0, :cond_2a

    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez p0, :cond_2a

    const/4 p0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p0, 0x0

    :goto_2b
    return p0
.end method

.method public isWinVisibleLw()Z
    .registers 3

    .line 2358
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_f

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v1, :cond_f

    const/4 v1, 0x3

    .line 2359
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method

.method public final logExclusionRestrictions(I)V
    .registers 15

    .line 4354
    invoke-static {p0}, Lcom/android/server/wm/DisplayContent;->logsGestureExclusionRestrictions(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 4355
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastExclusionLogUptimeMillis:[J

    aget-wide v2, v2, p1

    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mConstants:Lcom/android/server/wm/WindowManagerConstants;

    iget-wide v4, v4, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExclusionLogDebounceTimeoutMillis:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1a

    goto :goto_4b

    .line 4362
    :cond_1a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 4363
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastExclusionLogUptimeMillis:[J

    aget-wide v3, v2, p1

    sub-long v3, v0, v3

    .line 4364
    aput-wide v0, v2, p1

    .line 4366
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastRequestedExclusionHeight:[I

    aget v7, v0, p1

    .line 4367
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastGrantedExclusionHeight:[I

    aget v0, v0, p1

    const/16 v5, 0xdf

    .line 4369
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    sub-int v8, v7, v0

    const/4 v0, 0x1

    add-int/lit8 v9, p1, 0x1

    .line 4372
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_44

    move v10, v0

    goto :goto_46

    :cond_44
    const/4 p0, 0x0

    move v10, p0

    :goto_46
    const/4 v11, 0x0

    long-to-int v12, v3

    .line 4369
    invoke-static/range {v5 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;IIIZZI)V

    :cond_4b
    :goto_4b
    return-void
.end method

.method public final logPerformShow(Ljava/lang/String;)V
    .registers 6

    .line 5553
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    const/4 v1, 0x3

    if-nez v0, :cond_f

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW_VERBOSE:Z

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v0, v1, :cond_bd

    .line 5555
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": mDrawState="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 5556
    invoke-virtual {p1}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " readyForDisplay="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5557
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " starting="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_43

    move p1, v2

    goto :goto_44

    :cond_43
    move p1, v3

    :goto_44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " during animation: policyVis="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5559
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " parentHidden="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5560
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " tok.visibleRequested="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_6e

    iget-boolean p1, p1, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz p1, :cond_6e

    move p1, v2

    goto :goto_6f

    :cond_6e
    move p1, v3

    :goto_6f
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " tok.visible="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_83

    .line 5563
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_83

    move p1, v2

    goto :goto_84

    :cond_83
    move p1, v3

    :goto_84
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " animating="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5564
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " tok animating="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_a3

    .line 5566
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result p0

    if-eqz p0, :cond_a3

    goto :goto_a4

    :cond_a3
    move v2, v3

    :goto_a4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " Callers="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x4

    .line 5567
    invoke-static {p0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    .line 5555
    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bd
    return-void
.end method

.method public logReadyForDisplay(Ljava/lang/String;)V
    .registers 5

    .line 2497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " logReadyForDisplay win="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2499
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_3d

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 2500
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " mToken.waitingToShow:true isTransitionSet:true"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85

    .line 2501
    :cond_3d
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v0

    if-nez v0, :cond_85

    iget v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v0, :cond_85

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 2502
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 2503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isParentWindowHidden:false mToken.isVisible():true"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2504
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_85

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v0

    if-eqz v0, :cond_85

    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez p0, :cond_85

    .line 2505
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " mHasSurface:true isVisibleByPolicy:true mDestroying:false"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_85
    :goto_85
    return-void
.end method

.method public markRedrawForSyncReported()V
    .registers 2

    const/4 v0, 0x1

    .line 7521
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRedrawForSyncReported:Z

    return-void
.end method

.method public matchesDisplayAreaBounds()Z
    .registers 2

    .line 2880
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2883
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 2885
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v0

    if-nez v0, :cond_28

    .line 2887
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 2889
    :cond_28
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public mightAffectAllDrawn()Z
    .registers 5

    .line 2466
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_e

    const/4 v3, 0x4

    if-ne v0, v3, :cond_c

    goto :goto_e

    :cond_c
    move v0, v1

    goto :goto_f

    :cond_e
    :goto_e
    move v0, v2

    .line 2468
    :goto_f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v3

    if-nez v3, :cond_17

    if-eqz v0, :cond_20

    :cond_17
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v0, :cond_20

    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez p0, :cond_20

    move v1, v2

    :cond_20
    return v1
.end method

.method public needForceUpdateMWHandlerLayer()Z
    .registers 2

    .line 7821
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isMultiWindowHandler()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 7822
    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mNeedToForceUpdateMWHandlerLayer:Z

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public needsRelativeLayeringToIme()Z
    .registers 6

    .line 6638
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->shouldImeAttachedToApp()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 6645
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getImeContainer()Lcom/android/server/wm/DisplayArea$Tokens;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    if-nez v0, :cond_19

    return v1

    .line 6649
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2b

    .line 6651
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isImeLayeringTarget()Z

    move-result v0

    if-eqz v0, :cond_61

    return v2

    .line 6661
    :cond_2b
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_61

    .line 6665
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getImeLayeringTarget()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_51

    if-eq v0, p0, :cond_51

    .line 6666
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    if-ne v3, v4, :cond_51

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_51

    .line 6669
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-eqz v3, :cond_51

    .line 6670
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v0

    if-gtz v0, :cond_51

    goto :goto_52

    :cond_51
    move v2, v1

    .line 6674
    :goto_52
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isMultiWindowHandler()Z

    move-result v0

    if-nez v0, :cond_60

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isMultiWindowMenuPopup()Z

    move-result p0

    if-eqz p0, :cond_5f

    goto :goto_60

    :cond_5f
    move v1, v2

    :cond_60
    :goto_60
    return v1

    .line 6686
    :cond_61
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getImeLayeringTarget()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_81

    .line 6687
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_81

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7f6

    if-ne v0, v3, :cond_81

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v0, 0x20000

    and-int/2addr p0, v0

    if-eqz p0, :cond_81

    return v2

    :cond_81
    return v1
.end method

.method public needsZBoost()Z
    .registers 3

    .line 6364
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v0

    .line 6365
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v1, :cond_1c

    if-eqz v0, :cond_1c

    .line 6366
    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1c

    .line 6368
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->needsZBoost()Z

    move-result p0

    return p0

    .line 6371
    :cond_1c
    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    return p0
.end method

.method public notifyInsetsChanged()V
    .registers 8

    .line 4766
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_INSETS_enabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_INSETS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x3e6faa5d

    const/4 v4, 0x0

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 4767
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowFrames;->setInsetsChanged(Z)V

    .line 4771
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsInsetsChanged:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsInsetsChanged:I

    .line 4772
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4773
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4775
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 4777
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->updateOverlayInsetsState(Lcom/android/server/wm/WindowState;)V

    :cond_3a
    return-void
.end method

.method public notifyInsetsControlChanged()V
    .registers 7

    .line 4783
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_INSETS_enabled:Z

    if-eqz v0, :cond_17

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_INSETS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, 0x3d7244e8

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 4784
    :cond_17
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppDied:Z

    if-nez v0, :cond_5c

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz v0, :cond_20

    goto :goto_5c

    .line 4791
    :cond_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4794
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v2

    .line 4796
    :try_start_2c
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getCompatInsetsState()Landroid/view/InsetsState;

    move-result-object v4

    .line 4797
    invoke-virtual {v2, p0}, Lcom/android/server/wm/InsetsStateController;->getControlsForDispatch(Lcom/android/server/wm/InsetsControlTarget;)[Landroid/view/InsetsSourceControl;

    move-result-object v2

    .line 4796
    invoke-interface {v3, v4, v2}, Landroid/view/IWindow;->insetsControlChanged(Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_39} :catch_3f
    .catchall {:try_start_2c .. :try_end_39} :catchall_3d

    .line 4804
    :goto_39
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_57

    :catchall_3d
    move-exception p0

    goto :goto_58

    :catch_3f
    move-exception v2

    :try_start_40
    const-string v3, "WindowManager"

    .line 4799
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to deliver inset state change to w="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_56
    .catchall {:try_start_40 .. :try_end_56} :catchall_3d

    goto :goto_39

    :goto_57
    return-void

    .line 4804
    :goto_58
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4806
    throw p0

    :cond_5c
    :goto_5c
    return-void
.end method

.method public notifyWindowFocusInTaskChanged(Z)V
    .registers 5

    .line 7768
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isPopOver()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 7771
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyWindowFocusInTaskChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", win="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7773
    :try_start_25
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0, p1}, Landroid/view/IWindow;->windowFocusInTaskChanged(Z)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2a} :catch_2b

    goto :goto_40

    :catch_2b
    move-exception p1

    .line 7775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to notifyWindowFocusInTaskChanged, win="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_40
    return-void
.end method

.method public onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V
    .registers 3

    .line 6221
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 6222
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->onAnimationFinished()V

    return-void
.end method

.method public onAppVisibilityChanged(ZZ)V
    .registers 8

    .line 2663
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_18

    .line 2664
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowState;->onAppVisibilityChanged(ZZ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2667
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v0

    .line 2668
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_4c

    if-nez p1, :cond_68

    if-eqz v0, :cond_68

    .line 2672
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result p1

    if-eqz p1, :cond_68

    .line 2673
    sget-boolean p1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ANIM_enabled:Z

    if-eqz p1, :cond_45

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v0, -0x57b5959d

    const/4 v2, 0x0

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {p2, v0, v4, v2, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2675
    :cond_45
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 2676
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    .line 2677
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    goto :goto_68

    :cond_4c
    if-eq p1, v0, :cond_68

    if-nez p2, :cond_65

    if-eqz v0, :cond_65

    .line 2685
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 2688
    iget-object p2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v0, 0x2

    invoke-virtual {p2, v0, v4}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    .line 2689
    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    move-result p2

    if-eqz p2, :cond_65

    .line 2690
    invoke-virtual {p1, p0, v0}, Lcom/android/server/wm/AccessibilityController;->onWindowTransition(Lcom/android/server/wm/WindowState;I)V

    .line 2693
    :cond_65
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    :cond_68
    :goto_68
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 9

    .line 2902
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getImeInputTarget()Lcom/android/server/wm/InputTarget;

    move-result-object v0

    if-eq v0, p0, :cond_14

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isImeLayeringTarget()Z

    move-result v0

    if-nez v0, :cond_14

    .line 2903
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    .line 2908
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    .line 2911
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 2912
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2914
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_36

    const/4 v1, 0x5

    if-eq v0, v1, :cond_36

    .line 2916
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->updateImeControlTarget(Z)V

    return-void

    .line 2920
    :cond_36
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTempConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    const/4 v1, 0x0

    .line 2921
    invoke-virtual {v0, p1, v1}, Landroid/app/WindowConfiguration;->diff(Landroid/app/WindowConfiguration;Z)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-eqz p1, :cond_48

    goto :goto_49

    :cond_48
    move v2, v1

    :goto_49
    if-eqz v2, :cond_52

    .line 2928
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateImeControlTarget()V

    :cond_52
    return-void
.end method

.method public onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_18

    .line 1987
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v2, :cond_18

    .line 1989
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isAppCastingDisplay()Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isAppCastingDisplay()Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_16
    move v2, v0

    goto :goto_19

    :cond_18
    move v2, v1

    :goto_19
    if-eqz p1, :cond_34

    .line 1991
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v3, :cond_34

    if-eq p1, v3, :cond_34

    .line 1992
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getImeInputTarget()Lcom/android/server/wm/InputTarget;

    move-result-object v3

    if-ne v3, p0, :cond_34

    .line 1993
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getImeInputTarget()Lcom/android/server/wm/WindowState;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/server/wm/DisplayContent;->updateImeInputAndControlTarget(Lcom/android/server/wm/InputTarget;)V

    .line 1994
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/DisplayContent;->setImeInputTarget(Lcom/android/server/wm/InputTarget;)V

    .line 1996
    :cond_34
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    if-eqz p1, :cond_53

    .line 1998
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandleWrapper;

    invoke-virtual {v3}, Lcom/android/server/wm/InputWindowHandleWrapper;->getDisplayId()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    if-eq v3, v4, :cond_53

    .line 1999
    iget v3, p1, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 2000
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandleWrapper;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setDisplayId(I)V

    :cond_53
    if-eqz v2, :cond_5c

    .line 2004
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/InsetsStateController;->updateAboveInsetsState(Z)V

    :cond_5c
    return-void
.end method

.method public onExitAnimationDone()V
    .registers 14

    .line 5929
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_5c

    .line 5930
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v0

    .line 5931
    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    if-eqz v0, :cond_23

    .line 5933
    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v7, ""

    .line 5934
    invoke-interface {v0, v6, v7}, Lcom/android/server/wm/AnimationAdapter;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5936
    :cond_23
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ANIM_enabled:Z

    if-eqz v0, :cond_5c

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v6, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    iget-boolean v7, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isAnimating()Z

    move-result v8

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, 0x4566328c

    const/16 v11, 0xfc

    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v0, v12, v4

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v12, v3

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v12, v1

    const/4 v0, 0x3

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v12, v0

    const/4 v0, 0x4

    aput-object v5, v12, v0

    invoke-static {v9, v10, v11, v2, v12}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5941
    :cond_5c
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7e

    .line 5943
    new-instance v0, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5944
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    :goto_70
    if-ltz v5, :cond_7e

    .line 5945
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->onExitAnimationDone()V

    add-int/lit8 v5, v5, -0x1

    goto :goto_70

    .line 5957
    :cond_7e
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mEnteringAnimation:Z

    if-eqz v5, :cond_94

    .line 5958
    iput-boolean v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mEnteringAnimation:Z

    .line 5959
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 5962
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_94

    .line 5964
    :try_start_8f
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->dispatchWindowShown()V
    :try_end_94
    .catch Landroid/os/RemoteException; {:try_start_8f .. :try_end_94} :catch_94

    .line 5970
    :catch_94
    :cond_94
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_9b

    return-void

    .line 5974
    :cond_9b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isSelfOrAncestorWindowAnimatingExit()Z

    move-result v0

    if-nez v0, :cond_a2

    return-void

    .line 5978
    :cond_a2
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    if-eqz v0, :cond_c0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v5, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x3ead5136

    const/16 v8, 0xc

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {v6, v7, v8, v2, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5981
    :cond_c0
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 5983
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v0

    .line 5987
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    const-string/jumbo v6, "onExitAnimationDone"

    invoke-virtual {v1, v5, v6}, Lcom/android/server/wm/WindowStateAnimator;->hide(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    .line 5993
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_e8

    .line 5994
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v0, v3, :cond_e2

    .line 5995
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->destroySurfaces()V

    goto :goto_f1

    .line 5997
    :cond_e2
    iget-boolean v0, v1, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    invoke-virtual {p0, v4, v0}, Lcom/android/server/wm/WindowState;->destroySurface(ZZ)Z

    goto :goto_f1

    :cond_e8
    if-eqz v0, :cond_f1

    .line 6001
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6004
    :cond_f1
    :goto_f1
    iput-boolean v4, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 6005
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ANIM_enabled:Z

    if-eqz v0, :cond_107

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, 0x10e5b52e

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v5, v4, v2, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 6006
    :cond_107
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public onMergedOverrideConfigurationChanged()V
    .registers 2

    .line 2934
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->onMergedOverrideConfigurationChanged()V

    const/4 v0, 0x0

    .line 2935
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLastConfigReportedToClient:Z

    return-void
.end method

.method public onMovedByResize()V
    .registers 8

    .line 2657
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RESIZE_enabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RESIZE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x617b2d3b

    const/4 v4, 0x0

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2658
    :cond_17
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mMovedByResize:Z

    .line 2659
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onMovedByResize()V

    return-void
.end method

.method public onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V
    .registers 3

    .line 1572
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V

    const/4 p1, 0x0

    .line 1573
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->setDrawnStateEvaluated(Z)V

    .line 1575
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->reapplyMagnificationSpec()V

    return-void
.end method

.method public onResize()V
    .registers 9

    .line 2729
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    .line 2730
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2e

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isGoneForLayout()Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 2731
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RESIZE_enabled:Z

    if-eqz v1, :cond_2b

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RESIZE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x18dfab50

    const/4 v5, 0x0

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v3, v4, v7, v5, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2732
    :cond_2b
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2734
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isGoneForLayout()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2735
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mResizedWhileGone:Z

    .line 2738
    :cond_36
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onResize()V

    return-void
.end method

.method public onResizeHandled()V
    .registers 1

    .line 6165
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowFrames;->onResizeHandled()V

    return-void
.end method

.method public onSetAppExiting(Z)Z
    .registers 7

    .line 2698
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_d

    .line 2705
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    .line 2706
    invoke-virtual {p0, v2, v2}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    .line 2708
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v3

    if-eqz v3, :cond_32

    if-eqz p1, :cond_32

    .line 2709
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v2}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    .line 2710
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v2}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 2711
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v2, p0, v4}, Lcom/android/server/wm/AccessibilityController;->onWindowTransition(Lcom/android/server/wm/WindowState;I)V

    :cond_2c
    if-eqz v0, :cond_31

    .line 2715
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    :cond_31
    move v2, v1

    .line 2719
    :cond_32
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_39
    if-ltz v0, :cond_4b

    .line 2720
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 2721
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowState;->onSetAppExiting(Z)Z

    move-result v1

    or-int/2addr v2, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_39

    :cond_4b
    return v2
.end method

.method public onStartFreezingScreen()V
    .registers 3

    const/4 v0, 0x1

    .line 4207
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    .line 4208
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_a
    if-ltz v1, :cond_1a

    .line 4209
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 4210
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->onStartFreezingScreen()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public onStopFreezingScreen()Z
    .registers 8

    .line 4216
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ltz v0, :cond_1c

    .line 4217
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 4218
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->onStopFreezingScreen()Z

    move-result v4

    or-int/2addr v3, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 4221
    :cond_1c
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v0, :cond_21

    return v3

    .line 4225
    :cond_21
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    .line 4227
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_4c

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v0

    if-nez v0, :cond_4c

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4c

    .line 4229
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v0, :cond_49

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x682823b2

    const/4 v5, 0x0

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-static {v3, v4, v2, v5, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 4231
    :cond_49
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 4233
    :cond_4c
    iput v2, p0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    .line 4234
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    return v1
.end method

.method public onSurfaceShownChanged(Z)V
    .registers 4

    .line 4324
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLastShownChangedReported:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 4327
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mLastShownChangedReported:Z

    if-eqz p1, :cond_d

    .line 4330
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->initExclusionRestrictions()V

    goto :goto_15

    :cond_d
    const/4 v0, 0x0

    .line 4332
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->logExclusionRestrictions(I)V

    const/4 v0, 0x1

    .line 4333
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->logExclusionRestrictions(I)V

    .line 4340
    :goto_15
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_3a

    const/16 v1, 0x7d5

    if-eq v0, v1, :cond_3a

    const/16 v1, 0x7ee

    if-eq v0, v1, :cond_3a

    const/16 v1, 0x7f5

    if-ne v0, v1, :cond_2f

    .line 4343
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isOnVirtualDisplay()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 4345
    :cond_2f
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    iget p0, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/MirrorActiveUids;->onNonAppSurfaceVisibilityChanged(IZ)V

    :cond_3a
    return-void
.end method

.method public onWindowReplacementTimeout()V
    .registers 3

    .line 2939
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-eqz v0, :cond_8

    .line 2947
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    goto :goto_20

    .line 2949
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_10
    if-ltz v0, :cond_20

    .line 2950
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 2951
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->onWindowReplacementTimeout()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    :cond_20
    :goto_20
    return-void
.end method

.method public openInputChannel(Landroid/view/InputChannel;)V
    .registers 4

    .line 3355
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-nez v0, :cond_38

    .line 3358
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3359
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/input/InputManagerService;->createInputChannel(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    .line 3360
    invoke-virtual {v0}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    .line 3361
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandleWrapper;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setToken(Landroid/os/IBinder;)V

    .line 3362
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputToWindowMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_2e

    .line 3364
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {p0, p1}, Landroid/view/InputChannel;->copyTo(Landroid/view/InputChannel;)V

    goto :goto_37

    .line 3369
    :cond_2e
    new-instance p1, Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    invoke-direct {p1, p0, v0}, Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;-><init>(Lcom/android/server/wm/WindowState;Landroid/view/InputChannel;)V

    iput-object p1, p0, Lcom/android/server/wm/WindowState;->mDeadWindowEventReceiver:Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;

    :goto_37
    return-void

    .line 3356
    :cond_38
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Window already has an input channel."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public orientationChangeTimedOut()V
    .registers 2

    const/4 v0, 0x1

    .line 1976
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOrientationChangeTimedOut:Z

    return-void
.end method

.method public performShowLocked()Z
    .registers 8

    .line 5488
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->showToCurrentUser()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_30

    .line 5489
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hiding "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", belonging to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WindowManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    const/4 v0, 0x2

    .line 5490
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->clearPolicyVisibilityFlag(I)V

    return v1

    :cond_30
    const-string/jumbo v0, "performShow on "

    .line 5494
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->logPerformShow(Ljava/lang/String;)V

    .line 5496
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eq v0, v2, :cond_40

    if-ne v0, v3, :cond_51

    .line 5497
    :cond_40
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_51

    .line 5498
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v4, v3, :cond_4e

    .line 5499
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityRecord;->onFirstWindowDrawn(Lcom/android/server/wm/WindowState;)V

    goto :goto_51

    .line 5501
    :cond_4e
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->onStartingWindowDrawn()V

    .line 5505
    :cond_51
    :goto_51
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    if-ne v0, v3, :cond_c1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v0

    if-nez v0, :cond_5e

    goto :goto_c1

    :cond_5e
    const-string v0, "Showing "

    .line 5514
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->logPerformShow(Ljava/lang/String;)V

    .line 5516
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 5517
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->applyEnterAnimationLocked()V

    .line 5520
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    .line 5523
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_FORCE_DEBUG_ANIM_enabled:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_8b

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0xa4215f3

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v0, v6, v1

    const-string/jumbo v0, "performShowLocked: mDrawState=HAS_DRAWN in %s"

    invoke-static {v4, v5, v1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5528
    :cond_8b
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 5529
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 5531
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHidden:Z

    if-eqz v0, :cond_c0

    .line 5532
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHidden:Z

    .line 5533
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 5535
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_a5
    if-ltz v1, :cond_c0

    .line 5536
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 5537
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v4, :cond_bd

    .line 5538
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->performShowLocked()Z

    if-eqz v0, :cond_bd

    .line 5543
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    :cond_bd
    add-int/lit8 v1, v1, -0x1

    goto :goto_a5

    :cond_c0
    return v3

    .line 5507
    :cond_c1
    :goto_c1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    if-ne v0, v3, :cond_cd

    const-string/jumbo v0, "performShow"

    .line 5508
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->logReadyForDisplay(Ljava/lang/String;)V

    :cond_cd
    return v1
.end method

.method public pokeDrawLockLw(J)V
    .registers 9

    .line 4148
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleRequestedOrAdding()Z

    move-result v0

    const-string v1, "WindowManager"

    if-eqz v0, :cond_64

    .line 4149
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_41

    .line 4153
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v0

    .line 4154
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/16 v3, 0x80

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Window:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    .line 4155
    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 4156
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    new-instance v2, Landroid/os/WorkSource;

    iget v3, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 4159
    :cond_41
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_POWER:Z

    if-eqz v0, :cond_5e

    .line 4160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pokeDrawLock: poking draw lock on behalf of visible window owned by "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4163
    :cond_5e
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_81

    .line 4164
    :cond_64
    sget-boolean p1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_POWER:Z

    if-eqz p1, :cond_81

    .line 4165
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "pokeDrawLock: suppressed draw lock request for invisible window owned by "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object p0, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_81
    :goto_81
    return-void
.end method

.method public prepareSurfaces()V
    .registers 3

    const/4 v0, 0x0

    .line 6496
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsDimming:Z

    .line 6497
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->applyDims()V

    .line 6498
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->updateSurfacePositionNonOrganized()V

    .line 6500
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->updateFrameRateSelectionPriorityIfNeeded()V

    .line 6501
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->updateScaleIfNeeded()V

    .line 6503
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->prepareSurfaceLocked(Landroid/view/SurfaceControl$Transaction;)V

    .line 6504
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->prepareSurfaces()V

    return-void
.end method

.method public prepareSync()Z
    .registers 3

    .line 7199
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->prepareSync()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    const/4 v0, 0x1

    .line 7208
    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    .line 7209
    iget v1, p0, Lcom/android/server/wm/WindowState;->mSyncSeqId:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/wm/WindowState;->mSyncSeqId:I

    .line 7210
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->requestRedrawForSync()V

    return v0
.end method

.method public prepareWindowToDisplayDuringRelayout(Z)V
    .registers 11

    .line 3671
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_16

    .line 3672
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->canTurnScreenOn()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_18

    :cond_16
    move v0, v2

    goto :goto_19

    :cond_18
    :goto_18
    move v0, v1

    :goto_19
    const-string v3, "WindowManager"

    if-eqz v0, :cond_a1

    .line 3686
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v0, Lcom/android/server/wm/WindowManagerService;->mAllowTheaterModeWakeFromLayout:Z

    if-nez v4, :cond_35

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 3687
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "theater_mode_on"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_33

    goto :goto_35

    :cond_33
    move v0, v2

    goto :goto_36

    :cond_35
    :goto_35
    move v0, v1

    .line 3689
    :goto_36
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_43

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->currentLaunchCanTurnScreenOn()Z

    move-result v4

    if-eqz v4, :cond_41

    goto :goto_43

    :cond_41
    move v4, v2

    goto :goto_44

    :cond_43
    :goto_43
    move v4, v1

    :goto_44
    if-eqz v0, :cond_9a

    if-eqz v4, :cond_9a

    .line 3691
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 3692
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isDreaming()Z

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mPowerManagerWrapper:Lcom/android/server/wm/WindowState$PowerManagerWrapper;

    .line 3693
    invoke-interface {v0}, Lcom/android/server/wm/WindowState$PowerManagerWrapper;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_9a

    .line 3694
    :cond_5a
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-nez v0, :cond_62

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_POWER:Z

    if-eqz v0, :cond_76

    .line 3695
    :cond_62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Relayout window turning screen on: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3707
    :cond_76
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mPowerManagerWrapper:Lcom/android/server/wm/WindowState$PowerManagerWrapper;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android.server.wm:SCREEN_ON_FLAG"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "::"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3710
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3707
    invoke-interface {v0, v4, v5, v6, v7}, Lcom/android/server/wm/WindowState$PowerManagerWrapper;->wakeUp(JILjava/lang/String;)V

    .line 3714
    :cond_9a
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_a1

    .line 3715
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityRecord;->setCurrentLaunchCanTurnScreenOn(Z)V

    :cond_a1
    if-eqz p1, :cond_bc

    .line 3721
    sget-boolean p1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz p1, :cond_bb

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Already visible and does not turn on screen, skip preparing: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bb
    return-void

    .line 3726
    :cond_bc
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 p1, p1, 0xf0

    const/16 v0, 0x10

    if-ne p1, v0, :cond_c8

    .line 3728
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 3731
    :cond_c8
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result p1

    if-eqz p1, :cond_db

    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->okToAnimate()Z

    move-result p1

    if-eqz p1, :cond_db

    .line 3732
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->applyEnterAnimationLocked()V

    :cond_db
    return-void
.end method

.method public receiveFocusFromTapOutside()Z
    .registers 2

    const/4 v0, 0x1

    .line 7548
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->canReceiveKeys(Z)Z

    move-result p0

    return p0
.end method

.method public registerFocusObserver(Landroid/view/IWindowFocusObserver;)V
    .registers 4

    .line 4877
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4878
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    if-nez v1, :cond_13

    .line 4879
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    .line 4881
    :cond_13
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 4882
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1d
    move-exception p0

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final registeredForDisplayAreaConfigChanges()Z
    .registers 2

    .line 4609
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 4611
    iget-object p0, v0, Lcom/android/server/wm/WindowState;->mWpcForDisplayAreaConfigChanges:Lcom/android/server/wm/WindowProcessController;

    goto :goto_b

    .line 4612
    :cond_9
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWpcForDisplayAreaConfigChanges:Lcom/android/server/wm/WindowProcessController;

    :goto_b
    if-eqz p0, :cond_15

    .line 4613
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->registeredForDisplayAreaConfigChanges()Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method public relayoutVisibleWindow(I)I
    .registers 10

    .line 6110
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    .line 6112
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v3

    if-nez v3, :cond_f

    goto :goto_11

    :cond_f
    move v3, v2

    goto :goto_12

    :cond_11
    :goto_11
    move v3, v1

    :goto_12
    or-int/2addr p1, v3

    .line 6114
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v3, :cond_62

    .line 6115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "relayoutVisibleWindow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " mAnimatingExit=true, mRemoveOnExit="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mDestroying="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6119
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 6120
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 6122
    :cond_4b
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 6123
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ANIM_enabled:Z

    if-eqz v3, :cond_62

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x7342486f

    const/4 v6, 0x0

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v3, v7, v2

    invoke-static {v4, v5, v2, v6, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 6126
    :cond_62
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v3, :cond_6f

    .line 6127
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 6128
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_6f
    if-nez v0, :cond_75

    .line 6131
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iput-boolean v1, v2, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    .line 6134
    :cond_75
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/WindowState;->mLastVisibleLayoutRotation:I

    .line 6136
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iput-boolean v1, v2, Lcom/android/server/wm/WindowStateAnimator;->mEnteringAnimation:Z

    const-wide/16 v1, 0x20

    const-string/jumbo v3, "prepareToDisplay"

    .line 6138
    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6140
    :try_start_8b
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->prepareWindowToDisplayDuringRelayout(Z)V
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_92

    .line 6142
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p1

    :catchall_92
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 6143
    throw p0
.end method

.method public removeIfPossible()V
    .registers 2

    .line 3040
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeIfPossible()V

    const/4 v0, 0x0

    .line 3041
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->removeIfPossible(Z)V

    return-void
.end method

.method public final removeIfPossible(Z)V
    .registers 22

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 3045
    iput-boolean v1, v0, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    .line 3046
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    const/4 v3, 0x2

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v2, :cond_27

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, 0x59a7c888

    new-array v10, v3, [Ljava/lang/Object;

    aput-object v2, v10, v6

    aput-object v7, v10, v1

    invoke-static {v8, v9, v6, v5, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3049
    :cond_27
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v7, 0x3

    if-ne v2, v7, :cond_30

    move v8, v1

    goto :goto_31

    :cond_30
    move v8, v6

    :goto_31
    if-eqz v8, :cond_56

    .line 3051
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    if-eqz v2, :cond_49

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, -0x3ad0901b

    new-array v11, v1, [Ljava/lang/Object;

    aput-object v2, v11, v6

    const-string v2, "Starting window removed %s"

    invoke-static {v9, v10, v6, v2, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3054
    :cond_49
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_63

    .line 3055
    new-instance v9, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda0;

    invoke-direct {v9}, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v2, v9, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    goto :goto_63

    :cond_56
    if-ne v2, v1, :cond_63

    const/16 v2, 0x80

    .line 3064
    invoke-virtual {v0, v6, v2}, Lcom/android/server/wm/WindowState;->isSelfAnimating(II)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 3067
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 3070
    :cond_63
    :goto_63
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_FOCUS_enabled:Z

    if-eqz v2, :cond_96

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    int-to-long v9, v2

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v13, -0x3e766175

    new-array v14, v7, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v14, v6

    aput-object v2, v14, v1

    aput-object v11, v14, v3

    invoke-static {v12, v13, v1, v5, v14}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3075
    :cond_96
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 3078
    :try_start_9a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->disposeInputChannel()V

    .line 3079
    iput-object v5, v0, Lcom/android/server/wm/WindowState;->mOnBackInvokedCallbackInfo:Landroid/window/OnBackInvokedCallbackInfo;

    .line 3082
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_FORCE_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v2, :cond_132

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v12, v12, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    iget-boolean v13, v0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    iget-boolean v14, v0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    iget-boolean v15, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v5

    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result v16

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_cb

    invoke-virtual {v4, v7}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result v4

    if-eqz v4, :cond_cb

    move v4, v1

    goto :goto_cc

    :cond_cb
    move v4, v6

    :goto_cc
    iget-boolean v11, v0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    iget-object v7, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v7, v7, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    const/16 v17, 0x6

    invoke-static/range {v17 .. v17}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v1, "Remove %s: mSurfaceController=%s mAnimatingExit=%b mRemoveOnExit=%b mHasSurface=%b surfaceShowing=%b animating=%b app-animation=%b mWillReplaceWindow=%b mDisplayFrozen=%b callers=%s"

    const/16 v6, 0xb

    new-array v6, v6, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v2, v6, v19

    const/4 v2, 0x1

    aput-object v12, v6, v2

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v12, 0x2

    aput-object v2, v6, v12

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v13, 0x3

    aput-object v2, v6, v13

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v13, 0x4

    aput-object v2, v6, v13

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v5, 0x5

    aput-object v2, v6, v5

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v6, v17

    const/4 v2, 0x7

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v6, v2

    const/16 v2, 0x8

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v6, v2

    const/16 v2, 0x9

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v6, v2

    const/16 v2, 0xa

    aput-object v18, v6, v2

    const v2, 0x6abb60ba

    const v4, 0xffff0

    invoke-static {v3, v2, v4, v1, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_134

    :cond_132
    move v12, v3

    const/4 v13, 0x4

    .line 3111
    :goto_134
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_146

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isInChangeTransition()Z

    move-result v1

    if-eqz v1, :cond_146

    const/4 v1, 0x1

    goto :goto_147

    :cond_146
    const/4 v1, 0x0

    .line 3120
    :goto_147
    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v2, :cond_2f0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->okToAnimate()Z

    move-result v2

    if-eqz v2, :cond_2f0

    if-nez v1, :cond_2f0

    .line 3122
    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z
    :try_end_157
    .catchall {:try_start_9a .. :try_end_157} :catchall_318

    const-string v2, ": mAnimatingExit=true caller="

    const-string v3, "WindowManager"

    if-eqz v1, :cond_1b6

    .line 3125
    :try_start_15d
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    if-eqz v1, :cond_174

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, 0x728caa0f

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v7, v6

    const/4 v1, 0x0

    invoke-static {v4, v5, v6, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3131
    :cond_174
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ANIM_enabled:Z

    if-eqz v1, :cond_18b

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x2f9fd1a5

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v7, v6

    const/4 v1, 0x0

    invoke-static {v4, v5, v6, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_18b
    if-nez v8, :cond_1ad

    .line 3135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeIfPossible 1, "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    .line 3136
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3135
    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1ad
    const/4 v1, 0x1

    .line 3139
    iput-boolean v1, v0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 3140
    iput-boolean v1, v0, Lcom/android/server/wm/WindowState;->mReplacingRemoveRequested:Z
    :try_end_1b2
    .catchall {:try_start_15d .. :try_end_1b2} :catchall_318

    .line 3242
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 3145
    :cond_1b6
    :try_start_1b6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isWinVisibleLw()Z

    move-result v1

    if-eqz p1, :cond_1f4

    .line 3148
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    if-eqz v1, :cond_1d3

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x7e035e26

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v5, v4

    const/4 v1, 0x0

    invoke-static {v2, v3, v4, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1d3
    const/4 v1, 0x1

    .line 3151
    iput-boolean v1, v0, Lcom/android/server/wm/WindowState;->mAppDied:Z

    .line 3152
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 3153
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    const/4 v1, 0x0

    .line 3157
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->openInputChannel(Landroid/view/InputChannel;)V

    .line 3158
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V
    :try_end_1f0
    .catchall {:try_start_1b6 .. :try_end_1f0} :catchall_318

    .line 3242
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 3166
    :cond_1f4
    :try_start_1f4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->inTransition()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    if-eqz v1, :cond_264

    if-nez v8, :cond_203

    goto :goto_204

    :cond_203
    const/4 v12, 0x5

    :goto_204
    if-eqz v4, :cond_253

    .line 3172
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v6, 0x0

    invoke-virtual {v5, v12, v6}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    move-result v5

    if-eqz v5, :cond_253

    .line 3173
    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ANIM_enabled:Z

    if-eqz v5, :cond_226

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, -0x5728f2f

    const/4 v11, 0x1

    new-array v14, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v14, v11

    const/4 v5, 0x0

    invoke-static {v6, v7, v11, v5, v14}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_226
    if-nez v8, :cond_248

    .line 3177
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeIfPossible 2, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    .line 3178
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3177
    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_248
    const/4 v2, 0x1

    .line 3181
    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 3185
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 3186
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 3188
    :cond_253
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v2}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    move-result v2

    if-eqz v2, :cond_264

    .line 3189
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v2, v0, v12}, Lcom/android/server/wm/AccessibilityController;->onWindowTransition(Lcom/android/server/wm/WindowState;I)V

    :cond_264
    if-eqz v4, :cond_272

    .line 3195
    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v2, :cond_270

    .line 3196
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isExitAnimationRunningSelfOrParent()Z

    move-result v2

    if-eqz v2, :cond_272

    :cond_270
    const/4 v2, 0x1

    goto :goto_273

    :cond_272
    const/4 v2, 0x0

    :goto_273
    if-eqz v2, :cond_293

    .line 3198
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-eqz v3, :cond_293

    .line 3199
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->isAppCastingDisplay()Z

    move-result v3

    if-eqz v3, :cond_293

    iget-boolean v3, v0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v3, :cond_293

    const/16 v3, 0x10

    const/4 v4, 0x0

    .line 3200
    invoke-virtual {v0, v4, v3}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result v3

    if-nez v3, :cond_293

    const/4 v2, 0x0

    :cond_293
    if-eqz v8, :cond_2a1

    .line 3204
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_2a1

    .line 3205
    invoke-virtual {v3, v0}, Lcom/android/server/wm/ActivityRecord;->isLastWindow(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    if-eqz v3, :cond_2a1

    const/4 v3, 0x1

    goto :goto_2a2

    :cond_2a1
    const/4 v3, 0x0

    .line 3211
    :goto_2a2
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v4

    if-eqz v4, :cond_2ec

    if-nez v3, :cond_2ec

    if-eqz v2, :cond_2ec

    const/4 v2, 0x1

    .line 3214
    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 3216
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    if-eqz v1, :cond_2c7

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x41c9625a

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v5, v2

    const/4 v1, 0x0

    invoke-static {v3, v4, v2, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3218
    :cond_2c7
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ANIM_enabled:Z

    if-eqz v1, :cond_2de

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x3a2185cb

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x0

    invoke-static {v2, v3, v5, v1, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3220
    :cond_2de
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->setupWindowForRemoveOnExit()V

    .line 3221
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_2e8

    .line 3222
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->updateReportedVisibilityLocked()V
    :try_end_2e8
    .catchall {:try_start_1f4 .. :try_end_2e8} :catchall_318

    .line 3242
    :cond_2e8
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_2ec
    const/4 v5, 0x0

    move/from16 v19, v1

    goto :goto_2f3

    :cond_2f0
    const/4 v5, 0x0

    move/from16 v19, v5

    .line 3228
    :goto_2f3
    :try_start_2f3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    if-eqz v19, :cond_305

    .line 3232
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 3233
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->updateOrientation()Z

    move-result v2

    if-eqz v2, :cond_305

    .line 3234
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()V

    .line 3237
    :cond_305
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_30f

    move v6, v13

    goto :goto_310

    :cond_30f
    move v6, v5

    :goto_310
    const/4 v0, 0x1

    invoke-virtual {v1, v6, v0}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z
    :try_end_314
    .catchall {:try_start_2f3 .. :try_end_314} :catchall_318

    .line 3242
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_318
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3243
    throw v0
.end method

.method public removeImmediately()V
    .registers 6

    .line 2958
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1c

    .line 2960
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    if-eqz v0, :cond_1b

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x784f2ce5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-static {v0, v4, v3, v2, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1b
    return-void

    .line 2965
    :cond_1c
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    .line 2969
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked(Landroid/view/SurfaceControl$Transaction;)V

    .line 2970
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    .line 2972
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    .line 2973
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mReplacementWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_32

    .line 2974
    iput-boolean v3, v0, Lcom/android/server/wm/WindowState;->mSkipEnterAnimationForSeamlessReplacement:Z

    .line 2977
    :cond_32
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2978
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isImeLayeringTarget()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 2980
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->removeImeScreenshotIfPossible()V

    .line 2983
    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayContent;->setImeLayeringTarget(Lcom/android/server/wm/WindowState;)V

    .line 2984
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 2986
    :cond_45
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getImeInputTarget()Lcom/android/server/wm/InputTarget;

    move-result-object v1

    if-ne v1, p0, :cond_59

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_56

    .line 2987
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isRelaunching()Z

    move-result v1

    if-eqz v1, :cond_56

    goto :goto_59

    .line 2993
    :cond_56
    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayContent;->updateImeInputAndControlTarget(Lcom/android/server/wm/InputTarget;)V

    .line 2996
    :cond_59
    :goto_59
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2997
    invoke-static {v1}, Lcom/android/server/wm/WindowManagerService;->excludeWindowTypeFromTapOutTask(I)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 2998
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3003
    :cond_68
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTapExcludeProvidingWindows:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3004
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayPolicy;->removeWindowLw(Lcom/android/server/wm/WindowState;)V

    .line 3008
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/FreeformController;->onWindowRemovedLocked(Lcom/android/server/wm/WindowState;)V

    .line 3018
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->useBLASTSync()Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 3019
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeImmediately: Call immediatelyNotifyBlastSync, w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3020
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->immediatelyNotifyBlastSync()V

    .line 3024
    :cond_9d
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->disposeInputChannel()V

    .line 3025
    iput-object v2, p0, Lcom/android/server/wm/WindowState;->mOnBackInvokedCallbackInfo:Landroid/window/OnBackInvokedCallbackInfo;

    .line 3027
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v0}, Lcom/android/server/wm/Session;->windowRemovedLocked()V

    .line 3029
    :try_start_a7
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_b2
    .catch Ljava/lang/RuntimeException; {:try_start_a7 .. :try_end_b2} :catch_b2

    .line 3035
    :catch_b2
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerService;->postWindowRemoveCleanupLocked(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public final removeReplacedWindow()V
    .registers 7

    .line 3418
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x1319373d

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v3, v4, v2, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3419
    :cond_17
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    .line 3420
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    .line 3421
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mReplacingRemoveRequested:Z

    .line 3422
    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mReplacementWindow:Lcom/android/server/wm/WindowState;

    .line 3423
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 3424
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    return-void
.end method

.method public removeReplacedWindowIfNeeded(Lcom/android/server/wm/WindowState;)Z
    .registers 6

    .line 3402
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mReplacementWindow:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_16

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasDrawn()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3403
    iput-boolean v1, p1, Lcom/android/server/wm/WindowState;->mSkipEnterAnimationForSeamlessReplacement:Z

    .line 3404
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->removeReplacedWindow()V

    return v2

    .line 3408
    :cond_16
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_1d
    if-ltz v0, :cond_31

    .line 3409
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 3410
    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowState;->removeReplacedWindowIfNeeded(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    if-eqz v3, :cond_2e

    return v2

    :cond_2e
    add-int/lit8 v0, v0, -0x1

    goto :goto_1d

    :cond_31
    return v1
.end method

.method public reparentSurfaceControl(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 4

    .line 6814
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isStartingWindowAssociatedToTask()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 6819
    :cond_7
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->reparentSurfaceControl(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public reportFocusChangedSerialized(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 4563
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowState;->reportFocusChangedSerialized(ZZ)V

    return-void
.end method

.method public reportFocusChangedSerialized(ZZ)V
    .registers 6

    .line 4575
    iget-object p2, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz p2, :cond_30

    .line 4576
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p2

    const/4 v0, 0x0

    :goto_9
    if-ge v0, p2, :cond_2b

    .line 4578
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/view/IWindowFocusObserver;

    if-eqz p1, :cond_1f

    .line 4581
    :try_start_15
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWindowId:Lcom/android/server/wm/WindowState$WindowId;

    invoke-virtual {v2}, Landroid/view/IWindowId$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/IWindowFocusObserver;->focusGained(Landroid/os/IBinder;)V

    goto :goto_28

    .line 4583
    :cond_1f
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWindowId:Lcom/android/server/wm/WindowState$WindowId;

    invoke-virtual {v2}, Landroid/view/IWindowId$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/IWindowFocusObserver;->focusLost(Landroid/os/IBinder;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_28} :catch_28

    :catch_28
    :goto_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 4588
    :cond_2b
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :cond_30
    return-void
.end method

.method public reportResized()V
    .registers 20

    move-object/from16 v1, p0

    .line 4668
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isRelaunching()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 4674
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->shouldCheckTokenVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-nez v0, :cond_1c

    return-void

    :cond_1c
    const-wide/16 v2, 0x20

    .line 4678
    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 4679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wm.reportResized_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4682
    :cond_3d
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RESIZE_enabled:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_5f

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v7, v7, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RESIZE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, -0x6cc0dae1

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v0, v10, v6

    aput-object v7, v10, v5

    invoke-static {v8, v9, v6, v4, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 4684
    :cond_5f
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    if-ne v0, v5, :cond_67

    move v0, v5

    goto :goto_68

    :cond_67
    move v0, v6

    :goto_68
    if-eqz v0, :cond_7e

    .line 4686
    sget-boolean v7, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v7, :cond_7e

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, -0x4367ae2f

    new-array v10, v5, [Ljava/lang/Object;

    aput-object v7, v10, v6

    invoke-static {v8, v9, v6, v4, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 4689
    :cond_7e
    iget-boolean v7, v1, Lcom/android/server/wm/WindowState;->mReportOrientationChanged:Z

    .line 4694
    iput-boolean v6, v1, Lcom/android/server/wm/WindowState;->mReportOrientationChanged:Z

    .line 4695
    iput-boolean v5, v1, Lcom/android/server/wm/WindowState;->mDragResizingChangeReported:Z

    .line 4696
    iget-object v8, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowFrames;->clearReportResizeHints()V

    .line 4698
    iget-object v8, v1, Lcom/android/server/wm/WindowState;->mClientWindowFrames:Landroid/window/ClientWindowFrames;

    iget-object v9, v1, Lcom/android/server/wm/WindowState;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v1, v8, v9, v5, v6}, Lcom/android/server/wm/WindowState;->fillClientWindowFramesAndConfiguration(Landroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;ZZ)V

    .line 4702
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->DSS_ENABLED:Z

    if-eqz v8, :cond_a5

    iget-boolean v8, v1, Lcom/android/server/wm/WindowState;->mDssEnabled:Z

    if-eqz v8, :cond_a5

    .line 4703
    invoke-static {}, Lcom/android/server/DssController;->getService()Lcom/android/server/DssController;

    move-result-object v8

    .line 4704
    iget-object v9, v1, Lcom/android/server/wm/WindowState;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    iget-object v10, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v10, v10, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/android/server/DssController;->scaleExistingMergedConfiguration(Landroid/util/MergedConfiguration;Ljava/lang/String;)V

    .line 4709
    :cond_a5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->shouldSendRedrawForSync()Z

    move-result v8

    if-nez v8, :cond_b0

    if-eqz v0, :cond_ae

    goto :goto_b0

    :cond_ae
    move v11, v6

    goto :goto_b1

    :cond_b0
    :goto_b0
    move v11, v5

    .line 4711
    :goto_b1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isDragResizeChanged()Z

    move-result v9

    if-nez v8, :cond_be

    if-nez v7, :cond_be

    if-eqz v9, :cond_bc

    goto :goto_be

    :cond_bc
    move v14, v6

    goto :goto_bf

    :cond_be
    :goto_be
    move v14, v5

    .line 4713
    :goto_bf
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    .line 4715
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayPolicy;->areSystemBarsForcedShownLw()Z

    move-result v15

    .line 4716
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v8

    if-eqz v9, :cond_d4

    .line 4719
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->setDragResizing()V

    :cond_d4
    const/4 v9, -0x1

    .line 4722
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v10

    if-eqz v10, :cond_ea

    .line 4723
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getResizeMode()I

    move-result v10

    if-eqz v10, :cond_e7

    if-eq v10, v5, :cond_e4

    goto :goto_ea

    :cond_e4
    move/from16 v18, v5

    goto :goto_ec

    :cond_e7
    move/from16 v18, v6

    goto :goto_ec

    :cond_ea
    :goto_ea
    move/from16 v18, v9

    .line 4733
    :goto_ec
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->markRedrawForSyncReported()V

    .line 4736
    :try_start_ef
    iget-object v9, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget-object v10, v1, Lcom/android/server/wm/WindowState;->mClientWindowFrames:Landroid/window/ClientWindowFrames;

    iget-object v12, v1, Lcom/android/server/wm/WindowState;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    .line 4737
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getCompatInsetsState()Landroid/view/InsetsState;

    move-result-object v13

    iget v2, v1, Lcom/android/server/wm/WindowState;->mSyncSeqId:I

    move/from16 v16, v8

    move/from16 v17, v2

    .line 4736
    invoke-interface/range {v9 .. v18}, Landroid/view/IWindow;->resized(Landroid/window/ClientWindowFrames;ZLandroid/util/MergedConfiguration;Landroid/view/InsetsState;ZZIII)V

    if-eqz v0, :cond_124

    if-eqz v7, :cond_124

    .line 4739
    iget-boolean v0, v1, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v0, :cond_124

    .line 4740
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/wm/WindowState;->mOrientationChangeRedrawRequestTime:J

    .line 4741
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v0, :cond_124

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x21da2d5b

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v0, v7, v6

    invoke-static {v2, v3, v6, v4, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 4745
    :cond_124
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    move-result v0

    if-eqz v0, :cond_168

    .line 4746
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    new-array v2, v5, [I

    aput v8, v2, v6

    invoke-virtual {v0, v2}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMoved([I)V
    :try_end_139
    .catch Landroid/os/RemoteException; {:try_start_ef .. :try_end_139} :catch_13a

    goto :goto_168

    :catch_13a
    move-exception v0

    .line 4750
    invoke-virtual {v1, v6}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 4751
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-wide v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, v1, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    .line 4753
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to report \'resized\' to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " due to "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_168
    :goto_168
    const-wide/16 v1, 0x20

    .line 4755
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public requestDrawIfNeeded(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    .line 2608
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1d

    .line 2610
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FOLD_PHASE_LAYOUT_TRANSITION:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v0, v1, :cond_1c

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1c

    .line 2611
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_1d

    :cond_1c
    return-void

    .line 2618
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_39

    .line 2619
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    if-eqz v2, :cond_26

    return-void

    .line 2624
    :cond_26
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_34

    .line 2625
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v0

    if-eqz v0, :cond_55

    return-void

    .line 2629
    :cond_34
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_55

    return-void

    .line 2634
    :cond_39
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_44

    return-void

    .line 2643
    :cond_44
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 2644
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/KeyguardController;->isKeyguardGoingAway(I)Z

    move-result v0

    if-eqz v0, :cond_55

    return-void

    .line 2649
    :cond_55
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iput v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 2651
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->forceReportingResized()V

    .line 2652
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestRedrawForSync()V
    .registers 2

    const/4 v0, 0x0

    .line 7326
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRedrawForSyncReported:Z

    return-void
.end method

.method public requestUpdateWallpaperIfNeeded()V
    .registers 3

    .line 5400
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 5401
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->hasWallpaper()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 5402
    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 5403
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 5404
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 5407
    :cond_1c
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_24
    if-ltz v0, :cond_34

    .line 5408
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 5409
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->requestUpdateWallpaperIfNeeded()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_24

    :cond_34
    return-void
.end method

.method public resetAppOpsState()V
    .registers 5

    .line 4111
    iget v0, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_19

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    if-eqz v1, :cond_19

    .line 4112
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, p0, v3}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method public resetContentChanged()V
    .registers 2

    .line 6958
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowFrames;->setContentChanged(Z)V

    return-void
.end method

.method public resetDragResizingChangeReported()V
    .registers 2

    const/4 v0, 0x0

    .line 4984
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDragResizingChangeReported:Z

    .line 4985
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->resetDragResizingChangeReported()V

    return-void
.end method

.method public resetEffects()V
    .registers 2

    const/4 v0, 0x0

    .line 6976
    iput v0, p0, Lcom/android/server/wm/WindowState;->mLastBlurRadius:I

    .line 6977
    iput v0, p0, Lcom/android/server/wm/WindowState;->mLastSat:I

    return-void
.end method

.method public seamlesslyRotateIfAllowed(Landroid/view/SurfaceControl$Transaction;IIZ)V
    .registers 7

    .line 1032
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v0

    if-eqz v0, :cond_74

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v0, :cond_b

    goto :goto_74

    .line 1036
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->hasFixedRotationTransform()Z

    move-result v0

    if-eqz v0, :cond_14

    return-void

    .line 1040
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 1041
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_21

    return-void

    .line 1047
    :cond_21
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mPendingSeamlessRotate:Lcom/android/server/wm/SeamlessRotator;

    if-eqz v0, :cond_29

    .line 1048
    invoke-virtual {v0}, Lcom/android/server/wm/SeamlessRotator;->getOldRotation()I

    move-result p2

    .line 1052
    :cond_29
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    if-eqz v0, :cond_3a

    .line 1053
    invoke-virtual {v0}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getType()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_3a

    return-void

    .line 1057
    :cond_3a
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    if-nez v0, :cond_40

    if-eqz p4, :cond_74

    .line 1058
    :cond_40
    iget-object p4, p0, Lcom/android/server/wm/WindowContainer;->mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    if-eqz p4, :cond_47

    .line 1059
    invoke-virtual {p4}, Lcom/android/server/wm/InsetsSourceProvider;->startSeamlessRotation()V

    .line 1061
    :cond_47
    new-instance p4, Lcom/android/server/wm/SeamlessRotator;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p4, p2, p3, v0, v1}, Lcom/android/server/wm/SeamlessRotator;-><init>(IILandroid/view/DisplayInfo;Z)V

    iput-object p4, p0, Lcom/android/server/wm/WindowState;->mPendingSeamlessRotate:Lcom/android/server/wm/SeamlessRotator;

    .line 1065
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    iget-object p3, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    iget p4, p3, Landroid/graphics/Point;->x:I

    iget p3, p3, Landroid/graphics/Point;->y:I

    invoke-virtual {p2, p4, p3}, Landroid/graphics/Point;->set(II)V

    .line 1066
    iget-object p2, p0, Lcom/android/server/wm/WindowState;->mPendingSeamlessRotate:Lcom/android/server/wm/SeamlessRotator;

    invoke-virtual {p2, p1, p0}, Lcom/android/server/wm/SeamlessRotator;->unrotate(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V

    .line 1067
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/DisplayRotation;->markForSeamlessRotation(Lcom/android/server/wm/WindowState;Z)V

    .line 1069
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mSeamlessRotationFinishedConsumer:Ljava/util/function/Consumer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->applyWithNextDraw(Ljava/util/function/Consumer;)V

    :cond_74
    :goto_74
    return-void
.end method

.method public sendAppVisibilityToClients()V
    .registers 5

    const-string v0, "WindowManager"

    .line 4180
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->sendAppVisibilityToClients()V

    .line 4182
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowToken;->isClientVisible()Z

    move-result v1

    .line 4185
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_15

    if-nez v1, :cond_15

    return-void

    .line 4193
    :cond_15
    :try_start_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting visibility of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    .line 4194
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4193
    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4200
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2, v1}, Landroid/view/IWindow;->dispatchAppVisibility(Z)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_43} :catch_44

    goto :goto_59

    :catch_44
    move-exception v1

    .line 4202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown during dispatchAppVisibility "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_59
    return-void
.end method

.method public final setAppOpVisibilityLw(Z)V
    .registers 3

    .line 4078
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    if-eq v0, p1, :cond_10

    .line 4079
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_d

    .line 4087
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowState;->show(ZZ)Z

    goto :goto_10

    .line 4089
    :cond_d
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    :cond_10
    :goto_10
    return-void
.end method

.method public setDisplayLayoutNeeded()V
    .registers 1

    .line 3448
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 3450
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    :cond_9
    return-void
.end method

.method public setDragResizing()V
    .registers 3

    .line 5019
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->computeDragResizing()Z

    move-result v0

    .line 5020
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    if-ne v0, v1, :cond_9

    return-void

    .line 5023
    :cond_9
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    .line 5024
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 5025
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isDragResizing()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 5026
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getDragResizeMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowState;->mResizeMode:I

    goto :goto_33

    .line 5028
    :cond_1e
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    if-eqz v0, :cond_30

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedTaskDividerController;

    invoke-virtual {v0}, Lcom/android/server/wm/DockedTaskDividerController;->isResizing()Z

    move-result v0

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    .line 5030
    :goto_31
    iput v0, p0, Lcom/android/server/wm/WindowState;->mResizeMode:I

    :goto_33
    return-void
.end method

.method public setDrawnStateEvaluated(Z)V
    .registers 2

    .line 1567
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mDrawnStateEvaluated:Z

    return-void
.end method

.method public setForceHideNonSystemOverlayWindowIfNeeded(Z)V
    .registers 5

    .line 4015
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-boolean v0, v0, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    if-nez v0, :cond_5a

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4016
    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d5

    if-eq v0, v1, :cond_19

    goto :goto_5a

    .line 4020
    :cond_19
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIgnoreHideNonSystemOverlayWindow:Z

    if-eqz v0, :cond_34

    .line 4022
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Hide non system overlay window ignored app - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4027
    :cond_34
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7f6

    if-ne v1, v2, :cond_49

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->isSystemApplicationOverlay()Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-boolean v0, v0, Lcom/android/server/wm/Session;->mCanCreateSystemApplicationOverlay:Z

    if-eqz v0, :cond_49

    return-void

    .line 4032
    :cond_49
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mForceHideNonSystemOverlayWindow:Z

    if-ne v0, p1, :cond_4e

    return-void

    .line 4035
    :cond_4e
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mForceHideNonSystemOverlayWindow:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_57

    .line 4037
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    goto :goto_5a

    .line 4039
    :cond_57
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowState;->show(ZZ)Z

    :cond_5a
    :goto_5a
    return-void
.end method

.method public setForceUpdateMWHandlerLayer()V
    .registers 2

    .line 7815
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isMultiWindowHandler()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    .line 7816
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mNeedToForceUpdateMWHandlerLayer:Z

    :cond_9
    return-void
.end method

.method public setFrames(Landroid/window/ClientWindowFrames;II)V
    .registers 10

    .line 1606
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 1607
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1609
    sget-boolean v1, Landroid/view/ViewRootImpl;->LOCAL_LAYOUT:Z

    if-eqz v1, :cond_45

    .line 1610
    iget-object v1, v0, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1612
    iget-object v1, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1613
    iget-object v1, v0, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1614
    iget-object v1, v0, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1615
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->hasCompatScale()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 1617
    iget-object v1, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->scale(F)V

    .line 1618
    iget-object v1, v0, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->scale(F)V

    .line 1619
    iget-object v1, v0, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->scale(F)V

    goto :goto_6e

    .line 1622
    :cond_45
    iget-object v1, v0, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1623
    iget-object v1, v0, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1624
    iget-object v1, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1626
    iget-object v1, v0, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1627
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->hasCompatScale()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 1630
    iget-object v1, v0, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->scale(F)V

    .line 1633
    :cond_6e
    :goto_6e
    iget-boolean p1, p1, Landroid/window/ClientWindowFrames;->isParentFrameClippedByDisplayCutout:Z

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowFrames;->setParentFrameWasClippedByDisplayCutout(Z)V

    .line 1637
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->DSS_ENABLED:Z

    if-eqz p1, :cond_84

    iget-boolean p1, p0, Lcom/android/server/wm/WindowState;->mDssEnabled:Z

    if-eqz p1, :cond_84

    .line 1638
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object p1, p1, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mDssScale:F

    invoke-static {p1, v1}, Lcom/android/server/DssController$Tools;->applyScaleToCompatFrame(Landroid/graphics/Rect;F)V

    .line 1643
    :cond_84
    iget-object p1, v0, Lcom/android/server/wm/WindowFrames;->mRelFrame:Landroid/graphics/Rect;

    iget-object v1, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1644
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    .line 1647
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_9f

    .line 1648
    check-cast p1, Lcom/android/server/wm/WindowState;

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object p1, p1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 1649
    iget p1, p1, Landroid/graphics/Rect;->top:I

    goto :goto_ac

    :cond_9f
    if-eqz p1, :cond_aa

    .line 1651
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 1652
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 1653
    iget p1, p1, Landroid/graphics/Rect;->top:I

    goto :goto_ac

    :cond_aa
    move p1, v2

    move v1, p1

    .line 1655
    :goto_ac
    iget-object v3, v0, Lcom/android/server/wm/WindowFrames;->mRelFrame:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v1

    iget v1, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p1

    invoke-virtual {v3, v5, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1658
    iget p1, p0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    const/4 v1, 0x1

    if-ne p2, p1, :cond_cc

    iget p1, p0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    if-ne p3, p1, :cond_cc

    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    .line 1659
    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d3

    .line 1660
    :cond_cc
    iput p2, p0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    .line 1661
    iput p3, p0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    .line 1662
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowFrames;->setContentChanged(Z)V

    .line 1665
    :cond_d3
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 p2, 0x7f2

    if-ne p1, p2, :cond_e7

    .line 1666
    iget-object p1, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget-object p2, v0, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e7

    .line 1667
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mMovedByResize:Z

    .line 1671
    :cond_e7
    iget-boolean p1, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz p1, :cond_10a

    .line 1672
    iget-object p1, v0, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    .line 1673
    iget-object p2, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 1674
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne p3, v3, :cond_103

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    if-eq p1, p2, :cond_10a

    .line 1675
    :cond_103
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {p1, p0, v2}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffset(Lcom/android/server/wm/WindowState;Z)Z

    .line 1679
    :cond_10a
    iget-object p1, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->updateSourceFrame(Landroid/graphics/Rect;)V

    .line 1681
    sget-boolean p1, Landroid/view/ViewRootImpl;->LOCAL_LAYOUT:Z

    if-eqz p1, :cond_11a

    .line 1682
    iget-boolean p1, p0, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    if-nez p1, :cond_11a

    .line 1684
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->updateLastFrames()V

    .line 1688
    :cond_11a
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_125

    iget-boolean p2, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-nez p2, :cond_125

    .line 1689
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityRecord;->layoutLetterbox(Lcom/android/server/wm/WindowState;)V

    .line 1691
    :cond_125
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mSurfacePlacementNeeded:Z

    .line 1692
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    return-void
.end method

.method public setHasSurface(Z)V
    .registers 2

    .line 3261
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    return-void
.end method

.method public setHiddenWhileProfileLockedStateLocked(Z)V
    .registers 2

    return-void
.end method

.method public setHiddenWhileSuspended(Z)V
    .registers 4

    .line 4062
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOwnerCanAddInternalSystemWindow:Z

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4063
    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d5

    if-eq v0, v1, :cond_17

    goto :goto_28

    .line 4066
    :cond_17
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHiddenWhileSuspended:Z

    if-ne v0, p1, :cond_1c

    return-void

    .line 4069
    :cond_1c
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mHiddenWhileSuspended:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_25

    .line 4071
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    goto :goto_28

    .line 4073
    :cond_25
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowState;->show(ZZ)Z

    :cond_28
    :goto_28
    return-void
.end method

.method public setKeepClearAreas(Ljava/util/List;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)Z"
        }
    .end annotation

    .line 1199
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mKeepClearAreas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1200
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mUnrestrictedKeepClearAreas:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v1

    if-nez v0, :cond_15

    if-nez v2, :cond_15

    const/4 p0, 0x0

    return p0

    :cond_15
    if-eqz v0, :cond_21

    .line 1205
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mKeepClearAreas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1206
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mKeepClearAreas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_21
    if-eqz v2, :cond_2d

    .line 1210
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mUnrestrictedKeepClearAreas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1211
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mUnrestrictedKeepClearAreas:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2d
    return v1
.end method

.method public setLastExclusionHeights(III)V
    .registers 5

    .line 1119
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastGrantedExclusionHeight:[I

    aget v0, v0, p1

    if-ne v0, p3, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastRequestedExclusionHeight:[I

    aget v0, v0, p1

    if-eq v0, p2, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    if-eqz v0, :cond_21

    .line 1123
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLastShownChangedReported:Z

    if-eqz v0, :cond_19

    .line 1124
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->logExclusionRestrictions(I)V

    .line 1127
    :cond_19
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastGrantedExclusionHeight:[I

    aput p3, v0, p1

    .line 1128
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mLastRequestedExclusionHeight:[I

    aput p2, p0, p1

    :cond_21
    return-void
.end method

.method public setLayoutWithIme(Z)V
    .registers 2

    .line 7879
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mLayoutWithIme:Z

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    .line 7881
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mMovedByIme:Z

    :cond_7
    return-void
.end method

.method public setOnBackInvokedCallbackInfo(Landroid/window/OnBackInvokedCallbackInfo;)V
    .registers 8

    .line 1223
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_BACK_PREVIEW_enabled:Z

    if-eqz v0, :cond_1f

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0xda36ab0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const-string v0, "%s: Setting back callback %s"

    invoke-static {v2, v3, v5, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1225
    :cond_1f
    iput-object p1, p0, Lcom/android/server/wm/WindowState;->mOnBackInvokedCallbackInfo:Landroid/window/OnBackInvokedCallbackInfo;

    return-void
.end method

.method public setOrientationChanging(Z)V
    .registers 4

    const/4 v0, 0x0

    .line 1958
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOrientationChangeTimedOut:Z

    .line 1959
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-ne v1, p1, :cond_8

    return-void

    .line 1962
    :cond_8
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz p1, :cond_25

    .line 1964
    iput v0, p0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    .line 1965
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-boolean p1, p1, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    if-eqz p1, :cond_2c

    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1966
    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayContent;->shouldSyncRotationChange(Lcom/android/server/wm/WindowState;)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 1967
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    goto :goto_2c

    .line 1971
    :cond_25
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayContent;->finishAsyncRotation(Lcom/android/server/wm/WindowToken;)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public setPolicyVisibilityFlag(I)V
    .registers 3

    .line 2322
    iget v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:I

    .line 2323
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    return-void
.end method

.method public setReplacementWindowIfNeeded(Lcom/android/server/wm/WindowState;)Z
    .registers 5

    .line 3431
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mReplacementWindow:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_28

    .line 3432
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 3434
    iput-object p1, p0, Lcom/android/server/wm/WindowState;->mReplacementWindow:Lcom/android/server/wm/WindowState;

    .line 3435
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Lcom/android/server/wm/WindowState;->mSkipEnterAnimationForSeamlessReplacement:Z

    move v0, v1

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    .line 3439
    :goto_29
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_30
    if-ltz v2, :cond_42

    .line 3440
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 3441
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowState;->setReplacementWindowIfNeeded(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    or-int/2addr v0, v1

    add-int/lit8 v2, v2, -0x1

    goto :goto_30

    :cond_42
    return v0
.end method

.method public setReportResizeHints()Z
    .registers 1

    .line 1796
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowFrames;->setReportResizeHints()Z

    move-result p0

    return p0
.end method

.method public setRequestedSize(II)V
    .registers 4

    .line 3662
    iget v0, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    if-ne v0, p1, :cond_8

    iget v0, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    if-eq v0, p2, :cond_f

    :cond_8
    const/4 v0, 0x1

    .line 3663
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 3664
    iput p1, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .line 3665
    iput p2, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    :cond_f
    return-void
.end method

.method public setRequestedVisibilities(Landroid/view/InsetsVisibilities;)V
    .registers 2

    .line 997
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;

    invoke-virtual {p0, p1}, Landroid/view/InsetsVisibilities;->set(Landroid/view/InsetsVisibilities;)V

    return-void
.end method

.method public setSurfaceTranslationX(I)V
    .registers 2

    .line 7502
    iput p1, p0, Lcom/android/server/wm/WindowState;->mSurfaceTranslationX:I

    return-void
.end method

.method public setSurfaceTranslationY(I)V
    .registers 2

    .line 7512
    iput p1, p0, Lcom/android/server/wm/WindowState;->mSurfaceTranslationY:I

    return-void
.end method

.method public setSystemGestureExclusion(Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)Z"
        }
    .end annotation

    .line 1102
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mExclusionRects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 1105
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mExclusionRects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1106
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mExclusionRects:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public setTspDeadzone(Landroid/os/Bundle;)V
    .registers 2

    .line 7333
    iput-object p1, p0, Lcom/android/server/wm/WindowState;->mTspDeadzone:Landroid/os/Bundle;

    return-void
.end method

.method public setTspNoteMode(Z)V
    .registers 2

    .line 7349
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mIsTspNoteMode:Z

    return-void
.end method

.method public setViewVisibility(I)V
    .registers 2

    .line 7185
    iput p1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    return-void
.end method

.method public setWaitingForDrawnIfResizingChanged()V
    .registers 2

    .line 4966
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizeChanged()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4967
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4969
    :cond_f
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->setWaitingForDrawnIfResizingChanged()V

    return-void
.end method

.method public setWallpaperOffset(IIF)Z
    .registers 5

    .line 7525
    iget v0, p0, Lcom/android/server/wm/WindowState;->mXOffset:I

    if-ne v0, p1, :cond_12

    iget v0, p0, Lcom/android/server/wm/WindowState;->mYOffset:I

    if-ne v0, p2, :cond_12

    iget v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperScale:F

    invoke-static {v0, p3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_12

    const/4 p0, 0x0

    return p0

    .line 7528
    :cond_12
    iput p1, p0, Lcom/android/server/wm/WindowState;->mXOffset:I

    .line 7529
    iput p2, p0, Lcom/android/server/wm/WindowState;->mYOffset:I

    .line 7530
    iput p3, p0, Lcom/android/server/wm/WindowState;->mWallpaperScale:F

    .line 7531
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    const/4 p0, 0x1

    return p0
.end method

.method public setWillReplaceChildWindows()V
    .registers 3

    .line 5455
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->shouldBeReplacedWithChildren()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 5456
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->setWillReplaceWindow(Z)V

    .line 5458
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_12
    if-ltz v0, :cond_22

    .line 5459
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 5460
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->setWillReplaceChildWindows()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    :cond_22
    return-void
.end method

.method public setWillReplaceWindow(Z)V
    .registers 6

    .line 5357
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_18

    .line 5358
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 5359
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowState;->setWillReplaceWindow(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 5362
    :cond_18
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v3, 0x8000

    and-int/2addr v2, v3

    if-nez v2, :cond_2f

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_28

    goto :goto_2f

    .line 5369
    :cond_28
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    const/4 v0, 0x0

    .line 5370
    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mReplacementWindow:Lcom/android/server/wm/WindowState;

    .line 5371
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    :cond_2f
    :goto_2f
    return-void
.end method

.method public setWindowScale(II)V
    .registers 6

    .line 3780
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_25

    .line 3786
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v1, p1, :cond_17

    int-to-float v1, v1

    int-to-float p1, p1

    div-float/2addr v1, p1

    goto :goto_18

    :cond_17
    move v1, v2

    .line 3787
    :goto_18
    iput v1, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    .line 3788
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq p1, p2, :cond_22

    int-to-float p1, p1

    int-to-float p2, p2

    div-float v2, p1, p2

    .line 3789
    :cond_22
    iput v2, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    goto :goto_29

    .line 3791
    :cond_25
    iput v2, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    iput v2, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    :goto_29
    return-void
.end method

.method public final setupWindowForRemoveOnExit()V
    .registers 4

    const/4 v0, 0x1

    .line 3247
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    .line 3248
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 3249
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayPolicy;->removeWindowLw(Lcom/android/server/wm/WindowState;)V

    .line 3252
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v0

    .line 3254
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    if-eqz v0, :cond_2d

    .line 3256
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    :cond_2d
    return-void
.end method

.method public final shouldApplyMoveAnimation()Z
    .registers 5

    .line 2807
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->useBLASTSync()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 2814
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_10

    return v2

    .line 2817
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 2818
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getDimmer()Lcom/android/server/wm/Dimmer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/Dimmer;->isDimming()Z

    move-result v3

    if-nez v3, :cond_24

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mMovedByIme:Z

    if-nez v3, :cond_25

    :cond_24
    return v1

    .line 2822
    :cond_25
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_32

    return v1

    :cond_32
    return v2
.end method

.method public shouldBeReplacedWithChildren()Z
    .registers 2

    .line 5450
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-nez v0, :cond_11

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_11

    const/4 v0, 0x4

    if-ne p0, v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method public shouldCheckTokenVisibleRequested()Z
    .registers 2

    .line 2305
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_f

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public shouldControlIme()Z
    .registers 1

    .line 7582
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final shouldDrawBlurBehind()Z
    .registers 2

    .line 6416
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mBlurController:Lcom/android/server/wm/BlurController;

    .line 6417
    invoke-virtual {p0}, Lcom/android/server/wm/BlurController;->getBlurEnabled()Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public final shouldFinishAnimatingExit()Z
    .registers 7

    .line 5879
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1e

    .line 5880
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v0, :cond_1d

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x44452fc5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v0, v4, v3, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1d
    return v3

    .line 5884
    :cond_1e
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->okToAnimate()Z

    move-result v0

    if-nez v0, :cond_27

    return v2

    .line 5889
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 5890
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isMultiWindowHandler()Z

    move-result v4

    if-eqz v4, :cond_40

    iget v4, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_40

    if-eqz v0, :cond_40

    .line 5891
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isChangingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_40

    return v2

    .line 5897
    :cond_40
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isExitAnimationRunningSelfOrParent()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 5898
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v0, :cond_5a

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x2c5659ba

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v0, v4, v3, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5a
    return v3

    .line 5904
    :cond_5b
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 5905
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v0, :cond_79

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0xc726d6f

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v0, v4, v3, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_79
    return v3

    :cond_7a
    return v2
.end method

.method public final shouldKeepVisibleDeadAppWindow()Z
    .registers 4

    .line 3826
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isWinVisibleLw()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->isClientVisible()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_30

    .line 3831
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eq v0, v2, :cond_1f

    return v1

    .line 3837
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_27

    return v1

    .line 3843
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->keepVisibleDeadAppWindowOnScreen()Z

    move-result p0

    return p0

    :cond_30
    :goto_30
    return v1
.end method

.method public shouldMagnify()Z
    .registers 6

    .line 6319
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->hasOneHandOpSpec()Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x7e8

    const/4 v3, 0x0

    if-eqz v0, :cond_25

    .line 6320
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v0, v2, :cond_1c

    const/16 p0, 0xa28

    if-eq v0, p0, :cond_1b

    const/16 p0, 0xa3b

    if-eq v0, p0, :cond_1b

    goto :goto_24

    :cond_1b
    return v3

    .line 6325
    :cond_1c
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v0, 0x100000

    and-int/2addr p0, v0

    if-eqz p0, :cond_24

    return v3

    :cond_24
    :goto_24
    return v1

    .line 6334
    :cond_25
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7f7

    if-eq v0, v4, :cond_4d

    const/16 v4, 0x7db

    if-eq v0, v4, :cond_4d

    const/16 v4, 0x7dc

    if-eq v0, v4, :cond_4d

    const/16 v4, 0x7eb

    if-eq v0, v4, :cond_4d

    const/16 v4, 0x7e3

    if-eq v0, v4, :cond_4d

    if-eq v0, v2, :cond_4d

    const/16 v2, 0x44c

    if-ne v0, v2, :cond_44

    goto :goto_4d

    .line 6347
    :cond_44
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v0, 0x400000

    and-int/2addr p0, v0

    if-eqz p0, :cond_4c

    return v3

    :cond_4c
    return v1

    :cond_4d
    :goto_4d
    return v3
.end method

.method public final shouldNotifyMoved()Z
    .registers 6

    .line 2849
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 2855
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowFrames;->hasContentChanged()Z

    move-result v0

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mMovedByResize:Z

    if-eqz v0, :cond_4b

    :cond_18
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-ne v3, v4, :cond_2e

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-eq v2, v0, :cond_4b

    :cond_2e
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-eqz v0, :cond_3c

    .line 2859
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->hasMoved()Z

    move-result v0

    if-nez v0, :cond_4b

    :cond_3c
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2860
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result p0

    if-nez p0, :cond_4b

    const/4 v1, 0x1

    :cond_4b
    return v1
.end method

.method public final shouldRelativeToNaturalSwitchingAnchor()Z
    .registers 3

    .line 7834
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_22

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_22

    const/16 v1, 0xbb7

    if-gt v0, v1, :cond_22

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->multiwindowFlags:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_22

    const/4 p0, 0x1

    goto :goto_23

    :cond_22
    const/4 p0, 0x0

    :goto_23
    return p0
.end method

.method public final shouldSendRedrawForSync()Z
    .registers 2

    .line 7319
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRedrawForSyncReported:Z

    if-eqz v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 7322
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->useBLASTSync()Z

    move-result p0

    return p0
.end method

.method public show(ZZ)Z
    .registers 8

    .line 3915
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isLegacyPolicyVisibility()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    if-eqz v0, :cond_c

    return v1

    .line 3919
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->showToCurrentUser()Z

    move-result v0

    if-nez v0, :cond_13

    return v1

    .line 3922
    :cond_13
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    if-nez v0, :cond_18

    return v1

    .line 3926
    :cond_18
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    if-eqz v0, :cond_1d

    return v1

    .line 3931
    :cond_1d
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHiddenWhileSuspended:Z

    if-eqz v0, :cond_22

    return v1

    .line 3939
    :cond_22
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mForceHideNonSystemOverlayWindow:Z

    if-eqz v0, :cond_27

    return v1

    .line 3943
    :cond_27
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    const-string v2, "WindowManager"

    if-eqz v0, :cond_41

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Policy visibility true: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    if-eqz p1, :cond_83

    .line 3945
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    const/4 v3, 0x3

    if-eqz v0, :cond_6c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doAnimation: mPolicyVisibility="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3946
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isLegacyPolicyVisibility()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " animating="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3947
    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3945
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3948
    :cond_6c
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->okToAnimate()Z

    move-result v0

    if-nez v0, :cond_76

    :goto_74
    move p1, v1

    goto :goto_83

    .line 3950
    :cond_76
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isLegacyPolicyVisibility()Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result v0

    if-nez v0, :cond_83

    goto :goto_74

    :cond_83
    :goto_83
    const/4 v0, 0x1

    .line 3957
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->setPolicyVisibilityFlag(I)V

    .line 3958
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    if-eqz p1, :cond_90

    .line 3960
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p1, v0, v0}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    :cond_90
    if-eqz p2, :cond_97

    .line 3963
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 3965
    :cond_97
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_a4

    .line 3966
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v1, v1}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    :cond_a4
    return v0
.end method

.method public showForAllUsers()Z
    .registers 3

    .line 4387
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_40

    const/16 v1, 0x7e8

    if-eq v0, v1, :cond_40

    const/16 v1, 0x7ee

    if-eq v0, v1, :cond_40

    const/16 v1, 0x7f2

    if-eq v0, v1, :cond_40

    const/16 v1, 0x7f5

    if-eq v0, v1, :cond_40

    const/16 v1, 0x7ea

    if-eq v0, v1, :cond_40

    const/16 v1, 0x7eb

    if-eq v0, v1, :cond_40

    packed-switch v0, :pswitch_data_44

    packed-switch v0, :pswitch_data_4e

    packed-switch v0, :pswitch_data_58

    packed-switch v0, :pswitch_data_68

    .line 4390
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerServiceExt;->showForAllUsers(I)Z

    move-result v0

    if-eqz v0, :cond_36

    goto :goto_40

    .line 4399
    :cond_36
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_40

    const/4 p0, 0x0

    return p0

    .line 4432
    :cond_40
    :goto_40
    :pswitch_40
    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mOwnerCanAddInternalSystemWindow:Z

    return p0

    nop

    :pswitch_data_44
    .packed-switch 0x7d0
        :pswitch_40
        :pswitch_40
        :pswitch_40
    .end packed-switch

    :pswitch_data_4e
    .packed-switch 0x7d7
        :pswitch_40
        :pswitch_40
        :pswitch_40
    .end packed-switch

    :pswitch_data_58
    .packed-switch 0x7e1
        :pswitch_40
        :pswitch_40
        :pswitch_40
        :pswitch_40
        :pswitch_40
        :pswitch_40
    .end packed-switch

    :pswitch_data_68
    .packed-switch 0x7f7
        :pswitch_40
        :pswitch_40
        :pswitch_40
    .end packed-switch
.end method

.method public showInsets(IZ)V
    .registers 3

    .line 4818
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {p0, p1, p2}, Landroid/view/IWindow;->showInsets(IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p0

    const-string p1, "WindowManager"

    const-string p2, "Failed to deliver showInsets"

    .line 4820
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public showToCurrentUser()Z
    .registers 5

    .line 4439
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTopParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 4440
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x1

    const/16 v3, 0x7d0

    if-ge v1, v3, :cond_4e

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_4e

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityRecord;->mShowForAllUsers:Z

    if-eqz v1, :cond_4e

    .line 4446
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-gt v1, v3, :cond_4e

    .line 4447
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-gt v1, v3, :cond_4e

    .line 4448
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-lt v1, v3, :cond_4e

    .line 4449
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-lt v1, v3, :cond_4e

    return v2

    .line 4455
    :cond_4e
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->showForAllUsers()Z

    move-result v1

    if-nez v1, :cond_60

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mShowUserId:I

    .line 4456
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfile(I)Z

    move-result p0

    if-eqz p0, :cond_5f

    goto :goto_60

    :cond_5f
    const/4 v2, 0x0

    :cond_60
    :goto_60
    return v2
.end method

.method public showWallpaper()Z
    .registers 2

    .line 7295
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 7298
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_12

    .line 7301
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->hasWallpaper()Z

    move-result p0

    return p0

    :cond_12
    :goto_12
    const/4 p0, 0x0

    return p0
.end method

.method public skipLayout()Z
    .registers 3

    .line 1594
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mReplacingRemoveRequested:Z

    if-nez v0, :cond_e

    :cond_d
    return v1

    .line 1602
    :cond_e
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_17

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->mWaitForEnteringPinnedMode:Z

    if-eqz p0, :cond_17

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    return v1
.end method

.method public final startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;)V
    .registers 5

    .line 6216
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    const/16 v1, 0x10

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/wm/WindowContainer;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V

    return-void
.end method

.method public startAnimation(Landroid/view/animation/Animation;)V
    .registers 7

    .line 6179
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    if-eqz v0, :cond_5

    return-void

    .line 6183
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 6184
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, v0, Landroid/view/DisplayInfo;->appWidth:I

    iget v0, v0, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/view/animation/Animation;->initialize(IIII)V

    const-wide/16 v0, 0x2710

    .line 6186
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 6187
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowAnimationScaleLocked()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 6188
    new-instance v0, Lcom/android/server/wm/LocalAnimationAdapter;

    new-instance v1, Lcom/android/server/wm/WindowAnimationSpec;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/android/server/wm/WindowAnimationSpec;-><init>(Landroid/view/animation/Animation;Landroid/graphics/Point;ZF)V

    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-direct {v0, v1, p1}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 6192
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowState;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;)V

    .line 6193
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->commitPendingTransaction()V

    return-void
.end method

.method public startAnimation(Landroid/view/animation/Animation;Z)V
    .registers 8

    .line 7946
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 7947
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, v0, Landroid/view/DisplayInfo;->appWidth:I

    iget v0, v0, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 7949
    new-instance v0, Lcom/android/server/wm/LocalAnimationAdapter;

    new-instance v1, Lcom/android/server/wm/WindowAnimationSpec;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/android/server/wm/WindowAnimationSpec;-><init>(Landroid/view/animation/Animation;Landroid/graphics/Point;ZF)V

    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-direct {v0, v1, p1}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 7953
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    const/16 v1, 0x10

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/server/wm/WindowContainer;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V

    .line 7954
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->commitPendingTransaction()V

    return-void
.end method

.method public final startMoveAnimation(II)V
    .registers 12

    .line 6199
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    if-eqz v0, :cond_5

    return-void

    .line 6203
    :cond_5
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ANIM_enabled:Z

    if-eqz v0, :cond_1c

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, -0x14bc03de

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 6204
    :cond_1c
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 6205
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 6206
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v3, v2, v0}, Lcom/android/server/wm/WindowState;->transformFrameToSurfacePosition(IILandroid/graphics/Point;)V

    .line 6208
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/WindowState;->transformFrameToSurfacePosition(IILandroid/graphics/Point;)V

    .line 6209
    new-instance p1, Lcom/android/server/wm/LocalAnimationAdapter;

    new-instance p2, Lcom/android/server/wm/WindowState$MoveAnimationSpec;

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    iget v6, v1, Landroid/graphics/Point;->x:I

    iget v7, v1, Landroid/graphics/Point;->y:I

    const/4 v8, 0x0

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/WindowState$MoveAnimationSpec;-><init>(Lcom/android/server/wm/WindowState;IIIILcom/android/server/wm/WindowState$MoveAnimationSpec-IA;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-direct {p1, p2, v0}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 6212
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/WindowState;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;)V

    return-void
.end method

.method public final subtractTouchExcludeRegionIfNeeded(Landroid/graphics/Region;)V
    .registers 3

    .line 4546
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTapExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 4549
    :cond_9
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    .line 4550
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->getTapExcludeRegion(Landroid/graphics/Region;)V

    .line 4551
    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1b

    .line 4552
    sget-object p0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 4554
    :cond_1b
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    return-void
.end method

.method public surfaceInsetsChanging()Z
    .registers 2

    .line 6106
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastSurfaceInsets:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object p0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public switchUser(I)V
    .registers 4

    .line 3456
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->switchUser(I)V

    .line 3458
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->showToCurrentUser()Z

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_e

    .line 3459
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->setPolicyVisibilityFlag(I)V

    goto :goto_42

    .line 3461
    :cond_e
    sget-boolean p1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz p1, :cond_3f

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "user changing, hiding "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", attrs="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", belonging to "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "WindowManager"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3463
    :cond_3f
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->clearPolicyVisibilityFlag(I)V

    :goto_42
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 5294
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v0

    .line 5295
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    if-ne v1, v0, :cond_12

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWasExiting:Z

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eq v1, v2, :cond_69

    .line 5296
    :cond_12
    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    .line 5297
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWasExiting:Z

    .line 5298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Window{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mShowUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5300
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SUPPORT_IQI:Z

    if-eqz v1, :cond_51

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_51

    .line 5301
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.att.iqi"

    const-string v3, "PKG_01"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_53

    .line 5303
    :cond_51
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    :goto_53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v1, :cond_5d

    const-string v1, " EXITING}"

    goto :goto_60

    :cond_5d
    const-string/jumbo v1, "}"

    :goto_60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    .line 5305
    :cond_69
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    return-object p0
.end method

.method public transferTouch()Z
    .registers 3

    .line 3377
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/android/server/input/InputManagerService;->transferTouch(Landroid/os/IBinder;I)Z

    move-result p0

    return p0
.end method

.method public transformFrameToSurfacePosition(IILandroid/graphics/Point;)V
    .registers 6

    .line 6560
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 6563
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    .line 6564
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result p2

    if-eqz p2, :cond_65

    .line 6565
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    .line 6566
    iget-object p2, p1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object p2, p2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    iget p2, p2, Landroid/graphics/Rect;->top:I

    neg-int p2, p2

    invoke-virtual {p3, v0, p2}, Landroid/graphics/Point;->offset(II)V

    .line 6569
    iget p2, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz v0, :cond_38

    .line 6570
    iget v0, p3, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p3, Landroid/graphics/Point;->x:I

    .line 6571
    iget v0, p3, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    add-float/2addr v0, v1

    float-to-int p2, v0

    iput p2, p3, Landroid/graphics/Point;->y:I

    .line 6575
    :cond_38
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->DSS_ENABLED:Z

    if-eqz p2, :cond_52

    iget-boolean p2, p0, Lcom/android/server/wm/WindowState;->mDssEnabled:Z

    if-eqz p2, :cond_52

    .line 6576
    iget p2, p3, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    iget v0, p0, Lcom/android/server/wm/WindowState;->mDssScale:F

    mul-float/2addr p2, v0

    add-float/2addr p2, v1

    float-to-int p2, p2

    iput p2, p3, Landroid/graphics/Point;->x:I

    .line 6577
    iget p2, p3, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    mul-float/2addr p2, v0

    add-float/2addr p2, v1

    float-to-int p2, p2

    iput p2, p3, Landroid/graphics/Point;->y:I

    .line 6582
    :cond_52
    iget-object p2, p0, Lcom/android/server/wm/WindowState;->mTmpPoint:Landroid/graphics/Point;

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object p1, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/WindowState;->transformSurfaceInsetsPosition(Landroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 6583
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mTmpPoint:Landroid/graphics/Point;

    iget p2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p3, p2, p1}, Landroid/graphics/Point;->offset(II)V

    goto :goto_83

    :cond_65
    if-eqz p1, :cond_83

    .line 6585
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isStartingWindowAssociatedToTask()Z

    move-result p2

    if-eqz p2, :cond_76

    .line 6586
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mStartingData:Lcom/android/server/wm/StartingData;

    iget-object p1, p1, Lcom/android/server/wm/StartingData;->mAssociatedTask:Lcom/android/server/wm/Task;

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    goto :goto_7a

    .line 6587
    :cond_76
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 6588
    :goto_7a
    iget p2, p1, Landroid/graphics/Rect;->left:I

    neg-int p2, p2

    iget p1, p1, Landroid/graphics/Rect;->top:I

    neg-int p1, p1

    invoke-virtual {p3, p2, p1}, Landroid/graphics/Point;->offset(II)V

    .line 6592
    :cond_83
    :goto_83
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mTmpPoint:Landroid/graphics/Point;

    iget-object p2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object p2, p2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowState;->transformSurfaceInsetsPosition(Landroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 6593
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mTmpPoint:Landroid/graphics/Point;

    iget p2, p1, Landroid/graphics/Point;->x:I

    neg-int p2, p2

    iget p1, p1, Landroid/graphics/Point;->y:I

    neg-int p1, p1

    invoke-virtual {p3, p2, p1}, Landroid/graphics/Point;->offset(II)V

    .line 6597
    iget p1, p3, Landroid/graphics/Point;->x:I

    iget p2, p0, Lcom/android/server/wm/WindowState;->mSurfaceTranslationX:I

    add-int/2addr p1, p2

    iput p1, p3, Landroid/graphics/Point;->x:I

    .line 6600
    iget p1, p3, Landroid/graphics/Point;->y:I

    iget p0, p0, Lcom/android/server/wm/WindowState;->mSurfaceTranslationY:I

    add-int/2addr p1, p0

    iput p1, p3, Landroid/graphics/Point;->y:I

    return-void
.end method

.method public final transformSurfaceInsetsPosition(Landroid/graphics/Point;Landroid/graphics/Rect;)V
    .registers 6

    .line 6610
    iget v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    const/high16 v2, 0x3f000000    # 0.5f

    if-eqz v1, :cond_36

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-eqz v1, :cond_f

    goto :goto_36

    .line 6622
    :cond_f
    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 6623
    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    mul-float/2addr p2, v0

    add-float/2addr p2, v2

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Point;->y:I

    .line 6626
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->DSS_ENABLED:Z

    if-eqz v0, :cond_35

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDssEnabled:Z

    if-eqz v0, :cond_35

    int-to-float v0, v1

    .line 6627
    iget p0, p0, Lcom/android/server/wm/WindowState;->mDssScale:F

    div-float/2addr v0, p0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    div-float/2addr p2, p0

    add-float/2addr p2, v2

    float-to-int p0, p2

    .line 6628
    iput p0, p1, Landroid/graphics/Point;->y:I

    :cond_35
    return-void

    .line 6611
    :cond_36
    :goto_36
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 6612
    iget p2, p2, Landroid/graphics/Rect;->top:I

    iput p2, p1, Landroid/graphics/Point;->y:I

    .line 6615
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->DSS_ENABLED:Z

    if-eqz v1, :cond_54

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDssEnabled:Z

    if-eqz v1, :cond_54

    int-to-float v0, v0

    .line 6616
    iget p0, p0, Lcom/android/server/wm/WindowState;->mDssScale:F

    div-float/2addr v0, p0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    div-float/2addr p2, p0

    add-float/2addr p2, v2

    float-to-int p0, p2

    .line 6617
    iput p0, p1, Landroid/graphics/Point;->y:I

    :cond_54
    return-void
.end method

.method public translateToWindowX(F)F
    .registers 3

    .line 5414
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 5415
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->hasCompatScale()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 5416
    iget v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr p1, v0

    .line 5420
    :cond_11
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->DSS_ENABLED:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDssEnabled:Z

    if-eqz v0, :cond_1c

    .line 5421
    iget p0, p0, Lcom/android/server/wm/WindowState;->mDssScale:F

    mul-float/2addr p1, p0

    :cond_1c
    return p1
.end method

.method public translateToWindowY(F)F
    .registers 3

    .line 5428
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 5429
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->hasCompatScale()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 5430
    iget v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr p1, v0

    .line 5434
    :cond_11
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->DSS_ENABLED:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDssEnabled:Z

    if-eqz v0, :cond_1c

    .line 5435
    iget p0, p0, Lcom/android/server/wm/WindowState;->mDssScale:F

    mul-float/2addr p1, p0

    :cond_1c
    return p1
.end method

.method public unfreezeInsetsAfterStartInput()V
    .registers 2

    .line 7597
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_7

    const/4 v0, 0x0

    .line 7598
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mImeInsetsFrozenUntilStartInput:Z

    :cond_7
    return-void
.end method

.method public unregisterFocusObserver(Landroid/view/IWindowFocusObserver;)V
    .registers 3

    .line 4886
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4887
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz p0, :cond_f

    .line 4888
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 4890
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_14
    move-exception p0

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public updateAboveInsetsState(Landroid/view/InsetsState;Landroid/util/SparseArray;Landroid/util/ArraySet;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/InsetsState;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/InsetsSourceProvider;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    .line 5675
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLocalInsetsSourceProviders:Landroid/util/SparseArray;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_2b

    .line 5676
    invoke-static {p2}, Lcom/android/server/wm/WindowContainer;->createShallowCopy(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object p2

    const/4 v0, 0x0

    .line 5677
    :goto_f
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mLocalInsetsSourceProviders:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 5678
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mLocalInsetsSourceProviders:Landroid/util/SparseArray;

    .line 5679
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mLocalInsetsSourceProviders:Landroid/util/SparseArray;

    .line 5680
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/InsetsSourceProvider;

    .line 5678
    invoke-virtual {p2, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 5684
    :cond_2b
    invoke-static {p2}, Lcom/android/server/wm/WindowState;->toInsetsSources(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object p2

    .line 5689
    new-instance v0, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p3, p2}, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda5;-><init>(Landroid/view/InsetsState;Landroid/util/ArraySet;Landroid/util/SparseArray;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public updateAppOpsState()V
    .registers 10

    .line 4118
    iget v0, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    return-void

    .line 4121
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v4

    .line 4122
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v5

    .line 4123
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_30

    .line 4126
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    invoke-virtual {v0, v2, v4, v5}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_46

    if-eq v0, v1, :cond_46

    .line 4128
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4129
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->setAppOpVisibilityLw(Z)V

    goto :goto_46

    .line 4132
    :cond_30
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget v3, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "attempt-to-be-visible"

    invoke-virtual/range {v2 .. v8}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_42

    if-ne v0, v1, :cond_46

    :cond_42
    const/4 v0, 0x1

    .line 4135
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->setAppOpVisibilityLw(Z)V

    :cond_46
    :goto_46
    return-void
.end method

.method public updateFrameRateSelectionPriorityIfNeeded()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 6429
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getRefreshRatePolicy()Lcom/android/server/wm/RefreshRatePolicy;

    move-result-object v0

    .line 6430
    invoke-virtual {v0, p0}, Lcom/android/server/wm/RefreshRatePolicy;->calculatePriority(Lcom/android/server/wm/WindowState;)I

    move-result v1

    .line 6431
    iget v2, p0, Lcom/android/server/wm/WindowState;->mFrameRateSelectionPriority:I

    if-eq v2, v1, :cond_21

    .line 6432
    iput v1, p0, Lcom/android/server/wm/WindowState;->mFrameRateSelectionPriority:I

    .line 6433
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v3, p0, Lcom/android/server/wm/WindowState;->mFrameRateSelectionPriority:I

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setFrameRateSelectionPriority(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 6440
    :cond_21
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerInternal;->getRefreshRateSwitchingType()I

    move-result v1

    if-eqz v1, :cond_45

    .line 6442
    invoke-virtual {v0, p0}, Lcom/android/server/wm/RefreshRatePolicy;->getPreferredRefreshRate(Lcom/android/server/wm/WindowState;)F

    move-result v0

    .line 6443
    iget v1, p0, Lcom/android/server/wm/WindowState;->mAppPreferredFrameRate:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_45

    .line 6444
    iput v0, p0, Lcom/android/server/wm/WindowState;->mAppPreferredFrameRate:F

    .line 6445
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget p0, p0, Lcom/android/server/wm/WindowState;->mAppPreferredFrameRate:F

    const/16 v2, 0x64

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setFrameRate(Landroid/view/SurfaceControl;FII)Landroid/view/SurfaceControl$Transaction;

    :cond_45
    return-void
.end method

.method public updateGlobalScale()Z
    .registers 4

    .line 1511
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->hasCompatScale()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_34

    .line 1512
    iget v0, p0, Lcom/android/server/wm/WindowState;->mOverrideScale:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_25

    .line 1513
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->hasSizeCompatBounds()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1514
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getSizeCompatScale()F

    move-result v0

    iget v2, p0, Lcom/android/server/wm/WindowState;->mOverrideScale:F

    mul-float/2addr v0, v2

    goto :goto_22

    .line 1515
    :cond_20
    iget v0, p0, Lcom/android/server/wm/WindowState;->mOverrideScale:F

    :goto_22
    iput v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    goto :goto_2d

    .line 1517
    :cond_25
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getSizeCompatScale()F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 1519
    :goto_2d
    iget v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    const/4 p0, 0x1

    return p0

    .line 1523
    :cond_34
    iput v1, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    iput v1, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    const/4 p0, 0x0

    return p0
.end method

.method public updateLastFrames()V
    .registers 3

    .line 6157
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v0, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6158
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, p0, Lcom/android/server/wm/WindowFrames;->mLastRelFrame:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/server/wm/WindowFrames;->mRelFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public updateLetterboxDirectionIfNeeded()V
    .registers 5

    .line 7659
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayCutout:Landroid/view/DisplayCutout;

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    .line 7660
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v0, :cond_23

    .line 7661
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    new-instance v2, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 7666
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mLetterboxUiController:Lcom/android/server/wm/LetterboxUiController;

    invoke-virtual {v0}, Lcom/android/server/wm/LetterboxUiController;->getLetterboxDirection()I

    move-result v1

    goto :goto_3b

    .line 7668
    :cond_23
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_3b

    .line 7669
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 7670
    :cond_33
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mLetterboxUiController:Lcom/android/server/wm/LetterboxUiController;

    invoke-virtual {v0}, Lcom/android/server/wm/LetterboxUiController;->getLetterboxDirection()I

    move-result v1

    .line 7674
    :cond_3b
    :goto_3b
    iget v0, p0, Lcom/android/server/wm/WindowState;->mLetterboxDirection:I

    if-eq v0, v1, :cond_8c

    .line 7675
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    const-string v2, "WindowManager"

    if-eqz v0, :cond_6f

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_6f

    .line 7676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Letterbox direction, new="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", old="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/WindowState;->mLetterboxDirection:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", win="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7679
    :cond_6f
    iput v1, p0, Lcom/android/server/wm/WindowState;->mLetterboxDirection:I

    .line 7681
    :try_start_71
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0, v1}, Landroid/view/IWindow;->dispatchLetterboxDirectionChanged(I)V
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_71 .. :try_end_76} :catch_77

    goto :goto_8c

    :catch_77
    move-exception v0

    .line 7683
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to deliver letterbox direction, w="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8c
    :goto_8c
    return-void
.end method

.method public final updatePopOverDimmer()V
    .registers 5

    .line 7734
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 7739
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 7740
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 7741
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 7742
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_37

    .line 7745
    :cond_31
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 7747
    :goto_37
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mPopOverDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/Dimmer;->updateDims(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 7748
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    :cond_48
    return-void
.end method

.method public final updateRegionForModalActivityWindow(Landroid/graphics/Region;)V
    .registers 3

    const/4 v0, 0x0

    .line 3583
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowState;->updateRegionForModalActivityWindow(Landroid/graphics/Region;Z)V

    return-void
.end method

.method public final updateRegionForModalActivityWindow(Landroid/graphics/Region;Z)V
    .registers 5

    .line 3591
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->getLetterboxInnerBounds(Landroid/graphics/Rect;)V

    .line 3592
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 3593
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 3598
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_48

    .line 3605
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 3607
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 3609
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    goto :goto_48

    .line 3611
    :cond_2f
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_48

    .line 3613
    :cond_39
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 3614
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 3620
    :cond_48
    :goto_48
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/WindowState;->adjustRegionInFreefromWindowMode(Landroid/graphics/Rect;Z)V

    .line 3626
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_ACTIVITY:Z

    if-eqz p2, :cond_56

    .line 3627
    iget-object p2, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowState;->adjustRegionInActivityGroup(Landroid/graphics/Rect;)V

    .line 3630
    :cond_56
    iget-object p2, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 3631
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->cropRegionToRootTaskBoundsIfNeeded(Landroid/graphics/Region;)V

    return-void
.end method

.method public updateReportedVisibility(Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;)V
    .registers 8

    .line 6068
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_18

    .line 6069
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 6070
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowState;->updateReportedVisibility(Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 6073
    :cond_18
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v0, :cond_ed

    iget v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v0, :cond_ed

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_ed

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v0, :cond_ed

    .line 6077
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isMultiWindowHandler()Z

    move-result v0

    if-eqz v0, :cond_33

    goto/16 :goto_ed

    .line 6080
    :cond_33
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_c7

    .line 6081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Win "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": isDrawn="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", animating="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6082
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "WindowManager"

    .line 6081
    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6083
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v0

    if-nez v0, :cond_c7

    .line 6084
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not displayed: s="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " pv="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6085
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mDrawState="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ph="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6087
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " th="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v5, :cond_b0

    iget-boolean v5, v5, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v5, :cond_b0

    move v5, v1

    goto :goto_b1

    :cond_b0
    move v5, v3

    :goto_b1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " a="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6089
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6084
    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6093
    :cond_c7
    iget v0, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numInteresting:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numInteresting:I

    .line 6094
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v0

    if-eqz v0, :cond_e5

    .line 6095
    iget v0, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numDrawn:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numDrawn:I

    .line 6096
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result p0

    if-nez p0, :cond_e2

    .line 6097
    iget p0, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numVisible:I

    add-int/2addr p0, v1

    iput p0, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numVisible:I

    .line 6099
    :cond_e2
    iput-boolean v3, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->nowGone:Z

    goto :goto_ed

    .line 6100
    :cond_e5
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result p0

    if-eqz p0, :cond_ed

    .line 6101
    iput-boolean v3, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->nowGone:Z

    :cond_ed
    :goto_ed
    return-void
.end method

.method public updateResizingWindowIfNeeded()V
    .registers 17

    move-object/from16 v0, p0

    .line 1804
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowFrames;->hasInsetsChanged()Z

    move-result v1

    .line 1805
    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v2, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    iget v3, v0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    if-ne v2, v3, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isGoneForLayout()Z

    move-result v2

    if-eqz v2, :cond_1f

    :cond_1c
    if-nez v1, :cond_1f

    return-void

    .line 1810
    :cond_1f
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 1811
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->setReportResizeHints()Z

    move-result v3

    .line 1814
    iget-boolean v4, v0, Lcom/android/server/wm/WindowState;->mInRelayout:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_33

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isLastConfigReportedToClient()Z

    move-result v4

    if-nez v4, :cond_33

    move v4, v5

    goto :goto_34

    :cond_33
    move v4, v6

    .line 1815
    :goto_34
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    const-string v8, "WindowManager"

    if-eqz v7, :cond_5c

    if-eqz v4, :cond_5c

    .line 1816
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Win "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " config changed: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    :cond_5c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isDragResizeChanged()Z

    move-result v7

    if-eqz v7, :cond_6a

    .line 1820
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isDragResizingChangeReported()Z

    move-result v7

    if-nez v7, :cond_6a

    move v7, v5

    goto :goto_6b

    :cond_6a
    move v7, v6

    .line 1822
    :goto_6b
    sget-boolean v9, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG:Z

    if-eqz v9, :cond_ab

    .line 1823
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Resizing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ": configChanged="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " dragResizingChanged="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " last="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v10, v10, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " frame="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v10, v10, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    :cond_ab
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->updateLastFrames()V

    const/4 v9, 0x0

    const/4 v10, 0x2

    if-nez v3, :cond_fc

    if-nez v4, :cond_fc

    if-nez v1, :cond_fc

    if-nez v7, :cond_fc

    .line 1834
    iget-boolean v11, v0, Lcom/android/server/wm/WindowState;->mReportOrientationChanged:Z

    if-nez v11, :cond_fc

    .line 1839
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->shouldSendRedrawForSync()Z

    move-result v11

    if-eqz v11, :cond_c3

    goto :goto_fc

    .line 1931
    :cond_c3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v1

    if-eqz v1, :cond_21b

    .line 1932
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v1

    if-eqz v1, :cond_21b

    .line 1933
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v1, :cond_eb

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x4f3c20c6

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v1, v7, v6

    aput-object v2, v7, v5

    invoke-static {v3, v4, v6, v9, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1936
    :cond_eb
    invoke-virtual {v0, v6}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 1937
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-wide v3, v3, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    goto/16 :goto_21b

    .line 1842
    :cond_fc
    :goto_fc
    sget-boolean v11, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RESIZE_enabled:Z

    if-eqz v11, :cond_151

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowFrames;->getInsetsChangedInfo()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    iget-boolean v13, v0, Lcom/android/server/wm/WindowState;->mReportOrientationChanged:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->shouldSendRedrawForSync()Z

    move-result v14

    sget-object v15, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RESIZE:Lcom/android/internal/protolog/ProtoLogGroup;

    const/16 v9, 0x8

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v11, v9, v6

    aput-object v12, v9, v5

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v9, v10

    const/4 v4, 0x3

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v4

    const/4 v4, 0x4

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v4

    const/4 v4, 0x5

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v4

    const/4 v4, 0x6

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v4

    const/4 v4, 0x7

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v4

    const v4, -0x63ce0298

    const v11, 0xfff0

    const/4 v12, 0x0

    invoke-static {v15, v4, v11, v12, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_151
    if-eqz v1, :cond_168

    .line 1860
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-virtual {v1, v6}, Lcom/android/server/wm/WindowFrames;->setInsetsChanged(Z)V

    .line 1861
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v4, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsInsetsChanged:I

    sub-int/2addr v4, v5

    iput v4, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsInsetsChanged:I

    if-nez v4, :cond_168

    .line 1863
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x42

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1869
    :cond_168
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_174

    iget-boolean v4, v0, Lcom/android/server/wm/WindowState;->mAppDied:Z

    if-eqz v4, :cond_174

    .line 1870
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->removeDeadWindows()V

    return-void

    .line 1874
    :cond_174
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->onResizeHandled()V

    .line 1875
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->makeWindowFreezingScreenIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    .line 1881
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v1

    if-nez v1, :cond_188

    if-nez v7, :cond_188

    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mRedrawForChangeTransition:Z

    if-eqz v1, :cond_1f5

    :cond_188
    if-eqz v7, :cond_1a7

    .line 1885
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RESIZE_enabled:Z

    if-eqz v1, :cond_1a7

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RESIZE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, -0x4bb4eee0

    new-array v11, v10, [Ljava/lang/Object;

    aput-object v1, v11, v6

    aput-object v4, v11, v5

    const/4 v1, 0x0

    invoke-static {v7, v9, v6, v1, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1890
    :cond_1a7
    iput v5, v2, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 1891
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_1c3

    .line 1893
    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mRedrawForChangeTransition:Z

    if-eqz v2, :cond_1bf

    .line 1894
    iput-boolean v6, v0, Lcom/android/server/wm/WindowState;->mRedrawForChangeTransition:Z

    .line 1896
    invoke-virtual {v1, v6}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-ne v1, v0, :cond_1f5

    .line 1897
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->clearAllDrawn()V

    goto :goto_1f5

    .line 1901
    :cond_1bf
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->clearAllDrawn()V

    goto :goto_1f5

    .line 1904
    :cond_1c3
    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-nez v1, :cond_1f5

    if-eqz v3, :cond_1f5

    .line 1905
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v1

    if-eqz v1, :cond_1f5

    .line 1906
    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mWaitToHandleResizing:Z

    if-eqz v1, :cond_1d6

    .line 1908
    invoke-virtual {v0, v10}, Lcom/android/server/wm/WindowState;->forceExecuteDrawHandlers(I)V

    .line 1912
    :cond_1d6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateResizingWindowIfNeeded, Start waiting to handle resizing w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mWaitToHandleResizing:Z

    .line 1917
    new-instance v1, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/WindowState;)V

    invoke-virtual {v0, v1, v10}, Lcom/android/server/wm/WindowState;->applyWithNextDraw(Ljava/util/function/Consumer;I)V

    .line 1927
    :cond_1f5
    :goto_1f5
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21b

    .line 1928
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RESIZE_enabled:Z

    if-eqz v1, :cond_214

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RESIZE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x28d4fe40

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v1, v4, v6

    const/4 v1, 0x0

    invoke-static {v2, v3, v6, v1, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1929
    :cond_214
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21b
    :goto_21b
    return-void
.end method

.method public final updateScaleIfNeeded()V
    .registers 11

    .line 6455
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->DSS_ENABLED:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-eqz v0, :cond_14

    .line 6457
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDssEnabled:Z

    if-nez v0, :cond_13

    .line 6458
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 6459
    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mDssEnabled:Z

    goto :goto_15

    :cond_13
    return-void

    :cond_14
    const/4 v0, 0x0

    .line 6467
    :goto_15
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleRequested()Z

    move-result v1

    if-nez v1, :cond_28

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v1

    if-nez v1, :cond_28

    :cond_27
    return-void

    .line 6472
    :cond_28
    iget v1, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    iget v2, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v1, v2

    iget v3, p0, Lcom/android/server/wm/WindowState;->mWallpaperScale:F

    mul-float/2addr v1, v3

    .line 6473
    iget v4, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v4, v2

    mul-float v2, v4, v3

    .line 6474
    iget v3, p0, Lcom/android/server/wm/WindowState;->mLastHScale:F

    cmpl-float v3, v3, v1

    if-nez v3, :cond_41

    iget v3, p0, Lcom/android/server/wm/WindowState;->mLastVScale:F

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_52

    .line 6475
    :cond_41
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v6, v1

    move v9, v2

    invoke-virtual/range {v4 .. v9}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 6476
    iput v1, p0, Lcom/android/server/wm/WindowState;->mLastHScale:F

    .line 6477
    iput v2, p0, Lcom/android/server/wm/WindowState;->mLastVScale:F

    .line 6481
    :cond_52
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->DSS_ENABLED:Z

    if-eqz v3, :cond_89

    if-eqz v0, :cond_6e

    .line 6483
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 6484
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget p0, v0, Lcom/android/server/wm/WindowState;->mDssScale:F

    mul-float v5, v1, p0

    const/4 v6, 0x0

    const/4 v7, 0x0

    mul-float v8, v2, p0

    invoke-virtual/range {v3 .. v8}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_89

    .line 6486
    :cond_6e
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDssEnabled:Z

    if-eqz v0, :cond_89

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result v0

    if-nez v0, :cond_89

    .line 6487
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget p0, p0, Lcom/android/server/wm/WindowState;->mDssScale:F

    div-float v5, v1, p0

    const/4 v6, 0x0

    const/4 v7, 0x0

    div-float v8, v2, p0

    invoke-virtual/range {v3 .. v8}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    :cond_89
    :goto_89
    return-void
.end method

.method public updateSourceFrame(Landroid/graphics/Rect;)V
    .registers 8

    .line 1696
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    if-eqz v0, :cond_5

    return-void

    .line 1704
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1705
    invoke-static {v0}, Lcom/android/server/wm/TaskbarController;->isTaskbar(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_21

    .line 1706
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 1707
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicyExt;->getTaskbarController()Lcom/android/server/wm/TaskbarController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskbarController;->getTaskbarInsetHeight()I

    move-result v0

    goto :goto_22

    :cond_21
    move v0, v1

    .line 1711
    :goto_22
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getProvidedInsetsSources()Landroid/util/SparseArray;

    move-result-object v2

    .line 1712
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v3

    .line 1713
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_34
    if-ltz v4, :cond_44

    .line 1714
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/server/wm/InsetsSourceProvider;->updateSourceFrame(Landroid/graphics/Rect;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_34

    :cond_44
    if-eq v0, v1, :cond_66

    .line 1720
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 1721
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicyExt;->getTaskbarController()Lcom/android/server/wm/TaskbarController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/TaskbarController;->getTaskbarInsetHeight()I

    move-result p1

    if-eq v0, p1, :cond_66

    .line 1722
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    new-instance p1, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    :cond_66
    return-void
.end method

.method public updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 6510
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    return-void

    .line 6514
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->isLayoutDeferred()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isGoneForLayout()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_15
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSurfacePlacementNeeded:Z

    if-nez v0, :cond_1a

    return-void

    :cond_1a
    const/4 v0, 0x0

    .line 6522
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSurfacePlacementNeeded:Z

    .line 6523
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/server/wm/WindowState;->transformFrameToSurfacePosition(IILandroid/graphics/Point;)V

    .line 6526
    iget v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_6b

    .line 6527
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getLastReportedBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 6528
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 6529
    iget v3, p0, Lcom/android/server/wm/WindowState;->mXOffset:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/server/wm/WindowState;->mYOffset:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 6530
    iget v3, p0, Lcom/android/server/wm/WindowState;->mWallpaperScale:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    .line 6531
    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    .line 6530
    invoke-virtual {v2, v3, v3, v4, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 6532
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpMatrixArray:[F

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 6533
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpMatrixArray:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mTmpMatrixArray:[F

    const/4 v4, 0x5

    aget v3, v3, v4

    .line 6534
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 6533
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->offset(II)V

    goto :goto_74

    .line 6536
    :cond_6b
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mXOffset:I

    iget v3, p0, Lcom/android/server/wm/WindowState;->mYOffset:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->offset(II)V

    .line 6541
    :goto_74
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/SurfaceAnimator;->hasLeash()Z

    move-result v1

    if-nez v1, :cond_d0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mPendingSeamlessRotate:Lcom/android/server/wm/SeamlessRotator;

    if-nez v1, :cond_d0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    .line 6542
    invoke-virtual {v1, v2}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d0

    .line 6543
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowFrames;->isFrameSizeChangeReported()Z

    move-result v1

    .line 6544
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->surfaceInsetsChanging()Z

    move-result v2

    if-nez v1, :cond_98

    if-eqz v2, :cond_99

    :cond_98
    const/4 v0, 0x1

    .line 6546
    :cond_99
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Point;->set(II)V

    if-eqz v2, :cond_af

    .line 6548
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastSurfaceInsets:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_af
    if-eqz v0, :cond_cb

    .line 6550
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v0

    if-eqz v0, :cond_cb

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->canPlayMoveAnimation()Z

    move-result v0

    if-nez v0, :cond_cb

    .line 6551
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->okToDisplay()Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 6552
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mSetSurfacePositionConsumer:Ljava/util/function/Consumer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->applyWithNextDraw(Ljava/util/function/Consumer;)V

    goto :goto_d0

    .line 6554
    :cond_cb
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mSetSurfacePositionConsumer:Ljava/util/function/Consumer;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_d0
    :goto_d0
    return-void
.end method

.method public updateTapExcludeRegion(Landroid/graphics/Region;)V
    .registers 4

    .line 6869
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_30

    if-eqz p1, :cond_1a

    .line 6875
    invoke-virtual {p1}, Landroid/graphics/Region;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_1a

    .line 6881
    :cond_f
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTapExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v1, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 6884
    iget-object p1, v0, Lcom/android/server/wm/DisplayContent;->mTapExcludeProvidingWindows:Landroid/util/ArraySet;

    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 6876
    :cond_1a
    :goto_1a
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mTapExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {p1}, Landroid/graphics/Region;->setEmpty()V

    .line 6879
    iget-object p1, v0, Lcom/android/server/wm/DisplayContent;->mTapExcludeProvidingWindows:Landroid/util/ArraySet;

    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 6888
    :goto_24
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->updateTouchExcludeRegion()V

    .line 6890
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    return-void

    .line 6871
    :cond_30
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Trying to update window not attached to any display."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public useBLASTSync()Z
    .registers 2

    .line 7367
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->useBLASTSync()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mDrawHandlers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method public waitingForReplacement()Z
    .registers 4

    .line 5386
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 5390
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_d
    if-ltz v0, :cond_21

    .line 5391
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 5392
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->waitingForReplacement()Z

    move-result v2

    if-eqz v2, :cond_1e

    return v1

    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method public willBeHideSViewCoverOnce()Z
    .registers 2

    .line 7698
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mShouldHideSViewOnce:Z

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mDisableHideSViewOnce:Z

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public wouldBeVisibleIfPolicyIgnored()Z
    .registers 4

    .line 2335
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v0, :cond_2b

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v0, :cond_14

    goto :goto_2b

    .line 2338
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1f

    move v0, v2

    goto :goto_20

    :cond_1f
    move v0, v1

    :goto_20
    if-eqz v0, :cond_2a

    .line 2339
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_2b

    :cond_2a
    move v1, v2

    :cond_2b
    :goto_2b
    return v1
.end method

.method public final wouldBeVisibleRequestedIfPolicyIgnored()Z
    .registers 4

    .line 2343
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    .line 2344
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisibleRequested()Z

    move-result v0

    if-nez v0, :cond_10

    move v0, v1

    goto :goto_11

    :cond_10
    move v0, v2

    :goto_11
    if-nez v0, :cond_34

    .line 2345
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v0, :cond_34

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v0, :cond_1c

    goto :goto_34

    .line 2348
    :cond_1c
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v0

    if-eqz v0, :cond_26

    move v0, v1

    goto :goto_27

    :cond_26
    move v0, v2

    :goto_27
    if-eqz v0, :cond_33

    .line 2349
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p0

    if-eqz p0, :cond_32

    goto :goto_33

    :cond_32
    move v1, v2

    :cond_33
    :goto_33
    return v1

    :cond_34
    :goto_34
    return v2
.end method

.method public writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 5093
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 5094
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5095
    iget v0, p0, Lcom/android/server/wm/WindowState;->mShowUserId:I

    const-wide v1, 0x10500000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5096
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_2c

    const-wide v0, 0x10900000003L

    .line 5098
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 5100
    :cond_2c
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
