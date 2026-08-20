.class public Lcom/android/server/wm/DisplayContent;
.super Lcom/android/server/wm/RootDisplayArea;
.source "DisplayContent.java"

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;,
        Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;,
        Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;,
        Lcom/android/server/wm/DisplayContent$ImeContainer;,
        Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;,
        Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;,
        Lcom/android/server/wm/DisplayContent$ImeScreenshot;,
        Lcom/android/server/wm/DisplayContent$InputMethodTarget;,
        Lcom/android/server/wm/DisplayContent$ForceScalingMode;
    }
.end annotation


# static fields
.field public static final EPSILON:F = 0.001f

.field public static final FIXED_ROTATION_HIDE_ANIMATION_DEBOUNCE_DELAY_MS:J = 0xfaL

.field public static final FORCE_SCALING_MODE_AUTO:I = 0x0

.field public static final FORCE_SCALING_MODE_DISABLED:I = 0x1

.field public static final IME_TARGET_CONTROL:I = 0x2

.field public static final IME_TARGET_LAYERING:I = 0x0

.field public static final TAG:Ljava/lang/String; = "WindowManager"

.field public static final TAG_SPEG:Ljava/lang/String; = "SPEG"


# instance fields
.field public isDefaultDisplay:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mActiveSizeCompatActivities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mAllSleepTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/RootWindowContainer$SleepToken;",
            ">;"
        }
    .end annotation
.end field

.field public final mAppTransition:Lcom/android/server/wm/AppTransition;

.field public final mAppTransitionController:Lcom/android/server/wm/AppTransitionController;

.field public volatile mApplicationPolicy:Lcom/samsung/android/knox/application/IApplicationPolicy;

.field public final mApplyPostLayoutPolicy:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field public final mApplySurfaceChangesTransaction:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field public mAsyncRotationController:Lcom/android/server/wm/AsyncRotationController;

.field public final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mBaseDisplayCutout:Landroid/view/DisplayCutout;

.field public mBaseDisplayDensity:I

.field public mBaseDisplayHeight:I

.field public mBaseDisplayPhysicalXDpi:F

.field public mBaseDisplayPhysicalYDpi:F

.field public mBaseDisplayWidth:I

.field public mBaseRoundedCorners:Landroid/view/RoundedCorners;

.field public final mChangingContainers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field public final mCloseToSquareMaxAspectRatio:F
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mClosingApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

.field public mCompatibleScreenScale:F

.field public final mComputeImeTargetPredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field public mContentRecorder:Lcom/android/server/wm/ContentRecorder;

.field public mCurrentFocus:Lcom/android/server/wm/WindowState;

.field public mCurrentOverrideConfigurationChanges:I

.field public mCurrentPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

.field public mCurrentUniqueDisplayId:Ljava/lang/String;

.field public mDeferUpdateImeTargetCount:I

.field public mDeferredRemoval:Z

.field public mDesktopModeManagerInternal:Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

.field public final mDisplay:Landroid/view/Display;

.field public mDisplayAccessUIDs:Landroid/util/IntArray;

.field public mDisplayAreaPolicy:Lcom/android/server/wm/DisplayAreaPolicy;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mDisplayAspectRatio:F

.field public final mDisplayCutoutCache:Lcom/android/server/wm/utils/RotationCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wm/utils/RotationCache<",
            "Landroid/view/DisplayCutout;",
            "Lcom/android/server/wm/utils/WmDisplayCutout;",
            ">;"
        }
    .end annotation
.end field

.field public mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

.field public mDisplayFreezeTime:I

.field public mDisplayFrozen:Z

.field public final mDisplayId:I

.field public final mDisplayInfo:Landroid/view/DisplayInfo;

.field public final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field public final mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

.field public mDisplayReady:Z

.field public final mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

.field public mDisplayScalingDisabled:Z

.field public mDisplaySwitchTransitionLauncher:Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;

.field public final mDividerControllerLocked:Lcom/android/server/wm/DockedTaskDividerController;

.field public mDontMoveToTop:Z

.field public mDwpcHelper:Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;

.field public mFadeInOutAnimationNeeded:Z

.field public final mFindFocusedWindow:Lcom/android/internal/util/ToBooleanFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field public mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

.field public final mFixedRotationTransitionListener:Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;

.field public mFocusedApp:Lcom/android/server/wm/ActivityRecord;

.field public mForcedHideCutout:I

.field public final mFreeformTasksPointerTouchRegion:Landroid/graphics/Region;

.field public mIgnoreDisplayCutout:Z

.field public mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

.field public mImeInputTarget:Lcom/android/server/wm/InputTarget;

.field public mImeLayeringTarget:Lcom/android/server/wm/WindowState;

.field public mImeScreenshot:Lcom/android/server/wm/DisplayContent$ImeScreenshot;

.field public final mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

.field public mInEnsureActivitiesVisible:Z

.field public mInitialDisplayCutout:Landroid/view/DisplayCutout;

.field public mInitialDisplayDensity:I

.field public mInitialDisplayHeight:I

.field public mInitialDisplayWidth:I

.field public mInitialPhysicalXDpi:F

.field public mInitialPhysicalYDpi:F

.field public mInitialRoundedCorners:Landroid/view/RoundedCorners;

.field public mInputMethodSurfaceParent:Landroid/view/SurfaceControl;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mInputMethodWindow:Lcom/android/server/wm/WindowState;

.field public mInputMonitor:Lcom/android/server/wm/InputMonitor;

.field public final mInsetsPolicy:Lcom/android/server/wm/InsetsPolicy;

.field public final mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

.field public mIsDensityForced:Z

.field public mIsDisplayDecorationSupported:Z

.field public mIsOverlappingWithCutoutAsDefault:Z

.field public mIsSizeForced:Z

.field public mLastHasContent:Z

.field public mLastImeInputTarget:Lcom/android/server/wm/InputTarget;

.field public mLastOrientationControlSource:Lcom/android/server/wm/WindowContainer;

.field public mLastWallpaperVisible:Z

.field public mLayoutAndAssignWindowLayersScheduled:Z

.field public mLayoutNeeded:Z

.field public mLayoutSeq:I

.field public mMagnificationSpec:Landroid/view/MagnificationSpec;

.field public mMaxUiWidth:I

.field public mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public mMinSizeOfResizeableTaskDp:I

.field public mMultiWindowPointerEventListener:Lcom/android/server/wm/MultiWindowPointerEventListener;

.field public final mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field public final mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

.field public final mOffTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

.field public mOldFocus:Lcom/android/server/wm/WindowState;

.field public final mOpeningApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mOrientationRequestingTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

.field public mOverlayLayer:Landroid/view/SurfaceControl;

.field public final mPerformLayout:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field public final mPerformLayoutAttached:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field public mPhysicalDisplaySize:Landroid/graphics/Point;

.field public final mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

.field public final mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

.field public final mPointerTouchExcludeRegion:Landroid/graphics/Region;

.field public mPopOverController:Lcom/android/server/wm/PopOverController;

.field public final mPrivacyIndicatorBoundsCache:Lcom/android/server/wm/utils/RotationCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wm/utils/RotationCache<",
            "Landroid/view/PrivacyIndicatorBounds;",
            "Landroid/view/PrivacyIndicatorBounds;",
            ">;"
        }
    .end annotation
.end field

.field public final mRealDisplayMetrics:Landroid/util/DisplayMetrics;

.field public mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

.field public final mRemoteInsetsDeath:Landroid/os/IBinder$DeathRecipient;

.field public mRemoved:Z

.field public mRemoving:Z

.field public mRemovingDisplay:Z

.field public mRestrictedKeepClearAreas:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field public final mRoundedCornerCache:Lcom/android/server/wm/utils/RotationCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wm/utils/RotationCache<",
            "Landroid/view/RoundedCorners;",
            "Landroid/view/RoundedCorners;",
            ">;"
        }
    .end annotation
.end field

.field public mSandboxDisplayApis:Z

.field public final mScheduleToastTimeout:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field public mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

.field public final mSession:Landroid/view/SurfaceSession;

.field public final mShellRoots:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/ShellRoot;",
            ">;"
        }
    .end annotation
.end field

.field public mSkipAppTransitionAnimation:Z

.field public mSleeping:Z

.field public final mSystemGestureExclusion:Landroid/graphics/Region;

.field public mSystemGestureExclusionLimit:I

.field public final mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/ISystemGestureExclusionListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mSystemGestureExclusionUnrestricted:Landroid/graphics/Region;

.field public mSystemGestureExclusionWasRestricted:Z

.field public final mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mTapExcludeProvidingWindows:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field public final mTapExcludedWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field public final mTempConfig:Landroid/content/res/Configuration;

.field public final mTmpAlwaysOnTopFreeformRegion:Landroid/graphics/Region;

.field public final mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

.field public final mTmpConfiguration:Landroid/content/res/Configuration;

.field public final mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

.field public mTmpDisplaySize:Landroid/graphics/Point;

.field public mTmpInitial:Z

.field public final mTmpRect:Landroid/graphics/Rect;

.field public final mTmpRect2:Landroid/graphics/Rect;

.field public final mTmpRect3:Landroid/graphics/Rect;

.field public final mTmpRegion:Landroid/graphics/Region;

.field public final mTmpTaskForResizePointSearchResult:Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

.field public final mTmpUpdateAllDrawn:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mTmpWindow:Lcom/android/server/wm/WindowState;

.field public final mTokenMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field public mTouchExcludeRegion:Landroid/graphics/Region;

.field public mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

.field public final mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

.field public mUnrestrictedKeepClearAreas:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public mUpdateImeRequestedWhileDeferred:Z

.field public mUpdateImeTarget:Z

.field public final mUpdateWindowsForAnimator:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field public mUseBlackScreenshot:Z

.field public mWaitingForConfig:Z

.field public mWaitingForNextBar:Z

.field public mWallpaperController:Lcom/android/server/wm/WallpaperController;

.field public mWallpaperMayChange:Z

.field public final mWinAddedSinceNullFocus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field public final mWinRemovedSinceNullFocus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field public final mWindowCornerRadius:F

.field public mWindowingLayer:Landroid/view/SurfaceControl;

.field public pendingLayoutChanges:I


# direct methods
.method public static synthetic $r8$lambda$0p0DeWSGnSs82NmE4HT3EuIfnoQ(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayContent;->lambda$onWindowFreezeTimeout$33(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5UiFMr-8hb8Tmgx5zvS7yA3YjlU(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayContent;->lambda$new$3(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$5bUtBk0WycD0qgwhRtSMUsAkAa0(Lcom/android/server/wm/DisplayContent;IIIIILcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/Task;
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/wm/DisplayContent;->lambda$findTaskForResizePoint$19(IIIIILcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$8R44cw4CGrxfkrpG_nMJmqs9LtQ(ZILjava/util/List;ILcom/android/server/wm/Task;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DisplayContent;->lambda$getRootTasks$15(ZILjava/util/List;ILcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8VCcGCDlta3NxNK5XOpxhwlvSEI(Lcom/android/server/wm/Task;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/DisplayContent;->lambda$releaseSelfIfNeeded$44(Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$8WYNu9_yewdFUYAsE8GSu4s7Q8s(ILcom/android/server/wm/Task;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/DisplayContent;->lambda$getRootTask$13(ILcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$8vE_wrfJros0UDsmyypA3Dm1OQ8(Ljava/util/Set;Ljava/util/Set;Landroid/graphics/Matrix;[FLcom/android/server/wm/WindowState;)Z
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DisplayContent;->lambda$getKeepClearAreas$37(Ljava/util/Set;Ljava/util/Set;Landroid/graphics/Matrix;[FLcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$D0W4vmn_3wIxPUYyWuRYvWtMDwc(ILcom/android/server/wm/WindowState;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/DisplayContent;->lambda$canAddToastWindowForUid$24(ILcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$EBnWZacti8M72VTM_6kaB7SOR1s(Lcom/android/server/wm/RecentsAnimationController;Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region;[ILandroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;Lcom/android/server/wm/WindowState;)V
    .registers 10

    invoke-static/range {p0 .. p9}, Lcom/android/server/wm/DisplayContent;->lambda$calculateSystemGestureExclusion$35(Lcom/android/server/wm/RecentsAnimationController;Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region;[ILandroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EZPk6zC-r0NbtWQsXbFoav7vnZU(ILcom/android/server/wm/WindowState;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/DisplayContent;->lambda$canAddToastWindowForUid$25(ILcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$FrA6WrZ6HsDDqxUnM7wrRZiL9RI(Lcom/android/server/wm/DisplayContent;Ljava/util/ArrayList;Lcom/android/server/wm/WindowState;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->lambda$getVisibleWindowInfoList$48(Ljava/util/ArrayList;Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GMLaOHhNFqLwDUkF0weWXNQED58(Lcom/android/server/wm/Task;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/DisplayContent;->lambda$getTopRootTask$16(Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$GZpBvbuJMN0Xs_uFOuFaku67tk0(Lcom/android/server/wm/DisplayContent;Landroid/util/SparseBooleanArray;Lcom/android/server/wm/WindowState;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->lambda$shouldWaitForSystemDecorWindowsOnBoot$31(Landroid/util/SparseBooleanArray;Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$HpKXEM-fau21oXSU7Fw61CXr0H0(Ljava/io/PrintWriter;Ljava/lang/String;[ILcom/android/server/wm/WindowState;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayContent;->lambda$dumpWindowAnimators$29(Ljava/io/PrintWriter;Ljava/lang/String;[ILcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IUcqamlL1Fkb5rYm4OWCbaCrsT8(Lcom/android/server/wm/DisplayContent;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->lambda$startAsyncRotation$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$Kk8EpGJGDafGLHbI1jJcpzVaiiQ(Lcom/android/server/wm/DisplayContent;Landroid/view/DisplayCutout;I)Lcom/android/server/wm/utils/WmDisplayCutout;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotationUncached(Landroid/view/DisplayCutout;I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$L1LqtwgBzazb-4IkgKYdtduvkwo(IILcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/Task;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->lambda$getRootTask$12(IILcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$L9-mBpFm35nqck9MxEdoNSD3SVY(Lcom/android/server/wm/DisplayContent;ZLcom/android/server/wm/WindowState;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->lambda$applyRotation$11(ZLcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OtLCIQFjCt9o-SYztyeDUcWUwGs(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayContent;->lambda$new$8(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QpqoZ84SbmbKmrpi9vtoFmdJW48(ZLcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/ActivityRecord;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/DisplayContent;->lambda$topRunningActivity$40(ZLcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QzFsokI_6PDJm4hVl5PqxqECsow(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayContent;->lambda$new$6(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ROTPToasJj_XEmVe9N8Kv-XXMUY()V
    .registers 0

    invoke-static {}, Lcom/android/server/wm/DisplayContent;->lambda$updateImeParent$28()V

    return-void
.end method

.method public static synthetic $r8$lambda$Rpi-f9v5NK07kXvdh1DOwETeqV0(Landroid/view/SurfaceControl$Transaction;IIZLcom/android/server/wm/WindowState;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DisplayContent;->lambda$applyRotation$10(Landroid/view/SurfaceControl$Transaction;IIZLcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TMFCGaYNAEAsz1EWoG1lCIkC0Hk(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayArea;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayContent;->lambda$updateDisplayAreaOrganizers$17(Lcom/android/server/wm/DisplayArea;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TTjPfbf6BZ5X8qcUQcbrQ06EixQ(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayContent;->lambda$updateTouchExcludeRegion$20(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$TdYQPXD0dttMw0BPjMDfb4-LCWw(Lcom/android/server/wm/WindowState;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/DisplayContent;->lambda$getSecureWindowOnScreen$49(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Te1O27b75qXso4QGuEMxFGT_do0(Lcom/android/server/wm/Task;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/DisplayContent;->lambda$releaseSelfIfNeeded$45(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UVgWT8LknO8Z1a1KxsBBhrIpkMs(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;I)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayContent;->processTaskForTouchExcludeRegion(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wj5pYC1EId06A5RSk7bYLjxd3ws([ILcom/android/server/wm/Task;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/DisplayContent;->lambda$getRootTaskCount$14([ILcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X903lxiDNqeyc_JWryogdrh50Ms(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayContent;->lambda$new$1(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XAnIdNYnP_NB8VXP6KO__2YM4XI(Lcom/android/server/wm/DisplayContent;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$Zo2ftLMujZma5SLI7YLzy3fA25o(Lcom/android/server/wm/DisplayContent;Landroid/view/RoundedCorners;I)Landroid/view/RoundedCorners;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->calculateRoundedCornersForRotationUncached(Landroid/view/RoundedCorners;I)Landroid/view/RoundedCorners;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_i6dzXhmU95-y986kUMOJ-5ZiX0(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayContent;->lambda$new$5(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$au-70S0trB6ivbjR4gEmNVAcJfw(Lcom/android/server/wm/DisplayContent;Ljava/lang/Object;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayContent;->lambda$onWindowAnimationFinished$34(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$bNNiv0hGMRQEIAA8xYS-zyQg-rU(Lcom/android/server/wm/WindowState;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/DisplayContent;->lambda$hasSecureWindowOnScreen$32(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$eibBYhSjDVvjejGvg_qfvFKbuDE(Ljava/io/PrintWriter;Ljava/lang/String;ZLcom/android/server/wm/TaskDisplayArea;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayContent;->lambda$dump$22(Ljava/io/PrintWriter;Ljava/lang/String;ZLcom/android/server/wm/TaskDisplayArea;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f4tTlChocR4giHzOfORjysIyw_g(Lcom/android/server/wm/DisplayContent;Landroid/view/PrivacyIndicatorBounds;I)Landroid/view/PrivacyIndicatorBounds;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->calculatePrivacyIndicatorBoundsForRotationUncached(Landroid/view/PrivacyIndicatorBounds;I)Landroid/view/PrivacyIndicatorBounds;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hTCAdenqu6Gbm55-A8Gun4NZO3g(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayContent;->lambda$new$2(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iAAtt5gobcNIuzjytomEdjbxZcU(Lcom/android/server/wm/ActivityRecord;IZZLcom/android/server/wm/Task;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DisplayContent;->lambda$ensureActivitiesVisible$46(Lcom/android/server/wm/ActivityRecord;IZZLcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kAfWF8C8k_II8uhQ83IBo6SBtsc(Lcom/android/server/wm/DisplayContent;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->lambda$applyRotationAndFinishFixedRotation$41(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$kMfiwfUkbPOSc0nxDV38tkhn_oY(Lcom/android/server/policy/WindowManagerPolicy;ZZZLcom/android/server/wm/WindowState;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DisplayContent;->lambda$startKeyguardExitOnNonAppWindows$30(Lcom/android/server/policy/WindowManagerPolicy;ZZZLcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kYs9elDs05Aonfv2SEUlRdv89W4(Landroid/os/IBinder;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/DisplayContent;->lambda$updateImeControlTarget$27(Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lidSdXJvZsl2IpwL0wu0aAbmXHE(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayContent;->lambda$new$4(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$n_OvaKsqWZ3RHERShIhz5cDUhVM([I[ILandroid/graphics/Region;Landroid/graphics/Rect;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayContent;->lambda$addToGlobalAndConsumeLimit$36([I[ILandroid/graphics/Region;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$prkW7b4SmuD-m1W6JTBCGNMVtQY(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/RootWindowContainer$SleepToken;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayContent;->lambda$remove$43(Lcom/android/server/wm/RootWindowContainer$SleepToken;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sY1RdJnM082pz8U-kwFSnoOtpok(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/DisplayContent;->lambda$remove$42(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$skbUTdC0VBgLt-QOJM-SzbtNq4s(Lcom/android/server/wm/Task;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/DisplayContent;->lambda$removeAllTasks$47(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$thGkWA3xxUZKJmhhWnQwJDzPYi8([ILjava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->lambda$removeRootTasksWithActivityTypes$39([ILjava/util/ArrayList;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uekS_jelz0nfzqiQ_YsMay2Q9CA(Lcom/android/server/wm/ActivityRecord;Landroid/util/IntArray;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/DisplayContent;->addActivityUid(Lcom/android/server/wm/ActivityRecord;Landroid/util/IntArray;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vK9zJsNpD24Rc14dVogkIST9d8I([IIILcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DisplayContent;->lambda$pointWithinAppWindow$18([IIILcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w7r4cDfLGnI9swYgDi9cF2vkL6w([ILjava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->lambda$removeRootTasksInWindowingModes$38([ILjava/util/ArrayList;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wJtwo3jpAyc-CdfExTlLJ9Wj5cY(Lcom/android/server/wm/DisplayContent;IILcom/android/server/wm/WindowState;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayContent;->lambda$getTouchableWinAtPointLocked$23(IILcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$wtQTAW4Tr1kxr-vGNsgH16H9iI4(Lcom/android/server/wm/DisplayContent;Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowState;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->lambda$destroyLeakedSurfaces$26(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y8Vu1-ycjLLU2x3TV8E5zzlmAlQ(Lcom/android/server/wm/DisplayContent;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->lambda$requestChangeTransitionIfNeeded$21(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$z8mvbriy2mEdPKF5dYvL617CyWc(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayContent;->lambda$new$7(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmFixedRotationLaunchingApp(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/ActivityRecord;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmImeLayeringTarget(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/WindowState;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method public constructor <init>(Landroid/view/Display;Lcom/android/server/wm/RootWindowContainer;)V
    .registers 16

    .line 1245
    iget-object v0, p2, Lcom/android/server/wm/RootWindowContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const-string v1, "DisplayContent"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/RootDisplayArea;-><init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;I)V

    .line 336
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpAlwaysOnTopFreeformRegion:Landroid/graphics/Region;

    const/4 v0, -0x1

    .line 392
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mMinSizeOfResizeableTaskDp:I

    .line 399
    new-instance v1, Lcom/android/server/wm/DisplayContent$ImeContainer;

    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v1, v3}, Lcom/android/server/wm/DisplayContent$ImeContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    .line 411
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mSkipAppTransitionAnimation:Z

    .line 413
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 414
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    .line 415
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 424
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    .line 427
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    .line 430
    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    .line 431
    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 432
    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    const/4 v1, 0x0

    .line 433
    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialPhysicalXDpi:F

    .line 434
    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialPhysicalYDpi:F

    .line 439
    new-instance v3, Lcom/android/server/wm/utils/RotationCache;

    new-instance v4, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda13;

    invoke-direct {v4, p0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/wm/DisplayContent;)V

    invoke-direct {v3, v4}, Lcom/android/server/wm/utils/RotationCache;-><init>(Lcom/android/server/wm/utils/RotationCache$RotationDependentComputation;)V

    iput-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayCutoutCache:Lcom/android/server/wm/utils/RotationCache;

    .line 444
    new-instance v3, Lcom/android/server/wm/utils/RotationCache;

    new-instance v4, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda16;

    invoke-direct {v4, p0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/wm/DisplayContent;)V

    invoke-direct {v3, v4}, Lcom/android/server/wm/utils/RotationCache;-><init>(Lcom/android/server/wm/utils/RotationCache$RotationDependentComputation;)V

    iput-object v3, p0, Lcom/android/server/wm/DisplayContent;->mRoundedCornerCache:Lcom/android/server/wm/utils/RotationCache;

    .line 447
    new-instance v3, Landroid/view/PrivacyIndicatorBounds;

    invoke-direct {v3}, Landroid/view/PrivacyIndicatorBounds;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/DisplayContent;->mCurrentPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 448
    new-instance v3, Lcom/android/server/wm/utils/RotationCache;

    new-instance v4, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda17;

    invoke-direct {v4, p0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/wm/DisplayContent;)V

    invoke-direct {v3, v4}, Lcom/android/server/wm/utils/RotationCache;-><init>(Lcom/android/server/wm/utils/RotationCache$RotationDependentComputation;)V

    iput-object v3, p0, Lcom/android/server/wm/DisplayContent;->mPrivacyIndicatorBoundsCache:Lcom/android/server/wm/utils/RotationCache;

    .line 457
    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 458
    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 461
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mIsSizeForced:Z

    const/4 v3, 0x1

    .line 468
    iput-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->mSandboxDisplayApis:Z

    .line 475
    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 476
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mIsDensityForced:Z

    .line 481
    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalXDpi:F

    .line 482
    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalYDpi:F

    .line 490
    new-instance v7, Landroid/view/DisplayInfo;

    invoke-direct {v7}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v7, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 491
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 496
    new-instance v4, Landroid/os/RemoteCallbackList;

    invoke-direct {v4}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    .line 498
    new-instance v4, Landroid/graphics/Region;

    invoke-direct {v4}, Landroid/graphics/Region;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusion:Landroid/graphics/Region;

    .line 499
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionWasRestricted:Z

    .line 500
    new-instance v4, Landroid/graphics/Region;

    invoke-direct {v4}, Landroid/graphics/Region;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionUnrestricted:Landroid/graphics/Region;

    .line 503
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mRestrictedKeepClearAreas:Ljava/util/Set;

    .line 504
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mUnrestrictedKeepClearAreas:Ljava/util/Set;

    .line 510
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mRealDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 513
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 519
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 537
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mLastWallpaperVisible:Z

    .line 561
    new-instance v4, Landroid/graphics/Region;

    invoke-direct {v4}, Landroid/graphics/Region;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    .line 564
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    .line 565
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    .line 566
    new-instance v4, Landroid/graphics/Region;

    invoke-direct {v4}, Landroid/graphics/Region;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    .line 568
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    .line 576
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    .line 578
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludeProvidingWindows:Landroid/util/ArraySet;

    .line 580
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    .line 582
    new-instance v4, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    invoke-direct {v4}, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskForResizePointSearchResult:Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    .line 584
    new-instance v4, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;-><init>(Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState-IA;)V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    .line 588
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    .line 592
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    .line 594
    new-instance v4, Landroid/view/SurfaceSession;

    invoke-direct {v4}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mSession:Landroid/view/SurfaceSession;

    .line 600
    iput-object v5, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 603
    iput-object v5, p0, Lcom/android/server/wm/DisplayContent;->mOldFocus:Lcom/android/server/wm/WindowState;

    .line 611
    iput-object v5, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    .line 618
    iput-object v5, p0, Lcom/android/server/wm/DisplayContent;->mOrientationRequestingTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 634
    new-instance v12, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;

    invoke-direct {v12, p0}, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v12, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationTransitionListener:Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;

    .line 640
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWinAddedSinceNullFocus:Ljava/util/ArrayList;

    .line 643
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWinRemovedSinceNullFocus:Ljava/util/ArrayList;

    .line 650
    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    .line 730
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mShellRoots:Landroid/util/SparseArray;

    .line 731
    iput-object v5, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    .line 732
    new-instance v4, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda18;

    invoke-direct {v4, p0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsDeath:Landroid/os/IBinder$DeathRecipient;

    .line 742
    new-instance v4, Landroid/util/IntArray;

    invoke-direct {v4}, Landroid/util/IntArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayAccessUIDs:Landroid/util/IntArray;

    .line 745
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    .line 761
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mActiveSizeCompatActivities:Ljava/util/Set;

    .line 764
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpDisplaySize:Landroid/graphics/Point;

    .line 767
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTempConfig:Landroid/content/res/Configuration;

    .line 773
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mInEnsureActivitiesVisible:Z

    .line 788
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mForcedHideCutout:I

    .line 803
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mFadeInOutAnimationNeeded:Z

    .line 814
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPointerTouchExcludeRegion:Landroid/graphics/Region;

    .line 815
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFreeformTasksPointerTouchRegion:Landroid/graphics/Region;

    .line 816
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect3:Landroid/graphics/Rect;

    .line 820
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mRemovingDisplay:Z

    .line 821
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrozen:Z

    .line 825
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mUpdateWindowsForAnimator:Ljava/util/function/Consumer;

    .line 841
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mScheduleToastTimeout:Ljava/util/function/Consumer;

    .line 856
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFindFocusedWindow:Lcom/android/internal/util/ToBooleanFunction;

    .line 982
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPerformLayout:Ljava/util/function/Consumer;

    .line 1035
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPerformLayoutAttached:Ljava/util/function/Consumer;

    .line 1060
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mComputeImeTargetPredicate:Ljava/util/function/Predicate;

    .line 1066
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mApplyPostLayoutPolicy:Ljava/util/function/Consumer;

    .line 1070
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mApplySurfaceChangesTransaction:Ljava/util/function/Consumer;

    .line 1390
    iput-object v5, p0, Lcom/android/server/wm/DisplayContent;->mApplicationPolicy:Lcom/samsung/android/knox/application/IApplicationPolicy;

    .line 8249
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 1246
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-nez v0, :cond_40e

    .line 1253
    iput-object p2, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1254
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p2, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1255
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 1256
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 1257
    invoke-virtual {p1}, Landroid/view/Display;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mCurrentUniqueDisplayId:Ljava/lang/String;

    .line 1258
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mDisplayOffTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mOffTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

    .line 1259
    new-instance v0, Lcom/android/server/wm/WallpaperController;

    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v4, p0}, Lcom/android/server/wm/WallpaperController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 1260
    invoke-virtual {p1, v7}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 1261
    invoke-virtual {p1, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1262
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mConstants:Lcom/android/server/wm/WindowManagerConstants;

    iget v0, v0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExclusionLimitDp:I

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0xa0

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionLimit:I

    if-nez p2, :cond_21f

    move v0, v3

    goto :goto_220

    :cond_21f
    move v0, v2

    .line 1264
    :goto_220
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 1265
    new-instance v0, Lcom/android/server/wm/InsetsStateController;

    invoke-direct {v0, p0}, Lcom/android/server/wm/InsetsStateController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 1267
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v1, :cond_24f

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const v4, 0x1040363

    .line 1268
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24f

    .line 1271
    new-instance v1, Lcom/android/server/wm/UdcCutoutPolicy;

    new-instance v4, Lcom/android/server/wm/utils/RotationCache;

    new-instance v5, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda13;

    invoke-direct {v5, p0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/wm/DisplayContent;)V

    invoke-direct {v4, v5}, Lcom/android/server/wm/utils/RotationCache;-><init>(Lcom/android/server/wm/utils/RotationCache$RotationDependentComputation;)V

    invoke-direct {v1, p0, v4}, Lcom/android/server/wm/UdcCutoutPolicy;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/utils/RotationCache;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

    .line 1275
    :cond_24f
    new-instance v1, Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v6

    iget v4, v7, Landroid/view/DisplayInfo;->rotation:I

    .line 1276
    invoke-virtual {p0, v4}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v8

    iget v4, v7, Landroid/view/DisplayInfo;->rotation:I

    .line 1277
    invoke-virtual {p0, v4}, Lcom/android/server/wm/DisplayContent;->calculateRoundedCornersForRotation(I)Landroid/view/RoundedCorners;

    move-result-object v9

    iget v4, v7, Landroid/view/DisplayInfo;->rotation:I

    .line 1278
    invoke-virtual {p0, v4}, Lcom/android/server/wm/DisplayContent;->calculatePrivacyIndicatorBoundsForRotation(I)Landroid/view/PrivacyIndicatorBounds;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wm/DisplayContent;->mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

    move-object v4, v1

    move v5, p2

    invoke-direct/range {v4 .. v11}, Lcom/android/server/wm/DisplayFrames;-><init>(ILandroid/view/InsetsState;Landroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Lcom/android/server/wm/UdcCutoutPolicy;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 1282
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->initializeDisplayBaseInfo()V

    .line 1284
    new-instance v1, Lcom/android/server/wm/AppTransition;

    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v4, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5, v4, p0}, Lcom/android/server/wm/AppTransition;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 1285
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mActivityManagerAppTransitionNotifier:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/AppTransition;->registerListenerLocked(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 1286
    invoke-virtual {v1, v12}, Lcom/android/server/wm/AppTransition;->registerListenerLocked(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 1287
    new-instance v1, Lcom/android/server/wm/AppTransitionController;

    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v1, v4, p0}, Lcom/android/server/wm/AppTransitionController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAppTransitionController:Lcom/android/server/wm/AppTransitionController;

    .line 1288
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1, v12}, Lcom/android/server/wm/TransitionController;->registerLegacyListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 1289
    new-instance v1, Lcom/android/server/wm/UnknownAppVisibilityController;

    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v1, v4, p0}, Lcom/android/server/wm/UnknownAppVisibilityController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    .line 1290
    new-instance v1, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;

    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-direct {v1, p0, v4}, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/TransitionController;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplaySwitchTransitionLauncher:Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;

    .line 1293
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PointerEventDispatcher"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, p2}, Lcom/android/server/input/InputManagerService;->monitorInput(Ljava/lang/String;I)Landroid/view/InputChannel;

    move-result-object v1

    .line 1295
    new-instance v4, Lcom/android/server/wm/PointerEventDispatcher;

    invoke-direct {v4, v1}, Lcom/android/server/wm/PointerEventDispatcher;-><init>(Landroid/view/InputChannel;)V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    .line 1300
    new-instance v1, Lcom/android/server/wm/TaskTapPointerEventListener;

    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v1, v4, p0}, Lcom/android/server/wm/TaskTapPointerEventListener;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

    .line 1301
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 1302
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 1303
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v1

    if-eqz v1, :cond_2f4

    .line 1304
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1305
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/RecentTasks;->getInputListener()Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    move-result-object v1

    .line 1304
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 1308
    :cond_2f4
    new-instance v1, Lcom/android/server/wm/DisplayPolicy;

    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v1, v4, p0}, Lcom/android/server/wm/DisplayPolicy;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 1309
    new-instance v4, Lcom/android/server/wm/DisplayRotation;

    iget-object v5, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v4, v5, p0}, Lcom/android/server/wm/DisplayRotation;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 1310
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10500ae

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v4

    iput v4, p0, Lcom/android/server/wm/DisplayContent;->mCloseToSquareMaxAspectRatio:F

    .line 1312
    iget-boolean v4, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v4, :cond_322

    .line 1315
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v4, p0}, Lcom/android/server/policy/WindowManagerPolicy;->setDefaultDisplay(Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;)V

    .line 1323
    :cond_322
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    if-eqz v4, :cond_335

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    move-result v4

    if-eqz v4, :cond_335

    .line 1324
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/WindowManagerPolicyExt;

    invoke-interface {v4, p0}, Lcom/android/server/policy/WindowManagerPolicyExt;->setCarLifeDisplay(Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;)V

    .line 1327
    :cond_335
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v4, :cond_33e

    .line 1328
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->onConfigurationChanged()V

    .line 1330
    :cond_33e
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mSystemReady:Z

    if-eqz v4, :cond_347

    .line 1331
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->systemReady()V

    .line 1333
    :cond_347
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getWindowCornerRadius()F

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mWindowCornerRadius:F

    .line 1334
    new-instance v1, Lcom/android/server/wm/DockedTaskDividerController;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DockedTaskDividerController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedTaskDividerController;

    .line 1335
    new-instance v1, Lcom/android/server/wm/PinnedTaskController;

    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v1, v4, p0}, Lcom/android/server/wm/PinnedTaskController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    .line 1337
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 1338
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->configureSurfaces(Landroid/view/SurfaceControl$Transaction;)V

    .line 1339
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1342
    invoke-virtual {p0, p0}, Lcom/android/server/wm/DisplayContent;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 1343
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateDisplayAreaOrganizers()V

    .line 1345
    new-instance v1, Lcom/android/server/wm/InputMonitor;

    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v1, v4, p0}, Lcom/android/server/wm/InputMonitor;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    .line 1346
    new-instance v1, Lcom/android/server/wm/InsetsPolicy;

    invoke-direct {v1, v0, p0}, Lcom/android/server/wm/InsetsPolicy;-><init>(Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInsetsPolicy:Lcom/android/server/wm/InsetsPolicy;

    .line 1347
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getMinimalTaskSizeDp()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mMinSizeOfResizeableTaskDp:I

    .line 1348
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DISPLAY:Z

    if-eqz v0, :cond_39d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Creating display="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    :cond_39d
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FLIP_RESTORE_DEFAULT_DISPLAY_DENSITY_IN_BOOT:Z

    if-eqz v0, :cond_3ae

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-nez v0, :cond_3ae

    if-ne p2, v3, :cond_3ae

    .line 1355
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {p2, p0}, Lcom/android/server/wm/DisplayWindowSettings;->clearForcedDensity(Lcom/android/server/wm/DisplayContent;)V

    .line 1359
    :cond_3ae
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {p2, p0}, Lcom/android/server/wm/DisplayWindowSettings;->applySettingsToDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 1362
    iget-boolean p2, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz p2, :cond_3c5

    .line 1363
    new-instance p2, Lcom/android/server/wm/SystemPerformancePointerEventListener;

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/android/server/wm/SystemPerformancePointerEventListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 1367
    :cond_3c5
    iget-boolean p2, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz p2, :cond_3d5

    .line 1368
    new-instance p2, Lcom/android/server/wm/MultiWindowPointerEventListener;

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p2, v0, p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object p2, p0, Lcom/android/server/wm/DisplayContent;->mMultiWindowPointerEventListener:Lcom/android/server/wm/MultiWindowPointerEventListener;

    .line 1369
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 1374
    :cond_3d5
    new-instance p2, Lcom/android/server/wm/PopOverController;

    invoke-direct {p2, p0}, Lcom/android/server/wm/PopOverController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object p2, p0, Lcom/android/server/wm/DisplayContent;->mPopOverController:Lcom/android/server/wm/PopOverController;

    .line 1377
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mExtraDisplayController:Lcom/android/server/wm/ExtraDisplayController;

    iget-object p2, p2, Lcom/android/server/wm/ExtraDisplayController;->as:Lcom/android/server/wm/ExtraDisplayFactory;

    invoke-virtual {p2}, Lcom/android/server/wm/ExtraDisplayFactory;->cover()Lcom/android/server/wm/CoverDisplayController;

    move-result-object p2

    if-eqz p2, :cond_3f5

    .line 1378
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mExtraDisplayController:Lcom/android/server/wm/ExtraDisplayController;

    iget-object p2, p2, Lcom/android/server/wm/ExtraDisplayController;->as:Lcom/android/server/wm/ExtraDisplayFactory;

    invoke-virtual {p2}, Lcom/android/server/wm/ExtraDisplayFactory;->cover()Lcom/android/server/wm/CoverDisplayController;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/android/server/wm/CoverDisplayController;->addViewCoverDisplay(Lcom/android/server/wm/DisplayContent;)V

    .line 1380
    :cond_3f5
    iget-boolean p2, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz p2, :cond_404

    .line 1381
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    invoke-virtual {p2}, Lcom/android/server/wm/TaskPositioningController;->getTaskMotionController()Lcom/android/server/wm/TaskMotionController;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/android/server/wm/TaskMotionController;->updateDimensions(Lcom/android/server/wm/DisplayContent;)V

    .line 1385
    :cond_404
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayDecorationSupport()Landroid/hardware/graphics/common/DisplayDecorationSupport;

    move-result-object p1

    if-eqz p1, :cond_40b

    move v2, v3

    :cond_40b
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mIsDisplayDecorationSupported:Z

    return-void

    .line 1247
    :cond_40e
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display with ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " already exists="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 1249
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " new="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static addActivityUid(Lcom/android/server/wm/ActivityRecord;Landroid/util/IntArray;)V
    .registers 2

    .line 7491
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/util/IntArray;->add(I)V

    return-void
.end method

.method public static addToGlobalAndConsumeLimit(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;ILcom/android/server/wm/WindowState;I)I
    .registers 9

    .line 6827
    invoke-static {p0}, Landroid/graphics/Region;->obtain(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object p0

    .line 6828
    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p2, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    const/4 p2, 0x1

    new-array v0, p2, [I

    const/4 v1, 0x0

    aput p3, v0, v1

    new-array p2, p2, [I

    aput v1, p2, v1

    .line 6832
    new-instance v2, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda39;

    invoke-direct {v2, v0, p2, p1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda39;-><init>([I[ILandroid/graphics/Region;)V

    invoke-static {p0, v2}, Lcom/android/server/wm/utils/RegionUtils;->forEachRectReverse(Landroid/graphics/Region;Ljava/util/function/Consumer;)V

    aget p1, v0, v1

    sub-int/2addr p3, p1

    aget p1, p2, v1

    .line 6846
    invoke-virtual {p4, p5, p1, p3}, Lcom/android/server/wm/WindowState;->setLastExclusionHeights(III)V

    .line 6848
    invoke-virtual {p0}, Landroid/graphics/Region;->recycle()V

    aget p0, v0, v1

    return p0
.end method

.method public static alwaysCreateRootTask(II)Z
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    if-eq p0, v0, :cond_10

    const/4 p1, 0x5

    if-eq p0, p1, :cond_10

    const/4 p1, 0x2

    if-eq p0, p1, :cond_10

    const/4 p1, 0x6

    if-ne p0, p1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :cond_10
    :goto_10
    return v0
.end method

.method public static calculateDisplayCutoutForRotationAndDisplaySizeUncached(Landroid/view/DisplayCutout;III)Lcom/android/server/wm/utils/WmDisplayCutout;
    .registers 7

    if-eqz p0, :cond_2e

    .line 2616
    sget-object v0, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    if-ne p0, v0, :cond_7

    goto :goto_2e

    :cond_7
    if-nez p1, :cond_e

    .line 2620
    invoke-static {p0, p2, p3}, Lcom/android/server/wm/utils/WmDisplayCutout;->computeSafeInsets(Landroid/view/DisplayCutout;II)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object p0

    return-object p0

    :cond_e
    const/4 v0, 0x0

    .line 2624
    invoke-virtual {p0, p2, p3, v0, p1}, Landroid/view/DisplayCutout;->getRotated(IIII)Landroid/view/DisplayCutout;

    move-result-object p0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_19

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1a

    :cond_19
    move v0, v1

    .line 2626
    :cond_1a
    new-instance p1, Lcom/android/server/wm/utils/WmDisplayCutout;

    new-instance v1, Landroid/util/Size;

    if-eqz v0, :cond_22

    move v2, p3

    goto :goto_23

    :cond_22
    move v2, p2

    :goto_23
    if-eqz v0, :cond_26

    goto :goto_27

    :cond_26
    move p2, p3

    .line 2628
    :goto_27
    invoke-direct {v1, v2, p2}, Landroid/util/Size;-><init>(II)V

    invoke-direct {p1, p0, v1}, Lcom/android/server/wm/utils/WmDisplayCutout;-><init>(Landroid/view/DisplayCutout;Landroid/util/Size;)V

    return-object p1

    .line 2617
    :cond_2e
    :goto_2e
    sget-object p0, Lcom/android/server/wm/utils/WmDisplayCutout;->NO_CUTOUT:Lcom/android/server/wm/utils/WmDisplayCutout;

    return-object p0
.end method

.method public static isFlexPanelConfigChangedOnly(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .registers 6

    .line 8492
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    .line 8493
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/app/WindowConfiguration;->diff(Landroid/app/WindowConfiguration;Z)J

    move-result-wide p0

    const/high16 v2, 0x20000000

    if-ne v0, v2, :cond_19

    const-wide/32 v2, 0x80000

    cmp-long p0, p0, v2

    if-nez p0, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1
.end method

.method public static synthetic lambda$addToGlobalAndConsumeLimit$36([I[ILandroid/graphics/Region;Landroid/graphics/Rect;)V
    .registers 7

    const/4 v0, 0x0

    .line 6833
    aget v1, p0, v0

    if-gtz v1, :cond_6

    return-void

    .line 6836
    :cond_6
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 6837
    aget v2, p1, v0

    add-int/2addr v2, v1

    aput v2, p1, v0

    .line 6838
    aget p1, p0, v0

    if-le v1, p1, :cond_18

    .line 6839
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, p1

    iput v2, p3, Landroid/graphics/Rect;->top:I

    :cond_18
    sub-int/2addr p1, v1

    .line 6841
    aput p1, p0, v0

    .line 6842
    sget-object p0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p2, p3, p0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    return-void
.end method

.method public static synthetic lambda$applyRotation$10(Landroid/view/SurfaceControl$Transaction;IIZLcom/android/server/wm/WindowState;)V
    .registers 5

    .line 2454
    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/android/server/wm/WindowState;->seamlesslyRotateIfAllowed(Landroid/view/SurfaceControl$Transaction;IIZ)V

    return-void
.end method

.method private synthetic lambda$applyRotation$11(ZLcom/android/server/wm/WindowState;)V
    .registers 8

    .line 2464
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v1, v0, Lcom/android/server/wm/WindowToken;->mIsPortraitWindowToken:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_10

    .line 2465
    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowToken;->finishFixedRotationTransform(Ljava/lang/Runnable;)V

    .line 2466
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p0, v0, v3}, Lcom/android/server/wm/DisplayContent;->startFixedRotationTransform(Lcom/android/server/wm/WindowToken;I)V

    .line 2470
    :cond_10
    iget-boolean p0, p2, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-nez p0, :cond_15

    return-void

    :cond_15
    const/4 p0, 0x1

    if-nez p1, :cond_2f

    .line 2472
    sget-boolean p1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz p1, :cond_2c

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, 0x7c308e5a

    new-array v4, p0, [Ljava/lang/Object;

    aput-object p1, v4, v3

    invoke-static {v0, v1, v3, v2, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2473
    :cond_2c
    invoke-virtual {p2, p0}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 2475
    :cond_2f
    iput-boolean p0, p2, Lcom/android/server/wm/WindowState;->mReportOrientationChanged:Z

    return-void
.end method

.method private synthetic lambda$applyRotationAndFinishFixedRotation$41(II)V
    .registers 3

    .line 7343
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->applyRotation(II)V

    return-void
.end method

.method public static synthetic lambda$calculateSystemGestureExclusion$35(Lcom/android/server/wm/RecentsAnimationController;Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region;[ILandroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;Lcom/android/server/wm/WindowState;)V
    .registers 25

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v0, :cond_1d

    .line 6694
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/wm/WindowState;->getActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wm/RecentsAnimationController;->shouldApplyInputConsumer(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_1d

    move v0, v13

    goto :goto_1e

    :cond_1d
    move v0, v14

    .line 6695
    :goto_1e
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/wm/WindowState;->canReceiveTouchInput()Z

    move-result v3

    if-eqz v3, :cond_101

    invoke-virtual/range {p9 .. p9}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_101

    .line 6696
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v3, v3, 0x10

    if-nez v3, :cond_101

    .line 6699
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0xa29

    if-eq v3, v4, :cond_101

    .line 6700
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0xa28

    if-eq v3, v4, :cond_101

    .line 6702
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Region;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_101

    if-eqz v0, :cond_52

    goto/16 :goto_101

    .line 6709
    :cond_52
    invoke-virtual {v12, v2}, Lcom/android/server/wm/WindowState;->getEffectiveTouchableRegion(Landroid/graphics/Region;)V

    .line 6710
    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 6714
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-virtual/range {p9 .. p9}, Lcom/android/server/wm/WindowState;->isMultiWindowHandler()Z

    move-result v0

    if-eqz v0, :cond_68

    move v0, v13

    goto :goto_69

    :cond_68
    move v0, v14

    .line 6717
    :goto_69
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/wm/WindowState;->isImplicitlyExcludingAllSystemGestures()Z

    move-result v3

    if-nez v3, :cond_91

    if-eqz v0, :cond_72

    goto :goto_91

    .line 6721
    :cond_72
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/wm/WindowState;->getSystemGestureExclusion()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/android/server/wm/utils/RegionUtils;->rectListToRegion(Ljava/util/List;Landroid/graphics/Region;)V

    .line 6724
    iget v0, v12, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v9, v0}, Landroid/graphics/Region;->scale(F)V

    .line 6725
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/wm/WindowState;->getWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 6726
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9, v3, v0}, Landroid/graphics/Region;->translate(II)V

    .line 6729
    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v9, v2, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    goto :goto_94

    .line 6719
    :cond_91
    :goto_91
    invoke-virtual {v9, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 6733
    :goto_94
    invoke-static {v12, v14}, Lcom/android/server/wm/DisplayContent;->needsGestureExclusionRestrictions(Lcom/android/server/wm/WindowState;Z)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 6736
    aget v6, p4, v14

    const/4 v8, 0x0

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v7, p9

    invoke-static/range {v3 .. v8}, Lcom/android/server/wm/DisplayContent;->addToGlobalAndConsumeLimit(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;ILcom/android/server/wm/WindowState;I)I

    move-result v0

    aput v0, p4, v14

    .line 6740
    aget v6, p4, v13

    const/4 v8, 0x1

    move-object/from16 v5, p7

    invoke-static/range {v3 .. v8}, Lcom/android/server/wm/DisplayContent;->addToGlobalAndConsumeLimit(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;ILcom/android/server/wm/WindowState;I)I

    move-result v0

    aput v0, p4, v13

    .line 6744
    invoke-static/range {p3 .. p3}, Landroid/graphics/Region;->obtain(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object v0

    .line 6745
    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v5, p6

    invoke-virtual {v0, v5, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 6746
    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v14, p7

    invoke-virtual {v0, v14, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 6747
    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v10, v0, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 6748
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    goto :goto_f5

    :cond_d1
    move-object/from16 v5, p6

    move-object/from16 v14, p7

    .line 6750
    invoke-static {v12, v13}, Lcom/android/server/wm/DisplayContent;->needsGestureExclusionRestrictions(Lcom/android/server/wm/WindowState;Z)Z

    move-result v0

    if-eqz v0, :cond_f0

    const v6, 0x7fffffff

    const/4 v8, 0x0

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v7, p9

    .line 6752
    invoke-static/range {v3 .. v8}, Lcom/android/server/wm/DisplayContent;->addToGlobalAndConsumeLimit(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;ILcom/android/server/wm/WindowState;I)I

    const/4 v8, 0x1

    move-object/from16 v5, p7

    .line 6754
    invoke-static/range {v3 .. v8}, Lcom/android/server/wm/DisplayContent;->addToGlobalAndConsumeLimit(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;ILcom/android/server/wm/WindowState;I)I

    .line 6757
    :cond_f0
    sget-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v10, v9, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    :goto_f5
    if-eqz v11, :cond_fc

    .line 6760
    sget-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v11, v9, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 6762
    :cond_fc
    sget-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    :cond_101
    :goto_101
    return-void
.end method

.method public static synthetic lambda$canAddToastWindowForUid$24(ILcom/android/server/wm/WindowState;)Z
    .registers 3

    .line 4502
    iget v0, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v0, p0, :cond_c

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static synthetic lambda$canAddToastWindowForUid$25(ILcom/android/server/wm/WindowState;)Z
    .registers 4

    .line 4507
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d5

    if-ne v0, v1, :cond_16

    iget v0, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v0, p0, :cond_16

    iget-boolean p0, p1, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    if-nez p0, :cond_16

    iget-boolean p0, p1, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    if-nez p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method private synthetic lambda$destroyLeakedSurfaces$26(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowState;)V
    .registers 10

    .line 4810
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 4811
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v1, :cond_7

    return-void

    .line 4814
    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, " token="

    const-string v3, " surface="

    const-string v4, "WindowManager"

    if-nez v1, :cond_62

    .line 4815
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LEAKED SURFACE (session doesn\'t exist): "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4820
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowStateAnimator;->destroySurface(Landroid/view/SurfaceControl$Transaction;)V

    .line 4821
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4822
    iput-object p2, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    goto :goto_ac

    .line 4823
    :cond_62
    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_ac

    invoke-virtual {v1}, Lcom/android/server/wm/WindowToken;->isClientVisible()Z

    move-result v1

    if-nez v1, :cond_ac

    .line 4824
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LEAKED SURFACE (app token hidden): "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4827
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_TRANSACTIONS_enabled:Z

    if-eqz v1, :cond_a7

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x739056a2

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 4828
    :cond_a7
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowStateAnimator;->destroySurface(Landroid/view/SurfaceControl$Transaction;)V

    .line 4829
    iput-object p2, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    :cond_ac
    :goto_ac
    return-void
.end method

.method public static synthetic lambda$dump$22(Ljava/io/PrintWriter;Ljava/lang/String;ZLcom/android/server/wm/TaskDisplayArea;)V
    .registers 5

    .line 4363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/wm/TaskDisplayArea;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic lambda$dumpWindowAnimators$29(Ljava/io/PrintWriter;Ljava/lang/String;[ILcom/android/server/wm/WindowState;)V
    .registers 6

    .line 5512
    iget-object p3, p3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 5513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Window #"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    aget v1, p2, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5514
    aget p0, p2, p1

    add-int/lit8 p0, p0, 0x1

    aput p0, p2, p1

    return-void
.end method

.method public static synthetic lambda$ensureActivitiesVisible$46(Lcom/android/server/wm/ActivityRecord;IZZLcom/android/server/wm/Task;)V
    .registers 5

    .line 7516
    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V

    return-void
.end method

.method private synthetic lambda$findTaskForResizePoint$19(IIIIILcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/Task;
    .registers 14

    .line 3755
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskForResizePointSearchResult:Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    move-object v1, p6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->process(Lcom/android/server/wm/WindowContainer;IIIII)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$getKeepClearAreas$37(Ljava/util/Set;Ljava/util/Set;Landroid/graphics/Matrix;[FLcom/android/server/wm/WindowState;)Z
    .registers 6

    .line 6906
    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p4}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_f

    .line 6907
    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/android/server/wm/WindowState;->getKeepClearAreas(Ljava/util/Collection;Ljava/util/Collection;Landroid/graphics/Matrix;[F)V

    .line 6911
    :cond_f
    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->getWindowType()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1d

    .line 6912
    invoke-virtual {p4}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p0

    if-ne p0, p1, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    :goto_1e
    return p1
.end method

.method public static synthetic lambda$getRootTask$12(IILcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/Task;
    .registers 3

    .line 3069
    invoke-virtual {p2, p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$getRootTask$13(ILcom/android/server/wm/Task;)Z
    .registers 2

    .line 3074
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result p1

    if-ne p1, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static synthetic lambda$getRootTaskCount$14([ILcom/android/server/wm/Task;)V
    .registers 3

    const/4 p1, 0x0

    .line 3080
    aget v0, p0, p1

    add-int/lit8 v0, v0, 0x1

    aput v0, p0, p1

    return-void
.end method

.method public static synthetic lambda$getRootTasks$15(ZILjava/util/List;ILcom/android/server/wm/Task;)V
    .registers 5

    if-eqz p0, :cond_c

    .line 3092
    invoke-virtual {p4}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result p0

    if-ne p0, p1, :cond_15

    .line 3093
    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 3095
    :cond_c
    invoke-virtual {p4, p3, p1}, Lcom/android/server/wm/Task;->isCompatible(II)Z

    move-result p0

    if-eqz p0, :cond_15

    .line 3096
    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    :goto_15
    return-void
.end method

.method public static synthetic lambda$getSecureWindowOnScreen$49(Lcom/android/server/wm/WindowState;)Z
    .registers 2

    .line 8205
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isSecureLocked()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static synthetic lambda$getTopRootTask$16(Lcom/android/server/wm/Task;)Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$getTouchableWinAtPointLocked$23(IILcom/android/server/wm/WindowState;)Z
    .registers 8

    .line 4467
    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4468
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return v2

    :cond_c
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_11

    return v2

    .line 4475
    :cond_11
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p3, v1}, Lcom/android/server/wm/WindowState;->getVisibleBounds(Landroid/graphics/Rect;)V

    .line 4476
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_1f

    return v2

    .line 4481
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->hasOneHandOpSpec()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 4482
    iget-object v1, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0xa28

    if-ne v1, v3, :cond_2e

    return v2

    .line 4488
    :cond_2e
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {p3, v1}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    and-int/lit8 p3, v0, 0x28

    .line 4491
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result p0

    if-nez p0, :cond_3f

    if-nez p3, :cond_40

    :cond_3f
    const/4 v2, 0x1

    :cond_40
    return v2
.end method

.method private synthetic lambda$getVisibleWindowInfoList$48(Ljava/util/ArrayList;Lcom/android/server/wm/WindowState;)V
    .registers 5

    .line 8068
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 8069
    new-instance v0, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;

    invoke-direct {v0}, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;-><init>()V

    .line 8070
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;->packageName:Ljava/lang/String;

    .line 8071
    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;->name:Ljava/lang/String;

    .line 8072
    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v1, v0, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;->type:I

    .line 8073
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;->focused:Z

    .line 8074
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mOldFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    iput-boolean p0, v0, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;->lastFocused:Z

    .line 8075
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_36
    return-void
.end method

.method public static synthetic lambda$hasSecureWindowOnScreen$32(Lcom/android/server/wm/WindowState;)Z
    .registers 2

    .line 5641
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isSecureLocked()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private synthetic lambda$new$0()V
    .registers 3

    .line 734
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v1, 0x0

    .line 735
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    .line 736
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_10
    move-exception p0

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method private synthetic lambda$new$1(Lcom/android/server/wm/WindowState;)V
    .registers 5

    .line 826
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 827
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 828
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2b

    if-eqz v1, :cond_11

    .line 829
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->canShowWindows()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 830
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->performShowLocked()Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 831
    iget p1, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 832
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v0, :cond_2b

    .line 833
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    const-string/jumbo v0, "updateWindowsAndWallpaperLocked 5"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    :cond_2b
    return-void
.end method

.method private synthetic lambda$new$2(Lcom/android/server/wm/WindowState;)V
    .registers 5

    .line 842
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 843
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 844
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7d5

    if-ne v1, v2, :cond_27

    iget v1, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v1, v0, :cond_27

    const/16 v0, 0x34

    .line 845
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 846
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v1, p1, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_27
    return-void
.end method

.method private synthetic lambda$new$3(Lcom/android/server/wm/WindowState;)Z
    .registers 16

    .line 857
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    .line 858
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_FOCUS_enabled:Z

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_3d

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    int-to-long v6, v6

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v8

    invoke-virtual {p1, v5}, Lcom/android/server/wm/WindowState;->canReceiveKeysReason(Z)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v11, -0x4415cdbe

    const/16 v12, 0x34

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v1, v13, v5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v13, v4

    const/4 v1, 0x2

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v13, v1

    aput-object v9, v13, v2

    invoke-static {v10, v11, v12, v3, v13}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 862
    :cond_3d
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v1, :cond_55

    .line 864
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    const-string v6, "SpegVirtualDisplay"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    const-string p0, "SPEG"

    const-string p1, "Do not update focused window"

    .line 865
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 870
    :cond_55
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v1

    if-nez v1, :cond_5c

    return v5

    .line 880
    :cond_5c
    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    const/16 v6, 0x13

    if-eqz v1, :cond_73

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result v1

    if-eqz v1, :cond_73

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_72

    .line 881
    invoke-virtual {v1, v6}, Lcom/android/server/wm/WindowState;->getRequestedVisibility(I)Z

    move-result v1

    if-nez v1, :cond_73

    :cond_72
    return v5

    .line 884
    :cond_73
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7dc

    if-ne v1, v7, :cond_8e

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_8e

    .line 885
    invoke-virtual {v1, v6}, Lcom/android/server/wm/WindowState;->getRequestedVisibility(I)Z

    move-result v1

    if-nez v1, :cond_8e

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    .line 886
    invoke-virtual {v1, v2, v4}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result v1

    if-eqz v1, :cond_8e

    return v5

    .line 891
    :cond_8e
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_a9

    .line 894
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    if-eqz v0, :cond_a6

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, -0x53a4872

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v0, v6, v5

    invoke-static {v1, v2, v5, v3, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 896
    :cond_a6
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    return v4

    .line 900
    :cond_a9
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->windowsAreFocusable()Z

    move-result v6

    if-nez v6, :cond_c6

    .line 902
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    if-eqz v0, :cond_c3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, 0x55413572

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v0, v6, v5

    invoke-static {v1, v2, v5, v3, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 904
    :cond_c3
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    return v4

    :cond_c6
    if-eqz v1, :cond_d3

    .line 917
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getLastParentBeforePip()Lcom/android/server/wm/Task;

    move-result-object v6

    if-eqz v6, :cond_d3

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eq v1, v6, :cond_d3

    return v5

    :cond_d3
    if-eqz v1, :cond_12b

    .line 929
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v6, v2, :cond_12b

    .line 930
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v2

    if-lez v2, :cond_f8

    .line 932
    sget-boolean p1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    if-eqz p1, :cond_f5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, -0x3044237b

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v0, v1, v5, v3, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 934
    :cond_f5
    iput-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    return v4

    .line 940
    :cond_f8
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    if-eqz v2, :cond_12b

    .line 941
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v2

    if-eqz v2, :cond_12b

    .line 942
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 943
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v6

    if-eqz v6, :cond_11a

    .line 945
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 947
    :cond_11a
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-eqz v2, :cond_12b

    .line 948
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v6

    if-eq v2, v6, :cond_12b

    return v5

    :cond_12b
    if-eqz v1, :cond_132

    .line 955
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_133

    :cond_132
    move-object v2, v3

    :goto_133
    if-eqz v2, :cond_15f

    .line 956
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v6

    if-eqz v6, :cond_15f

    .line 957
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTopFreeform()Z

    move-result v2

    if-nez v2, :cond_142

    goto :goto_15f

    .line 959
    :cond_142
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v2

    if-lez v2, :cond_15f

    .line 960
    sget-boolean p1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    if-eqz p1, :cond_15c

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, 0x6200b601

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v0, v1, v5, v3, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 962
    :cond_15c
    iput-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    return v5

    .line 966
    :cond_15f
    :goto_15f
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_ACTIVITY:Z

    if-eqz v2, :cond_194

    if-eqz v1, :cond_194

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isInSplitActivityMode()Z

    move-result v2

    if-eqz v2, :cond_194

    .line 967
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_194

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6

    if-ne v2, v6, :cond_194

    if-eq v0, v1, :cond_194

    .line 969
    sget-boolean p1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    if-eqz p1, :cond_191

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, 0x5a8fdadb

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v0, v1, v5, v3, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 971
    :cond_191
    iput-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    return v5

    .line 977
    :cond_194
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    if-eqz v0, :cond_1a8

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, -0x18c9994e

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v0, v6, v5

    invoke-static {v1, v2, v5, v3, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 978
    :cond_1a8
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    return v4
.end method

.method private synthetic lambda$new$4(Lcom/android/server/wm/WindowState;)V
    .registers 13

    .line 983
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-eqz v0, :cond_5

    return-void

    .line 989
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isGoneForLayout()Z

    move-result v0

    .line 991
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "WindowManager"

    if-eqz v1, :cond_d6

    .line 992
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1ST PASS "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": gone="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mHaveFrame="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p1, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " config reported="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isLastConfigReportedToClient()Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 992
    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const-string v5, " parentHidden="

    const-string v6, " visibleRequested="

    const-string v7, " visible="

    const-string v8, " mRelayoutCalled="

    if-eqz v0, :cond_93

    .line 995
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  GONE: mViewVisibility="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p1, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 996
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_7d

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v1, :cond_7d

    move v1, v3

    goto :goto_7e

    :cond_7d
    move v1, v2

    :goto_7e
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 995
    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d6

    .line 999
    :cond_93
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  VIS: mViewVisibility="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p1, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 1000
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_c1

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v1, :cond_c1

    move v1, v3

    goto :goto_c2

    :cond_c1
    move v1, v2

    :goto_c2
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 999
    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d6
    :goto_d6
    if-eqz v0, :cond_e0

    .line 1008
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    if-eqz v0, :cond_e0

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    if-eqz v0, :cond_144

    .line 1009
    :cond_e0
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpInitial:Z

    if-eqz v0, :cond_e7

    .line 1010
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->resetContentChanged()V

    .line 1012
    :cond_e7
    iput-boolean v3, p1, Lcom/android/server/wm/WindowState;->mSurfacePlacementNeeded:Z

    .line 1013
    iput-boolean v2, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 1014
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isLaidOut()Z

    move-result v0

    xor-int/2addr v0, v3

    .line 1015
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/wm/DisplayPolicy;->layoutWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V

    .line 1016
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    iput p0, p1, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    if-eqz v0, :cond_110

    .line 1023
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_10d

    .line 1024
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->updateLastFrames()V

    .line 1026
    :cond_10d
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->onResizeHandled()V

    .line 1029
    :cond_110
    sget-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz p0, :cond_144

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  LAYOUT: mFrame="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " mParentFrame="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getParentFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " mDisplayFrame="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1031
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1029
    invoke-static {v4, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_144
    return-void
.end method

.method private synthetic lambda$new$5(Lcom/android/server/wm/WindowState;)V
    .registers 6

    .line 1036
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-nez v0, :cond_5

    return-void

    .line 1039
    :cond_5
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_3d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2ND PASS "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mHaveFrame="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mViewVisibility="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mRelayoutCalled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    :cond_3d
    iget v0, p1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    const/16 v2, 0x8

    if-eq v0, v2, :cond_47

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-nez v0, :cond_4f

    :cond_47
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    if-eqz v0, :cond_4f

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    if-eqz v0, :cond_a1

    .line 1047
    :cond_4f
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpInitial:Z

    if-eqz v0, :cond_56

    .line 1048
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->resetContentChanged()V

    :cond_56
    const/4 v0, 0x1

    .line 1050
    iput-boolean v0, p1, Lcom/android/server/wm/WindowState;->mSurfacePlacementNeeded:Z

    const/4 v0, 0x0

    .line 1051
    iput-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 1052
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/server/wm/DisplayPolicy;->layoutWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V

    .line 1053
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    iput p0, p1, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 1054
    sget-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz p0, :cond_a1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " LAYOUT: mFrame="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " mParentFrame="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1055
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getParentFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " mDisplayFrame="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1056
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1054
    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a1
    return-void
.end method

.method private synthetic lambda$new$6(Lcom/android/server/wm/WindowState;)Z
    .registers 3

    .line 1061
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v0, :cond_2e

    iget-boolean p0, p0, Lcom/android/server/wm/DisplayContent;->mUpdateImeTarget:Z

    if-eqz p0, :cond_2e

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Checking window @"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " fl=0x"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1062
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WindowManager"

    .line 1061
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    :cond_2e
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canBeImeTarget()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$7(Lcom/android/server/wm/WindowState;)V
    .registers 5

    .line 1067
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, p1, v1, v2, p0}, Lcom/android/server/wm/DisplayPolicy;->applyPostLayoutPolicyLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method private synthetic lambda$new$8(Lcom/android/server/wm/WindowState;)V
    .registers 11

    .line 1071
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 1072
    iget-boolean v2, p1, Lcom/android/server/wm/WindowState;->mObscured:Z

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v3, v3, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_10

    move v2, v5

    goto :goto_11

    :cond_10
    move v2, v4

    .line 1074
    :goto_11
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 1077
    iput-boolean v3, p1, Lcom/android/server/wm/WindowState;->mObscured:Z

    if-nez v3, :cond_105

    .line 1080
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDisplayed()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1082
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isObscuringDisplay()Z

    move-result v6

    if-eqz v6, :cond_29

    .line 1093
    iput-object p1, v0, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    .line 1095
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iput-boolean v5, v6, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    .line 1098
    :cond_29
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v7, v6, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    iget-boolean v6, v6, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->syswin:Z

    invoke-virtual {v0, p1, v7, v6}, Lcom/android/server/wm/RootWindowContainer;->handleNotObscuredLocked(Lcom/android/server/wm/WindowState;ZZ)Z

    move-result v0

    .line 1102
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v6, v6, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    if-nez v6, :cond_4a

    .line 1103
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/android/server/wm/DisplayPolicy;->isWindowExcludedFromContent(Lcom/android/server/wm/WindowState;)Z

    move-result v6

    if-nez v6, :cond_4a

    .line 1104
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v7, v6, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    or-int/2addr v0, v7

    iput-boolean v0, v6, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    .line 1107
    :cond_4a
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_105

    if-eqz v3, :cond_105

    .line 1108
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d8

    if-eq v0, v3, :cond_6a

    const/16 v3, 0x7da

    if-eq v0, v3, :cond_6a

    const/16 v3, 0x7f8

    if-ne v0, v3, :cond_6e

    .line 1109
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 1112
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 1113
    :cond_6a
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iput-boolean v5, v0, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->syswin:Z

    .line 1115
    :cond_6e
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v3, v0, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredRefreshRate:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-nez v3, :cond_81

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    cmpl-float v7, v3, v6

    if-eqz v7, :cond_81

    .line 1117
    iput v3, v0, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredRefreshRate:F

    .line 1121
    :cond_81
    iget-boolean v3, v0, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferMinimalPostProcessing:Z

    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v7, v7, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    or-int/2addr v3, v7

    iput-boolean v3, v0, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferMinimalPostProcessing:Z

    .line 1124
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getRefreshRatePolicy()Lcom/android/server/wm/RefreshRatePolicy;

    move-result-object v0

    .line 1125
    invoke-virtual {v0, p1}, Lcom/android/server/wm/RefreshRatePolicy;->getPreferredModeId(Lcom/android/server/wm/WindowState;)I

    move-result v0

    .line 1126
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v7, v3, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    if-nez v7, :cond_b1

    if-eqz v0, :cond_b1

    .line 1128
    iput v0, v3, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    .line 1131
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SYSTEM_HISTORY:Z

    if-eqz v3, :cond_b1

    .line 1132
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->getRefreshRatePolicy()Lcom/android/server/wm/RefreshRatePolicy;

    move-result-object v3

    const/high16 v7, -0x40800000    # -1.0f

    invoke-virtual {v3, p1, v0, v7, v4}, Lcom/android/server/wm/RefreshRatePolicy;->updateLog(Lcom/android/server/wm/WindowState;IFI)V

    .line 1139
    :cond_b1
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getRefreshRatePolicy()Lcom/android/server/wm/RefreshRatePolicy;

    move-result-object v0

    .line 1140
    invoke-virtual {v0, p1}, Lcom/android/server/wm/RefreshRatePolicy;->getPreferredMinRefreshRate(Lcom/android/server/wm/WindowState;)F

    move-result v0

    .line 1141
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v7, v3, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredMinRefreshRate:F

    cmpl-float v7, v7, v6

    const/4 v8, -0x1

    if-nez v7, :cond_db

    cmpl-float v7, v0, v6

    if-eqz v7, :cond_db

    .line 1143
    iput v0, v3, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredMinRefreshRate:F

    .line 1147
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SYSTEM_HISTORY:Z

    if-eqz v3, :cond_db

    .line 1148
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->getRefreshRatePolicy()Lcom/android/server/wm/RefreshRatePolicy;

    move-result-object v3

    invoke-virtual {v3, p1, v8, v0, v5}, Lcom/android/server/wm/RefreshRatePolicy;->updateLog(Lcom/android/server/wm/WindowState;IFI)V

    .line 1155
    :cond_db
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getRefreshRatePolicy()Lcom/android/server/wm/RefreshRatePolicy;

    move-result-object v0

    .line 1156
    invoke-virtual {v0, p1}, Lcom/android/server/wm/RefreshRatePolicy;->getPreferredMaxRefreshRate(Lcom/android/server/wm/WindowState;)F

    move-result v0

    .line 1157
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v7, v3, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredMaxRefreshRate:F

    cmpl-float v7, v7, v6

    if-nez v7, :cond_105

    cmpl-float v6, v0, v6

    if-eqz v6, :cond_105

    .line 1159
    iput v0, v3, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredMaxRefreshRate:F

    .line 1163
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SYSTEM_HISTORY:Z

    if-eqz v3, :cond_105

    .line 1164
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->getRefreshRatePolicy()Lcom/android/server/wm/RefreshRatePolicy;

    move-result-object v3

    const/4 v6, 0x2

    invoke-virtual {v3, p1, v8, v0, v6}, Lcom/android/server/wm/RefreshRatePolicy;->updateLog(Lcom/android/server/wm/WindowState;IFI)V

    :cond_105
    if-eqz v2, :cond_11a

    .line 1173
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_11a

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_11a

    .line 1176
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->updateWallpaperVisibility()V

    .line 1179
    :cond_11a
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->handleWindowMovedIfNeeded()V

    .line 1181
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 1184
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->resetContentChanged()V

    .line 1187
    iget-boolean v2, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v2, :cond_175

    .line 1189
    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->commitFinishDrawingLocked()Z

    move-result v0

    .line 1190
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v2, :cond_175

    if-eqz v0, :cond_175

    .line 1191
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasWallpaper()Z

    move-result v0

    if-eqz v0, :cond_15d

    .line 1192
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WALLPAPER_enabled:Z

    if-eqz v0, :cond_14b

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x1930e35d

    const/4 v6, 0x0

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v0, v7, v4

    invoke-static {v2, v3, v4, v6, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1194
    :cond_14b
    iput-boolean v5, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    .line 1195
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 1196
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v2, :cond_15d

    const-string/jumbo v2, "wallpaper and commitFinishDrawingLocked true"

    .line 1197
    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 1207
    :cond_15d
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_175

    .line 1208
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v0, v5

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 1209
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v2, :cond_175

    const-string v2, "keep_screen_on and commitFinishDrawingLocked true"

    .line 1210
    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 1219
    :cond_175
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_195

    .line 1220
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isVisibleRequested()Z

    move-result v1

    if-eqz v1, :cond_195

    .line 1221
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityRecord;->updateLetterboxSurface(Lcom/android/server/wm/WindowState;)V

    .line 1222
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityRecord;->updateDrawnWindowStates(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_195

    .line 1223
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_195

    .line 1224
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1228
    :cond_195
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->updateResizingWindowIfNeeded()V

    if-nez v0, :cond_19e

    .line 1231
    iget-boolean p0, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz p0, :cond_1a1

    .line 1233
    :cond_19e
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->updateLetterboxDirectionIfNeeded()V

    :cond_1a1
    return-void
.end method

.method private synthetic lambda$onWindowAnimationFinished$34(Ljava/lang/Object;)Z
    .registers 2

    .line 5674
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mImeScreenshot:Lcom/android/server/wm/DisplayContent$ImeScreenshot;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->getImeTarget()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-ne p1, p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private synthetic lambda$onWindowFreezeTimeout$33(Lcom/android/server/wm/WindowState;)V
    .registers 6

    .line 5651
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 5654
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->orientationChangeTimedOut()V

    .line 5655
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-wide v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    sub-long/2addr v0, v2

    long-to-int p0, v0

    iput p0, p1, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    .line 5657
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Force clearing orientation change: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic lambda$pointWithinAppWindow$18([IIILcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .registers 7

    const/4 p4, 0x0

    .line 3711
    aget v0, p0, p4

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    return-void

    .line 3715
    :cond_7
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 3716
    iget-object p1, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    aput p1, p0, p4

    :cond_23
    return-void
.end method

.method public static synthetic lambda$releaseSelfIfNeeded$44(Lcom/android/server/wm/Task;)Z
    .registers 2

    .line 7470
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result p0

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

.method public static synthetic lambda$releaseSelfIfNeeded$45(Lcom/android/server/wm/Task;)V
    .registers 2

    const-string/jumbo v0, "releaseSelfIfNeeded"

    .line 7474
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$remove$42(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;
    .registers 2

    .line 7427
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->remove()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    :cond_7
    return-object p1
.end method

.method private synthetic lambda$remove$43(Lcom/android/server/wm/RootWindowContainer$SleepToken;)V
    .registers 2

    .line 7452
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mSleepTokens:Landroid/util/SparseArray;

    iget p1, p1, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mHashKey:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public static synthetic lambda$removeAllTasks$47(Lcom/android/server/wm/Task;)V
    .registers 3

    .line 7631
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const-string/jumbo v1, "removeAllTasks"

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/Task;->removeChild(Lcom/android/server/wm/WindowContainer;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$removeRootTasksInWindowingModes$38([ILjava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .registers 7

    .line 7008
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_1d

    aget v2, p0, v1

    .line 7009
    iget-boolean v3, p2, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-nez v3, :cond_1a

    .line 7010
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v3

    if-ne v3, v2, :cond_1a

    .line 7011
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    move-result v2

    if-nez v2, :cond_17

    goto :goto_1a

    .line 7014
    :cond_17
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    :goto_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1d
    return-void
.end method

.method public static synthetic lambda$removeRootTasksWithActivityTypes$39([ILjava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .registers 9

    .line 7032
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_30

    aget v2, p0, v1

    .line 7034
    iget-boolean v3, p2, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v3, :cond_24

    .line 7035
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_10
    if-ltz v3, :cond_2d

    .line 7036
    invoke-virtual {p2, v3}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Task;

    .line 7037
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v5

    if-ne v5, v2, :cond_21

    .line 7038
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    add-int/lit8 v3, v3, -0x1

    goto :goto_10

    .line 7041
    :cond_24
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v3

    if-ne v3, v2, :cond_2d

    .line 7042
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_30
    return-void
.end method

.method private synthetic lambda$requestChangeTransitionIfNeeded$21(J)V
    .registers 3

    .line 4166
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    return-void
.end method

.method private synthetic lambda$shouldWaitForSystemDecorWindowsOnBoot$31(Landroid/util/SparseBooleanArray;Lcom/android/server/wm/WindowState;)Z
    .registers 8

    .line 5552
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    iget-boolean v0, p2, Lcom/android/server/wm/WindowState;->mObscured:Z

    if-nez v0, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v1

    .line 5553
    :goto_f
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v3

    if-eqz v0, :cond_32

    if-nez v3, :cond_32

    .line 5555
    sget-boolean p0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_BOOT_enabled:Z

    if-eqz p0, :cond_31

    iget-object p0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    int-to-long p0, p0

    sget-object p2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BOOT:Lcom/android/internal/protolog/ProtoLogGroup;

    const v0, -0x16bcd9fb

    const/4 v3, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v4, v1

    invoke-static {p2, v0, v2, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_31
    return v2

    :cond_32
    if-eqz v3, :cond_56

    .line 5561
    iget-object p2, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq p2, v2, :cond_53

    const/16 v0, 0x7dd

    if-eq p2, v0, :cond_53

    const/16 v0, 0x7e5

    if-eq p2, v0, :cond_53

    const/16 v0, 0x7f8

    if-eq p2, v0, :cond_47

    goto :goto_56

    .line 5568
    :cond_47
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 5569
    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardDrawnLw()Z

    move-result p0

    .line 5568
    invoke-virtual {p1, v0, p0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_56

    .line 5565
    :cond_53
    invoke-virtual {p1, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_56
    :goto_56
    return v1
.end method

.method private synthetic lambda$startAsyncRotation$9()V
    .registers 3

    .line 2333
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2334
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_1a

    const/4 v1, 0x0

    .line 2335
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->startAsyncRotation(Z)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2337
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2339
    :cond_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1f
    move-exception p0

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public static synthetic lambda$startKeyguardExitOnNonAppWindows$30(Lcom/android/server/policy/WindowManagerPolicy;ZZZLcom/android/server/wm/WindowState;)V
    .registers 6

    .line 5525
    iget-object v0, p4, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_1d

    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->canBeHiddenByKeyguard()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 5526
    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->wouldBeVisibleIfPolicyIgnored()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 5527
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/policy/WindowManagerPolicy;->createHiddenByKeyguardExit(ZZZ)Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {p4, p0}, Lcom/android/server/wm/WindowState;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1d
    return-void
.end method

.method public static synthetic lambda$topRunningActivity$40(ZLcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 7067
    invoke-virtual {p1, p0}, Lcom/android/server/wm/TaskDisplayArea;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$updateDisplayAreaOrganizers$17(Lcom/android/server/wm/DisplayArea;)V
    .registers 3

    .line 3692
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayArea;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 3696
    :cond_7
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mDisplayAreaOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    iget v0, p1, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    .line 3698
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayAreaOrganizerController;->getOrganizerByFeature(I)Landroid/window/IDisplayAreaOrganizer;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 3700
    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayArea;->setOrganizer(Landroid/window/IDisplayAreaOrganizer;)V

    :cond_18
    return-void
.end method

.method public static synthetic lambda$updateImeControlTarget$27(Landroid/os/IBinder;)V
    .registers 2

    .line 5378
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->reportImeControl(Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic lambda$updateImeParent$28()V
    .registers 1

    .line 5401
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->onImeParentChanged()V

    return-void
.end method

.method private synthetic lambda$updateTouchExcludeRegion$20(Lcom/android/server/wm/WindowState;)Z
    .registers 5

    .line 3846
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x1

    if-nez v0, :cond_50

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v0, v1, :cond_10

    const/16 v2, 0x63

    if-gt v0, v2, :cond_10

    goto :goto_50

    .line 3851
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_50

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_20

    goto :goto_50

    .line 3854
    :cond_20
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_27

    if-ne v0, p1, :cond_27

    return v1

    .line 3858
    :cond_27
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    return v1

    .line 3862
    :cond_30
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0xa28

    if-ne v0, v2, :cond_39

    return v1

    .line 3866
    :cond_39
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 3867
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 3869
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mPointerTouchExcludeRegion:Landroid/graphics/Region;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    sget-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    :cond_50
    :goto_50
    return v1
.end method

.method public static logsGestureExclusionRestrictions(Lcom/android/server/wm/WindowState;)Z
    .registers 6

    .line 6800
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mConstants:Lcom/android/server/wm/WindowManagerConstants;

    iget-wide v0, v0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExclusionLogDebounceTimeoutMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gtz v0, :cond_e

    return v1

    .line 6803
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 6804
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7dd

    const/4 v4, 0x1

    if-eq v2, v3, :cond_39

    const/4 v3, 0x3

    if-eq v2, v3, :cond_39

    const/16 v3, 0x7e3

    if-eq v2, v3, :cond_39

    .line 6805
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_39

    .line 6809
    invoke-static {p0, v4}, Lcom/android/server/wm/DisplayContent;->needsGestureExclusionRestrictions(Lcom/android/server/wm/WindowState;Z)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 6810
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasSideGestures()Z

    move-result p0

    if-eqz p0, :cond_39

    move v1, v4

    :cond_39
    return v1
.end method

.method public static needsGestureExclusionRestrictions(Lcom/android/server/wm/WindowState;Z)Z
    .registers 7

    .line 6782
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    return v2

    .line 6788
    :cond_b
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x1

    .line 6790
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowState;->getRequestedVisibility(I)Z

    move-result v3

    const/4 v4, 0x2

    if-nez v3, :cond_1f

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v3, v3, Landroid/view/InsetsFlags;->behavior:I

    if-ne v3, v4, :cond_1f

    move v3, v1

    goto :goto_20

    :cond_1f
    move v3, v2

    :goto_20
    if-eqz v3, :cond_24

    if-eqz p1, :cond_33

    :cond_24
    const/16 p1, 0x7db

    if-eq v0, p1, :cond_33

    const/16 p1, 0x7f8

    if-eq v0, p1, :cond_33

    .line 6793
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result p0

    if-eq p0, v4, :cond_33

    move v2, v1

    :cond_33
    return v2
.end method


# virtual methods
.method public addShellRoot(Landroid/view/IWindow;I)Landroid/view/SurfaceControl;
    .registers 5

    .line 1599
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mShellRoots:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ShellRoot;

    if-eqz v0, :cond_1d

    .line 1601
    invoke-virtual {v0}, Lcom/android/server/wm/ShellRoot;->getClient()Landroid/view/IWindow;

    move-result-object v1

    if-ne v1, p1, :cond_15

    .line 1602
    invoke-virtual {v0}, Lcom/android/server/wm/ShellRoot;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0

    .line 1604
    :cond_15
    invoke-virtual {v0}, Lcom/android/server/wm/ShellRoot;->clear()V

    .line 1605
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mShellRoots:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1607
    :cond_1d
    new-instance v0, Lcom/android/server/wm/ShellRoot;

    invoke-direct {v0, p1, p0, p2}, Lcom/android/server/wm/ShellRoot;-><init>(Landroid/view/IWindow;Lcom/android/server/wm/DisplayContent;I)V

    .line 1608
    invoke-virtual {v0}, Lcom/android/server/wm/ShellRoot;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    if-nez p1, :cond_2d

    .line 1611
    invoke-virtual {v0}, Lcom/android/server/wm/ShellRoot;->clear()V

    const/4 p0, 0x0

    return-object p0

    .line 1614
    :cond_2d
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mShellRoots:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1615
    new-instance p0, Landroid/view/SurfaceControl;

    const-string p2, "DisplayContent.addShellRoot"

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    return-object p0
.end method

.method public addWindowToken(Landroid/os/IBinder;Lcom/android/server/wm/WindowToken;)V
    .registers 7

    .line 1556
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/RootWindowContainer;->getWindowTokenDisplay(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    const-string v1, " to display="

    const-string v2, "Can\'t map token="

    if-nez v0, :cond_72

    if-eqz p1, :cond_4e

    if-eqz p2, :cond_2b

    .line 1574
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1576
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_2a

    .line 1581
    iput-object p0, p2, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1584
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->findAreaForToken(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayArea;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->asTokens()Lcom/android/server/wm/DisplayArea$Tokens;

    move-result-object p0

    .line 1585
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayArea$Tokens;->addChild(Lcom/android/server/wm/WindowToken;)V

    :cond_2a
    return-void

    .line 1570
    :cond_2b
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t map null token to display="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1571
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " binder="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1566
    :cond_4e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1567
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " binder is null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1562
    :cond_72
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1563
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " already mapped to display="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " tokens="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, v0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIII)V
    .registers 13

    .line 2971
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v0

    .line 2972
    invoke-virtual {v0}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 2973
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    move v2, p4

    move v3, p5

    move v4, p2

    move v5, p3

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy;->getConfigDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result v1

    .line 2975
    iget v2, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    if-ge v1, v2, :cond_19

    .line 2976
    iput v1, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 2978
    :cond_19
    iget v2, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    if-le v1, v2, :cond_1f

    .line 2979
    iput v1, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 2981
    :cond_1f
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    move v2, p4

    move v3, p5

    move v4, p2

    move v5, p3

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy;->getConfigDisplayHeight(IIIILandroid/view/DisplayCutout;)I

    move-result p0

    .line 2983
    iget p2, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    if-ge p0, p2, :cond_30

    .line 2984
    iput p0, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 2986
    :cond_30
    iget p2, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    if-le p0, p2, :cond_36

    .line 2987
    iput p0, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    :cond_36
    return-void
.end method

.method public adjustForImeIfNeeded()V
    .registers 3

    .line 4088
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_12

    .line 4089
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 4090
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDisplayed()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 4091
    :goto_13
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInputMethodWindowVisibleHeight()I

    move-result v1

    .line 4092
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/PinnedTaskController;->setAdjustedForIme(ZI)V

    return-void
.end method

.method public final amendWindowTapExcludeRegion(Landroid/graphics/Region;)V
    .registers 6

    .line 3974
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    .line 3975
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludeProvidingWindows:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_c
    if-ltz v1, :cond_28

    .line 3976
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludeProvidingWindows:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 3977
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowState;->getTapExcludeRegion(Landroid/graphics/Region;)V

    .line 3978
    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 3981
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mPointerTouchExcludeRegion:Landroid/graphics/Region;

    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 3985
    :cond_28
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    return-void
.end method

.method public applyMagnificationSpec(Landroid/view/MagnificationSpec;)V
    .registers 8

    .line 6236
    iget v0, p1, Landroid/view/MagnificationSpec;->scale:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_c

    .line 6237
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    goto :goto_f

    :cond_c
    const/4 v0, 0x0

    .line 6239
    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 6242
    :goto_f
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateImeParent()V

    .line 6246
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v1, v5}, Lcom/android/server/wm/InputMonitor;->layoutInputConsumers(IIZ)V

    .line 6251
    iget v0, p1, Landroid/view/MagnificationSpec;->scale:F

    float-to-double v0, v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_2d

    .line 6252
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowContainer;->applyMagnificationSpec(Landroid/view/SurfaceControl$Transaction;Landroid/view/MagnificationSpec;)V

    goto :goto_34

    .line 6254
    :cond_2d
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->clearMagnificationSpec(Landroid/view/SurfaceControl$Transaction;)V

    .line 6256
    :goto_34
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method public final applyRotation(II)V
    .registers 10

    .line 2431
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/DisplayRotation;->applyCurrentRotation(I)V

    .line 2432
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->getTransitionPlayer()Landroid/window/ITransitionPlayer;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    move v0, v2

    goto :goto_12

    :cond_11
    move v0, v1

    .line 2433
    :goto_12
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 2434
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayRotation;->isRotatingSeamlessly()Z

    move-result v3

    if-eqz v3, :cond_1d

    if-nez v0, :cond_1d

    move v1, v2

    :cond_1d
    if-eqz v0, :cond_24

    .line 2436
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    goto :goto_28

    :cond_24
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    :goto_28
    const/4 v4, 0x0

    if-eqz v1, :cond_2d

    move-object v5, v4

    goto :goto_31

    .line 2438
    :cond_2d
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRotationAnimation()Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v5

    .line 2444
    :goto_31
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p0, v6, v4}, Lcom/android/server/wm/DisplayContent;->updateDisplayAndOrientation(ILandroid/content/res/Configuration;)Landroid/view/DisplayInfo;

    if-eqz v5, :cond_45

    .line 2448
    invoke-virtual {v5}, Lcom/android/server/wm/ScreenRotationAnimation;->hasScreenshot()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 2449
    invoke-virtual {v5, v3, p2}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotation(Landroid/view/SurfaceControl$Transaction;I)V

    :cond_45
    if-nez v0, :cond_54

    .line 2453
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda27;

    invoke-direct {v0, v3, p1, p2, v1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda27;-><init>(Landroid/view/SurfaceControl$Transaction;IIZ)V

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 2456
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    invoke-virtual {v0, v3, p1, p2}, Lcom/android/server/wm/PinnedTaskController;->startSeamlessRotationIfNeeded(Landroid/view/SurfaceControl$Transaction;II)V

    .line 2459
    :cond_54
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {p1, v3}, Landroid/hardware/display/DisplayManagerInternal;->performTraversal(Landroid/view/SurfaceControl$Transaction;)V

    .line 2460
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 2462
    new-instance p1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda28;

    invoke-direct {p1, p0, v1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda28;-><init>(Lcom/android/server/wm/DisplayContent;Z)V

    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 2478
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_6f
    if-ltz p1, :cond_89

    .line 2479
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    .line 2480
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerService$RotationWatcher;

    .line 2481
    iget v1, v0, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->mDisplayId:I

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne v1, v2, :cond_86

    .line 2483
    :try_start_81
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->mWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v0, p2}, Landroid/view/IRotationWatcher;->onRotationChanged(I)V
    :try_end_86
    .catch Landroid/os/RemoteException; {:try_start_81 .. :try_end_86} :catch_86

    :catch_86
    :cond_86
    add-int/lit8 p1, p1, -0x1

    goto :goto_6f

    :cond_89
    return-void
.end method

.method public final applyRotationAndFinishFixedRotation(II)V
    .registers 5

    .line 7336
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_8

    .line 7338
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->applyRotation(II)V

    return-void

    .line 7342
    :cond_8
    new-instance v1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda42;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda42;-><init>(Lcom/android/server/wm/DisplayContent;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowToken;->finishFixedRotationTransform(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 7344
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingAppUnchecked(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public applySurfaceChangesTransaction()V
    .registers 11

    .line 5682
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 5684
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 5686
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v1, :cond_14

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-string v2, "On entry to LockedInner"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 5689
    :cond_14
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1f

    .line 5690
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows()V

    .line 5693
    :cond_1f
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3c

    .line 5694
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_30

    const-string v0, "WindowManager"

    const-string v1, "Computing new config from layout"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5695
    :cond_30
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateOrientation()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 5696
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 5697
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()V

    .line 5701
    :cond_3c
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_45

    .line 5702
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    :cond_45
    const/4 v0, 0x0

    .line 5706
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/DisplayContent;->performLayout(ZZ)V

    .line 5707
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-wide/16 v2, 0x20

    const-string v0, "applyPostLayoutPolicy"

    .line 5709
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5711
    :try_start_52
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->beginPostLayoutPolicyLw()V

    .line 5712
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mApplyPostLayoutPolicy:Ljava/util/function/Consumer;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 5713
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->finishPostLayoutPolicyLw()V
    :try_end_61
    .catchall {:try_start_52 .. :try_end_61} :catchall_107

    .line 5715
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 5717
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->onPostLayout()V

    .line 5719
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->reset()V

    .line 5722
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_HIGH_REFRESH_RATE_BLOCK_LIST:Z

    if-eqz v0, :cond_7d

    .line 5723
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getRefreshRatePolicy()Lcom/android/server/wm/RefreshRatePolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/RefreshRatePolicy;->resetRestrictHighRefreshRate()V

    .line 5725
    :cond_7d
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX_ENHANCED:Z

    if-eqz v0, :cond_84

    .line 5726
    invoke-static {p0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->adjustLetterboxes(Lcom/android/server/wm/DisplayContent;)V

    :cond_84
    const-string v0, "applyWindowSurfaceChanges"

    .line 5730
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5732
    :try_start_89
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mApplySurfaceChangesTransaction:Ljava/util/function/Consumer;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V
    :try_end_8e
    .catchall {:try_start_89 .. :try_end_8e} :catchall_102

    .line 5734
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 5736
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->prepareSurfaces()V

    .line 5740
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->checkShowImePostLayout()V

    .line 5743
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_HIGH_REFRESH_RATE_BLOCK_LIST:Z

    if-eqz v0, :cond_ac

    .line 5744
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getRefreshRatePolicy()Lcom/android/server/wm/RefreshRatePolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/RefreshRatePolicy;->updateRestrictHighRefreshRate()V

    .line 5748
    :cond_ac
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v3, v0, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    iput-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    .line 5749
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v2, :cond_ca

    .line 5750
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget v4, v0, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredRefreshRate:F

    iget v5, v0, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    iget v6, v0, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredMinRefreshRate:F

    iget v7, v0, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredMaxRefreshRate:F

    iget-boolean v8, v0, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferMinimalPostProcessing:Z

    const/4 v9, 0x1

    invoke-virtual/range {v1 .. v9}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayProperties(IZFIFFZZ)V

    .line 5760
    :cond_ca
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateRecording()V

    .line 5762
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    move-result v0

    .line 5763
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mLastWallpaperVisible:Z

    if-eq v0, v1, :cond_ed

    .line 5764
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLastWallpaperVisible:Z

    .line 5765
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperVisibilityListeners:Lcom/android/server/wm/WallpaperVisibilityListeners;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WallpaperVisibilityListeners;->notifyWallpaperVisibilityChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 5767
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_ed

    .line 5768
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/MultiTaskingController;->notifyWallpaperVisibilityChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 5774
    :cond_ed
    :goto_ed
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_101

    .line 5775
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    .line 5778
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->updateAllDrawn()V

    goto :goto_ed

    :cond_101
    return-void

    :catchall_102
    move-exception p0

    .line 5734
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 5735
    throw p0

    :catchall_107
    move-exception p0

    .line 5715
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 5716
    throw p0
.end method

.method public asDisplayContent()Lcom/android/server/wm/DisplayContent;
    .registers 1

    return-object p0
.end method

.method public assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    const/4 v0, 0x0

    .line 6299
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent;->assignRelativeLayerForIme(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 6300
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public assignImeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)Z
    .registers 5

    .line 6385
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayArea$Tokens;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 6386
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$ImeContainer;->setNeedsLayer()V

    .line 6387
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public final assignRelativeLayerForIme(Landroid/view/SurfaceControl$Transaction;Z)V
    .registers 7

    .line 6304
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayArea;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 6305
    sget-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz p0, :cond_13

    const-string p0, "WindowManager"

    const-string p1, "ImeContainer is organized. Skip assignRelativeLayerForIme."

    .line 6306
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    return-void

    .line 6313
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$ImeContainer;->setNeedsLayer()V

    .line 6314
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x1

    if-eqz v0, :cond_65

    .line 6338
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_28

    .line 6339
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->hasStartingWindow()Z

    move-result v2

    if-nez v2, :cond_65

    .line 6341
    :cond_28
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v2, :cond_3b

    invoke-interface {v2}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_3b

    .line 6342
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v2}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    goto :goto_3c

    :cond_3b
    const/4 v2, 0x0

    .line 6343
    :goto_3c
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    if-eqz v3, :cond_58

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    if-ne v3, v2, :cond_58

    .line 6345
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_58

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v2, :cond_56

    .line 6347
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isInSplitActivityMode()Z

    move-result v2

    if-nez v2, :cond_58

    :cond_56
    move v2, v1

    goto :goto_59

    :cond_58
    const/4 v2, 0x0

    :goto_59
    if-eqz v2, :cond_65

    .line 6350
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/wm/DisplayContent$ImeContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IZ)V

    return-void

    .line 6358
    :cond_65
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->shouldBeRelativeLayer(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 6359
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/wm/DisplayContent$ImeContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IZ)V

    goto :goto_7e

    .line 6362
    :cond_75
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodSurfaceParent:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_7e

    .line 6366
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/wm/DisplayContent$ImeContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IZ)V

    :cond_7e
    :goto_7e
    return-void
.end method

.method public assignRelativeLayerForImeTargetChild(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V
    .registers 4

    .line 6380
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea$Tokens;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p2, p1, p0, v0}, Lcom/android/server/wm/WindowContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    return-void
.end method

.method public assignRelativeLayerForImeTargetHandler(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;Z)Z
    .registers 6

    .line 8455
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->isRelativeTo(Landroid/view/SurfaceControl;)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_1f

    .line 8458
    :cond_13
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea$Tokens;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    const/4 v0, -0x1

    invoke-virtual {p2, p1, p0, v0, p3}, Lcom/android/server/wm/WindowContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IZ)V

    const/4 p0, 0x1

    return p0

    :cond_1f
    :goto_1f
    const/4 p0, 0x0

    return p0
.end method

.method public assignWindowLayers(Z)V
    .registers 5

    const-wide/16 v0, 0x20

    const-string v2, "assignWindowLayers"

    .line 4773
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4774
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    if-eqz p1, :cond_13

    .line 4776
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 4783
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 4784
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public final attachAndShowImeScreenshotOnTarget()V
    .registers 5

    .line 5275
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->shouldImeAttachedToApp()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_39

    .line 5279
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 5281
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_39

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 5285
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->removeImeSurfaceImmediately()V

    .line 5286
    new-instance v1, Lcom/android/server/wm/DisplayContent$ImeScreenshot;

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSurfaceControlFactory:Ljava/util/function/Function;

    const/4 v3, 0x0

    .line 5287
    invoke-interface {v2, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl$Builder;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    invoke-direct {v1, v2, v3}, Lcom/android/server/wm/DisplayContent$ImeScreenshot;-><init>(Landroid/view/SurfaceControl$Builder;Lcom/android/server/wm/WindowState;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeScreenshot:Lcom/android/server/wm/DisplayContent$ImeScreenshot;

    .line 5288
    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->attachAndShow(Landroid/view/SurfaceControl$Transaction;)V

    :cond_39
    :goto_39
    return-void
.end method

.method public calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;
    .registers 3

    const/4 v0, 0x0

    .line 2597
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(IZ)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object p0

    return-object p0
.end method

.method public calculateDisplayCutoutForRotation(IZ)Lcom/android/server/wm/utils/WmDisplayCutout;
    .registers 3

    if-eqz p2, :cond_9

    .line 2602
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/UdcCutoutPolicy;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object p0

    return-object p0

    .line 2607
    :cond_9
    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayCutoutCache:Lcom/android/server/wm/utils/RotationCache;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {p2, p0, p1}, Lcom/android/server/wm/utils/RotationCache;->getOrCompute(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/utils/WmDisplayCutout;

    return-object p0
.end method

.method public final calculateDisplayCutoutForRotationUncached(Landroid/view/DisplayCutout;I)Lcom/android/server/wm/utils/WmDisplayCutout;
    .registers 4

    .line 2635
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-static {p1, p2, v0, p0}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotationAndDisplaySizeUncached(Landroid/view/DisplayCutout;III)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object p0

    return-object p0
.end method

.method public calculatePrivacyIndicatorBoundsForRotation(I)Landroid/view/PrivacyIndicatorBounds;
    .registers 3

    .line 2666
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPrivacyIndicatorBoundsCache:Lcom/android/server/wm/utils/RotationCache;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mCurrentPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/utils/RotationCache;->getOrCompute(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/PrivacyIndicatorBounds;

    return-object p0
.end method

.method public final calculatePrivacyIndicatorBoundsForRotationUncached(Landroid/view/PrivacyIndicatorBounds;I)Landroid/view/PrivacyIndicatorBounds;
    .registers 3

    if-nez p1, :cond_b

    .line 2672
    new-instance p0, Landroid/view/PrivacyIndicatorBounds;

    const/4 p1, 0x4

    new-array p1, p1, [Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2}, Landroid/view/PrivacyIndicatorBounds;-><init>([Landroid/graphics/Rect;I)V

    return-object p0

    .line 2675
    :cond_b
    invoke-virtual {p1, p2}, Landroid/view/PrivacyIndicatorBounds;->rotate(I)Landroid/view/PrivacyIndicatorBounds;

    move-result-object p0

    return-object p0
.end method

.method public calculateRoundedCornersForRotation(I)Landroid/view/RoundedCorners;
    .registers 4

    .line 2645
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRoundedCornerCache:Lcom/android/server/wm/utils/RotationCache;

    .line 2646
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mIsSizeForced:Z

    if-eqz v1, :cond_9

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mBaseRoundedCorners:Landroid/view/RoundedCorners;

    goto :goto_b

    :cond_9
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInitialRoundedCorners:Landroid/view/RoundedCorners;

    .line 2645
    :goto_b
    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/utils/RotationCache;->getOrCompute(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/RoundedCorners;

    return-object p0
.end method

.method public final calculateRoundedCornersForRotationUncached(Landroid/view/RoundedCorners;I)Landroid/view/RoundedCorners;
    .registers 5

    if-eqz p1, :cond_1f

    .line 2651
    sget-object v0, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    if-ne p1, v0, :cond_7

    goto :goto_1f

    :cond_7
    if-nez p2, :cond_a

    return-object p1

    .line 2661
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mIsSizeForced:Z

    if-eqz v0, :cond_11

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_13

    :cond_11
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    :goto_13
    if-eqz v0, :cond_18

    .line 2662
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_1a

    :cond_18
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 2659
    :goto_1a
    invoke-virtual {p1, p2, v1, p0}, Landroid/view/RoundedCorners;->rotate(III)Landroid/view/RoundedCorners;

    move-result-object p0

    return-object p0

    .line 2652
    :cond_1f
    :goto_1f
    sget-object p0, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    return-object p0
.end method

.method public calculateSystemGestureExclusion(Landroid/graphics/Region;Landroid/graphics/Region;)Z
    .registers 20
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p0

    .line 6671
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Region;->setEmpty()V

    if-eqz p2, :cond_a

    .line 6673
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Region;->setEmpty()V

    .line 6675
    :cond_a
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v11

    .line 6676
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget v2, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iget v1, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v12, v2, v1}, Landroid/graphics/Region;->set(IIII)Z

    .line 6678
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    move-result-object v1

    .line 6679
    invoke-virtual {v1}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v8

    .line 6680
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    move-result-object v1

    .line 6681
    invoke-virtual {v1}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v9

    .line 6683
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v13

    .line 6684
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v14

    const/4 v1, 0x2

    new-array v15, v1, [I

    .line 6685
    iget v1, v0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionLimit:I

    aput v1, v15, v12

    const/4 v10, 0x1

    aput v1, v15, v10

    .line 6687
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 6688
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v2

    .line 6692
    new-instance v7, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda30;

    move-object v1, v7

    move-object v3, v11

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    move-object v12, v7

    move-object/from16 v7, p1

    move-object/from16 v16, v15

    move v15, v10

    move-object/from16 v10, p2

    invoke-direct/range {v1 .. v10}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda30;-><init>(Lcom/android/server/wm/RecentsAnimationController;Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region;[ILandroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V

    invoke-virtual {v0, v12, v15}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 6764
    invoke-virtual {v14}, Landroid/graphics/Region;->recycle()V

    .line 6765
    invoke-virtual {v13}, Landroid/graphics/Region;->recycle()V

    .line 6766
    invoke-virtual {v11}, Landroid/graphics/Region;->recycle()V

    const/4 v1, 0x0

    aget v2, v16, v1

    .line 6767
    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionLimit:I

    if-lt v2, v0, :cond_7a

    aget v2, v16, v15

    if-ge v2, v0, :cond_78

    goto :goto_7a

    :cond_78
    move v12, v1

    goto :goto_7b

    :cond_7a
    :goto_7a
    move v12, v15

    :goto_7b
    return v12
.end method

.method public canAddToastWindowForUid(I)Z
    .registers 4

    .line 4501
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda43;

    invoke-direct {v0, p1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda43;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    return v1

    .line 4506
    :cond_d
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda44;

    invoke-direct {v0, p1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda44;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-nez p0, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    return v1
.end method

.method public canShowTasksInRecents()Z
    .registers 1

    .line 2417
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDwpcHelper:Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 2420
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->canShowTasksInRecents()Z

    move-result p0

    return p0
.end method

.method public canShowWithInsecureKeyguard()Z
    .registers 1

    .line 7577
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Landroid/view/Display;->getFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public final canUpdateImeTarget()Z
    .registers 1

    .line 6438
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public cancelAppTransition()V
    .registers 2

    .line 6542
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_16

    .line 6543
    :cond_11
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->abort()V

    :cond_16
    :goto_16
    return-void
.end method

.method public final checkFocusMonitoringPolicy(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 1409
    :cond_3
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1410
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getApplicationPolicy()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 1413
    :try_start_b
    iget v2, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 1414
    invoke-interface {v1, v0, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationFocusMonitoredAsUser(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1416
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    .line 1418
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v0

    .line 1417
    invoke-virtual {p0, p1, p2, v2, v0}, Lcom/android/server/wm/DisplayContent;->sendApplicationFocusMonitoringIntent(Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_20} :catch_20

    :catch_20
    :cond_20
    return-void
.end method

.method public final clearFixedRotationLaunchingApp()V
    .registers 2

    .line 2268
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_5

    return-void

    .line 2271
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->finishFixedRotationTransform()V

    const/4 v0, 0x0

    .line 2272
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingAppUnchecked(Lcom/android/server/wm/ActivityRecord;)V

    .line 2275
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    invoke-virtual {p0}, Lcom/android/server/wm/PinnedTaskController;->onCancelFixedRotationTransform()V

    return-void
.end method

.method public final clearLayoutNeeded()V
    .registers 3

    .line 5467
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearLayoutNeeded: callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const/4 v0, 0x0

    .line 5468
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutNeeded:Z

    return-void
.end method

.method public clearNeedsUpdateAboveInsetsStateAfterUnfreezing()V
    .registers 1

    .line 8579
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    if-eqz p0, :cond_7

    .line 8580
    invoke-static {p0}, Lcom/android/server/wm/DisplayContent$ImeContainer;->-$$Nest$mclearNeedsUpdateAboveInsetsStateAfterUnfreezing(Lcom/android/server/wm/DisplayContent$ImeContainer;)V

    :cond_7
    return-void
.end method

.method public clearToUseBlackScreenshot()V
    .registers 2

    const/4 v0, 0x0

    .line 8342
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mUseBlackScreenshot:Z

    return-void
.end method

.method public final computeCompatSmallestWidth(ZIII)I
    .registers 15

    .line 2873
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 2874
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    if-eqz p1, :cond_c

    goto :goto_f

    :cond_c
    move v9, p4

    move p4, p3

    move p3, v9

    :goto_f
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move v5, p2

    move-object v6, v0

    move v7, p4

    move v8, p3

    .line 2883
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/DisplayContent;->reduceCompatConfigWidthSize(IIILandroid/util/DisplayMetrics;II)I

    move-result v3

    const/4 v4, 0x1

    move v7, p3

    move v8, p4

    .line 2885
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/DisplayContent;->reduceCompatConfigWidthSize(IIILandroid/util/DisplayMetrics;II)I

    move-result v3

    const/4 v4, 0x2

    move v7, p4

    move v8, p3

    .line 2887
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/DisplayContent;->reduceCompatConfigWidthSize(IIILandroid/util/DisplayMetrics;II)I

    move-result v3

    const/4 v4, 0x3

    move v7, p3

    move v8, p4

    .line 2889
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/DisplayContent;->reduceCompatConfigWidthSize(IIILandroid/util/DisplayMetrics;II)I

    move-result p0

    return p0
.end method

.method public computeImeControlTarget()Lcom/android/server/wm/InsetsControlTarget;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5410
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isImeControlledByApp()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    if-nez v0, :cond_1a

    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    if-eqz v0, :cond_1d

    .line 5412
    invoke-interface {v0}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getImeHostOrFallback(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    if-ne v0, v1, :cond_1d

    .line 5414
    :cond_1a
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    return-object p0

    .line 5416
    :cond_1d
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    if-eqz p0, :cond_26

    invoke-interface {p0}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object p0

    goto :goto_27

    :cond_26
    const/4 p0, 0x0

    :goto_27
    return-object p0
.end method

.method public computeImeParent()Landroid/view/SurfaceControl;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5425
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    .line 5435
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 5436
    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    if-eqz v0, :cond_36

    .line 5438
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    if-eqz v0, :cond_36

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 5439
    invoke-interface {v0}, Lcom/android/server/wm/InputTarget;->getActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eq v2, v0, :cond_36

    .line 5441
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_35

    goto :goto_36

    :cond_35
    return-object v1

    .line 5453
    :cond_36
    :goto_36
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->shouldImeAttachedToApp()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 5454
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0

    .line 5457
    :cond_45
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 5458
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    :cond_57
    return-object v1
.end method

.method public computeImeTarget(Z)Lcom/android/server/wm/WindowState;
    .registers 10

    .line 4869
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    const-string v1, "Moving IM target from "

    const/4 v2, 0x0

    const-string v3, "WindowManager"

    if-nez v0, :cond_2c

    if-eqz p1, :cond_2b

    .line 4872
    sget-boolean p1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz p1, :cond_28

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to null since mInputMethodWindow is null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4874
    :cond_28
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->setImeLayeringTargetInner(Lcom/android/server/wm/WindowState;)V

    :cond_2b
    return-object v2

    .line 4881
    :cond_2c
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->updateLetterboxDirectionIfNeeded()V

    .line 4885
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    .line 4886
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->canUpdateImeTarget()Z

    move-result v4

    if-nez v4, :cond_44

    .line 4887
    sget-boolean p1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz p1, :cond_40

    const-string p1, "Defer updating IME target"

    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    const/4 p1, 0x1

    .line 4888
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mUpdateImeRequestedWhileDeferred:Z

    return-object v0

    .line 4895
    :cond_44
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mUpdateImeTarget:Z

    .line 4896
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mComputeImeTargetPredicate:Ljava/util/function/Predicate;

    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 4898
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v5, :cond_72

    if-eqz p1, :cond_72

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Proposed new IME target: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " for display: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4899
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4898
    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_72
    if-eqz v0, :cond_9a

    .line 4902
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isPopOver()Z

    move-result v5

    if-eqz v5, :cond_9a

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v5, :cond_9a

    .line 4903
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDisplayed()Z

    move-result v5

    if-eqz v5, :cond_9a

    .line 4904
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isClosing()Z

    move-result v5

    if-eqz v5, :cond_9a

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v5

    if-nez v5, :cond_9a

    .line 4905
    sget-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz p0, :cond_99

    const-string p0, "Current target, pop-over, is closing, Defer updating IME target"

    .line 4906
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_99
    return-object v0

    .line 4912
    :cond_9a
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v5, :cond_ba

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Desired input method target="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " updateImeTarget="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ba
    const/4 v5, 0x4

    const-string v6, " Callers="

    const-string v7, ""

    if-nez v4, :cond_fc

    if-eqz p1, :cond_fb

    .line 4917
    sget-boolean p1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz p1, :cond_f8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to null."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4918
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_STACK_CRAWLS:Z

    if-eqz v0, :cond_ee

    .line 4919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_ee
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4917
    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4920
    :cond_f8
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->setImeLayeringTargetInner(Lcom/android/server/wm/WindowState;)V

    :cond_fb
    return-object v2

    :cond_fc
    if-eqz p1, :cond_139

    .line 4927
    sget-boolean p1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz p1, :cond_136

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4928
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_STACK_CRAWLS:Z

    if-eqz v0, :cond_12c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_12c
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4927
    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4929
    :cond_136
    invoke-virtual {p0, v4}, Lcom/android/server/wm/DisplayContent;->setImeLayeringTargetInner(Lcom/android/server/wm/WindowState;)V

    :cond_139
    return-object v4
.end method

.method public computeImeTargetIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 4940
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, p1, :cond_c

    const/4 p1, 0x1

    .line 4941
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    :cond_c
    return-void
.end method

.method public final computeScreenAppConfiguration(Landroid/content/res/Configuration;IIIILandroid/view/DisplayCutout;)V
    .registers 16

    .line 2720
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result v0

    .line 2722
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1, p3, p4, p6}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayHeight(IILandroid/view/DisplayCutout;)I

    move-result v1

    .line 2724
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p4, p6, v3}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorInsetsLw(ILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 2725
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 2726
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 2728
    iget-object v4, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    add-int/2addr v0, v3

    add-int/2addr v1, v2

    invoke-virtual {v4, v3, v2, v0, v1}, Landroid/app/WindowConfiguration;->setAppBounds(IIII)V

    .line 2730
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p4}, Landroid/app/WindowConfiguration;->setRotation(I)V

    const/4 v0, 0x1

    if-gt p2, p3, :cond_2f

    move v1, v0

    goto :goto_30

    :cond_2f
    const/4 v1, 0x2

    .line 2731
    :goto_30
    iput v1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 2733
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 2734
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/DisplayPolicy;->getConfigDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 2736
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/DisplayPolicy;->getConfigDisplayHeight(IIIILandroid/view/DisplayCutout;)I

    move-result p6

    int-to-float p6, p6

    div-float/2addr p6, v1

    float-to-int p6, p6

    iput p6, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 2738
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mCompatibleScreenScale:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    int-to-float p6, p6

    div-float/2addr p6, v2

    float-to-int p6, p6

    .line 2739
    iput p6, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    if-eq p4, v0, :cond_6b

    const/4 p6, 0x3

    if-ne p4, p6, :cond_6a

    goto :goto_6b

    :cond_6a
    const/4 v0, 0x0

    .line 2742
    :cond_6b
    :goto_6b
    invoke-virtual {p0, v0, p5, p2, p3}, Lcom/android/server/wm/DisplayContent;->computeCompatSmallestWidth(ZIII)I

    move-result p0

    iput p0, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 2743
    iget-object p0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0, p4}, Landroid/app/WindowConfiguration;->setDisplayRotation(I)V

    return-void
.end method

.method public computeScreenConfiguration(Landroid/content/res/Configuration;I)Landroid/view/DisplayInfo;
    .registers 4

    const/4 v0, 0x0

    .line 2684
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/DisplayContent;->computeScreenConfiguration(Landroid/content/res/Configuration;IZ)Landroid/view/DisplayInfo;

    move-result-object p0

    return-object p0
.end method

.method public computeScreenConfiguration(Landroid/content/res/Configuration;IZ)Landroid/view/DisplayInfo;
    .registers 20

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq v9, v0, :cond_10

    const/4 v2, 0x3

    if-ne v9, v2, :cond_e

    goto :goto_10

    :cond_e
    move v10, v1

    goto :goto_11

    :cond_10
    :goto_10
    move v10, v0

    :goto_11
    if-eqz v10, :cond_16

    .line 2691
    iget v0, v7, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_18

    :cond_16
    iget v0, v7, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    :goto_18
    move v11, v0

    if-eqz v10, :cond_1e

    .line 2692
    iget v0, v7, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_20

    :cond_1e
    iget v0, v7, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    :goto_20
    move v12, v0

    .line 2693
    iget-object v0, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v1, v1, v11, v12}, Landroid/app/WindowConfiguration;->setMaxBounds(IIII)V

    .line 2694
    iget-object v0, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 2696
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v13, v0, Landroid/content/res/Configuration;->uiMode:I

    move/from16 v0, p3

    .line 2698
    invoke-virtual {v7, v9, v0}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(IZ)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v0

    .line 2701
    invoke-virtual {v0}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v12

    move/from16 v4, p2

    move v5, v13

    move-object v6, v14

    .line 2702
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/DisplayContent;->computeScreenAppConfiguration(Landroid/content/res/Configuration;IIIILandroid/view/DisplayCutout;)V

    .line 2704
    new-instance v15, Landroid/view/DisplayInfo;

    iget-object v0, v7, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-direct {v15, v0}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    .line 2705
    iput v9, v15, Landroid/view/DisplayInfo;->rotation:I

    .line 2706
    iput v11, v15, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 2707
    iput v12, v15, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 2708
    iget-object v0, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2709
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v15, Landroid/view/DisplayInfo;->appWidth:I

    .line 2710
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, v15, Landroid/view/DisplayInfo;->appHeight:I

    .line 2711
    invoke-virtual {v14}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_72

    const/4 v14, 0x0

    :cond_72
    iput-object v14, v15, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 2712
    iget-object v0, v7, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    move-object/from16 v0, p0

    move-object v1, v15

    move v2, v10

    move v3, v13

    move v4, v11

    move v5, v12

    move-object/from16 v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/DisplayContent;->computeSizeRangesAndScreenLayout(Landroid/view/DisplayInfo;ZIIIFLandroid/content/res/Configuration;)V

    return-object v15
.end method

.method public computeScreenConfiguration(Landroid/content/res/Configuration;)V
    .registers 16

    .line 2751
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/DisplayContent;->updateDisplayAndOrientation(ILandroid/content/res/Configuration;)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 2752
    iget v3, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 2753
    iget v4, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 2754
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    const/4 v8, 0x0

    invoke-virtual {v1, v8, v8, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2755
    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 2756
    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/app/WindowConfiguration;->setMaxBounds(Landroid/graphics/Rect;)V

    .line 2757
    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 2758
    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/WindowConfiguration;->setDisplayWindowingMode(I)V

    .line 2760
    iget v5, v0, Landroid/view/DisplayInfo;->rotation:I

    iget v6, p1, Landroid/content/res/Configuration;->uiMode:I

    iget-object v7, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/DisplayContent;->computeScreenAppConfiguration(Landroid/content/res/Configuration;IIIILandroid/view/DisplayCutout;)V

    .line 2763
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, -0x301

    .line 2764
    iget v2, v0, Landroid/view/DisplayInfo;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_48

    const/16 v2, 0x200

    goto :goto_4a

    :cond_48
    const/16 v2, 0x100

    :goto_4a
    or-int/2addr v1, v2

    .line 2766
    iput v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 2768
    iget v1, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 2771
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->isHdr()Z

    move-result v1

    if-eqz v1, :cond_62

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->hasHdrSupport()Z

    move-result v1

    if-eqz v1, :cond_62

    const/16 v1, 0x8

    goto :goto_63

    :cond_62
    const/4 v1, 0x4

    .line 2774
    :goto_63
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->isWideColorGamut()Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->hasWideColorGamutSupport()Z

    move-result v0

    if-eqz v0, :cond_75

    move v0, v2

    goto :goto_76

    :cond_75
    move v0, v3

    :goto_76
    or-int/2addr v0, v1

    .line 2776
    iput v0, p1, Landroid/content/res/Configuration;->colorMode:I

    .line 2780
    iput v3, p1, Landroid/content/res/Configuration;->touchscreen:I

    .line 2781
    iput v3, p1, Landroid/content/res/Configuration;->keyboard:I

    .line 2782
    iput v3, p1, Landroid/content/res/Configuration;->navigation:I

    .line 2786
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService;->getInputDevices()[Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_8b

    .line 2787
    array-length v1, v0

    goto :goto_8c

    :cond_8b
    move v1, v8

    :goto_8c
    move v4, v8

    move v5, v4

    move v6, v5

    :goto_8f
    if-ge v4, v1, :cond_f7

    .line 2789
    aget-object v7, v0, v4

    .line 2791
    invoke-virtual {v7}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v9

    if-eqz v9, :cond_9a

    goto :goto_f4

    .line 2796
    :cond_9a
    iget-object v9, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v7}, Landroid/view/InputDevice;->getId()I

    move-result v10

    iget v11, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v9, v10, v11}, Lcom/android/server/input/InputManagerService;->canDispatchToDisplay(II)Z

    move-result v9

    if-nez v9, :cond_b4

    .line 2798
    invoke-virtual {v7}, Landroid/view/InputDevice;->getId()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/server/wm/DisplayContent;->shouldApplyInputDeviceToDisplay(I)Z

    move-result v9

    if-eqz v9, :cond_f4

    .line 2806
    :cond_b4
    invoke-virtual {v7}, Landroid/view/InputDevice;->getSources()I

    move-result v9

    .line 2807
    invoke-virtual {v7}, Landroid/view/InputDevice;->isExternal()Z

    move-result v10

    if-eqz v10, :cond_c0

    move v10, v2

    goto :goto_c1

    :cond_c0
    move v10, v3

    .line 2810
    :goto_c1
    iget-object v11, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v11, v11, Lcom/android/server/wm/WindowManagerService;->mIsTouchDevice:Z

    const/4 v12, 0x3

    if-eqz v11, :cond_d1

    and-int/lit16 v11, v9, 0x1002

    const/16 v13, 0x1002

    if-ne v11, v13, :cond_d3

    .line 2812
    iput v12, p1, Landroid/content/res/Configuration;->touchscreen:I

    goto :goto_d3

    .line 2815
    :cond_d1
    iput v3, p1, Landroid/content/res/Configuration;->touchscreen:I

    :cond_d3
    :goto_d3
    const v11, 0x10004

    and-int v13, v9, v11

    if-ne v13, v11, :cond_de

    .line 2819
    iput v12, p1, Landroid/content/res/Configuration;->navigation:I

    :goto_dc
    or-int/2addr v5, v10

    goto :goto_eb

    :cond_de
    and-int/lit16 v9, v9, 0x201

    const/16 v11, 0x201

    if-ne v9, v11, :cond_eb

    .line 2821
    iget v9, p1, Landroid/content/res/Configuration;->navigation:I

    if-ne v9, v3, :cond_eb

    .line 2823
    iput v2, p1, Landroid/content/res/Configuration;->navigation:I

    goto :goto_dc

    .line 2827
    :cond_eb
    :goto_eb
    invoke-virtual {v7}, Landroid/view/InputDevice;->getKeyboardType()I

    move-result v7

    if-ne v7, v2, :cond_f4

    .line 2828
    iput v2, p1, Landroid/content/res/Configuration;->keyboard:I

    or-int/2addr v6, v10

    :cond_f4
    :goto_f4
    add-int/lit8 v4, v4, 0x1

    goto :goto_8f

    .line 2833
    :cond_f7
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    if-ne v0, v3, :cond_105

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mHasPermanentDpad:Z

    if-eqz v0, :cond_105

    .line 2834
    iput v2, p1, Landroid/content/res/Configuration;->navigation:I

    or-int/lit8 v5, v5, 0x1

    .line 2840
    :cond_105
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v0, v3, :cond_10a

    move v8, v3

    .line 2841
    :cond_10a
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    if-eq v8, v1, :cond_120

    .line 2842
    iput-boolean v8, v0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    .line 2843
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2844
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2847
    :cond_120
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->updateConfigurationAndScreenSizeDependentBehaviors()V

    .line 2850
    iput v3, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 2851
    iput v3, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 2852
    iput v3, p1, Landroid/content/res/Configuration;->navigationHidden:I

    .line 2853
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p0, p1, v6, v5}, Lcom/android/server/policy/WindowManagerPolicy;->adjustConfigurationLw(Landroid/content/res/Configuration;II)V

    return-void
.end method

.method public final computeSizeRangesAndScreenLayout(Landroid/view/DisplayInfo;ZIIIFLandroid/content/res/Configuration;)V
    .registers 16

    if-eqz p2, :cond_5

    move v7, p5

    move p5, p4

    move p4, v7

    :cond_5
    const/high16 p2, 0x40000000    # 2.0f

    .line 2925
    iput p2, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 2926
    iput p2, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    const/4 p2, 0x0

    .line 2927
    iput p2, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 2928
    iput p2, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    .line 2929
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIII)V

    const/4 v2, 0x1

    move v4, p5

    move v5, p4

    .line 2930
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIII)V

    const/4 v2, 0x2

    move v4, p4

    move v5, p5

    .line 2931
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIII)V

    const/4 v2, 0x3

    move v4, p5

    move v5, p4

    .line 2932
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIII)V

    if-nez p7, :cond_2e

    return-void

    .line 2937
    :cond_2e
    iget p2, p7, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {p2}, Landroid/content/res/Configuration;->resetScreenLayout(I)I

    move-result v1

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p6

    move v4, p4

    move v5, p5

    move v6, p3

    .line 2938
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/DisplayContent;->reduceConfigLayout(IIFIII)I

    move-result v1

    const/4 v2, 0x1

    move v4, p5

    move v5, p4

    .line 2939
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/DisplayContent;->reduceConfigLayout(IIFIII)I

    move-result v1

    const/4 v2, 0x2

    move v4, p4

    move v5, p5

    .line 2940
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/DisplayContent;->reduceConfigLayout(IIFIII)I

    move-result v1

    const/4 v2, 0x3

    move v4, p5

    move v5, p4

    .line 2941
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/DisplayContent;->reduceConfigLayout(IIFIII)I

    move-result p0

    .line 2942
    iget p1, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    int-to-float p1, p1

    div-float/2addr p1, p6

    float-to-int p1, p1

    iput p1, p7, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 2943
    iput p0, p7, Landroid/content/res/Configuration;->screenLayout:I

    return-void
.end method

.method public configureDisplayPolicy()V
    .registers 3

    .line 2492
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->updateDisplayImePolicyCache()V

    .line 2493
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->updateConfigurationAndScreenSizeDependentBehaviors()V

    .line 2494
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/DisplayRotation;->configure(II)V

    return-void
.end method

.method public final configureSurfaces(Landroid/view/SurfaceControl$Transaction;)V
    .registers 7

    .line 1474
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mSession:Landroid/view/SurfaceSession;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 1475
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1476
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v2, "DisplayContent"

    .line 1477
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1478
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1480
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayAreaPolicy:Lcom/android/server/wm/DisplayAreaPolicy;

    if-nez v2, :cond_3d

    .line 1483
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDisplayAreaPolicyProvider()Lcom/android/server/wm/DisplayAreaPolicy$Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-interface {v2, v3, p0, p0, v4}, Lcom/android/server/wm/DisplayAreaPolicy$Provider;->instantiate(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/RootDisplayArea;Lcom/android/server/wm/DisplayArea$Tokens;)Lcom/android/server/wm/DisplayAreaPolicy;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayAreaPolicy:Lcom/android/server/wm/DisplayAreaPolicy;

    .line 1488
    :cond_3d
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayAreaPolicy:Lcom/android/server/wm/DisplayAreaPolicy;

    const/4 v3, 0x4

    .line 1489
    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayAreaPolicy;->getDisplayAreas(I)Ljava/util/List;

    move-result-object v2

    .line 1490
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-ne v3, v1, :cond_52

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayArea;

    goto :goto_53

    :cond_52
    const/4 v1, 0x0

    :goto_53
    if-eqz v1, :cond_65

    .line 1492
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    if-ne v2, p0, :cond_65

    .line 1495
    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    .line 1496
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_80

    .line 1500
    :cond_65
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    const-string v1, "RootWrapper"

    .line 1501
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1502
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    .line 1503
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1506
    :goto_80
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    if-nez v1, :cond_97

    const-string v1, "Display Overlays"

    .line 1507
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    goto :goto_9c

    .line 1509
    :cond_97
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1512
    :goto_9c
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1513
    invoke-virtual {p1, v0, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 1514
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayerStack(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1515
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    const v1, 0x7fffffff

    .line 1516
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    .line 1517
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1524
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p0}, Lcom/android/server/input/InputManagerService;->configureSpyWindowGestureMonitorSurfaces(ILandroid/view/SurfaceControl;)V

    return-void
.end method

.method public continueUpdateImeTarget()V
    .registers 3

    .line 6424
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 6428
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    if-nez v0, :cond_12

    .line 6429
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mUpdateImeRequestedWhileDeferred:Z

    if-eqz v0, :cond_12

    .line 6430
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    :cond_12
    return-void
.end method

.method public continueUpdateOrientationForDiffOrienLaunchingApp()V
    .registers 4

    .line 2241
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_5

    return-void

    .line 2244
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    invoke-virtual {v0}, Lcom/android/server/wm/PinnedTaskController;->shouldDeferOrientationChange()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 2249
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getOrientation()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayRotation;->updateOrientation(IZ)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2250
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()V

    return-void

    .line 2253
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->isWaitingForRemoteRotation()Z

    move-result v0

    if-eqz v0, :cond_28

    return-void

    .line 2258
    :cond_28
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->clearFixedRotationLaunchingApp()V

    return-void
.end method

.method public final convertActivityResultToComponentName(Lcom/android/server/wm/ActivityRecord;)Landroid/content/ComponentName;
    .registers 7

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return-object p0

    .line 8162
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8d

    .line 8163
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1a

    if-gt v0, v1, :cond_14

    goto/16 :goto_8d

    :cond_14
    const-string v0, " "

    .line 8171
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 8173
    :try_start_1a
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_1d
    const/4 v2, -0x1

    if-ltz v0, :cond_36

    .line 8175
    aget-object v3, p1, v0

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v2, :cond_33

    .line 8176
    aget-object p1, p1, v0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_36

    :cond_33
    add-int/lit8 v0, v0, -0x1

    goto :goto_1d

    .line 8181
    :cond_36
    :goto_36
    array-length v0, p1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_8d

    .line 8182
    aget-object v0, p1, v1

    const-string/jumbo v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x0

    if-eq v0, v2, :cond_4e

    .line 8184
    aget-object v2, p1, v1

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    .line 8186
    :cond_4e
    aget-object v0, p1, v3

    .line 8187
    aget-object v2, p1, v1

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6c

    .line 8188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_6e

    .line 8190
    :cond_6c
    aget-object p1, p1, v1

    .line 8192
    :goto_6e
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catch Ljava/lang/NullPointerException; {:try_start_1a .. :try_end_73} :catch_75

    move-object p0, v1

    goto :goto_8d

    :catch_75
    move-exception p1

    .line 8195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "package and class name\'s parsing error. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WindowManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8d
    :goto_8d
    return-object p0
.end method

.method public deferUpdateImeTarget()V
    .registers 3

    .line 6413
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    if-nez v0, :cond_7

    const/4 v1, 0x0

    .line 6414
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mUpdateImeRequestedWhileDeferred:Z

    :cond_7
    add-int/lit8 v0, v0, 0x1

    .line 6416
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    return-void
.end method

.method public destroyLeakedSurfaces()Z
    .registers 4

    const/4 v0, 0x0

    .line 4807
    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 4808
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 4809
    new-instance v1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/DisplayContent;Landroid/view/SurfaceControl$Transaction;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 4832
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 4834
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    if-eqz p0, :cond_1e

    const/4 v2, 0x1

    :cond_1e
    return v2
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 11

    .line 4284
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayArea;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 4285
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display: mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rootTasks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRootTaskCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4288
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "init="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v2, "x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4289
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, "dpi"

    .line 4290
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " mMinSizeOfResizeableTaskDp="

    .line 4291
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mMinSizeOfResizeableTaskDp:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 4292
    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    if-ne v5, v6, :cond_7c

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-ne v5, v6, :cond_7c

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    if-eq v5, v6, :cond_99

    :cond_7c
    const-string v5, " base="

    .line 4295
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4296
    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 4297
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4299
    :cond_99
    iget-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    if-eqz v3, :cond_a2

    const-string v3, " noscale"

    .line 4300
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a2
    const-string v3, " cur="

    .line 4302
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4303
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 4304
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " app="

    .line 4305
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4306
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->appWidth:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 4307
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " rng="

    .line 4308
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 4309
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, "-"

    .line 4310
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 4311
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 4312
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "deferred="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mLayoutNeeded="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->mLayoutNeeded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4314
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mTouchExcludeRegion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4318
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4319
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "initCutout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "baseCutout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4321
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

    if-eqz v2, :cond_16f

    .line 4322
    invoke-virtual {v2, p1, v0}, Lcom/android/server/wm/UdcCutoutPolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4325
    :cond_16f
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_OVERLAPPING_WITH_CUTOUT_AS_DEFAULT:Z

    if-eqz v2, :cond_18e

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mIsOverlappingWithCutoutAsDefault:Z

    if-eqz v2, :cond_18e

    .line 4326
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4327
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mIsOverlappingWithCutoutAsDefault=true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4331
    :cond_18e
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4332
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mLayoutSeq="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    const-string v2, "  mCurrentFocus="

    .line 4334
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v2, "  mFocusedApp="

    .line 4335
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4336
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_1cc

    .line 4337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mFixedRotationLaunchingApp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4340
    :cond_1cc
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4341
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/wm/WallpaperController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4343
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v2

    if-lez v2, :cond_1e9

    .line 4344
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v2, "  mSystemGestureExclusion="

    .line 4345
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4346
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusion:Landroid/graphics/Region;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4349
    :cond_1e9
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getKeepClearAreas()Ljava/util/Set;

    move-result-object v2

    .line 4350
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1fe

    .line 4351
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v3, "  keepClearAreas="

    .line 4352
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4353
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4356
    :cond_1fe
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4357
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Display areas in top down Z order:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4358
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/wm/DisplayArea;->dumpChildDisplayArea(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 4360
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4361
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Task display areas in top down Z order:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4362
    new-instance v2, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda26;

    invoke-direct {v2, p1, p2, p3}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda26;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowContainer;->forAllTaskDisplayAreas(Ljava/util/function/Consumer;)V

    .line 4366
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4368
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRotationAnimation()Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v2

    if-eqz v2, :cond_249

    const-string p3, "  mScreenRotationAnimation:"

    .line 4370
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4371
    invoke-virtual {v2, v0, p1}, Lcom/android/server/wm/ScreenRotationAnimation;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_250

    :cond_249
    if-eqz p3, :cond_250

    const-string p3, "  no ScreenRotationAnimation "

    .line 4373
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4376
    :cond_250
    :goto_250
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4379
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/Task;

    move-result-object p3

    if-eqz p3, :cond_279

    .line 4381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "rootHomeTask="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4383
    :cond_279
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/Task;

    move-result-object p3

    if-eqz p3, :cond_29f

    .line 4385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "rootPinnedTask="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4388
    :cond_29f
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p3

    const/4 v0, 0x3

    const/4 v2, 0x0

    invoke-virtual {p3, v2, v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object p3

    if-eqz p3, :cond_2c7

    .line 4391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "rootRecentsTask="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2c7
    const/4 p3, 0x5

    .line 4394
    invoke-virtual {p0, v2, p3}, Lcom/android/server/wm/DisplayContent;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object p3

    if-eqz p3, :cond_2ea

    .line 4396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "rootDreamTask="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4399
    :cond_2ea
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4400
    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    invoke-virtual {p3, p2, p1}, Lcom/android/server/wm/PinnedTaskController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 4404
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/wm/TaskDisplayArea;->getRootMainStageTask()Lcom/android/server/wm/Task;

    move-result-object p3

    if-eqz p3, :cond_318

    .line 4406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "rootMainStageTask="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4408
    :cond_318
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/wm/TaskDisplayArea;->getRootSideStageTask()Lcom/android/server/wm/Task;

    move-result-object p3

    if-eqz p3, :cond_33e

    .line 4410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "rootSideStageTask="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4421
    :cond_33e
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4422
    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {p3, p2, p1}, Lcom/android/server/wm/DisplayFrames;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 4423
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4424
    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p3, p2, p1}, Lcom/android/server/wm/DisplayPolicy;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 4425
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4426
    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {p3, p2, p1}, Lcom/android/server/wm/DisplayRotation;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 4427
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4428
    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {p3, p1, v1}, Lcom/android/server/wm/InputMonitor;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4429
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4430
    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {p3, p2, p1}, Lcom/android/server/wm/InsetsStateController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 4431
    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mDwpcHelper:Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;

    invoke-virtual {p3, p2, p1}, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 4438
    iget-boolean p2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrozen:Z

    if-eqz p2, :cond_398

    .line 4439
    iget p2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFreezeTime:I

    .line 4440
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    int-to-long p2, p2

    sub-long/2addr v0, p2

    long-to-int p2, v0

    .line 4441
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    freezeDuration(#"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4444
    :cond_398
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string p2, "  mIsDisplayDecorationSupported="

    .line 4445
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4446
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayContent;->mIsDisplayDecorationSupported:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 10

    const/4 v0, 0x2

    if-ne p4, v0, :cond_a

    .line 4197
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isVisible()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 4201
    :cond_a
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10b00000015L

    .line 4202
    invoke-super {p0, p1, v0, v1, p4}, Lcom/android/server/wm/DisplayArea;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    const-wide v0, 0x10500000002L

    .line 4204
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000009L

    .line 4205
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4206
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    const-wide v1, 0x10b0000000aL

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/DisplayInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4207
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    const-wide v1, 0x10b00000021L

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/DisplayRotation;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4208
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRotationAnimation()Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v0

    if-eqz v0, :cond_4c

    const-wide v1, 0x10b0000000cL

    .line 4210
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/ScreenRotationAnimation;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4212
    :cond_4c
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    const-wide v1, 0x10b0000000dL

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/DisplayFrames;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    const-wide v0, 0x10500000027L

    .line 4213
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mMinSizeOfResizeableTaskDp:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4214
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    const-wide v1, 0x10b00000010L

    if-eqz v0, :cond_73

    .line 4215
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/TransitionController;->dumpDebugLegacy(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_78

    .line 4217
    :cond_73
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/AppTransition;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4219
    :goto_78
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_84

    const-wide v1, 0x1090000000fL

    .line 4220
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/ActivityRecord;->writeNameToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4222
    :cond_84
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8c
    if-ltz v0, :cond_a1

    .line 4223
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    const-wide v2, 0x20b00000011L

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/wm/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8c

    .line 4225
    :cond_a1
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a9
    if-ltz v0, :cond_be

    .line 4226
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    const-wide v2, 0x20b00000012L

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/wm/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_a9

    .line 4229
    :cond_be
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const-wide v1, 0x10500000017L

    if-eqz v0, :cond_e3

    .line 4231
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4232
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 4233
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_e7

    const-wide v1, 0x10b00000018L

    .line 4235
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_e7

    :cond_e3
    const/4 v0, -0x1

    .line 4238
    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_e7
    :goto_e7
    const-wide v0, 0x1080000001aL

    .line 4240
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isReady()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10800000024L

    .line 4241
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isSleeping()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const/4 v0, 0x0

    move v1, v0

    .line 4242
    :goto_101
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_11c

    .line 4243
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/RootWindowContainer$SleepToken;

    const-wide v3, 0x20900000025L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/RootWindowContainer$SleepToken;->writeTagToProto(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_101

    .line 4246
    :cond_11c
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_128

    const-wide v2, 0x10b0000001bL

    .line 4247
    invoke-virtual {v1, p1, v2, v3, p4}, Lcom/android/server/wm/WindowState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 4249
    :cond_128
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    if-eqz v1, :cond_134

    const-wide v2, 0x10b0000001cL

    .line 4250
    invoke-interface {v1, p1, v2, v3, p4}, Lcom/android/server/wm/InputTarget;->dumpProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 4252
    :cond_134
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v1, :cond_14c

    .line 4253
    invoke-interface {v1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_14c

    .line 4254
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    const-wide v2, 0x10b0000001dL

    invoke-virtual {v1, p1, v2, v3, p4}, Lcom/android/server/wm/WindowState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 4257
    :cond_14c
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_158

    const-wide v2, 0x10b0000001eL

    .line 4258
    invoke-virtual {v1, p1, v2, v3, p4}, Lcom/android/server/wm/WindowState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 4260
    :cond_158
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    if-eqz v1, :cond_17d

    :goto_15c
    const/16 v1, 0x18

    if-ge v0, v1, :cond_17d

    .line 4262
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 4263
    invoke-virtual {v1, v0}, Lcom/android/server/wm/InsetsStateController;->peekSourceProvider(I)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    move-result-object v1

    if-eqz v1, :cond_17a

    const/16 v2, 0x13

    if-ne v0, v2, :cond_172

    const-wide v2, 0x10b0000001fL

    goto :goto_177

    :cond_172
    const-wide v2, 0x20b00000023L

    .line 4265
    :goto_177
    invoke-virtual {v1, p1, v2, v3, p4}, Lcom/android/server/wm/InsetsSourceProvider;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    :cond_17a
    add-int/lit8 v0, v0, 0x1

    goto :goto_15c

    :cond_17d
    const-wide v0, 0x10500000022L

    .line 4270
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getImePolicy()I

    move-result p4

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4271
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getKeepClearAreas()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_191
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1a6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/graphics/Rect;

    const-wide v0, 0x20b00000026L

    .line 4272
    invoke-virtual {p4, p1, v0, v1}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_191

    .line 4274
    :cond_1a6
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public dumpTokens(Ljava/io/PrintWriter;Z)V
    .registers 6

    .line 5476
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 5479
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Display #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5480
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 5481
    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "  "

    if-eqz v1, :cond_4e

    .line 5482
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    .line 5483
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5484
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz p2, :cond_4a

    const/16 v2, 0x3a

    .line 5486
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(C)V

    const-string v2, "    "

    .line 5487
    invoke-virtual {v1, p1, v2, p2}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_29

    .line 5489
    :cond_4a
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_29

    .line 5493
    :cond_4e
    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_66

    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_66

    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_9f

    .line 5494
    :cond_66
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5495
    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p2

    if-lez p2, :cond_7b

    const-string p2, "  mOpeningApps="

    .line 5496
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5498
    :cond_7b
    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p2

    if-lez p2, :cond_8d

    const-string p2, "  mClosingApps="

    .line 5499
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5501
    :cond_8d
    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p2

    if-lez p2, :cond_9f

    const-string p2, "  mChangingApps="

    .line 5502
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5506
    :cond_9f
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/UnknownAppVisibilityController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public dumpWindowAnimators(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 5511
    new-instance v1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda60;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda60;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;[I)V

    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V
    .registers 7

    .line 7507
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mInEnsureActivitiesVisible:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 7511
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mInEnsureActivitiesVisible:Z

    .line 7512
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginActivityVisibilityUpdate(Lcom/android/server/wm/DisplayContent;)V

    const/4 v0, 0x0

    .line 7515
    :try_start_10
    new-instance v1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda40;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda40;-><init>(Lcom/android/server/wm/ActivityRecord;IZZ)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 7519
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result p1

    if-eqz p1, :cond_2d

    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 7520
    invoke-virtual {p1}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object p1

    if-eqz p1, :cond_2d

    .line 7524
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {p1}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows()V

    .line 7527
    :cond_2d
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX_ENHANCED:Z

    if-eqz p1, :cond_34

    .line 7528
    invoke-static {p0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->adjustLetterboxes(Lcom/android/server/wm/DisplayContent;)V

    .line 7531
    :cond_34
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_SUPPORT_OCCLUDES_PARENT_CHANGE_CALLBACK:Z

    if-eqz p1, :cond_43

    iget-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz p1, :cond_43

    .line 7532
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowManagerServiceExt;->updateOccludeTargetIfNeeded(Lcom/android/server/wm/DisplayContent;)V
    :try_end_43
    .catchall {:try_start_10 .. :try_end_43} :catchall_4d

    .line 7536
    :cond_43
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->endActivityVisibilityUpdate()V

    .line 7537
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mInEnsureActivitiesVisible:Z

    return-void

    :catchall_4d
    move-exception p1

    .line 7536
    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskSupervisor;->endActivityVisibilityUpdate()V

    .line 7537
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mInEnsureActivitiesVisible:Z

    .line 7538
    throw p1
.end method

.method public executeAppTransition()V
    .registers 10

    .line 6523
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->setReady(Lcom/android/server/wm/WindowContainer;)V

    .line 6524
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 6527
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_FORCE_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v1, v1

    const/4 v3, 0x5

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, 0x49a9cb63

    const/4 v6, 0x4

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v3, v7, v0

    const-string v0, "Execute app transition: %s, displayId: %d Callers=%s"

    invoke-static {v4, v5, v6, v0, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 6536
    :cond_3e
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->setReady()V

    .line 6537
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    :cond_4a
    return-void
.end method

.method public fillsParent()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public findAreaForToken(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayArea;
    .registers 5

    .line 8055
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getWindowType()I

    move-result v0

    iget-object v1, p1, Lcom/android/server/wm/WindowToken;->mOptions:Landroid/os/Bundle;

    iget-boolean v2, p1, Lcom/android/server/wm/WindowToken;->mOwnerCanManageAppTokens:Z

    iget-boolean p1, p1, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/wm/DisplayContent;->findAreaForWindowType(ILandroid/os/Bundle;ZZ)Lcom/android/server/wm/DisplayArea;

    move-result-object p0

    return-object p0
.end method

.method public findAreaForWindowType(ILandroid/os/Bundle;ZZ)Lcom/android/server/wm/DisplayArea;
    .registers 6

    const/4 v0, 0x1

    if-lt p1, v0, :cond_e

    const/16 v0, 0x63

    if-gt p1, v0, :cond_e

    .line 8025
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayAreaPolicy:Lcom/android/server/wm/DisplayAreaPolicy;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayAreaPolicy;->getTaskDisplayArea(Landroid/os/Bundle;)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    return-object p0

    :cond_e
    const/16 v0, 0x7db

    if-eq p1, v0, :cond_22

    const/16 v0, 0x7dc

    if-eq p1, v0, :cond_22

    const/16 v0, 0xa40

    if-ne p1, v0, :cond_1b

    goto :goto_22

    .line 8037
    :cond_1b
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayAreaPolicy:Lcom/android/server/wm/DisplayAreaPolicy;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DisplayAreaPolicy;->findAreaForWindowType(ILandroid/os/Bundle;ZZ)Lcom/android/server/wm/DisplayArea$Tokens;

    move-result-object p0

    return-object p0

    .line 8035
    :cond_22
    :goto_22
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getImeContainer()Lcom/android/server/wm/DisplayArea$Tokens;

    move-result-object p0

    return-object p0
.end method

.method public findFocusedWindow()Lcom/android/server/wm/WindowState;
    .registers 8

    const/4 v0, 0x0

    .line 4536
    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 4538
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mFindFocusedWindow:Lcom/android/internal/util/ToBooleanFunction;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 4540
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_28

    .line 4541
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    if-eqz v1, :cond_27

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p0

    int-to-long v3, p0

    sget-object p0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, 0x24fc6062

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-static {p0, v1, v2, v0, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_27
    return-object v0

    :cond_28
    return-object v1
.end method

.method public findFocusedWindowIfNeeded(I)Lcom/android/server/wm/WindowState;
    .registers 3

    .line 4531
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mPerDisplayFocusEnabled:Z

    if-nez v0, :cond_c

    const/4 v0, -0x1

    if-ne p1, v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 p0, 0x0

    goto :goto_10

    .line 4532
    :cond_c
    :goto_c
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->findFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    :goto_10
    return-object p0
.end method

.method public findRoundedCornerOverlays()[Landroid/view/SurfaceControl;
    .registers 4

    .line 6613
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6614
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    .line 6615
    iget-boolean v2, v1, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    if-eqz v2, :cond_f

    .line 6616
    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_25
    const/4 p0, 0x0

    new-array p0, p0, [Landroid/view/SurfaceControl;

    .line 6619
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public findScrollCaptureTargetWindow(Lcom/android/server/wm/WindowState;I)Lcom/android/server/wm/WindowState;
    .registers 4

    .line 7677
    new-instance v0, Lcom/android/server/wm/DisplayContent$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/DisplayContent$2;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object p0

    return-object p0
.end method

.method public findTaskForResizePoint(II)Lcom/android/server/wm/Task;
    .registers 4

    const/4 v0, 0x0

    .line 3733
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/DisplayContent;->findTaskForResizePoint(IIZ)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public findTaskForResizePoint(IIZ)Lcom/android/server/wm/Task;
    .registers 11

    if-eqz p3, :cond_b

    const/16 p3, 0xa

    .line 3739
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {p3, v0}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result p3

    goto :goto_d

    :cond_b
    const/16 p3, 0x30

    :goto_d
    move v4, p3

    const/4 p3, 0x7

    .line 3747
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {p3, v0}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v5

    const/4 p3, 0x4

    .line 3748
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {p3, v0}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v6

    .line 3754
    new-instance p3, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda47;

    move-object v0, p3

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda47;-><init>(Lcom/android/server/wm/DisplayContent;IIIII)V

    invoke-virtual {p0, p3}, Lcom/android/server/wm/WindowContainer;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/Task;

    return-object p0
.end method

.method public finishAsyncRotation(Lcom/android/server/wm/WindowToken;)V
    .registers 3

    .line 2362
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAsyncRotationController:Lcom/android/server/wm/AsyncRotationController;

    if-eqz v0, :cond_d

    .line 2363
    invoke-virtual {v0, p1}, Lcom/android/server/wm/AsyncRotationController;->completeRotation(Lcom/android/server/wm/WindowToken;)Z

    move-result p1

    if-eqz p1, :cond_d

    const/4 p1, 0x0

    .line 2364
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mAsyncRotationController:Lcom/android/server/wm/AsyncRotationController;

    :cond_d
    return-void
.end method

.method public finishAsyncRotationIfPossible()V
    .registers 3

    .line 2353
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAsyncRotationController:Lcom/android/server/wm/AsyncRotationController;

    if-eqz v0, :cond_12

    .line 2354
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayRotation;->hasSeamlessRotatingWindow()Z

    move-result v1

    if-nez v1, :cond_12

    .line 2355
    invoke-virtual {v0}, Lcom/android/server/wm/AsyncRotationController;->completeAll()V

    const/4 v0, 0x0

    .line 2356
    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAsyncRotationController:Lcom/android/server/wm/AsyncRotationController;

    :cond_12
    return-void
.end method

.method public forAllImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    .line 3252
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent$ImeContainer;->forAllWindowForce(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result p0

    return p0
.end method

.method public forceDesktopMode()Z
    .registers 4

    .line 5048
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isAppCastingDisplay()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 5051
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExtraDisplayController:Lcom/android/server/wm/ExtraDisplayController;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 5052
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ExtraDisplayController;->canHaveCoverHomeDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_15

    return v1

    .line 5056
    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mForceDesktopModeOnExternalDisplays:Z

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v0, :cond_26

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result p0

    if-nez p0, :cond_26

    const/4 v1, 0x1

    :cond_26
    return v1
.end method

.method public getActivityRecord(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 1548
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 1552
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public getApplicationPolicy()Lcom/samsung/android/knox/application/IApplicationPolicy;
    .registers 2

    .line 1393
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mApplicationPolicy:Lcom/samsung/android/knox/application/IApplicationPolicy;

    if-nez v0, :cond_1a

    .line 1395
    monitor-enter p0

    .line 1396
    :try_start_5
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mApplicationPolicy:Lcom/samsung/android/knox/application/IApplicationPolicy;

    if-nez v0, :cond_15

    const-string v0, "application_policy"

    .line 1399
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1398
    invoke-static {v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mApplicationPolicy:Lcom/samsung/android/knox/application/IApplicationPolicy;

    .line 1401
    :cond_15
    monitor-exit p0

    goto :goto_1a

    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_17

    throw v0

    :cond_1a
    :goto_1a
    return-object v0
.end method

.method public getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2164
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAsyncRotationController:Lcom/android/server/wm/AsyncRotationController;

    return-object p0
.end method

.method public getBaseDisplayRect(Landroid/graphics/Rect;)V
    .registers 4

    .line 8348
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget p0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public final getBounds(Landroid/graphics/Rect;I)V
    .registers 4

    .line 5783
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    .line 5786
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget p0, p0, Landroid/view/DisplayInfo;->rotation:I

    .line 5787
    invoke-static {p0, p2}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result p0

    const/4 p2, 0x1

    if-eq p0, p2, :cond_11

    const/4 p2, 0x3

    if-ne p0, p2, :cond_1d

    .line 5789
    :cond_11
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0, p2}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1d
    return-void
.end method

.method public final getContentRecorder()Lcom/android/server/wm/ContentRecorder;
    .registers 2

    .line 7728
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mContentRecorder:Lcom/android/server/wm/ContentRecorder;

    if-nez v0, :cond_b

    .line 7729
    new-instance v0, Lcom/android/server/wm/ContentRecorder;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ContentRecorder;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mContentRecorder:Lcom/android/server/wm/ContentRecorder;

    .line 7731
    :cond_b
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mContentRecorder:Lcom/android/server/wm/ContentRecorder;

    return-object p0
.end method

.method public getCurrentOverrideConfigurationChanges()I
    .registers 1

    .line 3116
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mCurrentOverrideConfigurationChanges:I

    return p0
.end method

.method public getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
    .registers 1

    .line 3678
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayAreaPolicy:Lcom/android/server/wm/DisplayAreaPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayAreaPolicy;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    return-object p0
.end method

.method public final getDesktopModeManagerInternal()Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;
    .registers 2

    .line 7280
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDesktopModeManagerInternal:Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    if-nez v0, :cond_e

    .line 7281
    const-class v0, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDesktopModeManagerInternal:Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    .line 7284
    :cond_e
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDesktopModeManagerInternal:Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    return-object p0
.end method

.method public getDisplay()Landroid/view/Display;
    .registers 1

    .line 1693
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    return-object p0
.end method

.method public getDisplayId()I
    .registers 1

    .line 1536
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    return p0
.end method

.method public getDisplayInfo()Landroid/view/DisplayInfo;
    .registers 1

    .line 1697
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    return-object p0
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .registers 1

    .line 1701
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object p0
.end method

.method public getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;
    .registers 1

    .line 1705
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    return-object p0
.end method

.method public getDisplayRotation()Lcom/android/server/wm/DisplayRotation;
    .registers 1

    .line 1710
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    return-object p0
.end method

.method public getDisplayUiContext()Landroid/content/Context;
    .registers 1

    .line 7635
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getSystemUiContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public getDockedDividerController()Lcom/android/server/wm/DockedTaskDividerController;
    .registers 1

    .line 3040
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedTaskDividerController;

    return-object p0
.end method

.method public getFocusedRootTask()Lcom/android/server/wm/Task;
    .registers 2

    .line 6991
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda55;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda55;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/Task;

    return-object p0
.end method

.method public getFreeformTaskMovedByIme(Landroid/view/InsetsVisibilities;)Lcom/android/server/wm/Task;
    .registers 5

    .line 8525
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 8528
    :cond_6
    invoke-interface {v0}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 8529
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_44

    .line 8530
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_44

    .line 8534
    :cond_19
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 8535
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object p0

    const/16 v2, 0x13

    .line 8536
    invoke-virtual {p0, v2}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object p0

    .line 8537
    invoke-virtual {p1, v2}, Landroid/view/InsetsVisibilities;->getVisibility(I)Z

    move-result p1

    invoke-virtual {p0}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v2

    if-eq p1, v2, :cond_44

    .line 8538
    invoke-virtual {p0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_44

    return-object v0

    :cond_44
    :goto_44
    return-object v1
.end method

.method public getImeContainer()Lcom/android/server/wm/DisplayArea$Tokens;
    .registers 1

    .line 6605
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    return-object p0
.end method

.method public getImeFallback()Lcom/android/server/wm/InsetsControlTarget;
    .registers 2

    .line 5002
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    .line 5003
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBar()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_11

    goto :goto_13

    .line 5004
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    :goto_13
    return-object v0
.end method

.method public getImeHostOrFallback(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/InsetsControlTarget;
    .registers 3

    if-eqz p1, :cond_d

    .line 4993
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getImePolicy()I

    move-result v0

    if-nez v0, :cond_d

    return-object p1

    .line 4996
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getImeFallback()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object p0

    return-object p0
.end method

.method public getImeInputTarget()Lcom/android/server/wm/InputTarget;
    .registers 1

    .line 5024
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    return-object p0
.end method

.method public getImePolicy()I
    .registers 3
    .annotation build Landroid/view/WindowManager$DisplayImePolicy;
    .end annotation

    .line 5031
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isTrusted()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 5034
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayWindowSettings;->getImePolicyLocked(Lcom/android/server/wm/DisplayContent;)I

    move-result v0

    if-ne v0, v1, :cond_1a

    .line 5035
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->forceDesktopMode()Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x0

    return p0

    :cond_1a
    return v0
.end method

.method public getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;
    .registers 3

    if-eqz p1, :cond_a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    const/4 p0, 0x0

    return-object p0

    .line 5017
    :cond_7
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object p0

    .line 5016
    :cond_a
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method public getInputMethodWindowVisibleHeight()I
    .registers 6

    .line 4096
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v0

    const/16 v1, 0x13

    .line 4097
    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_46

    .line 4098
    invoke-virtual {v1}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_46

    .line 4101
    :cond_18
    invoke-virtual {v1}, Landroid/view/InsetsSource;->getVisibleFrame()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_23

    .line 4102
    invoke-virtual {v1}, Landroid/view/InsetsSource;->getVisibleFrame()Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_27

    :cond_23
    invoke-virtual {v1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    .line 4103
    :goto_27
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    .line 4104
    invoke-virtual {v0}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4105
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {v0, p0, v3, v2}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 4107
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    iget v0, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, v0

    return p0

    :cond_46
    :goto_46
    return v2
.end method

.method public getInputMonitor()Lcom/android/server/wm/InputMonitor;
    .registers 1

    .line 6442
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    return-object p0
.end method

.method public getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;
    .registers 1

    .line 1740
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsPolicy:Lcom/android/server/wm/InsetsPolicy;

    return-object p0
.end method

.method public getInsetsStateController()Lcom/android/server/wm/InsetsStateController;
    .registers 1

    .line 1736
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    return-object p0
.end method

.method public getKeepClearAreas()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 6920
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 6921
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/DisplayContent;->getKeepClearAreas(Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method public getKeepClearAreas(Ljava/util/Set;Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 6903
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [F

    .line 6905
    new-instance v2, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda36;

    invoke-direct {v2, p1, p2, v0, v1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda36;-><init>(Ljava/util/Set;Ljava/util/Set;Landroid/graphics/Matrix;[F)V

    const/4 p1, 0x1

    invoke-virtual {p0, v2, p1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    return-void
.end method

.method public getLastHasContent()Z
    .registers 1

    .line 6449
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    return p0
.end method

.method public getLastOrientation()I
    .registers 1

    .line 1750
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->getLastOrientation()I

    move-result p0

    return p0
.end method

.method public getMagnificationSpec()Landroid/view/MagnificationSpec;
    .registers 1

    .line 8019
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    return-object p0
.end method

.method public getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;
    .registers 2

    .line 6926
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    if-nez v0, :cond_b

    .line 6927
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 6929
    :cond_b
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object p0
.end method

.method public final getMinimalTaskSizeDp()I
    .registers 6

    .line 1959
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 1960
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    .line 1962
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050132

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 1964
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v1, v1

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_2b

    .line 1968
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, p0

    float-to-int p0, v0

    return p0

    .line 1965
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display with ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "has invalid DisplayMetrics.density= 0.0"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 4459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object p0, p0, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNaturalOrientation()I
    .registers 2

    .line 5795
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-ge v0, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x2

    :goto_9
    return p0
.end method

.method public getOneHandOpPolicy()Lcom/android/server/wm/OneHandOpPolicy;
    .registers 1

    .line 8362
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mOneHandOpPolicy:Lcom/android/server/wm/OneHandOpPolicy;

    return-object p0
.end method

.method public getOrientation()I
    .registers 12

    .line 3264
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 3265
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mLastOrientationControlSource:Lcom/android/server/wm/WindowContainer;

    .line 3273
    :cond_7
    iput-object v1, p0, Lcom/android/server/wm/WindowContainer;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    .line 3275
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 3276
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget p0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    if-le v0, p0, :cond_1e

    return v3

    :cond_1e
    return v2

    .line 3284
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->handlesOrientationChangeFromDescendant()Z

    move-result v0

    const-wide/16 v4, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x2

    const/4 v8, 0x5

    if-nez v0, :cond_48

    .line 3286
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v0, :cond_47

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v9, p0

    sget-object p0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v0, 0x623fa5cb

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v7, v2

    invoke-static {p0, v0, v8, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_47
    return v6

    .line 3292
    :cond_48
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v9, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v9, :cond_7d

    .line 3293
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 3299
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v0, :cond_78

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v4, v0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getLastOrientation()I

    move-result v0

    int-to-long v9, v0

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x65efaeee

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v3

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v7, v2

    invoke-static {v0, v6, v8, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3302
    :cond_78
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getLastOrientation()I

    move-result p0

    return p0

    .line 3306
    :cond_7d
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getOrientation()I

    move-result v0

    const/4 v9, -0x2

    if-ne v0, v9, :cond_a2

    .line 3309
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v0, :cond_a1

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v9, p0

    sget-object p0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v0, -0x5842ca23

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v3

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v7, v2

    invoke-static {p0, v0, v8, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_a1
    return v6

    :cond_a2
    return v0
.end method

.method public final getOrientationForDexStandalone()I
    .registers 1

    const/4 p0, -0x2

    return p0
.end method

.method public getOrientationRequestingTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
    .registers 1

    .line 4768
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mOrientationRequestingTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    return-object p0
.end method

.method public getOverlayLayer()Landroid/view/SurfaceControl;
    .registers 1

    .line 6609
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public getPinnedTaskController()Lcom/android/server/wm/PinnedTaskController;
    .registers 1

    .line 3044
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    return-object p0
.end method

.method public getPreferredOptionsPanelGravity()I
    .registers 8

    .line 3009
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v0

    .line 3010
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    const v2, 0x800053

    const/16 v3, 0x55

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/16 v6, 0x51

    if-ge v1, p0, :cond_1a

    if-eq v0, v5, :cond_19

    if-eq v0, v4, :cond_18

    return v6

    :cond_18
    return v2

    :cond_19
    return v3

    :cond_1a
    if-eq v0, v5, :cond_24

    const/4 p0, 0x2

    if-eq v0, p0, :cond_23

    if-eq v0, v4, :cond_22

    return v3

    :cond_22
    return v6

    :cond_23
    return v2

    :cond_24
    return v6
.end method

.method public getPresentUIDs()Landroid/util/IntArray;
    .registers 4

    .line 7482
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayAccessUIDs:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    .line 7483
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda7;-><init>()V

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 7484
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayAccessUIDs:Landroid/util/IntArray;

    .line 7483
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    .line 7485
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 7486
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 7487
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayAccessUIDs:Landroid/util/IntArray;

    return-object p0
.end method

.method public getProtoFieldId()J
    .registers 3

    const-wide v0, 0x10b00000003L

    return-wide v0
.end method

.method public getRootTask(I)Lcom/android/server/wm/Task;
    .registers 3

    .line 3074
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda11;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public getRootTask(II)Lcom/android/server/wm/Task;
    .registers 4

    .line 3068
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda45;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda45;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/Task;

    return-object p0
.end method

.method public getRootTaskCount()I
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 3079
    new-instance v1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda35;

    invoke-direct {v1, v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda35;-><init>([I)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    aget p0, v0, p0

    return p0
.end method

.method public getRootTasks(II)Ljava/util/List;
    .registers 6
    .param p1    # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/app/WindowConfiguration$ActivityType;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation

    .line 3088
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    .line 3090
    :goto_a
    new-instance v2, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda29;

    invoke-direct {v2, v1, p2, v0, p1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda29;-><init>(ZILjava/util/List;I)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public getRotation()I
    .registers 1

    .line 1745
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->getRotation()I

    move-result p0

    return p0
.end method

.method public getRotationAnimation()Lcom/android/server/wm/ScreenRotationAnimation;
    .registers 1

    .line 4130
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    return-object p0
.end method

.method public getSecureWindowOnScreen()Lcom/android/server/wm/WindowState;
    .registers 2

    .line 8205
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda59;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda59;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object p0

    return-object p0
.end method

.method public getSession()Landroid/view/SurfaceSession;
    .registers 1

    .line 6197
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mSession:Landroid/view/SurfaceSession;

    return-object p0
.end method

.method public getStableRect(Landroid/graphics/Rect;)V
    .registers 4

    .line 3667
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object p0

    .line 3668
    invoke-virtual {p0}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3669
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    return-void
.end method

.method public getStableRect(Landroid/graphics/Rect;Z)V
    .registers 4

    .line 8354
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object p0

    .line 8355
    invoke-virtual {p0}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8356
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    return-void
.end method

.method public getTopRootTask()Lcom/android/server/wm/Task;
    .registers 2

    .line 3105
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public getTouchableWinAtPointLocked(FF)Lcom/android/server/wm/WindowState;
    .registers 4

    float-to-int p1, p1

    float-to-int p2, p2

    .line 4466
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda34;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda34;-><init>(Lcom/android/server/wm/DisplayContent;II)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object p0

    return-object p0
.end method

.method public getVisibleWindowInfoList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;",
            ">;"
        }
    .end annotation

    .line 8066
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8067
    new-instance v1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/wm/DisplayContent;Ljava/util/ArrayList;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-object v0
.end method

.method public getWindowCornerRadius()F
    .registers 1

    .line 1540
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mWindowCornerRadius:F

    return p0
.end method

.method public getWindowEavesdropDragEvent()Lcom/android/server/wm/WindowState;
    .registers 2

    .line 8147
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda48;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda48;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object p0

    return-object p0
.end method

.method public getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;
    .registers 2

    .line 1544
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowToken;

    return-object p0
.end method

.method public getWindowingLayer()Landroid/view/SurfaceControl;
    .registers 1

    .line 6601
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public handleActivitySizeCompatModeIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    .line 7355
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getOrganizedTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_c

    .line 7357
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mActiveSizeCompatActivities:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void

    .line 7362
    :cond_c
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_FIXED_ASPECT_RATIO_MODE:Z

    if-eqz v1, :cond_34

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v1, :cond_34

    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    .line 7363
    invoke-virtual {v1}, Lcom/android/server/wm/BoundsCompatRecord;->getController()Lcom/android/server/wm/BoundsCompatController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wm/BoundsCompatController;->isFixedAspectRatioModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 7364
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mActiveSizeCompatActivities:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_33

    .line 7366
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->onSizeCompatActivityChanged()V

    :cond_33
    return-void

    .line 7370
    :cond_34
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL_WITH_ROTATION_COMPAT:Z

    if-eqz v1, :cond_70

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v1, :cond_70

    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    .line 7371
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v1

    if-eqz v1, :cond_70

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    iget-boolean v2, v1, Lcom/android/server/wm/BoundsCompatRecord;->mCanRotationCompatMode:Z

    if-eqz v2, :cond_70

    .line 7373
    invoke-virtual {v1}, Lcom/android/server/wm/BoundsCompatRecord;->getController()Lcom/android/server/wm/BoundsCompatController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mOrientationController:Lcom/android/server/wm/OrientationController;

    if-ne v1, v2, :cond_70

    .line 7374
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getCompatDisplayInsets()Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    move-result-object v1

    if-eqz v1, :cond_70

    .line 7375
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getCompatDisplayInsets()Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mCanRotationCompatMode:Z

    if-eqz v1, :cond_70

    .line 7376
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mActiveSizeCompatActivities:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6f

    .line 7378
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->onSizeCompatActivityChanged()V

    :cond_6f
    return-void

    .line 7384
    :cond_70
    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v1

    if-eqz v1, :cond_8a

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->inSizeCompatMode()Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 7385
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mActiveSizeCompatActivities:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_89

    .line 7387
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->onSizeCompatActivityChanged()V

    :cond_89
    return-void

    .line 7392
    :cond_8a
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mActiveSizeCompatActivities:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_95

    .line 7394
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->onSizeCompatActivityChanged()V

    :cond_95
    return-void
.end method

.method public handleAnimatingStoppedAndTransition()V
    .registers 6

    .line 6552
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->setIdle()V

    .line 6554
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_d
    if-ltz v0, :cond_1f

    .line 6555
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 6556
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 6558
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6560
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->hideDeferredWallpapersIfNeededLegacy()V

    .line 6562
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->onAppTransitionDone()V

    .line 6565
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WALLPAPER_enabled:Z

    if-eqz v0, :cond_3a

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, -0xae67c65

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 6566
    :cond_3a
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 6567
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    .line 6570
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 6572
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    return-void
.end method

.method public handleCompleteDeferredRemoval()Z
    .registers 4

    .line 4078
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->handleCompleteDeferredRemoval()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->shouldDeferRemoval()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    move v0, v1

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    if-nez v0, :cond_1b

    .line 4080
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    if-eqz v2, :cond_1b

    .line 4081
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->removeImmediately()V

    return v1

    :cond_1b
    return v0
.end method

.method public final handleFixedRotationForMultiWindow(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 7

    .line 8375
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 8376
    invoke-virtual {v0, p0}, Lcom/android/server/wm/FreeformController;->hasVisibleFreeformOrBubbleContainer(Lcom/android/server/wm/DisplayContent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1c

    .line 8378
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 8379
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isRecentEdgeActivity()Z

    move-result v2

    if-nez v2, :cond_1c

    return v1

    :cond_1c
    const/4 v2, 0x1

    const-string v3, "handle_fixed_rot"

    .line 8385
    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/DisplayContent;->setFadeInOutAnimationNeeded(ZLjava/lang/String;)V

    .line 8386
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v3, :cond_2d

    const-string v3, "WindowManager"

    const-string v4, "handleFixedRotationForMultiWindow: fadeInOutAnimationNeeded"

    .line 8387
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8390
    :cond_2d
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_46

    .line 8392
    iget-boolean v3, p1, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-nez v3, :cond_46

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 8393
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowContainer;->getTaskBelow(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object p1

    goto :goto_47

    :cond_46
    const/4 p1, 0x0

    :goto_47
    if-eqz p1, :cond_6b

    if-eqz v0, :cond_6b

    .line 8395
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 8396
    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotController;->isInSkipClosingAppSnapshotTasks(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-nez v0, :cond_6b

    new-array v0, v2, [Lcom/android/server/wm/Task;

    aput-object p1, v0, v1

    .line 8397
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object p1

    .line 8398
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;)V

    .line 8399
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->addSkipClosingAppSnapshotTasks(Ljava/util/Set;)V

    :cond_6b
    return v2
.end method

.method public handleStartSplitScreenFromRecents()V
    .registers 6

    .line 8406
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 8410
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getRotation()I

    move-result v0

    .line 8411
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/DisplayRotation;->rotationForOrientation(II)I

    move-result v1

    if-eq v0, v1, :cond_3d

    const/4 v2, 0x1

    .line 8414
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "split_from_recents("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "->"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/DisplayContent;->setFadeInOutAnimationNeeded(ZLjava/lang/String;)V

    :cond_3d
    return-void
.end method

.method public handleTopActivityLaunchingInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;Z)Z
    .registers 7

    .line 2053
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->ENABLE_FIXED_ROTATION_TRANSFORM:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2056
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->isFinishingFixedRotationTransform()Z

    move-result v0

    if-eqz v0, :cond_d

    return v1

    .line 2059
    :cond_d
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->hasFixedRotationTransform()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_15

    return v2

    .line 2063
    :cond_15
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v0

    if-eqz v0, :cond_99

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isReportedDrawn()Z

    move-result v0

    if-eqz v0, :cond_23

    goto/16 :goto_99

    :cond_23
    if-eqz p2, :cond_58

    .line 2070
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2071
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TransitionController;->isCollecting(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-nez v0, :cond_47

    return v1

    .line 2075
    :cond_36
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    goto :goto_57

    .line 2082
    :cond_47
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    if-nez v0, :cond_5f

    :cond_57
    :goto_57
    return v1

    .line 2091
    :cond_58
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eq p1, v0, :cond_5f

    return v1

    .line 2095
    :cond_5f
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLastWallpaperVisible:Z

    if-eqz v0, :cond_72

    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->windowsCanBeWallpaperTarget()Z

    move-result v0

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationTransitionListener:Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;

    invoke-static {v0}, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->-$$Nest$fgetmAnimatingRecents(Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_72

    return v1

    .line 2101
    :cond_72
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->rotationForActivityInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_7a

    return v1

    .line 2110
    :cond_7a
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->handleFixedRotationForMultiWindow(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_81

    return v1

    .line 2115
    :cond_81
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->matchParentBounds()Z

    move-result v3

    if-nez v3, :cond_8c

    return v1

    :cond_8c
    if-eqz p2, :cond_95

    .line 2124
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    if-eq p1, p2, :cond_95

    return v1

    .line 2130
    :cond_95
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingApp(Lcom/android/server/wm/ActivityRecord;I)V

    return v2

    :cond_99
    :goto_99
    return v1
.end method

.method public handlesOrientationChangeFromDescendant()Z
    .registers 2

    .line 1860
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getIgnoreOrientationRequest()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1861
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public hasAccess(I)Z
    .registers 2

    .line 3051
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0, p1}, Landroid/view/Display;->hasAccess(I)Z

    move-result p0

    return p0
.end method

.method public hasAlertWindowSurfaces()Z
    .registers 4

    .line 4838
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_a
    if-ltz v0, :cond_20

    .line 4839
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Session;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/Session;->hasAlertWindowSurfaces(Lcom/android/server/wm/DisplayContent;)Z

    move-result v2

    if-eqz v2, :cond_1d

    return v1

    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public hasOneHandOpSpec()Z
    .registers 1

    .line 8366
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mOneHandOpPolicy:Lcom/android/server/wm/OneHandOpPolicy;

    if-eqz p0, :cond_d

    .line 8367
    invoke-virtual {p0}, Lcom/android/server/wm/OneHandOpPolicy;->hasOneHandOpSpec()Z

    move-result p0

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public hasSecureWindowOnScreen()Z
    .registers 2

    .line 5641
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda46;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda46;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public hasTopFixedRotationLaunchingApp()Z
    .registers 2

    .line 2153
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationTransitionListener:Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;

    invoke-static {p0}, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->-$$Nest$fgetmAnimatingRecents(Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eq v0, p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public inTransition()Z
    .registers 2

    .line 4190
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-nez v0, :cond_d

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

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

.method public initializeDisplayBaseInfo()V
    .registers 8

    .line 3378
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz v0, :cond_1a

    .line 3381
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 3383
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1, v0}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 3385
    :cond_13
    new-instance v0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDwpcHelper:Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;

    .line 3389
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 3392
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v4, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iget v5, v0, Landroid/view/DisplayInfo;->physicalXDpi:F

    iget v6, v0, Landroid/view/DisplayInfo;->physicalYDpi:F

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(IIIFF)V

    .line 3395
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    .line 3396
    iget v1, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 3397
    iget v1, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    .line 3398
    iget v1, v0, Landroid/view/DisplayInfo;->physicalXDpi:F

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialPhysicalXDpi:F

    .line 3399
    iget v1, v0, Landroid/view/DisplayInfo;->physicalYDpi:F

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialPhysicalYDpi:F

    .line 3400
    iget-object v1, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayCutout:Landroid/view/DisplayCutout;

    .line 3401
    iget-object v0, v0, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialRoundedCorners:Landroid/view/RoundedCorners;

    .line 3402
    new-instance v0, Landroid/view/PrivacyIndicatorBounds;

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->rotation:I

    invoke-direct {v0, v1, v2}, Landroid/view/PrivacyIndicatorBounds;-><init>([Landroid/graphics/Rect;I)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mCurrentPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 3404
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v0, v0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 3405
    invoke-static {v0}, Landroid/util/DisplayUtils;->getMaximumResolutionDisplayMode([Landroid/view/Display$Mode;)Landroid/view/Display$Mode;

    move-result-object v0

    .line 3406
    new-instance v1, Landroid/graphics/Point;

    if-nez v0, :cond_6c

    .line 3407
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    goto :goto_70

    :cond_6c
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v2

    :goto_70
    if-nez v0, :cond_75

    .line 3408
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    goto :goto_79

    :cond_75
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v0

    :goto_79
    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mPhysicalDisplaySize:Landroid/graphics/Point;

    return-void
.end method

.method public isAodShowing()Z
    .registers 2

    .line 7608
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 7609
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, p0}, Lcom/android/server/wm/KeyguardController;->isAodShowing(I)Z

    move-result p0

    return p0
.end method

.method public isAppCastingDisplay()Z
    .registers 1

    .line 8110
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Landroid/view/Display;->getFlags()I

    move-result p0

    and-int/lit16 p0, p0, 0x800

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isCarLifeDisplay()Z
    .registers 1

    .line 8116
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Landroid/view/Display;->getFlags()I

    move-result p0

    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isCurrentlyRecording()Z
    .registers 1

    .line 7765
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mContentRecorder:Lcom/android/server/wm/ContentRecorder;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->isCurrentlyRecording()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isDisplayDecorationSupported()Z
    .registers 1

    .line 8587
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayContent;->mIsDisplayDecorationSupported:Z

    return p0
.end method

.method public isFadeInOutAnimationNeeded()Z
    .registers 1

    .line 8429
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayContent;->mFadeInOutAnimationNeeded:Z

    return p0
.end method

.method public isFixedRotationLaunchingApp(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 2159
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-ne p0, p1, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isFlexPanelRunning()Z
    .registers 3

    .line 8479
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isTableMode()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 8480
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootSideStageTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 8481
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object p0

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    if-eqz p0, :cond_2a

    .line 8483
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_2a

    .line 8484
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->mIsFlexPanel:Z

    if-eqz p0, :cond_2a

    const/4 v1, 0x1

    :cond_2a
    return v1
.end method

.method public isImeAttachedToApp()Z
    .registers 2

    .line 4978
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->shouldImeAttachedToApp()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodSurfaceParent:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1a

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 4981
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    .line 4980
    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl;->isSameSurface(Landroid/view/SurfaceControl;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public final isImeControlledByApp()Z
    .registers 1

    .line 4946
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Lcom/android/server/wm/InputTarget;->shouldControlIme()Z

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
    .registers 8

    const/4 v0, 0x0

    .line 5621
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-nez v1, :cond_8

    return v0

    .line 5626
    :cond_8
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    const-string v3, "WindowManager"

    if-eqz v2, :cond_42

    .line 5627
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Desired input method target: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5628
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current focus: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " displayId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5631
    :cond_42
    sget-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz p0, :cond_84

    .line 5632
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IM target uid/pid: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mUid:I

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v4, v4, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5634
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requesting client uid/pid: "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5637
    :cond_84
    iget-object p0, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v1, p0, Lcom/android/server/wm/Session;->mUid:I

    if-ne v1, p1, :cond_8f

    iget p0, p0, Lcom/android/server/wm/Session;->mPid:I

    if-ne p0, p2, :cond_8f

    const/4 v0, 0x1

    :cond_8f
    return v0
.end method

.method public isInputMethodTargetTaskAndShowing(Lcom/android/server/wm/Task;)Z
    .registers 3

    .line 8138
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    if-eqz v0, :cond_2e

    .line 8139
    invoke-interface {v0}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    .line 8140
    invoke-interface {v0}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne v0, p1, :cond_2e

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 8141
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isImeShowing()Z

    move-result p0

    if-eqz p0, :cond_2e

    const/4 p0, 0x1

    goto :goto_2f

    :cond_2e
    const/4 p0, 0x0

    :goto_2f
    return p0
.end method

.method public isKeyguardAlwaysUnlocked()Z
    .registers 1

    .line 7601
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget p0, p0, Landroid/view/DisplayInfo;->flags:I

    and-int/lit16 p0, p0, 0x200

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isKeyguardGoingAway()Z
    .registers 2

    .line 7593
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 7594
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, p0}, Lcom/android/server/wm/KeyguardController;->isKeyguardGoingAway(I)Z

    move-result p0

    return p0
.end method

.method public isKeyguardLocked()Z
    .registers 2

    .line 7585
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 7586
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, p0}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked(I)Z

    move-result p0

    return p0
.end method

.method public isKeyguardOccluded()Z
    .registers 2

    .line 7616
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 7617
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, p0}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result p0

    return p0
.end method

.method public isKeyguardUnoccludedOrAodShowing()Z
    .registers 2

    .line 7624
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 7625
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, p0}, Lcom/android/server/wm/KeyguardController;->isKeyguardUnoccludedOrAodShowing(I)Z

    move-result p0

    return p0
.end method

.method public isLayoutNeeded()Z
    .registers 1

    .line 5472
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutNeeded:Z

    return p0
.end method

.method public isMultiTaskingDisplay()Z
    .registers 1

    .line 8125
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isAppCastingDisplay()Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public isNextTransitionForward()Z
    .registers 5

    .line 6578
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v0, :cond_17

    .line 6579
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 6580
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->getCollectingTransitionType()I

    move-result p0

    if-eq p0, v3, :cond_15

    if-ne p0, v2, :cond_16

    :cond_15
    move v1, v3

    :cond_16
    return v1

    .line 6583
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/AppTransition;->containsTransitRequest(I)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 6584
    invoke-virtual {p0, v2}, Lcom/android/server/wm/AppTransition;->containsTransitRequest(I)Z

    move-result p0

    if-eqz p0, :cond_28

    :cond_27
    move v1, v3

    :cond_28
    return v1
.end method

.method public isPrivate()Z
    .registers 1

    .line 3055
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Landroid/view/Display;->getFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isReady()Z
    .registers 2

    .line 1532
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v0, :cond_c

    iget-boolean p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isRemoteAppDisplay()Z
    .registers 2

    .line 8104
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Landroid/view/Display;->getFlags()I

    move-result p0

    const/high16 v0, 0x2000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public isRemoved()Z
    .registers 1

    .line 7410
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayContent;->mRemoved:Z

    return p0
.end method

.method public isRemoving()Z
    .registers 1

    .line 7417
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayContent;->mRemoving:Z

    return p0
.end method

.method public isRemovingDisplay()Z
    .registers 1

    .line 8444
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayContent;->mRemovingDisplay:Z

    return p0
.end method

.method public final isRotationChanging()Z
    .registers 2

    .line 2315
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getRotation()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result p0

    if-eq v0, p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public isSleeping()Z
    .registers 1

    .line 7542
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayContent;->mSleeping:Z

    return p0
.end method

.method public isSyncFinished()Z
    .registers 1

    .line 1997
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->isWaitingForRemoteRotation()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isTrusted()Z
    .registers 1

    .line 3059
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Landroid/view/Display;->isTrusted()Z

    move-result p0

    return p0
.end method

.method public isUidPresent(I)Z
    .registers 4

    .line 7399
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda9;-><init>()V

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 7400
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 7399
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object p1

    .line 7401
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    .line 7402
    :goto_1e
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    return p0
.end method

.method public isValidCornerGesture(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 8473
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mMultiWindowPointerEventListener:Lcom/android/server/wm/MultiWindowPointerEventListener;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowPointerEventListener;->isValidCornerGesture(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public isVisible()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isVisibleRequested()Z
    .registers 2

    .line 3207
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemoved:Z

    if-nez v0, :cond_10

    iget-boolean p0, p0, Lcom/android/server/wm/DisplayContent;->mRemoving:Z

    if-nez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public layoutAndAssignWindowLayersIfNeeded()V
    .registers 4

    .line 4791
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 4792
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 4794
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v0

    if-nez v0, :cond_15

    .line 4796
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 4799
    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 4800
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 4801
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    return-void
.end method

.method public loadDisplayCutout(II)Landroid/view/DisplayCutout;
    .registers 10

    .line 3648
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    if-eqz v0, :cond_22

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayCutout:Landroid/view/DisplayCutout;

    if-nez v1, :cond_9

    goto :goto_22

    .line 3652
    :cond_9
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getSystemUiContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, v0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mPhysicalDisplaySize:Landroid/graphics/Point;

    iget v3, p0, Landroid/graphics/Point;->x:I

    iget v4, p0, Landroid/graphics/Point;->y:I

    move v5, p1

    move v6, p2

    .line 3651
    invoke-static/range {v1 .. v6}, Landroid/view/DisplayCutout;->fromResourcesRectApproximation(Landroid/content/res/Resources;Ljava/lang/String;IIII)Landroid/view/DisplayCutout;

    move-result-object p0

    return-object p0

    :cond_22
    :goto_22
    const/4 p0, 0x0

    return-object p0
.end method

.method public loadRoundedCorners(II)Landroid/view/RoundedCorners;
    .registers 10

    .line 3657
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    if-eqz v0, :cond_22

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialRoundedCorners:Landroid/view/RoundedCorners;

    if-nez v1, :cond_9

    goto :goto_22

    .line 3661
    :cond_9
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getSystemUiContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, v0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mPhysicalDisplaySize:Landroid/graphics/Point;

    iget v3, p0, Landroid/graphics/Point;->x:I

    iget v4, p0, Landroid/graphics/Point;->y:I

    move v5, p1

    move v6, p2

    .line 3660
    invoke-static/range {v1 .. v6}, Landroid/view/RoundedCorners;->fromResources(Landroid/content/res/Resources;Ljava/lang/String;IIII)Landroid/view/RoundedCorners;

    move-result-object p0

    return-object p0

    :cond_22
    :goto_22
    const/4 p0, 0x0

    return-object p0
.end method

.method public makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .registers 3

    .line 6224
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mSession:Landroid/view/SurfaceSession;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    .line 6225
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    return-object p0
.end method

.method public makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;
    .registers 4

    if-eqz p1, :cond_7

    .line 6202
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSession()Landroid/view/SurfaceSession;

    move-result-object v0

    goto :goto_b

    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getSession()Landroid/view/SurfaceSession;

    move-result-object v0

    .line 6203
    :goto_b
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    if-nez p1, :cond_18

    return-object v0

    .line 6208
    :cond_18
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 6209
    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    return-object p0
.end method

.method public makeOverlay()Landroid/view/SurfaceControl$Builder;
    .registers 3

    .line 6219
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mSession:Landroid/view/SurfaceSession;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getOverlayLayer()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    return-object p0
.end method

.method public mayImeShowOnLaunchingActivity(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4

    .line 2136
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    .line 2142
    :cond_8
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit8 p0, p0, 0xf

    const/4 v1, 0x2

    if-eq p0, v1, :cond_17

    const/4 v1, 0x3

    if-eq p0, v1, :cond_17

    .line 2148
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->mLastImeShown:Z

    return p0

    :cond_17
    return v0
.end method

.method public migrateToNewSurfaceControl(Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    .line 1450
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1452
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 1453
    iput v1, p0, Lcom/android/server/wm/WindowContainer;->mLastDeltaRotation:I

    .line 1455
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->configureSurfaces(Landroid/view/SurfaceControl$Transaction;)V

    .line 1457
    :goto_10
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2e

    .line 1458
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayArea;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 1460
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1464
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    return-void
.end method

.method public needsUpdateAboveInsetsStateAfterUnfreezing()Z
    .registers 1

    .line 8574
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    if-eqz p0, :cond_c

    .line 8575
    invoke-static {p0}, Lcom/android/server/wm/DisplayContent$ImeContainer;->-$$Nest$mneedsUpdateAboveInsetsStateAfterUnfreezing(Lcom/android/server/wm/DisplayContent$ImeContainer;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public notifyInsetsChanged(Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    .line 2375
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 2379
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformInsetsState()Landroid/view/InsetsState;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 2381
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v2}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v2

    move v3, v1

    :goto_12
    const/16 v4, 0x18

    if-ge v3, v4, :cond_26

    .line 2383
    invoke-virtual {v2, v3}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v4

    if-eqz v4, :cond_23

    .line 2385
    invoke-virtual {v4}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/view/InsetsState;->setSourceVisible(IZ)V

    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_26
    const/4 v0, 0x1

    .line 2390
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 2391
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    if-eqz p1, :cond_31

    .line 2392
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->notifyInsetsChanged()V

    .line 2396
    :cond_31
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    move-result p1

    if-eqz p1, :cond_51

    .line 2397
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz p1, :cond_48

    const/16 v2, 0x13

    .line 2398
    invoke-interface {p1, v2}, Lcom/android/server/wm/InsetsControlTarget;->getRequestedVisibility(I)Z

    move-result p1

    if-eqz p1, :cond_48

    move v1, v0

    .line 2399
    :cond_48
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p1, p0, v1}, Lcom/android/server/wm/AccessibilityController;->updateImeVisibilityIfNeeded(IZ)V

    :cond_51
    return-void
.end method

.method public notifyKeyguardFlagsChanged()V
    .registers 5

    .line 7554
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 7560
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 7562
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    .line 7564
    :cond_13
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1, v1}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    if-nez v0, :cond_1e

    .line 7569
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    :cond_1e
    return-void
.end method

.method public okToAnimate(ZZ)Z
    .registers 3

    .line 5924
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->okToDisplay(ZZ)Z

    move-result p1

    if-eqz p1, :cond_20

    iget p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez p1, :cond_14

    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 5926
    invoke-interface {p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->okToAnimate(Z)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 5927
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnFully()Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    return p0
.end method

.method public okToDisplay()Z
    .registers 2

    const/4 v0, 0x0

    .line 5891
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/DisplayContent;->okToDisplay(ZZ)Z

    move-result p0

    return p0
.end method

.method public okToDisplay(ZZ)Z
    .registers 7

    .line 5896
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->supportMultiDisplayFreeze()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_30

    .line 5897
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrozen:Z

    if-eqz v0, :cond_10

    if-nez p1, :cond_10

    return v3

    .line 5900
    :cond_10
    iget p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez p1, :cond_27

    .line 5901
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz p1, :cond_25

    if-nez p2, :cond_26

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 5902
    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result p0

    if-eqz p0, :cond_25

    goto :goto_26

    :cond_25
    move v2, v3

    :cond_26
    :goto_26
    return v2

    .line 5904
    :cond_27
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget p0, p0, Landroid/view/DisplayInfo;->state:I

    if-ne p0, v1, :cond_2e

    goto :goto_2f

    :cond_2e
    move v2, v3

    :goto_2f
    return v2

    .line 5907
    :cond_30
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v0, :cond_4d

    .line 5908
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v0, :cond_3c

    if-eqz p1, :cond_4b

    :cond_3c
    iget-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz p1, :cond_4b

    if-nez p2, :cond_4c

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 5910
    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result p0

    if-eqz p0, :cond_4b

    goto :goto_4c

    :cond_4b
    move v2, v3

    :cond_4c
    :goto_4c
    return v2

    .line 5912
    :cond_4d
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget p0, p0, Landroid/view/DisplayInfo;->state:I

    if-ne p0, v1, :cond_54

    goto :goto_55

    :cond_54
    move v2, v3

    :goto_55
    return v2
.end method

.method public onAppTransitionDone()V
    .registers 3

    .line 3212
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onAppTransitionDone()V

    .line 3213
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 3216
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_21

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v1, :cond_21

    .line 3217
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 3218
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->isRotatingSeamlessly()Z

    move-result v0

    if-nez v0, :cond_21

    .line 3219
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->clearFixedRotationLaunchingApp()V

    :cond_21
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 3122
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_23

    .line 3125
    invoke-static {p0, p1}, Lcom/android/server/wm/BoundsCompatRecord;->calculateDisplayAspectRatio(Lcom/android/server/wm/DisplayContent;Landroid/content/res/Configuration;)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayAspectRatio:F

    .line 3127
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mCustomAspectRatioController:Lcom/android/server/wm/CustomAspectRatioController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/CustomAspectRatioController;->onConfigurationChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 3131
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mDisplayCutoutController:Lcom/android/server/wm/DisplayCutoutController;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/DisplayCutoutController;->onConfigurationChanged(Lcom/android/server/wm/DisplayContent;Landroid/content/res/Configuration;)V

    .line 3134
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_OVERLAPPING_WITH_CUTOUT_AS_DEFAULT:Z

    if-eqz v0, :cond_23

    .line 3135
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateIsOverlappingWithCutoutAsDefault()V

    .line 3157
    :cond_23
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 3158
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3159
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    if-eqz p1, :cond_46

    .line 3160
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->onConfigurationChanged()V

    .line 3161
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    invoke-virtual {p1}, Lcom/android/server/wm/PinnedTaskController;->onPostDisplayConfigurationChanged()V

    .line 3164
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/FreeformController;->onConfigurationChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 3167
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mMultiWindowPointerEventListener:Lcom/android/server/wm/MultiWindowPointerEventListener;

    if-eqz p1, :cond_46

    .line 3168
    invoke-virtual {p1}, Lcom/android/server/wm/MultiWindowPointerEventListener;->onConfigurationChanged()V

    .line 3174
    :cond_46
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateImeParent()V

    .line 3178
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    invoke-virtual {p1}, Lcom/android/server/wm/TaskPositioningController;->getTaskMotionController()Lcom/android/server/wm/TaskMotionController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/wm/TaskMotionController;->onDisplayConfigurationChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 3183
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mContentRecorder:Lcom/android/server/wm/ContentRecorder;

    if-eqz p1, :cond_5b

    .line 3184
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ContentRecorder;->onConfigurationChanged(I)V

    .line 3187
    :cond_5b
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p1, :cond_89

    .line 3188
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object p1

    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x67b

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 3190
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x67c

    .line 3191
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p0

    .line 3188
    invoke-virtual {p1, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    :cond_89
    return-void
.end method

.method public onDescendantOrientationChanged(Lcom/android/server/wm/WindowContainer;)Z
    .registers 7

    const/4 v0, 0x0

    .line 1828
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent;->updateOrientation(Lcom/android/server/wm/WindowContainer;Z)Landroid/content/res/Configuration;

    move-result-object v1

    .line 1833
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->handlesOrientationChangeFromDescendant()Z

    move-result v2

    if-nez v1, :cond_c

    return v2

    :cond_c
    const/4 v3, 0x0

    if-eqz v2, :cond_24

    .line 1838
    instance-of v4, p1, Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_24

    .line 1839
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 1840
    invoke-virtual {p0, v1, p1, v0, v3}, Lcom/android/server/wm/DisplayContent;->updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;)Z

    move-result v0

    const/4 v1, 0x1

    .line 1845
    iput-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->frozenBeforeDestroy:Z

    if-nez v0, :cond_27

    .line 1847
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    goto :goto_27

    .line 1852
    :cond_24
    invoke-virtual {p0, v1, v3, v0, v3}, Lcom/android/server/wm/DisplayContent;->updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;)Z

    :cond_27
    :goto_27
    return v2
.end method

.method public onDescendantOverrideConfigurationChanged()V
    .registers 1

    .line 5885
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 5886
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    return-void
.end method

.method public onDisplayChanged()V
    .registers 13

    .line 6933
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->state:I

    .line 6934
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateDisplayInfo()V

    .line 6937
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    .line 6938
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->state:I

    if-eqz v1, :cond_61

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1f

    .line 6950
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mOffTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-interface {v4, v5}, Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;->acquire(I)V

    goto :goto_3a

    :cond_1f
    if-eq v2, v1, :cond_33

    .line 6951
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mExtraDisplayController:Lcom/android/server/wm/ExtraDisplayController;

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 6954
    invoke-virtual {v4, v5}, Lcom/android/server/wm/ExtraDisplayController;->canHaveCoverHomeDisplay(I)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 6955
    invoke-static {v2}, Landroid/view/Display;->isDozeState(I)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 6957
    :cond_33
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mOffTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-interface {v4, v5}, Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;->release(I)V

    .line 6960
    :cond_3a
    :goto_3a
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONTENT_RECORDING_enabled:Z

    if-eqz v4, :cond_5c

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v4, v4

    int-to-long v6, v2

    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, -0x16bd942b

    const/4 v10, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v11

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "Display %d state is now (%d), so update recording?"

    invoke-static {v8, v9, v10, v3, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5c
    if-eq v0, v2, :cond_61

    .line 6966
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateRecording()V

    .line 6971
    :cond_61
    invoke-static {v0}, Landroid/view/Display;->isSuspendedState(I)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 6972
    invoke-static {v2}, Landroid/view/Display;->isSuspendedState(I)Z

    move-result v0

    if-nez v0, :cond_78

    if-eqz v2, :cond_78

    .line 6973
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowContextListenerController:Lcom/android/server/wm/WindowContextListenerController;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 6974
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContextListenerController;->dispatchPendingConfigurationIfNeeded(I)V

    .line 6976
    :cond_78
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    return-void
.end method

.method public onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .registers 2

    .line 3366
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 3367
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusionLimit()V

    .line 3368
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateKeepClearAreas()V

    return-void
.end method

.method public onDisplayInfoChanged()V
    .registers 4

    .line 3339
    sget-boolean v0, Landroid/view/ViewRootImpl;->LOCAL_LAYOUT:Z

    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/DisplayContent;->updateDisplayFrames(ZZ)V

    .line 3340
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getMinimalTaskSizeDp()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mMinSizeOfResizeableTaskDp:I

    .line 3341
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/InputMonitor;->layoutInputConsumers(II)V

    .line 3342
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayPolicy;->onDisplayInfoChanged(Landroid/view/DisplayInfo;)V

    return-void
.end method

.method public onIsIgnoreOrientationRequestDisabledChanged()V
    .registers 2

    .line 7652
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_b

    .line 7655
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->onLastFocusedTaskDisplayAreaChanged(Lcom/android/server/wm/TaskDisplayArea;)V

    .line 7657
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayArea;->mSetIgnoreOrientationRequest:Z

    if-eqz v0, :cond_12

    .line 7658
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateOrientation()Z

    :cond_12
    return-void
.end method

.method public onLastFocusedTaskDisplayAreaChanged(Lcom/android/server/wm/TaskDisplayArea;)V
    .registers 3

    if-eqz p1, :cond_b

    .line 4750
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayArea;->handlesOrientationChangeFromDescendant()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4751
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mOrientationRequestingTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    return-void

    .line 4756
    :cond_b
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mOrientationRequestingTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz p1, :cond_18

    .line 4758
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayArea;->handlesOrientationChangeFromDescendant()Z

    move-result p1

    if-nez p1, :cond_18

    const/4 p1, 0x0

    .line 4759
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mOrientationRequestingTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    :cond_18
    return-void
.end method

.method public onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V
    .registers 9

    .line 6272
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isReady()Z

    move-result p1

    if-nez p1, :cond_49

    const/4 p1, 0x1

    .line 6275
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    .line 6277
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget p2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowAnimator;->addDisplayLocked(I)V

    .line 6279
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz p1, :cond_24

    .line 6280
    iget p2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 6281
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayInfoOverrideFromWindowManager(ILandroid/view/DisplayInfo;)V

    .line 6282
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->configureDisplayPolicy()V

    .line 6285
    :cond_24
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    .line 6286
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 6287
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mDisplayNotificationController:Lcom/android/server/wm/DisplayWindowListenerController;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayWindowListenerController;->dispatchDisplayAdded(Lcom/android/server/wm/DisplayContent;)V

    .line 6291
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mWindowContextListenerController:Lcom/android/server/wm/WindowContextListenerController;

    .line 6292
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayUiContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getWindowContextToken()Landroid/os/IBinder;

    move-result-object v1

    const/16 v3, 0x3e8

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v2, p0

    .line 6291
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowContextListenerController;->registerWindowContainerListener(Landroid/os/IBinder;Lcom/android/server/wm/WindowContainer;IILandroid/os/Bundle;)V

    :cond_49
    return-void
.end method

.method public onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6

    .line 7297
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

    if-eqz v0, :cond_f

    .line 7298
    invoke-virtual {v0}, Lcom/android/server/wm/UdcCutoutPolicy;->hasUdcCutout()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 7299
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/UdcCutoutPolicy;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 7303
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 7304
    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v1

    .line 7305
    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v2

    const/4 v3, -0x1

    if-eq v1, v3, :cond_29

    if-eq v2, v3, :cond_29

    if-eq v1, v2, :cond_29

    .line 7308
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DisplayContent;->applyRotationAndFinishFixedRotation(II)V

    .line 7310
    :cond_29
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mCurrentOverrideConfigurationChanges:I

    .line 7311
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x0

    .line 7312
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mCurrentOverrideConfigurationChanges:I

    .line 7313
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    if-eqz v0, :cond_41

    .line 7314
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    .line 7315
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const-string v0, "new-config"

    iput-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 7317
    :cond_41
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->addWindowLayoutReasons(I)V

    return-void
.end method

.method public onResize()V
    .registers 2

    .line 7323
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onResize()V

    .line 7324
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 7325
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/AccessibilityController;->onDisplaySizeChanged(Lcom/android/server/wm/DisplayContent;)V

    :cond_14
    return-void
.end method

.method public onRunningActivityChanged()V
    .registers 1

    .line 4744
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDwpcHelper:Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->onRunningActivityChanged()V

    return-void
.end method

.method public onShowImeRequested()V
    .registers 3

    .line 5061
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_27

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_9

    goto :goto_27

    .line 5066
    :cond_9
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 5067
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowToken;->linkFixedRotationTransform(Lcom/android/server/wm/WindowToken;)V

    .line 5070
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAsyncRotationController:Lcom/android/server/wm/AsyncRotationController;

    if-eqz v0, :cond_27

    .line 5071
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/AsyncRotationController;->hideImmediately(Lcom/android/server/wm/WindowToken;)V

    :cond_27
    :goto_27
    return-void
.end method

.method public onWindowAnimationFinished(Lcom/android/server/wm/WindowContainer;I)V
    .registers 12

    .line 5667
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeScreenshot:Lcom/android/server/wm/DisplayContent$ImeScreenshot;

    if-eqz v0, :cond_3c

    .line 5668
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_IME_enabled:Z

    if-eqz v0, :cond_3c

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/android/server/wm/SurfaceAnimator;->animationTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mImeScreenshot:Lcom/android/server/wm/DisplayContent$ImeScreenshot;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mImeScreenshot:Lcom/android/server/wm/DisplayContent$ImeScreenshot;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->getImeTarget()Lcom/android/server/wm/WindowState;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x274700d5

    const/4 v6, 0x0

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    aput-object v3, v7, v0

    invoke-static {v4, v5, v8, v6, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5673
    :cond_3c
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeScreenshot:Lcom/android/server/wm/DisplayContent$ImeScreenshot;

    if-eqz v0, :cond_58

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->getImeTarget()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eq p1, v0, :cond_51

    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda51;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda51;-><init>(Lcom/android/server/wm/DisplayContent;)V

    .line 5674
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object p1

    if-eqz p1, :cond_58

    :cond_51
    and-int/lit8 p1, p2, 0x19

    if-eqz p1, :cond_58

    .line 5676
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->removeImeSurfaceImmediately()V

    :cond_58
    return-void
.end method

.method public onWindowFreezeTimeout()V
    .registers 3

    .line 5646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Window freeze timeout expired."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5648
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 5650
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda38;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda38;-><init>(Lcom/android/server/wm/DisplayContent;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 5659
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    return-void
.end method

.method public pauseRecording()V
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 7738
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mContentRecorder:Lcom/android/server/wm/ContentRecorder;

    if-eqz p0, :cond_7

    .line 7739
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->pauseRecording()V

    :cond_7
    return-void
.end method

.method public performDisplayOverrideConfigUpdate(Landroid/content/res/Configuration;)I
    .registers 12

    .line 7170
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 7174
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->checkScreenDpSizeChanges(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result v0

    .line 7179
    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTempConfig:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 7180
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float v6, v1, v2

    .line 7181
    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTempConfig:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 7182
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v7, v1, v2

    .line 7183
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTempConfig:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 7191
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result p1

    if-eqz p1, :cond_137

    .line 7193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Override config changes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    .line 7196
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    .line 7193
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7198
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    and-int/lit16 v1, p1, 0x1000

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_a4

    move v1, v2

    goto :goto_a5

    :cond_a4
    move v1, v3

    :goto_a5
    and-int/lit16 v4, p1, 0x200

    if-eqz v4, :cond_aa

    goto :goto_ab

    :cond_aa
    move v2, v3

    .line 7205
    :goto_ab
    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_STANDALONE:Z

    if-eqz v3, :cond_c2

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v3, :cond_c2

    if-nez v1, :cond_b7

    if-eqz v2, :cond_c2

    .line 7208
    :cond_b7
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDesktopModeManagerInternal()Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    move-result-object v2

    .line 7209
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;->isConfigurationChangedFromDeX(Landroid/content/res/Configuration;)Z

    :cond_c2
    const/4 v2, 0x0

    if-eqz v1, :cond_107

    .line 7213
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v1, :cond_107

    .line 7214
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAppWarnings:Lcom/android/server/wm/AppWarnings;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWarnings;->onDensityChanged()V

    const/4 v1, 0x6

    const/16 v3, 0x18

    if-eqz v0, :cond_eb

    .line 7239
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda32;-><init>()V

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 7241
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 7242
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 7239
    invoke-static {v0, v4, v3, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    goto :goto_100

    .line 7233
    :cond_eb
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda31;-><init>()V

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 7235
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 7236
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 7233
    invoke-static {v0, v4, v3, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7244
    :goto_100
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 7248
    :cond_107
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTempConfig:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 7249
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    move v4, p1

    .line 7248
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/MultiTaskingController;->performDisplayOverrideConfigUpdate(IIFFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 7268
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayNotificationController:Lcom/android/server/wm/DisplayWindowListenerController;

    .line 7269
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 7268
    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/DisplayWindowListenerController;->dispatchDisplayChanged(Lcom/android/server/wm/DisplayContent;Landroid/content/res/Configuration;)V

    .line 7270
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isReady()Z

    move-result v0

    if-eqz v0, :cond_137

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_137

    .line 7271
    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/DisplayContent;->requestChangeTransitionIfNeeded(ILandroid/window/TransitionRequestInfo$DisplayChange;)V

    :cond_137
    return p1
.end method

.method public performLayout(ZZ)V
    .registers 6

    const-wide/16 v0, 0x20

    const-string/jumbo v2, "performLayout"

    .line 5800
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5802
    :try_start_8
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->performLayoutNoTrace(ZZ)V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_f

    .line 5804
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 5805
    throw p0
.end method

.method public final performLayoutNoTrace(ZZ)V
    .registers 6

    .line 5809
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isLayoutNeeded()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 5812
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->clearLayoutNeeded()V

    .line 5814
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_3a

    const-string v0, "WindowManager"

    const-string v1, "-------------------------------------"

    .line 5815
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5816
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "performLayout: dw="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5820
    :cond_3a
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    if-gez v0, :cond_42

    move v0, v2

    .line 5822
    :cond_42
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    .line 5824
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpInitial:Z

    .line 5828
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mPerformLayout:Ljava/util/function/Consumer;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 5833
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mPerformLayoutAttached:Ljava/util/function/Consumer;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 5836
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {p1}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    if-eqz p2, :cond_5c

    .line 5838
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    :cond_5c
    return-void
.end method

.method public pointWithinAppWindow(II)Z
    .registers 7

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, -0x1

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 3710
    new-instance v2, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda58;

    invoke-direct {v2, v1, p1, p2}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda58;-><init>([III)V

    const-class p1, Lcom/android/server/wm/WindowState;

    .line 3719
    invoke-static {p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    .line 3710
    invoke-static {v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object p1

    .line 3720
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 3721
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    aget p0, v1, v3

    if-gt v0, p0, :cond_27

    const/16 p1, 0x63

    if-gt p0, p1, :cond_27

    goto :goto_28

    :cond_27
    move v0, v3

    :goto_28
    return v0
.end method

.method public prepareAppTransition(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 6484
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(II)V

    return-void
.end method

.method public prepareAppTransition(II)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6493
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AppTransition;->prepareAppTransition(II)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 6494
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->okToAnimate()Z

    move-result p2

    if-eqz p2, :cond_13

    if-eqz p1, :cond_13

    const/4 p1, 0x0

    .line 6495
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mSkipAppTransitionAnimation:Z

    :cond_13
    return-void
.end method

.method public prepareSurfaces()V
    .registers 4

    const-wide/16 v0, 0x20

    const-string/jumbo v2, "prepareSurfaces"

    .line 6396
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6398
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    .line 6399
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea$Dimmable;->prepareSurfaces()V

    .line 6403
    invoke-static {v2}, Landroid/view/SurfaceControl;->mergeToGlobalTransaction(Landroid/view/SurfaceControl$Transaction;)V
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_16

    .line 6405
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_16
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 6406
    throw p0
.end method

.method public final processTaskForTouchExcludeRegion(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;I)V
    .registers 10

    .line 3886
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_d9

    .line 3888
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->hasContentToDisplay()Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_d9

    .line 3893
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 3895
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 3896
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v0

    if-nez v0, :cond_21

    :cond_20
    return-void

    .line 3910
    :cond_21
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 3911
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    goto :goto_42

    .line 3913
    :cond_3d
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    :goto_42
    if-ne p1, p2, :cond_4b

    .line 3921
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3924
    :cond_4b
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-ne p1, p2, :cond_53

    if-eqz v0, :cond_d9

    .line 3928
    :cond_53
    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect3:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p2, 0x0

    if-eqz v0, :cond_8b

    const/16 v1, 0xa

    .line 3930
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 3931
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 3930
    invoke-static {v1, v2}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v1

    .line 3932
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect3:Landroid/graphics/Rect;

    neg-int v1, v1

    invoke-virtual {v2, v1, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 3933
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect3:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    .line 3934
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v4

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v5

    or-int/2addr v4, v5

    .line 3933
    invoke-virtual {v2, v3, v4, p2}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    :cond_8b
    if-eqz v0, :cond_c7

    .line 3941
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    neg-int p3, p3

    invoke-virtual {v0, p3, p3}, Landroid/graphics/Rect;->inset(II)V

    .line 3947
    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    .line 3948
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    or-int/2addr v2, v3

    .line 3947
    invoke-virtual {v0, v1, v2, p2}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 3950
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTopFreeform()Z

    move-result p1

    if-eqz p1, :cond_c7

    .line 3952
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpAlwaysOnTopFreeformRegion:Landroid/graphics/Region;

    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    sget-object p3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 3954
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mFreeformTasksPointerTouchRegion:Landroid/graphics/Region;

    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect3:Landroid/graphics/Rect;

    sget-object p3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 3959
    :cond_c7
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    sget-object p3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 3962
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mPointerTouchExcludeRegion:Landroid/graphics/Region;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect3:Landroid/graphics/Rect;

    sget-object p2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p0, p2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    :cond_d9
    :goto_d9
    return-void
.end method

.method public providesMaxBounds()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public reParentWindowToken(Lcom/android/server/wm/WindowToken;)V
    .registers 5

    .line 1648
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-ne v0, p0, :cond_7

    return-void

    :cond_7
    if-eqz v0, :cond_20

    .line 1653
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_20

    .line 1656
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 1660
    :cond_20
    iget-object v1, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/DisplayContent;->addWindowToken(Landroid/os/IBinder;Lcom/android/server/wm/WindowToken;)V

    .line 1662
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    move-result p1

    if-eqz p1, :cond_4b

    if-eqz v0, :cond_36

    .line 1663
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p1

    goto :goto_37

    :cond_36
    const/4 p1, -0x1

    .line 1664
    :goto_37
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    .line 1665
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p0

    aput p0, v1, p1

    .line 1664
    invoke-virtual {v0, v1}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMoved([I)V

    :cond_4b
    return-void
.end method

.method public reapplyMagnificationSpec()V
    .registers 3

    .line 6260
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    if-eqz v0, :cond_d

    .line 6261
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->applyMagnificationSpec(Landroid/view/SurfaceControl$Transaction;Landroid/view/MagnificationSpec;)V

    :cond_d
    return-void
.end method

.method public reconfigureDisplayLocked()V
    .registers 6

    .line 1758
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isReady()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1761
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->configureDisplayPolicy()V

    .line 1762
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 1764
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateOrientation()Z

    move-result v0

    .line 1765
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1766
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1767
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->computeScreenConfiguration(Landroid/content/res/Configuration;)V

    .line 1768
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2b

    move v4, v2

    goto :goto_2c

    :cond_2b
    move v4, v3

    :goto_2c
    or-int/2addr v0, v4

    if-eqz v0, :cond_4b

    .line 1772
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    .line 1773
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_3e

    const/4 v0, 0x0

    .line 1774
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/DisplayContent;->requestChangeTransitionIfNeeded(ILandroid/window/TransitionRequestInfo$DisplayChange;)V

    goto :goto_48

    .line 1775
    :cond_3e
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    if-nez v0, :cond_43

    goto :goto_48

    .line 1786
    :cond_43
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v3, v3, p0}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplay(IILcom/android/server/wm/DisplayContent;)V

    .line 1790
    :goto_48
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()V

    .line 1793
    :cond_4b
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    return-void
.end method

.method public final reduceCompatConfigWidthSize(IIILandroid/util/DisplayMetrics;II)I
    .registers 14

    .line 2896
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v0

    .line 2897
    invoke-virtual {v0}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 2898
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    move v2, p5

    move v3, p6

    move v4, p2

    move v5, p3

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result p3

    iput p3, p4, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 2900
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0, p6, p2, v0}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayHeight(IILandroid/view/DisplayCutout;)I

    move-result p0

    iput p0, p4, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    const/4 p0, 0x0

    .line 2902
    invoke-static {p4, p0}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    move-result p0

    .line 2903
    iget p2, p4, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    int-to-float p2, p2

    div-float/2addr p2, p0

    iget p0, p4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p2, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p2, p0

    float-to-int p0, p2

    if-eqz p1, :cond_31

    if-ge p0, p1, :cond_32

    :cond_31
    move p1, p0

    :cond_32
    return p1
.end method

.method public final reduceConfigLayout(IIFIII)I
    .registers 15

    .line 2949
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v0

    .line 2950
    invoke-virtual {v0}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 2953
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    move v2, p4

    move v3, p5

    move v4, p2

    move v5, p6

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result p4

    .line 2954
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0, p5, p2, v0}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayHeight(IILandroid/view/DisplayCutout;)I

    move-result p0

    if-ge p4, p0, :cond_1e

    move v7, p4

    move p4, p0

    move p0, v7

    :cond_1e
    int-to-float p2, p4

    div-float/2addr p2, p3

    float-to-int p2, p2

    int-to-float p0, p0

    div-float/2addr p0, p3

    float-to-int p0, p0

    .line 2966
    invoke-static {p1, p2, p0}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result p0

    return p0
.end method

.method public refreshImeSecureFlag(Landroid/view/SurfaceControl$Transaction;)Z
    .registers 3

    .line 5156
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lcom/android/server/wm/InputTarget;->canScreenshotIme()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 5157
    :goto_e
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->setCanScreenshot(Landroid/view/SurfaceControl$Transaction;Z)Z

    move-result p0

    return p0
.end method

.method public registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V
    .registers 2

    .line 6458
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/PointerEventDispatcher;->registerInputEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    return-void
.end method

.method public registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    .registers 2

    .line 1754
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransitionController:Lcom/android/server/wm/AppTransitionController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppTransitionController;->registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V

    return-void
.end method

.method public registerSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;)V
    .registers 4

    .line 6853
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 6855
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 6856
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusion()Z

    move-result v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    if-nez v0, :cond_2e

    .line 6862
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionWasRestricted:Z

    if-eqz v0, :cond_1d

    .line 6863
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionUnrestricted:Landroid/graphics/Region;

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    .line 6867
    :goto_1e
    :try_start_1e
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusion:Landroid/graphics/Region;

    invoke-interface {p1, v1, p0, v0}, Landroid/view/ISystemGestureExclusionListener;->onSystemGestureExclusionChanged(ILandroid/graphics/Region;Landroid/graphics/Region;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_25} :catch_26

    goto :goto_2e

    :catch_26
    move-exception p0

    const-string p1, "WindowManager"

    const-string v0, "Failed to notify SystemGestureExclusionListener during register"

    .line 6870
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2e
    :goto_2e
    return-void
.end method

.method public releaseSelfIfNeeded()V
    .registers 2

    .line 7464
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemoved:Z

    if-nez v0, :cond_5

    return-void

    .line 7469
    :cond_5
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda53;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda53;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 7471
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRootTaskCount()I

    move-result v0

    if-lez v0, :cond_1f

    .line 7474
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda54;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda54;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    goto :goto_28

    .line 7475
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getTopRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_28

    .line 7476
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->removeIfPossible()V

    :cond_28
    :goto_28
    return-void
.end method

.method public remove()V
    .registers 6

    const/4 v0, 0x1

    .line 7421
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemoving:Z

    .line 7424
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginDeferResume()V

    .line 7426
    :try_start_a
    new-instance v1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda4;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Lcom/android/server/wm/DisplayArea;->reduceOnAllTaskDisplayAreas(Ljava/util/function/BiFunction;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_5d

    .line 7434
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v4, v4, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 7436
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemoved:Z

    .line 7438
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mContentRecorder:Lcom/android/server/wm/ContentRecorder;

    if-eqz v0, :cond_27

    .line 7439
    invoke-virtual {v0}, Lcom/android/server/wm/ContentRecorder;->remove()V

    :cond_27
    if-eqz v1, :cond_2c

    .line 7445
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->resumeNextFocusAfterReparent()V

    .line 7447
    :cond_2c
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->releaseSelfIfNeeded()V

    .line 7448
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->release()V

    .line 7450
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 7451
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 7453
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7456
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_57

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, -0x664c1afc

    invoke-static {v0, v1, v2, v3, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 7459
    :cond_57
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    :cond_5c
    return-void

    :catchall_5d
    move-exception v0

    .line 7434
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 7435
    throw v0
.end method

.method public removeAllTasks()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 7631
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda37;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda37;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public removeAppToken(Landroid/os/IBinder;)V
    .registers 5

    const/4 v0, 0x1

    .line 1670
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent;->removeWindowToken(Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowToken;

    move-result-object v0

    const-string v1, "WindowManager"

    if-nez v0, :cond_1f

    .line 1672
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "removeAppToken: Attempted to remove non-existing token: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1676
    :cond_1f
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_42

    .line 1679
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to remove non-App token: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " token="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1683
    :cond_42
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->onRemovedFromDisplay()V

    .line 1684
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-ne v2, p1, :cond_50

    .line 1686
    invoke-virtual {v2}, Lcom/android/server/wm/WindowToken;->finishFixedRotationTransform()V

    const/4 p1, 0x0

    .line 1687
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingAppUnchecked(Lcom/android/server/wm/ActivityRecord;)V

    :cond_50
    return-void
.end method

.method public removeIfPossible()V
    .registers 2

    .line 4004
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->shouldDeferRemoval()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    .line 4005
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    return-void

    .line 4008
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->removeImmediately()V

    return-void
.end method

.method public removeImeScreenshotIfPossible()V
    .registers 4

    .line 5309
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_11

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_14

    .line 5311
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->inTransitionSelfOrParent()Z

    move-result v0

    if-nez v0, :cond_14

    .line 5312
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->removeImeSurfaceImmediately()V

    :cond_14
    return-void
.end method

.method public removeImeSurfaceImmediately()V
    .registers 3

    .line 5318
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeScreenshot:Lcom/android/server/wm/DisplayContent$ImeScreenshot;

    if-eqz v0, :cond_e

    .line 5319
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->detach(Landroid/view/SurfaceControl$Transaction;)V

    const/4 v0, 0x0

    .line 5320
    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeScreenshot:Lcom/android/server/wm/DisplayContent$ImeScreenshot;

    :cond_e
    return-void
.end method

.method public removeImmediately()V
    .registers 5

    const/4 v0, 0x1

    .line 4015
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemovingDisplay:Z

    const/4 v0, 0x0

    .line 4018
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    .line 4021
    :try_start_6
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 4022
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 4023
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 4024
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v1}, Lcom/android/server/wm/UnknownAppVisibilityController;->clear()V

    .line 4025
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->removeAppTransitionTimeoutCallbacks()V

    .line 4026
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationTransitionListener:Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TransitionController;->unregisterLegacyListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 4027
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->handleAnimatingStoppedAndTransition()V

    .line 4028
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 4029
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplaySwitchTransitionLauncher:Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;

    invoke-virtual {v1}, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->destroy()V

    .line 4030
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->removeImmediately()V

    .line 4031
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DISPLAY:Z

    if-eqz v1, :cond_50

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4032
    :cond_50
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    invoke-virtual {v1}, Lcom/android/server/wm/PointerEventDispatcher;->dispose()V

    const/4 v1, 0x0

    .line 4033
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->setRotationAnimation(Lcom/android/server/wm/ScreenRotationAnimation;)V

    .line 4036
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->setRemoteInsetsController(Landroid/view/IDisplayWindowInsetsController;)V

    .line 4037
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowAnimator;->removeDisplayLocked(I)V

    .line 4038
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    .line 4039
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    .line 4040
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1}, Lcom/android/server/wm/InputMonitor;->onDisplayRemoved()V

    .line 4041
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayNotificationController:Lcom/android/server/wm/DisplayWindowListenerController;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/DisplayWindowListenerController;->dispatchDisplayRemoved(Lcom/android/server/wm/DisplayContent;)V

    .line 4042
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/AccessibilityController;->onDisplayRemoved(I)V

    .line 4043
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 4044
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/KeyguardController;->onDisplayRemoved(I)V

    .line 4046
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mPointerLocationEnabled:Z

    if-eqz v1, :cond_9c

    .line 4047
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayPolicy;->setPointerLocationEnabled(Z)V

    .line 4050
    :cond_9c
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/FreeformController;->onDisplayRemovedLocked(I)V

    .line 4052
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mExtraDisplayController:Lcom/android/server/wm/ExtraDisplayController;

    iget-object v1, v1, Lcom/android/server/wm/ExtraDisplayController;->as:Lcom/android/server/wm/ExtraDisplayFactory;

    invoke-virtual {v1}, Lcom/android/server/wm/ExtraDisplayFactory;->cover()Lcom/android/server/wm/CoverDisplayController;

    move-result-object v1

    if-eqz v1, :cond_c0

    .line 4053
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mExtraDisplayController:Lcom/android/server/wm/ExtraDisplayController;

    iget-object v1, v1, Lcom/android/server/wm/ExtraDisplayController;->as:Lcom/android/server/wm/ExtraDisplayFactory;

    invoke-virtual {v1}, Lcom/android/server/wm/ExtraDisplayFactory;->cover()Lcom/android/server/wm/CoverDisplayController;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/CoverDisplayController;->removeViewCoverDisplay(I)V

    .line 4055
    :cond_c0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mMultiWindowPointerEventListener:Lcom/android/server/wm/MultiWindowPointerEventListener;

    if-eqz v1, :cond_c7

    .line 4056
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V
    :try_end_c7
    .catchall {:try_start_6 .. :try_end_c7} :catchall_da

    .line 4062
    :cond_c7
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemovingDisplay:Z

    .line 4065
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    .line 4070
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 4071
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    return-void

    :catchall_da
    move-exception v1

    .line 4062
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemovingDisplay:Z

    .line 4065
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    .line 4066
    throw v1
.end method

.method public varargs removeRootTasksInWindowingModes([I)V
    .registers 5

    if-eqz p1, :cond_2b

    .line 6999
    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_2b

    .line 7006
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7007
    new-instance v1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda56;

    invoke-direct {v1, p1, v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda56;-><init>([ILjava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 7017
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_19
    if-ltz p1, :cond_2b

    .line 7018
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeRootTask(Lcom/android/server/wm/Task;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_19

    :cond_2b
    :goto_2b
    return-void
.end method

.method public varargs removeRootTasksWithActivityTypes([I)V
    .registers 5

    if-eqz p1, :cond_2b

    .line 7023
    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_2b

    .line 7030
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7031
    new-instance v1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda33;

    invoke-direct {v1, p1, v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda33;-><init>([ILjava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 7046
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_19
    if-ltz p1, :cond_2b

    .line 7047
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeRootTask(Lcom/android/server/wm/Task;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_19

    :cond_2b
    :goto_2b
    return-void
.end method

.method public removeShellRoot(I)V
    .registers 4

    .line 1620
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1621
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mShellRoots:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ShellRoot;

    if-nez v1, :cond_17

    .line 1623
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1625
    :cond_17
    :try_start_17
    invoke-virtual {v1}, Lcom/android/server/wm/ShellRoot;->clear()V

    .line 1626
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mShellRoots:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1627
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_24
    move-exception p0

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public removeWindowToken(Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowToken;
    .registers 3

    .line 1590
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowToken;

    if-eqz p0, :cond_13

    .line 1591
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_13

    .line 1592
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowToken;->setExiting(Z)V

    :cond_13
    return-object p0
.end method

.method public reparentToOverlay(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 3

    .line 6232
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getOverlayLayer()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public requestChangeTransitionIfNeeded(ILandroid/window/TransitionRequestInfo$DisplayChange;)V
    .registers 11

    .line 4139
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    if-nez v0, :cond_5

    return-void

    .line 4140
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 4141
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v1

    if-eqz v1, :cond_24

    if-nez p2, :cond_1c

    .line 4145
    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->isCollecting(Lcom/android/server/wm/WindowContainer;)Z

    move-result p1

    if-nez p1, :cond_1b

    .line 4146
    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 4147
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->startAsyncRotationIfNeeded()V

    :cond_1b
    return-void

    .line 4143
    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Provided displayChange for non-new transition"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_24
    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v4, p0

    move-object v5, p0

    move-object v7, p2

    .line 4151
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/TransitionController;->requestTransitionIfNeeded(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    move-result-object p2

    if-eqz p2, :cond_81

    .line 4154
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->startLaunchPowerMode(I)V

    .line 4155
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_46

    .line 4159
    invoke-virtual {p2, p0}, Lcom/android/server/wm/Transition;->setSeamlessRotation(Lcom/android/server/wm/WindowContainer;)V

    .line 4160
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAsyncRotationController:Lcom/android/server/wm/AsyncRotationController;

    if-eqz v0, :cond_62

    .line 4161
    invoke-virtual {v0}, Lcom/android/server/wm/AsyncRotationController;->keepAppearanceInPreviousRotation()V

    goto :goto_62

    .line 4163
    :cond_46
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isRotationChanging()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 4164
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 4165
    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mTransitionMetricsReporter:Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;

    new-instance v1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {v0, p2, v1}, Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;->associate(Landroid/os/IBinder;Ljava/util/function/LongConsumer;)V

    const/4 v0, 0x0

    .line 4167
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->startAsyncRotation(Z)Z

    .line 4169
    :cond_62
    :goto_62
    invoke-virtual {p2, p0, p1}, Lcom/android/server/wm/Transition;->setKnownConfigChanges(Lcom/android/server/wm/WindowContainer;I)V

    .line 4172
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_DISPLAY_CHANGE_ANIM:Z

    if-eqz v0, :cond_81

    .line 4173
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 4174
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayRotation;->selectDisplayChangeAnimation(I)Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    move-result-object p0

    .line 4175
    iget p1, p0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mEnter:I

    if-nez p1, :cond_77

    iget v0, p0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mExit:I

    if-eqz v0, :cond_81

    .line 4176
    :cond_77
    iget p0, p0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mExit:I

    .line 4177
    invoke-static {p1, p0}, Landroid/window/TransitionInfo$AnimationOptions;->makeCustomDisplayChangeAnimOptions(II)Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object p0

    const/4 p1, 0x0

    .line 4176
    invoke-virtual {p2, p0, p1, p1}, Lcom/android/server/wm/Transition;->setOverrideAnimation(Landroid/window/TransitionInfo$AnimationOptions;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;)V

    :cond_81
    return-void
.end method

.method public requestToUseBlackScreenshotIfNeeded(II)V
    .registers 5

    const/4 v0, 0x0

    if-lez p1, :cond_1d

    if-lez p2, :cond_1d

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 8329
    iget p2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    int-to-float p2, p2

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    int-to-float v1, v1

    div-float/2addr p2, v1

    sub-float/2addr p1, p2

    .line 8330
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p2, 0x3a83126f    # 0.001f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1d

    const/4 p1, 0x1

    move v0, p1

    .line 8338
    :cond_1d
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mUseBlackScreenshot:Z

    return-void
.end method

.method public requestTransitionAndLegacyPrepare(II)V
    .registers 5

    .line 6509
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(II)V

    .line 6510
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p0}, Lcom/android/server/wm/TransitionController;->requestTransitionIfNeeded(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;

    return-void
.end method

.method public requestTransitionAndLegacyPrepare(ILcom/android/server/wm/WindowContainer;)V
    .registers 5

    .line 6517
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    .line 6518
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p0}, Lcom/android/server/wm/TransitionController;->requestTransitionIfNeeded(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;

    return-void
.end method

.method public rotateBounds(IILandroid/graphics/Rect;)V
    .registers 5

    .line 4112
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;I)V

    .line 4113
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-static {p3, p0, p1, p2}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    return-void
.end method

.method public rotateInDifferentOrientationIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 2307
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->rotationForActivityInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 2309
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent;->startFixedRotationTransform(Lcom/android/server/wm/WindowToken;I)V

    :cond_a
    return-void
.end method

.method public rotationForActivityInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;)I
    .registers 5

    .line 2006
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->useShellTransitionsRotation()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_a

    return v1

    .line 2009
    :cond_a
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->ENABLE_FIXED_ROTATION_TRANSFORM:Z

    if-nez v0, :cond_f

    return v1

    .line 2012
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_5d

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation(Z)I

    move-result v0

    .line 2013
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_23

    goto :goto_5d

    .line 2017
    :cond_23
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    move-result v0

    if-eqz v0, :cond_2e

    return v1

    .line 2026
    :cond_2e
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL:Z

    if-eqz v0, :cond_4b

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    iget-boolean v0, v0, Lcom/android/server/wm/BoundsCompatRecord;->mIsIgnoreOrientationRequest:Z

    if-eqz v0, :cond_4b

    .line 2028
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_4b

    return v1

    .line 2032
    :cond_4b
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v0

    .line 2033
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayRotation;->rotationForOrientation(II)I

    move-result p0

    if-ne p0, v0, :cond_5c

    return v1

    :cond_5c
    return p0

    :cond_5d
    :goto_5d
    return v1
.end method

.method public sandboxDisplayApis()Z
    .registers 1

    .line 7724
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayContent;->mSandboxDisplayApis:Z

    return p0
.end method

.method public scheduleToastWindowsTimeoutIfNeededLocked(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .registers 4

    if-eqz p1, :cond_13

    if-eqz p2, :cond_b

    .line 4513
    iget p2, p2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    iget v0, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne p2, v0, :cond_b

    goto :goto_13

    .line 4518
    :cond_b
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 4520
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mScheduleToastTimeout:Ljava/util/function/Consumer;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    :cond_13
    :goto_13
    return-void
.end method

.method public screenshotDisplayLocked()Landroid/graphics/Bitmap;
    .registers 5

    .line 5847
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result v0

    const-string v1, "WindowManager"

    const/4 v2, 0x0

    if-nez v0, :cond_17

    .line 5848
    sget-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz p0, :cond_16

    const-string p0, "Attempted to take screenshot while display was off."

    .line 5849
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    return-object v2

    .line 5854
    :cond_17
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const/4 v0, 0x0

    .line 5855
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRotationAnimation()Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object p0

    if-eqz p0, :cond_2d

    .line 5857
    invoke-virtual {p0}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result p0

    if-eqz p0, :cond_2d

    const/4 v0, 0x1

    .line 5858
    :cond_2d
    sget-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz p0, :cond_38

    if-eqz v0, :cond_38

    const-string p0, "Taking screenshot while rotating"

    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5861
    :cond_38
    invoke-static {}, Landroid/view/SurfaceControl;->getInternalDisplayToken()Landroid/os/IBinder;

    move-result-object p0

    .line 5862
    new-instance v3, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    invoke-direct {v3, p0}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;-><init>(Landroid/os/IBinder;)V

    .line 5864
    invoke-virtual {v3, v0}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->setUseIdentityTransform(Z)Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    move-result-object p0

    .line 5865
    invoke-virtual {p0}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->build()Landroid/view/SurfaceControl$DisplayCaptureArgs;

    move-result-object p0

    .line 5867
    invoke-static {p0}, Landroid/view/SurfaceControl;->captureDisplay(Landroid/view/SurfaceControl$DisplayCaptureArgs;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object p0

    if-nez p0, :cond_51

    move-object p0, v2

    goto :goto_55

    .line 5868
    :cond_51
    invoke-virtual {p0}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->asBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_55
    if-nez p0, :cond_5d

    const-string p0, "Failed to take screenshot"

    .line 5870
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 5876
    :cond_5d
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->asShared()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, p0, :cond_66

    .line 5878
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_66
    return-object v0
.end method

.method public final sendApplicationFocusMonitoringIntent(Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 7

    .line 1428
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.APPLICATION_FOCUS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.knox.intent.extra.APPLICATION_FOCUS_COMPONENT_NAME"

    .line 1429
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.samsung.android.knox.intent.extra.APPLICATION_FOCUS_STATUS"

    .line 1431
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.samsung.android.knox.intent.extra.USER_ID"

    .line 1432
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.samsung.android.knox.intent.extra.APPLICATION_FOCUS_DEX_MODE"

    .line 1433
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1435
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 1436
    new-instance p2, Lcom/android/server/wm/DisplayContent$1;

    invoke-direct {p2, p0, v0}, Lcom/android/server/wm/DisplayContent$1;-><init>(Lcom/android/server/wm/DisplayContent;Landroid/content/Intent;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sendNewConfiguration()V
    .registers 3

    .line 1797
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isReady()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1800
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->isWaitingForRemoteRotation()Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    .line 1804
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateDisplayOverrideConfigurationLocked()Z

    move-result v0

    if-eqz v0, :cond_17

    return-void

    .line 1812
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->clearFixedRotationLaunchingApp()V

    .line 1818
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    if-eqz v0, :cond_31

    const/4 v0, 0x0

    .line 1819
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    .line 1820
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const-string v1, "config-unchanged"

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 1821
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 1822
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    :cond_31
    return-void
.end method

.method public setContentRecordingSession(Landroid/view/ContentRecordingSession;)V
    .registers 2

    .line 7750
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getContentRecorder()Lcom/android/server/wm/ContentRecorder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ContentRecorder;->setContentRecordingSession(Landroid/view/ContentRecordingSession;)V

    return-void
.end method

.method public setDisplayWindowingMode(I)V
    .registers 2

    .line 3244
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->setWindowingMode(I)V

    return-void
.end method

.method public setFadeInOutAnimationNeeded(ZLjava/lang/String;)V
    .registers 4

    .line 8421
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mFadeInOutAnimationNeeded:Z

    if-eq v0, p1, :cond_25

    .line 8422
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mFadeInOutAnimationNeeded:Z

    .line 8423
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setFadeInOutAnimationNeeded: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", reason="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    return-void
.end method

.method public setFixedRotationLaunchingApp(Lcom/android/server/wm/ActivityRecord;I)V
    .registers 5

    .line 2202
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, p1, :cond_f

    .line 2204
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v1

    if-ne v1, p2, :cond_f

    return-void

    :cond_f
    if-eqz v0, :cond_39

    .line 2209
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v1

    if-ne v1, p2, :cond_39

    const/4 v1, 0x3

    .line 2211
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result v1

    if-nez v1, :cond_2a

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 2212
    invoke-virtual {v1, v0}, Lcom/android/server/wm/TransitionController;->inTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 2217
    :cond_2a
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowToken;->linkFixedRotationTransform(Lcom/android/server/wm/WindowToken;)V

    .line 2218
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationTransitionListener:Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;

    invoke-static {v0}, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->-$$Nest$fgetmAnimatingRecents(Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eq p1, v0, :cond_38

    .line 2222
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingAppUnchecked(Lcom/android/server/wm/ActivityRecord;I)V

    :cond_38
    return-void

    .line 2227
    :cond_39
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->hasFixedRotationTransform()Z

    move-result v1

    if-nez v1, :cond_42

    .line 2228
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->startFixedRotationTransform(Lcom/android/server/wm/WindowToken;I)V

    .line 2230
    :cond_42
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingAppUnchecked(Lcom/android/server/wm/ActivityRecord;I)V

    if-eqz v0, :cond_4a

    .line 2232
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->finishFixedRotationTransform()V

    :cond_4a
    return-void
.end method

.method public setFixedRotationLaunchingAppUnchecked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    const/4 v0, -0x1

    .line 2168
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingAppUnchecked(Lcom/android/server/wm/ActivityRecord;I)V

    return-void
.end method

.method public setFixedRotationLaunchingAppUnchecked(Lcom/android/server/wm/ActivityRecord;I)V
    .registers 5

    .line 2172
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_25

    if-eqz p1, :cond_25

    .line 2173
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayNotificationController:Lcom/android/server/wm/DisplayWindowListenerController;

    invoke-virtual {v0, p0, p2}, Lcom/android/server/wm/DisplayWindowListenerController;->dispatchFixedRotationStarted(Lcom/android/server/wm/DisplayContent;I)V

    .line 2176
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationTransitionListener:Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;

    invoke-static {v0}, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->-$$Nest$fgetmAnimatingRecents(Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eq p1, v0, :cond_20

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 2177
    invoke-virtual {v0, p1}, Lcom/android/server/wm/TransitionController;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 v0, 0x0

    goto :goto_21

    :cond_20
    :goto_20
    const/4 v0, 0x1

    .line 2178
    :goto_21
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->startAsyncRotation(Z)Z

    goto :goto_3b

    :cond_25
    if-eqz v0, :cond_3b

    if-nez p1, :cond_3b

    .line 2180
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayNotificationController:Lcom/android/server/wm/DisplayWindowListenerController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayWindowListenerController;->dispatchFixedRotationFinished(Lcom/android/server/wm/DisplayContent;)V

    .line 2182
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->isCollecting(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 2183
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->finishAsyncRotationIfPossible()V

    .line 2189
    :cond_3b
    :goto_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFixedRotationLaunchingAppUnchecked, rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", r="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", caller="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x5

    .line 2190
    invoke-static {p2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "WindowManager"

    .line 2189
    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method

.method public setFocusedApp(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 13

    const/4 v0, 0x0

    if-eqz p1, :cond_57

    .line 4687
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eq v1, p0, :cond_38

    .line 4689
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not on "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " but "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2b

    .line 4690
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_2d

    :cond_2b
    const-string p0, "none"

    :goto_2d
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4693
    :cond_38
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v1, :cond_50

    .line 4695
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    const-string v2, "SpegVirtualDisplay"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    const-string p0, "SPEG"

    const-string p1, "Do not set focus"

    .line 4696
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 4703
    :cond_50
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->onLastFocusedTaskDisplayAreaChanged(Lcom/android/server/wm/TaskDisplayArea;)V

    .line 4705
    :cond_57
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-ne v1, p1, :cond_5c

    return v0

    :cond_5c
    const-string v2, "lost"

    .line 4710
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DisplayContent;->checkFocusMonitoringPolicy(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 4713
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_8f

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    int-to-long v4, v4

    const/4 v6, 0x4

    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, -0x2619b034

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v1, v10, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v10, v2

    const/4 v1, 0x2

    aput-object v7, v10, v1

    invoke-static {v8, v9, v6, v3, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 4715
    :cond_8f
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_98

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    goto :goto_99

    :cond_98
    move-object v1, v3

    :goto_99
    if-eqz p1, :cond_9f

    .line 4716
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 4717
    :cond_9f
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eq v1, v3, :cond_ad

    if-eqz v1, :cond_a8

    .line 4719
    invoke-virtual {v1, v0}, Lcom/android/server/wm/Task;->onAppFocusChanged(Z)V

    :cond_a8
    if-eqz v3, :cond_ad

    .line 4720
    invoke-virtual {v3, v2}, Lcom/android/server/wm/Task;->onAppFocusChanged(Z)V

    .line 4723
    :cond_ad
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InputMonitor;->setFocusedAppLw(Lcom/android/server/wm/ActivityRecord;)V

    .line 4724
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateTouchExcludeRegion()V

    .line 4728
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/WindowManagerPolicyExt;

    .line 4729
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->convertActivityResultToComponentName(Lcom/android/server/wm/ActivityRecord;)Landroid/content/ComponentName;

    move-result-object p1

    .line 4728
    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicyExt;->updateTopActivity(Landroid/content/ComponentName;)V

    .line 4735
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    const-string v0, "gained"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent;->checkFocusMonitoringPolicy(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    return v2
.end method

.method public setForcedDensity(II)V
    .registers 6

    .line 3565
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    :goto_9
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mIsDensityForced:Z

    const/4 v0, -0x2

    if-ne p2, v0, :cond_f

    goto :goto_10

    :cond_f
    move v1, v2

    .line 3567
    :goto_10
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    if-eq v0, p2, :cond_18

    if-eqz v1, :cond_1d

    .line 3568
    :cond_18
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 3569
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    :cond_1d
    if-eqz v1, :cond_20

    return-void

    .line 3576
    :cond_20
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    if-ne p1, v0, :cond_25

    move p1, v2

    .line 3579
    :cond_25
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wm/DisplayWindowSettings;->setForcedDensity(Lcom/android/server/wm/DisplayContent;II)V

    return-void
.end method

.method public setForcedScalingMode(I)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    move p1, v0

    :cond_5
    if-eqz p1, :cond_8

    move v0, v1

    .line 3588
    :cond_8
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    .line 3589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Using display scaling mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    if-eqz v1, :cond_1b

    const-string v1, "off"

    goto :goto_1d

    :cond_1b
    const-string v1, "auto"

    :goto_1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3590
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    .line 3592
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->setForcedScalingMode(Lcom/android/server/wm/DisplayContent;I)V

    return-void
.end method

.method public setForcedSize(II)V
    .registers 9

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 3598
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->setForcedSize(IIZZZ)V

    return-void
.end method

.method public setForcedSize(IIZZZ)V
    .registers 15

    .line 3606
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mMaxUiWidth:I

    if-lez v0, :cond_d

    if-le p1, v0, :cond_d

    int-to-float v1, v0

    int-to-float p1, p1

    div-float/2addr v1, p1

    int-to-float p1, p2

    mul-float/2addr p1, v1

    float-to-int p2, p1

    move p1, v0

    .line 3612
    :cond_d
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p1, :cond_1a

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    if-eq v0, p2, :cond_18

    goto :goto_1a

    :cond_18
    move v0, v2

    goto :goto_1b

    :cond_1a
    :goto_1a
    move v0, v1

    :goto_1b
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mIsSizeForced:Z

    if-eqz v0, :cond_39

    const/16 v0, 0xc8

    .line 3619
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    mul-int/lit8 v3, v3, 0x2

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 3620
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_39
    if-eqz p5, :cond_41

    .line 3624
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mAvoidCompatDisplayInsets:Z

    .line 3626
    :cond_41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Using new display size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3627
    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    iget v7, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalXDpi:F

    iget v8, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalYDpi:F

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(IIIFF)V

    .line 3629
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    if-eqz p5, :cond_77

    .line 3632
    iget-object p5, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p5, p5, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iput-boolean v2, p5, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mAvoidCompatDisplayInsets:Z

    .line 3634
    :cond_77
    iget-boolean p5, p0, Lcom/android/server/wm/DisplayContent;->mIsSizeForced:Z

    if-nez p5, :cond_7f

    if-nez p4, :cond_7f

    move p2, v2

    goto :goto_80

    :cond_7f
    move v2, p1

    :goto_80
    if-eqz p3, :cond_89

    .line 3643
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {p1, p0, v2, p2}, Lcom/android/server/wm/DisplayWindowSettings;->setForcedSize(Lcom/android/server/wm/DisplayContent;II)V

    :cond_89
    return-void
.end method

.method public setForcedSizeDensity(IIIZZI)V
    .registers 15

    .line 8215
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    const/4 v1, 0x0

    if-eq p3, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mIsDensityForced:Z

    .line 8216
    iput p3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 8218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using new display size & density : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "dp saveSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " saveDensity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " forcedHideCutout="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WindowManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8225
    :try_start_4b
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 8228
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->requestToUseBlackScreenshotIfNeeded(II)V

    .line 8231
    iput p6, p0, Lcom/android/server/wm/DisplayContent;->mForcedHideCutout:I

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p4

    .line 8233
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/DisplayContent;->setForcedSize(IIZZZ)V
    :try_end_60
    .catchall {:try_start_4b .. :try_end_60} :catchall_74

    .line 8237
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->clearToUseBlackScreenshot()V

    .line 8239
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    if-eqz p5, :cond_73

    .line 8243
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {p1, p0, p3, v1}, Lcom/android/server/wm/DisplayWindowSettings;->setForcedDensity(Lcom/android/server/wm/DisplayContent;II)V

    :cond_73
    return-void

    :catchall_74
    move-exception p1

    .line 8237
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->clearToUseBlackScreenshot()V

    .line 8239
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 8240
    throw p1
.end method

.method public setIgnoreOrientationRequest(Z)Z
    .registers 4

    .line 7640
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayArea;->mSetIgnoreOrientationRequest:Z

    if-ne v0, p1, :cond_6

    const/4 p0, 0x0

    return p0

    .line 7641
    :cond_6
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->setIgnoreOrientationRequest(Z)Z

    move-result p1

    .line 7642
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayArea;->mSetIgnoreOrientationRequest:Z

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/DisplayWindowSettings;->setIgnoreOrientationRequest(Lcom/android/server/wm/DisplayContent;Z)V

    return p1
.end method

.method public setImeControlTarget(Lcom/android/server/wm/InsetsControlTarget;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5162
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-void
.end method

.method public setImeInputTarget(Lcom/android/server/wm/InputTarget;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5145
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    .line 5146
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->refreshImeSecureFlag(Landroid/view/SurfaceControl$Transaction;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 5147
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    :cond_11
    return-void
.end method

.method public setImeLayeringTarget(Lcom/android/server/wm/WindowState;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5078
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    return-void
.end method

.method public final setImeLayeringTargetInner(Lcom/android/server/wm/WindowState;)V
    .registers 9

    .line 5094
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_b

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mLastImeInputTarget:Lcom/android/server/wm/InputTarget;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    if-ne v1, v2, :cond_b

    return-void

    .line 5097
    :cond_b
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mLastImeInputTarget:Lcom/android/server/wm/InputTarget;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_37

    if-ne v0, v1, :cond_37

    .line 5103
    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v1, :cond_29

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v2, :cond_29

    const/16 v1, 0x10

    .line 5105
    invoke-virtual {v0, v3, v1}, Lcom/android/server/wm/WindowState;->isSelfAnimating(II)Z

    move-result v0

    if-eqz v0, :cond_29

    move v0, v2

    goto :goto_2a

    :cond_29
    move v0, v3

    .line 5106
    :goto_2a
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->inTransitionSelfOrParent()Z

    move-result v1

    if-nez v1, :cond_34

    if-eqz v0, :cond_37

    .line 5107
    :cond_34
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->showImeScreenshot()V

    .line 5111
    :cond_37
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_IME_enabled:Z

    if-eqz v0, :cond_4c

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x7e4f3d90

    const/4 v5, 0x0

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v0, v6, v3

    invoke-static {v1, v4, v3, v5, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5112
    :cond_4c
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_52

    move v0, v2

    goto :goto_53

    :cond_52
    move v0, v3

    .line 5113
    :goto_53
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    if-eqz p1, :cond_79

    .line 5118
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayArea;->isOrganized()Z

    move-result v1

    if-nez v1, :cond_79

    .line 5119
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    move-result-object p1

    if-eqz p1, :cond_79

    .line 5120
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    move-result-object v1

    if-eq p1, v1, :cond_79

    .line 5123
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/RootDisplayArea;->placeImeContainer(Lcom/android/server/wm/DisplayArea$Tokens;)V

    .line 5126
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz p1, :cond_79

    .line 5127
    invoke-virtual {p1, v3, v3}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    .line 5133
    :cond_79
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 5135
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 5136
    invoke-virtual {p1}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v1

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->getSourceOrDefaultVisibility(I)Z

    move-result v1

    .line 5135
    invoke-virtual {p1, v1}, Lcom/android/server/wm/InsetsStateController;->updateAboveInsetsState(Z)V

    .line 5140
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->updateImeControlTarget(Z)V

    return-void
.end method

.method public setInputMethodWindowLocked(Lcom/android/server/wm/WindowState;)V
    .registers 5

    .line 4851
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz p1, :cond_f

    .line 4854
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    .line 4855
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->onImeWindowSetOnDisplayArea(ILcom/android/server/wm/DisplayArea;)V

    .line 4857
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 4858
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getImeSourceFrameProvider()Lcom/android/internal/util/function/TriConsumer;

    move-result-object v1

    const/4 v2, 0x0

    .line 4857
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/InsetsSourceProvider;->setWindowContainer(Lcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/TriConsumer;)V

    const/4 p1, 0x1

    .line 4859
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 4860
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateImeControlTarget()V

    return-void
.end method

.method public setInsetProvider(ILcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriConsumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/wm/WindowContainer;",
            "Lcom/android/internal/util/function/TriConsumer<",
            "Lcom/android/server/wm/DisplayFrames;",
            "Lcom/android/server/wm/WindowContainer;",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1715
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/TriConsumer;)V

    return-void
.end method

.method public setInsetProvider(ILcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/TriConsumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/wm/WindowContainer;",
            "Lcom/android/internal/util/function/TriConsumer<",
            "Lcom/android/server/wm/DisplayFrames;",
            "Lcom/android/server/wm/WindowContainer;",
            "Landroid/graphics/Rect;",
            ">;",
            "Lcom/android/internal/util/function/TriConsumer<",
            "Lcom/android/server/wm/DisplayFrames;",
            "Lcom/android/server/wm/WindowContainer;",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 1731
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    move-result-object p0

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/wm/InsetsSourceProvider;->setWindowContainer(Lcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/TriConsumer;)V

    return-void
.end method

.method public setIsSleeping(Z)V
    .registers 2

    .line 7546
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mSleeping:Z

    return-void
.end method

.method public setLastHasContent()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    .line 6454
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    return-void
.end method

.method public setLayoutNeeded()V
    .registers 3

    .line 5462
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLayoutNeeded: callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 v0, 0x1

    .line 5463
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutNeeded:Z

    return-void
.end method

.method public setMaxUiWidth(I)V
    .registers 10

    .line 3502
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DISPLAY:Z

    if-eqz v0, :cond_26

    .line 3503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting max ui width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " on display:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3506
    :cond_26
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mMaxUiWidth:I

    .line 3509
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalXDpi:F

    iget v7, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalYDpi:F

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(IIIFF)V

    return-void
.end method

.method public setRemoteInsetsController(Landroid/view/IDisplayWindowInsetsController;)V
    .registers 5

    .line 1631
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 1632
    invoke-static {v0}, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->-$$Nest$fgetmRemoteInsetsController(Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;)Landroid/view/IDisplayWindowInsetsController;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IDisplayWindowInsetsController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsDeath:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    .line 1634
    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    :cond_15
    if-eqz p1, :cond_28

    .line 1638
    :try_start_17
    invoke-interface {p1}, Landroid/view/IDisplayWindowInsetsController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsDeath:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1639
    new-instance v0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;-><init>(Lcom/android/server/wm/DisplayContent;Landroid/view/IDisplayWindowInsetsController;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_27} :catch_28

    nop

    :catch_28
    :cond_28
    return-void
.end method

.method public setRotationAnimation(Lcom/android/server/wm/ScreenRotationAnimation;)V
    .registers 3

    .line 4117
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v0, :cond_7

    .line 4118
    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 4120
    :cond_7
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz p1, :cond_14

    .line 4124
    invoke-virtual {p1}, Lcom/android/server/wm/ScreenRotationAnimation;->hasScreenshot()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 4125
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->startAsyncRotationIfNeeded()V

    :cond_14
    return-void
.end method

.method public setSandboxDisplayApis(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 7716
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mSandboxDisplayApis:Z

    return-void
.end method

.method public setWindowingMode(I)V
    .registers 4

    .line 3229
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideWindowingMode()I

    move-result v0

    if-ne p1, v0, :cond_7

    return-void

    .line 3236
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 3237
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p1}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 3238
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p1}, Landroid/app/WindowConfiguration;->setDisplayWindowingMode(I)V

    .line 3239
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final shouldApplyInputDeviceToDisplay(I)Z
    .registers 4

    .line 8085
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isAppCastingDisplay()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 8086
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/input/InputManagerService;->canDispatchToDisplay(II)Z

    move-result p0

    return p0

    :cond_10
    return v1
.end method

.method public final shouldBeRelativeLayer(Lcom/android/server/wm/WindowState;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_33

    .line 8548
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_33

    .line 8554
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1c

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDimmer()Lcom/android/server/wm/Dimmer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/Dimmer;->isDimming()Z

    move-result p1

    if-eqz p1, :cond_1c

    return v2

    .line 8557
    :cond_1c
    iget-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz p1, :cond_33

    .line 8558
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-eqz p0, :cond_33

    .line 8560
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isAppCastingDisplay()Z

    move-result p1

    if-eqz p1, :cond_33

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    if-eqz p0, :cond_33

    return v2

    :cond_33
    :goto_33
    return v0
.end method

.method public final shouldDeferRemoval()Z
    .registers 2

    const/4 v0, 0x3

    .line 3996
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 3999
    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->isTransitionOnDisplay(Lcom/android/server/wm/DisplayContent;)Z

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

.method public shouldDestroyContentOnRemove()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 7496
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Landroid/view/Display;->getRemoveMode()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public shouldImeAttachedToApp()Z
    .registers 5

    .line 4950
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayArea;->isOrganized()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 4956
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    const/4 v2, 0x1

    if-nez v0, :cond_11

    move v0, v2

    goto :goto_12

    :cond_11
    move v0, v1

    :goto_12
    if-eqz v0, :cond_3d

    .line 4958
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isImeControlledByApp()Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_3d

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_3d

    .line 4961
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    if-ne v0, v2, :cond_3d

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    .line 4964
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->matchesDisplayAreaBounds()Z

    move-result v0

    if-eqz v0, :cond_3d

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_ACTIVITY:Z

    if-eqz v0, :cond_3c

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    .line 4966
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isInSplitActivityMode()Z

    move-result p0

    if-nez p0, :cond_3d

    :cond_3c
    move v1, v2

    :cond_3d
    return v1
.end method

.method public shouldPrepareNormalRotation(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .registers 3

    .line 1950
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->hasTopFixedRotationLaunchingApp()Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    const/4 p0, 0x1

    return p0
.end method

.method public shouldSleep()Z
    .registers 2

    .line 7500
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRootTaskCount()I

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    :cond_e
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    if-nez p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public shouldSyncRotationChange(Lcom/android/server/wm/WindowState;)Z
    .registers 2

    .line 2370
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAsyncRotationController:Lcom/android/server/wm/AsyncRotationController;

    if-eqz p0, :cond_d

    .line 2371
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AsyncRotationController;->isAsync(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    if-nez p0, :cond_b

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

.method public shouldWaitForSystemDecorWindowsOnBoot()Z
    .registers 15

    .line 5539
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v1, 0x0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->supportsSystemDecorations()Z

    move-result v0

    if-nez v0, :cond_c

    return v1

    .line 5546
    :cond_c
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    const/16 v2, 0x7f8

    const/4 v3, 0x1

    .line 5549
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5551
    new-instance v4, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda52;

    invoke-direct {v4, p0, v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda52;-><init>(Lcom/android/server/wm/DisplayContent;Landroid/util/SparseBooleanArray;)V

    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-eqz v4, :cond_23

    return v3

    .line 5583
    :cond_23
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x111014b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_4d

    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 5585
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11100fe

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_4d

    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mOnlyCore:Z

    if-nez v4, :cond_4d

    move v4, v3

    goto :goto_4e

    :cond_4d
    move v4, v1

    :goto_4e
    const/16 v5, 0x7e5

    .line 5589
    invoke-virtual {v0, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    .line 5590
    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    const/16 v7, 0x7dd

    .line 5591
    invoke-virtual {v0, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    .line 5592
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 5594
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_SCREEN_ON_enabled:Z

    if-eqz v2, :cond_a9

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v8, v2, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SCREEN_ON:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, -0x25da961d

    const/16 v11, 0x3fff

    const/4 v12, 0x0

    const/4 v13, 0x7

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v13, v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v13, v3

    const/4 v2, 0x2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v13, v2

    const/4 v2, 0x3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v13, v2

    const/4 v2, 0x4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v13, v2

    const/4 v2, 0x5

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v13, v2

    const/4 v2, 0x6

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v13, v2

    invoke-static {v9, v10, v11, v12, v13}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5602
    :cond_a9
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean p0, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-nez p0, :cond_b2

    if-nez v5, :cond_b2

    return v3

    :cond_b2
    if-eqz p0, :cond_bd

    if-nez v6, :cond_b8

    if-eqz v0, :cond_bc

    :cond_b8
    if-eqz v4, :cond_bd

    if-nez v7, :cond_bd

    :cond_bc
    return v3

    :cond_bd
    return v1
.end method

.method public showImeScreenshot()V
    .registers 1

    .line 5299
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->attachAndShowImeScreenshotOnTarget()V

    return-void
.end method

.method public skipImeWindowsDuringTraversal()Z
    .registers 2

    .line 8569
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    if-eqz v0, :cond_c

    .line 8570
    invoke-static {p0}, Lcom/android/server/wm/DisplayContent$ImeContainer;->-$$Nest$smskipImeWindowsDuringTraversal(Lcom/android/server/wm/DisplayContent;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public startAsyncRotation(Z)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    .line 2332
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda41;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda41;-><init>(Lcom/android/server/wm/DisplayContent;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v0

    .line 2343
    :cond_12
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mAsyncRotationController:Lcom/android/server/wm/AsyncRotationController;

    if-nez p1, :cond_22

    .line 2344
    new-instance p1, Lcom/android/server/wm/AsyncRotationController;

    invoke-direct {p1, p0}, Lcom/android/server/wm/AsyncRotationController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mAsyncRotationController:Lcom/android/server/wm/AsyncRotationController;

    .line 2345
    invoke-virtual {p1}, Lcom/android/server/wm/AsyncRotationController;->start()V

    const/4 p0, 0x1

    return p0

    :cond_22
    return v0
.end method

.method public final startAsyncRotationIfNeeded()V
    .registers 2

    .line 2319
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isRotationChanging()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 2320
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->startAsyncRotation(Z)Z

    :cond_a
    return-void
.end method

.method public startFixedRotationTransform(Lcom/android/server/wm/WindowToken;I)V
    .registers 12

    .line 2282
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->unset()V

    .line 2283
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    .line 2285
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isConfigurationNeededInUdcCutout()Z

    move-result v1

    .line 2283
    invoke-virtual {p0, v0, p2, v1}, Lcom/android/server/wm/DisplayContent;->computeScreenConfiguration(Landroid/content/res/Configuration;IZ)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 2289
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isLayoutNeededInUdcCutout()Z

    move-result v1

    .line 2287
    invoke-virtual {p0, p2, v1}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(IZ)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v6

    .line 2291
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->calculateRoundedCornersForRotation(I)Landroid/view/RoundedCorners;

    move-result-object v7

    .line 2293
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->calculatePrivacyIndicatorBoundsForRotation(I)Landroid/view/PrivacyIndicatorBounds;

    move-result-object v8

    .line 2294
    new-instance p2, Lcom/android/server/wm/DisplayFrames;

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    new-instance v4, Landroid/view/InsetsState;

    invoke-direct {v4}, Landroid/view/InsetsState;-><init>()V

    move-object v2, p2

    move-object v5, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/DisplayFrames;-><init>(ILandroid/view/InsetsState;Landroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;)V

    .line 2296
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0, p2, p0}, Lcom/android/server/wm/WindowToken;->applyFixedRotationTransform(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayFrames;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public startKeyguardExitOnNonAppWindows(ZZZ)V
    .registers 8

    .line 5523
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 5524
    new-instance v1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/policy/WindowManagerPolicy;ZZZ)V

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 5531
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mShellRoots:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_14
    if-ltz v1, :cond_28

    .line 5532
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mShellRoots:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ShellRoot;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/policy/WindowManagerPolicy;->createHiddenByKeyguardExit(ZZZ)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ShellRoot;->startAnimation(Landroid/view/animation/Animation;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    :cond_28
    return-void
.end method

.method public supportMultiDisplayFreeze()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public supportsSystemDecorations()Z
    .registers 3

    .line 6591
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayWindowSettings;->shouldShowSystemDecorsLocked(Lcom/android/server/wm/DisplayContent;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 6592
    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_1a

    .line 6593
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->forceDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_1a
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mVr2dDisplayId:I

    if-eq v0, v1, :cond_2a

    .line 6597
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isTrusted()Z

    move-result p0

    if-eqz p0, :cond_2a

    const/4 p0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p0, 0x0

    :goto_2b
    return p0
.end method

.method public switchUser(I)V
    .registers 3

    .line 3990
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->switchUser(I)V

    .line 3991
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 3992
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->switchUser()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 4453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display{#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->state:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget p0, p0, Landroid/view/DisplayInfo;->rotation:I

    .line 4455
    invoke-static {p0}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public topRunningActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    const/4 v0, 0x0

    .line 7052
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;
    .registers 3

    .line 7066
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda57;

    invoke-direct {v0, p1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda57;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityRecord;

    return-object p0
.end method

.method public transferAppTransitionFrom(Lcom/android/server/wm/DisplayContent;)V
    .registers 3

    .line 6473
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppTransition;->transferFrom(Lcom/android/server/wm/AppTransition;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 6474
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->okToAnimate()Z

    move-result p1

    if-eqz p1, :cond_13

    const/4 p1, 0x0

    .line 6475
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mSkipAppTransitionAnimation:Z

    :cond_13
    return-void
.end method

.method public unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V
    .registers 2

    .line 6462
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/PointerEventDispatcher;->unregisterInputEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    return-void
.end method

.method public unregisterSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;)V
    .registers 2

    .line 6876
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public updateAccessibilityOnWindowFocusChanged(Lcom/android/server/wm/AccessibilityController;)V
    .registers 2

    .line 4676
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/wm/AccessibilityController;->onWindowFocusChangedNot(I)V

    return-void
.end method

.method public updateBaseDisplayCutout(II)V
    .registers 14

    .line 8258
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

    if-eqz v0, :cond_9

    .line 8259
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/wm/UdcCutoutPolicy;->updateUdcCutout(Landroid/view/DisplayInfo;II)V

    .line 8261
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v0, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-nez v0, :cond_13

    const/4 p1, 0x0

    .line 8262
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayCutout:Landroid/view/DisplayCutout;

    return-void

    .line 8267
    :cond_13
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 8268
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 8269
    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 8268
    invoke-static {v1, p1, v2}, Landroid/view/DisplayCutout;->getProportionalDensity(III)I

    move-result v9

    .line 8278
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v4, v0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    const/4 v10, 0x0

    move v5, p1

    move v6, p2

    move v7, p1

    move v8, p2

    .line 8277
    invoke-static/range {v3 .. v10}, Landroid/view/DisplayCutout;->fromResourcesRectApproximation(Landroid/content/res/Resources;Ljava/lang/String;IIIIIZ)Landroid/view/DisplayCutout;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayCutout:Landroid/view/DisplayCutout;

    return-void
.end method

.method public updateBaseDisplayMetrics(IIIFF)V
    .registers 6

    .line 3516
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 3517
    iput p2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 3518
    iput p3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 3519
    iput p4, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalXDpi:F

    .line 3520
    iput p5, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalYDpi:F

    .line 3521
    iget-boolean p3, p0, Lcom/android/server/wm/DisplayContent;->mIsSizeForced:Z

    if-eqz p3, :cond_1a

    .line 3522
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->loadDisplayCutout(II)Landroid/view/DisplayCutout;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayCutout:Landroid/view/DisplayCutout;

    .line 3523
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->loadRoundedCorners(II)Landroid/view/RoundedCorners;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseRoundedCorners:Landroid/view/RoundedCorners;

    .line 3526
    :cond_1a
    iget p1, p0, Lcom/android/server/wm/DisplayContent;->mMaxUiWidth:I

    if-lez p1, :cond_76

    iget p2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    if-le p2, p1, :cond_76

    int-to-float p3, p1

    int-to-float p2, p2

    div-float/2addr p3, p2

    .line 3528
    iget p2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    int-to-float p2, p2

    mul-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 3529
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 3530
    iget p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalXDpi:F

    mul-float/2addr p1, p3

    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalXDpi:F

    .line 3531
    iget p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalYDpi:F

    mul-float/2addr p1, p3

    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalYDpi:F

    .line 3532
    iget-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mIsDensityForced:Z

    if-nez p1, :cond_43

    .line 3535
    iget p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    int-to-float p1, p1

    mul-float/2addr p1, p3

    float-to-int p1, p1

    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 3538
    :cond_43
    sget-boolean p1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DISPLAY:Z

    if-eqz p1, :cond_76

    .line 3539
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Applying config restraints:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " on display:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3540
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WindowManager"

    .line 3539
    invoke-static {p2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3545
    :cond_76
    iget p1, p0, Lcom/android/server/wm/DisplayContent;->mForcedHideCutout:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_87

    const/4 p2, 0x2

    if-ne p1, p2, :cond_7f

    goto :goto_87

    .line 3550
    :cond_7f
    iget p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget p2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayCutout(II)V

    goto :goto_8a

    :cond_87
    :goto_87
    const/4 p1, 0x0

    .line 3548
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayCutout:Landroid/view/DisplayCutout;

    :goto_8a
    return-void
.end method

.method public final updateBaseDisplayMetricsIfNeeded()V
    .registers 18

    move-object/from16 v6, p0

    .line 3418
    iget-object v0, v6, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v1, v6, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v2, v6, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManagerInternal;->getNonOverrideDisplayInfo(ILandroid/view/DisplayInfo;)V

    .line 3421
    iget-object v0, v6, Lcom/android/server/wm/DisplayContent;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v6, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 3424
    iget-object v0, v6, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v0, Landroid/view/DisplayInfo;->rotation:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_22

    const/4 v4, 0x3

    if-ne v1, v4, :cond_20

    goto :goto_22

    :cond_20
    move v1, v2

    goto :goto_23

    :cond_22
    :goto_22
    move v1, v3

    :goto_23
    if-eqz v1, :cond_28

    .line 3426
    iget v4, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    goto :goto_2a

    :cond_28
    iget v4, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    :goto_2a
    move v13, v4

    if-eqz v1, :cond_30

    .line 3427
    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    goto :goto_32

    :cond_30
    iget v1, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    :goto_32
    move v14, v1

    .line 3428
    iget v15, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 3429
    iget v5, v0, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 3430
    iget v4, v0, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 3431
    iget-boolean v1, v6, Lcom/android/server/wm/DisplayContent;->mIgnoreDisplayCutout:Z

    if-eqz v1, :cond_40

    .line 3432
    sget-object v1, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    goto :goto_42

    :cond_40
    iget-object v1, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 3433
    :goto_42
    iget-object v12, v0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 3434
    iget-object v0, v0, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    .line 3436
    iget v7, v6, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    if-ne v7, v13, :cond_71

    iget v7, v6, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    if-ne v7, v14, :cond_71

    iget v7, v6, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    if-ne v7, v15, :cond_71

    iget v7, v6, Lcom/android/server/wm/DisplayContent;->mInitialPhysicalXDpi:F

    cmpl-float v7, v7, v5

    if-nez v7, :cond_71

    iget v7, v6, Lcom/android/server/wm/DisplayContent;->mInitialPhysicalYDpi:F

    cmpl-float v7, v7, v4

    if-nez v7, :cond_71

    iget-object v7, v6, Lcom/android/server/wm/DisplayContent;->mInitialDisplayCutout:Landroid/view/DisplayCutout;

    .line 3441
    invoke-static {v7, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_71

    iget-object v7, v6, Lcom/android/server/wm/DisplayContent;->mInitialRoundedCorners:Landroid/view/RoundedCorners;

    .line 3442
    invoke-static {v7, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6f

    goto :goto_71

    :cond_6f
    move v7, v2

    goto :goto_72

    :cond_71
    :goto_71
    move v7, v3

    .line 3443
    :goto_72
    iget-object v8, v6, Lcom/android/server/wm/DisplayContent;->mCurrentUniqueDisplayId:Ljava/lang/String;

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/lit8 v16, v8, 0x1

    if-nez v7, :cond_7e

    if-eqz v16, :cond_f1

    :cond_7e
    if-eqz v16, :cond_96

    .line 3454
    iget-object v3, v6, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v3, v6, v2}, Lcom/android/server/wm/DisplayWindowSettings;->applySettingsToDisplayLocked(Lcom/android/server/wm/DisplayContent;Z)V

    .line 3456
    iget-object v7, v6, Lcom/android/server/wm/DisplayContent;->mDisplaySwitchTransitionLauncher:Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;

    iget v8, v6, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget v9, v6, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v10, v6, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    move v11, v13

    move-object v3, v12

    move v12, v14

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->requestDisplaySwitchTransitionIfNeeded(IIIII)V

    goto :goto_97

    :cond_96
    move-object v3, v12

    .line 3467
    :goto_97
    iget-boolean v2, v6, Lcom/android/server/wm/DisplayContent;->mIsSizeForced:Z

    if-eqz v2, :cond_9e

    iget v7, v6, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_9f

    :cond_9e
    move v7, v13

    :goto_9f
    if-eqz v2, :cond_a4

    .line 3468
    iget v8, v6, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_a5

    :cond_a4
    move v8, v14

    .line 3469
    :goto_a5
    iget-boolean v9, v6, Lcom/android/server/wm/DisplayContent;->mIsDensityForced:Z

    if-eqz v9, :cond_ac

    iget v9, v6, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    goto :goto_ad

    :cond_ac
    move v9, v15

    :goto_ad
    if-eqz v2, :cond_b2

    .line 3470
    iget v10, v6, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalXDpi:F

    goto :goto_b3

    :cond_b2
    move v10, v5

    :goto_b3
    if-eqz v2, :cond_ba

    .line 3471
    iget v2, v6, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalYDpi:F

    move-object v12, v0

    move v11, v2

    goto :goto_bc

    :cond_ba
    move-object v12, v0

    move v11, v4

    :goto_bc
    move-object/from16 v0, p0

    move-object v2, v1

    move v1, v7

    move-object v7, v2

    move v2, v8

    move-object v8, v3

    move v3, v9

    move v9, v4

    move v4, v10

    move v10, v5

    move v5, v11

    .line 3467
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(IIIFF)V

    .line 3474
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->configureDisplayPolicy()V

    if-eqz v16, :cond_d7

    .line 3480
    iget-object v0, v6, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v0, v6}, Lcom/android/server/wm/DisplayWindowSettings;->applyRotationSettingsToDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 3484
    :cond_d7
    iput v13, v6, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    .line 3485
    iput v14, v6, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 3486
    iput v15, v6, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    .line 3487
    iput v10, v6, Lcom/android/server/wm/DisplayContent;->mInitialPhysicalXDpi:F

    .line 3488
    iput v9, v6, Lcom/android/server/wm/DisplayContent;->mInitialPhysicalYDpi:F

    .line 3489
    iput-object v7, v6, Lcom/android/server/wm/DisplayContent;->mInitialDisplayCutout:Landroid/view/DisplayCutout;

    .line 3490
    iput-object v12, v6, Lcom/android/server/wm/DisplayContent;->mInitialRoundedCorners:Landroid/view/RoundedCorners;

    .line 3491
    iput-object v8, v6, Lcom/android/server/wm/DisplayContent;->mCurrentUniqueDisplayId:Ljava/lang/String;

    .line 3492
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    if-eqz v16, :cond_f1

    .line 3495
    iget-object v0, v6, Lcom/android/server/wm/DisplayContent;->mDisplaySwitchTransitionLauncher:Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;

    invoke-virtual {v0}, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->onDisplayUpdated()V

    :cond_f1
    return-void
.end method

.method public final updateDisplayAndOrientation(ILandroid/content/res/Configuration;)Landroid/view/DisplayInfo;
    .registers 19

    move-object/from16 v8, p0

    .line 2504
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v6

    const/4 v0, 0x1

    if-eq v6, v0, :cond_e

    const/4 v1, 0x3

    if-ne v6, v1, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :cond_e
    :goto_e
    move v7, v0

    if-eqz v7, :cond_14

    .line 2506
    iget v0, v8, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_16

    :cond_14
    iget v0, v8, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    :goto_16
    move v9, v0

    if-eqz v7, :cond_1c

    .line 2507
    iget v0, v8, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_1e

    :cond_1c
    iget v0, v8, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    :goto_1e
    move v10, v0

    .line 2510
    invoke-virtual {v8, v6}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v0

    .line 2511
    invoke-virtual {v0}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v11

    .line 2512
    invoke-virtual {v8, v6}, Lcom/android/server/wm/DisplayContent;->calculateRoundedCornersForRotation(I)Landroid/view/RoundedCorners;

    move-result-object v12

    .line 2514
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    move v1, v9

    move v2, v10

    move v3, v6

    move/from16 v4, p1

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result v0

    .line 2516
    iget-object v1, v8, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1, v10, v6, v11}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayHeight(IILandroid/view/DisplayCutout;)I

    move-result v1

    .line 2518
    iget-object v2, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iput v6, v2, Landroid/view/DisplayInfo;->rotation:I

    .line 2519
    iput v9, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 2520
    iput v10, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 2521
    iget v3, v8, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    iput v3, v2, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 2522
    iget v3, v8, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalXDpi:F

    iput v3, v2, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 2523
    iget v4, v8, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalYDpi:F

    iput v4, v2, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 2527
    iget-object v2, v8, Lcom/android/server/wm/DisplayContent;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v7, :cond_58

    .line 2528
    iget v5, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    goto :goto_5a

    :cond_58
    iget v5, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    :goto_5a
    int-to-float v5, v5

    if-eqz v7, :cond_60

    .line 2529
    iget v6, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    goto :goto_62

    :cond_60
    iget v6, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    :goto_62
    int-to-float v6, v6

    int-to-float v13, v9

    div-float/2addr v13, v5

    int-to-float v5, v10

    div-float/2addr v5, v6

    .line 2548
    iget v6, v2, Landroid/view/DisplayInfo;->physicalXDpi:F

    mul-float/2addr v6, v13

    .line 2549
    iget v14, v2, Landroid/view/DisplayInfo;->physicalYDpi:F

    mul-float/2addr v14, v5

    cmpl-float v3, v3, v6

    if-nez v3, :cond_75

    cmpl-float v3, v4, v14

    if-eqz v3, :cond_f7

    .line 2552
    :cond_75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateDisplayAndOrientation: Change "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->physicalXDpi:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v15, v15, Landroid/view/DisplayInfo;->physicalYDpi:F

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v15, "dpi to "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v15, "dpi, BaseDpi="

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v2, Landroid/view/DisplayInfo;->physicalXDpi:F

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Landroid/view/DisplayInfo;->physicalYDpi:F

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", DisplayRatio="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    cmpl-float v2, v13, v13

    if-nez v2, :cond_ce

    cmpl-float v2, v5, v5

    if-eqz v2, :cond_cb

    goto :goto_ce

    :cond_cb
    const-string v2, ""

    goto :goto_e5

    .line 2558
    :cond_ce
    :goto_ce
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ", adjustedRatio="

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_e5
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManager"

    .line 2552
    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    iget-object v2, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iput v6, v2, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 2560
    iput v14, v2, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 2564
    :cond_f7
    iget-object v2, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iput v0, v2, Landroid/view/DisplayInfo;->appWidth:I

    .line 2565
    iput v1, v2, Landroid/view/DisplayInfo;->appHeight:I

    .line 2566
    iget-boolean v0, v8, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_109

    .line 2567
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mRealDisplayMetrics:Landroid/util/DisplayMetrics;

    sget-object v3, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v2, v0, v3, v1}, Landroid/view/DisplayInfo;->getLogicalMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V

    .line 2570
    :cond_109
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v11}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_112

    move-object v11, v1

    :cond_112
    iput-object v11, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 2571
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iput-object v12, v0, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    .line 2572
    iget-object v1, v8, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;)V

    .line 2573
    iget-boolean v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    if-eqz v0, :cond_12b

    .line 2574
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v0, Landroid/view/DisplayInfo;->flags:I

    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/DisplayInfo;->flags:I

    goto :goto_135

    .line 2576
    :cond_12b
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v0, Landroid/view/DisplayInfo;->flags:I

    const v2, -0x40000001    # -1.9999999f

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/DisplayInfo;->flags:I

    .line 2579
    :goto_135
    iget-object v1, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    move-object/from16 v0, p0

    move v2, v7

    move/from16 v3, p1

    move v4, v9

    move v5, v10

    move-object/from16 v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/DisplayContent;->computeSizeRangesAndScreenLayout(Landroid/view/DisplayInfo;ZIIIFLandroid/content/res/Configuration;)V

    .line 2582
    iget-object v0, v8, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v1, v8, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v2, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayInfoOverrideFromWindowManager(ILandroid/view/DisplayInfo;)V

    .line 2585
    iget-boolean v0, v8, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_160

    .line 2586
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v1, v8, Lcom/android/server/wm/DisplayContent;->mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, v8, Lcom/android/server/wm/DisplayContent;->mCompatibleScreenScale:F

    .line 2590
    :cond_160
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->onDisplayInfoChanged()V

    .line 2592
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method public updateDisplayAreaOrganizers()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3687
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isTrusted()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 3691
    :cond_7
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayArea;->forAllDisplayAreas(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final updateDisplayFrames(ZZ)V
    .registers 8

    .line 3346
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v1, Landroid/view/DisplayInfo;->rotation:I

    .line 3347
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->rotation:I

    .line 3348
    invoke-virtual {p0, v3}, Lcom/android/server/wm/DisplayContent;->calculateRoundedCornersForRotation(I)Landroid/view/RoundedCorners;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->rotation:I

    .line 3349
    invoke-virtual {p0, v4}, Lcom/android/server/wm/DisplayContent;->calculatePrivacyIndicatorBoundsForRotation(I)Landroid/view/PrivacyIndicatorBounds;

    move-result-object v4

    .line 3346
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/DisplayFrames;->update(Landroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;)Z

    move-result v0

    if-eqz v0, :cond_35

    if-eqz p1, :cond_29

    .line 3351
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayPolicy;->updateInsetsSourceFramesExceptIme(Lcom/android/server/wm/DisplayFrames;)V

    .line 3353
    :cond_29
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/InsetsStateController;->onDisplayFramesUpdated(Z)V

    .line 3355
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_35

    .line 3358
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    :cond_35
    return-void
.end method

.method public updateDisplayInfo()V
    .registers 3

    .line 3320
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetricsIfNeeded()V

    .line 3322
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 3323
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3325
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->onDisplayInfoChanged()V

    .line 3326
    invoke-virtual {p0, p0}, Lcom/android/server/wm/DisplayContent;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method public updateDisplayOverrideConfigurationLocked()Z
    .registers 6

    .line 7073
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 7074
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 7076
    invoke-virtual {v0}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimationForDisplayChange()V

    .line 7079
    :cond_b
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 7080
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->computeScreenConfiguration(Landroid/content/res/Configuration;)V

    .line 7082
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v1, :cond_31

    .line 7083
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowContextListenerController:Lcom/android/server/wm/WindowContextListenerController;

    .line 7084
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayUiContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getWindowContextToken()Landroid/os/IBinder;

    move-result-object v2

    .line 7083
    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/WindowContextListenerController;->dispatchPreUpdatedConfigurationIfNeeded(Landroid/content/res/Configuration;Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 7085
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->onConfigurationChanged()V

    .line 7086
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->computeScreenConfiguration(Landroid/content/res/Configuration;)V

    .line 7093
    :cond_31
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v2, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda20;

    invoke-direct {v2}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda20;-><init>()V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 7095
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 7093
    invoke-static {v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 7104
    invoke-static {v0}, Landroid/provider/Settings$System;->clearConfiguration(Landroid/content/res/Configuration;)V

    const/4 v1, 0x0

    .line 7106
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTmpUpdateConfigurationResult:Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/android/server/wm/DisplayContent;->updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;)Z

    .line 7108
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTmpUpdateConfigurationResult:Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    iget p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;->changes:I

    if-eqz p0, :cond_60

    const/4 v3, 0x1

    :cond_60
    return v3
.end method

.method public updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;)Z
    .registers 8

    .line 7122
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    const/4 v0, 0x0

    if-eqz p1, :cond_1c

    .line 7125
    :try_start_8
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v1, :cond_15

    .line 7129
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/16 v2, -0x2710

    invoke-virtual {v1, p1, v0, v0, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->updateGlobalConfigurationLocked(Landroid/content/res/Configuration;ZZI)I

    move-result v0

    goto :goto_1c

    .line 7133
    :cond_15
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->performDisplayOverrideConfigUpdate(Landroid/content/res/Configuration;)I

    move-result v0

    goto :goto_1c

    :catchall_1a
    move-exception p1

    goto :goto_30

    :cond_1c
    :goto_1c
    if-nez p3, :cond_36

    .line 7139
    iget-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz p1, :cond_29

    .line 7142
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/server/wm/ActivityTaskManagerService;->ensureConfigAndVisibilityAfterUpdate(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/DisplayContent;)Z

    move-result p1

    goto :goto_37

    .line 7145
    :cond_29
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1, p2, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->ensureConfigAndVisibilityAfterUpdate(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result p1
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_1a

    goto :goto_37

    .line 7149
    :goto_30
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 7150
    throw p1

    :cond_36
    const/4 p1, 0x1

    .line 7149
    :goto_37
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    if-eqz p4, :cond_44

    .line 7153
    iput v0, p4, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;->changes:I

    xor-int/lit8 p0, p1, 0x1

    .line 7154
    iput-boolean p0, p4, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;->activityRelaunched:Z

    :cond_44
    return p1
.end method

.method public updateFocusedWindowLocked(IZI)Z
    .registers 27

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v0, p3

    .line 4562
    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent;->findFocusedWindowIfNeeded(I)Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 4563
    iget-object v5, v1, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    const/4 v6, 0x0

    if-ne v5, v4, :cond_12

    return v6

    .line 4567
    :cond_12
    iget-object v5, v1, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-eqz v5, :cond_38

    .line 4569
    iget-object v5, v1, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    .line 4570
    invoke-virtual {v1, v8}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    move-result-object v9

    if-eq v5, v9, :cond_22

    move v5, v8

    goto :goto_23

    :cond_22
    move v5, v6

    :goto_23
    if-eq v2, v8, :cond_2a

    if-eq v2, v7, :cond_2a

    .line 4575
    invoke-virtual {v1, v6}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    :cond_2a
    if-eqz v5, :cond_39

    .line 4579
    iget-object v4, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v8, v4, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 4580
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 4581
    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent;->findFocusedWindowIfNeeded(I)Lcom/android/server/wm/WindowState;

    move-result-object v4

    goto :goto_39

    :cond_38
    move v5, v6

    .line 4587
    :cond_39
    :goto_39
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_FORCE_DEBUG_FOCUS_LIGHT_enabled:Z

    const/4 v9, 0x2

    if-eqz v0, :cond_71

    iget-object v0, v1, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v11

    int-to-long v11, v11

    const/4 v13, 0x4

    invoke-static {v13}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    const/16 v7, 0x10

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v0, v13, v6

    aput-object v10, v13, v8

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v13, v9

    const/4 v10, 0x3

    aput-object v14, v13, v10

    const-string v0, "Changing focus from %s to %s displayId=%d Callers=%s"

    const v10, 0x705e0fca

    invoke-static {v15, v10, v7, v0, v13}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 4595
    :cond_71
    iget-object v7, v1, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 4596
    iput-object v4, v1, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    const-string v10, "Error occurred in updateFocusedWindowLocked()"

    const-string v11, "MARs"

    if-eqz v4, :cond_af

    .line 4599
    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_af

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_af

    .line 4601
    :try_start_83
    iget-object v12, v1, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v12, v12, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget v13, v4, Lcom/android/server/wm/WindowState;->mShowUserId:I

    move-object/from16 v16, v12

    move-object/from16 v18, v0

    move/from16 v22, v13

    invoke-virtual/range {v16 .. v22}, Landroid/app/ActivityManagerInternal;->onPackageResumedFG(Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;I)V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_9a} :catch_9b

    goto :goto_e4

    :catch_9b
    move-exception v0

    .line 4603
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e4

    :cond_af
    if-eqz v7, :cond_e4

    .line 4605
    iget-object v0, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_e4

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_e4

    .line 4607
    :try_start_b9
    iget-object v12, v1, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v12, v12, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget v13, v7, Lcom/android/server/wm/WindowState;->mShowUserId:I

    move-object/from16 v16, v12

    move-object/from16 v18, v0

    move/from16 v22, v13

    invoke-virtual/range {v16 .. v22}, Landroid/app/ActivityManagerInternal;->onPackageResumedFG(Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;I)V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_d0} :catch_d1

    goto :goto_e4

    :catch_d1
    move-exception v0

    .line 4609
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4616
    :cond_e4
    :goto_e4
    iput-object v7, v1, Lcom/android/server/wm/DisplayContent;->mOldFocus:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_fc

    .line 4621
    iget-object v0, v1, Lcom/android/server/wm/DisplayContent;->mWinAddedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4622
    iget-object v0, v1, Lcom/android/server/wm/DisplayContent;->mWinRemovedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4624
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 4628
    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v6, v0, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 4632
    :cond_fc
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0, v7, v4}, Lcom/android/server/wm/DisplayPolicy;->focusChangedLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    if-eqz v5, :cond_115

    .line 4634
    iget-object v0, v1, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eq v7, v0, :cond_115

    if-ne v2, v9, :cond_10f

    .line 4637
    invoke-virtual {v1, v8, v3}, Lcom/android/server/wm/DisplayContent;->performLayout(ZZ)V

    goto :goto_115

    :cond_10f
    const/4 v5, 0x3

    if-ne v2, v5, :cond_115

    .line 4641
    invoke-virtual {v1, v6}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    :cond_115
    :goto_115
    if-eq v2, v8, :cond_11e

    .line 4647
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Lcom/android/server/wm/InputMonitor;->setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V

    .line 4650
    :cond_11e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->adjustForImeIfNeeded()V

    .line 4651
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->updateKeepClearAreas()V

    .line 4656
    invoke-virtual {v1, v7, v4}, Lcom/android/server/wm/DisplayContent;->scheduleToastWindowsTimeoutIfNeededLocked(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    if-ne v2, v9, :cond_12f

    .line 4659
    iget v0, v1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v0, v0, 0x8

    iput v0, v1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 4666
    :cond_12f
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    move-result v0

    if-eqz v0, :cond_14d

    .line 4667
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v2, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda25;

    invoke-direct {v2, v1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-static {v2, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_14d
    return v8
.end method

.method public updateImeControlTarget()V
    .registers 2

    const/4 v0, 0x0

    .line 5360
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->updateImeControlTarget(Z)V

    return-void
.end method

.method public updateImeControlTarget(Z)V
    .registers 5

    .line 5364
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 5365
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->computeImeControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 5366
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/InsetsStateController;->onImeControlTargetChanged(Lcom/android/server/wm/InsetsControlTarget;)V

    .line 5370
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eq v0, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    if-nez v0, :cond_18

    if-eqz p1, :cond_1b

    .line 5372
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateImeParent()V

    .line 5375
    :cond_1b
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-static {p1}, Lcom/android/server/wm/InsetsControlTarget;->asWindowOrNull(Lcom/android/server/wm/InsetsControlTarget;)Lcom/android/server/wm/WindowState;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 5376
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_2b

    :cond_2a
    const/4 p1, 0x0

    .line 5378
    :goto_2b
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda2;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateImeInputAndControlTarget(Lcom/android/server/wm/InputTarget;)V
    .registers 9

    .line 5330
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    if-eq v0, p1, :cond_5d

    .line 5331
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_IME_enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1b

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x133cacac

    const/4 v5, 0x0

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-static {v3, v4, v2, v5, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5332
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->setImeInputTarget(Lcom/android/server/wm/InputTarget;)V

    .line 5333
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mLastImeInputTarget:Lcom/android/server/wm/InputTarget;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    if-eq v0, v3, :cond_27

    .line 5334
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 5336
    :cond_27
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 5337
    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v3

    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Landroid/view/InsetsState;->getSourceOrDefaultVisibility(I)Z

    move-result v3

    .line 5336
    invoke-virtual {v0, v3}, Lcom/android/server/wm/InsetsStateController;->updateAboveInsetsState(Z)V

    .line 5342
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    if-ne v0, v3, :cond_59

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodSurfaceParent:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    .line 5346
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodSurfaceParent:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    .line 5349
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 5348
    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl;->isSameSurface(Landroid/view/SurfaceControl;)Z

    move-result v0

    if-nez v0, :cond_59

    goto :goto_5a

    :cond_59
    move v1, v2

    .line 5350
    :goto_5a
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->updateImeControlTarget(Z)V

    :cond_5d
    if-eqz p1, :cond_62

    .line 5355
    invoke-interface {p1}, Lcom/android/server/wm/InputTarget;->unfreezeInsetsAfterStartInput()V

    :cond_62
    return-void
.end method

.method public updateImeParent()V
    .registers 4

    .line 5382
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayArea;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 5383
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v0, :cond_13

    const-string v0, "WindowManager"

    const-string v1, "ImeContainer is organized. Skip updateImeParent."

    .line 5384
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    const/4 v0, 0x0

    .line 5388
    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodSurfaceParent:Landroid/view/SurfaceControl;

    return-void

    .line 5392
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->computeImeParent()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 5393
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodSurfaceParent:Landroid/view/SurfaceControl;

    if-eq v0, v1, :cond_45

    .line 5394
    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodSurfaceParent:Landroid/view/SurfaceControl;

    .line 5395
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 5398
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->assignRelativeLayerForIme(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 5399
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 5401
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda10;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_45
    return-void
.end method

.method public final updateIsOverlappingWithCutoutAsDefault()V
    .registers 5

    .line 8291
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayCutout:Landroid/view/DisplayCutout;

    const/4 v1, 0x0

    if-eqz v0, :cond_73

    .line 8293
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    if-nez v2, :cond_a

    goto :goto_73

    .line 8298
    :cond_a
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 8299
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 8297
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 8300
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 8301
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105030e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x1

    if-lez v0, :cond_39

    if-gt v0, v2, :cond_39

    move v1, v3

    .line 8303
    :cond_39
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mIsOverlappingWithCutoutAsDefault:Z

    .line 8306
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MD_DEX_NOT_SUPPORT_CUTOUT:Z

    if-eqz v1, :cond_47

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 8307
    iput-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->mIsOverlappingWithCutoutAsDefault:Z

    .line 8310
    :cond_47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateIsOverlappingWithCutoutAsDefault: largeCutoutSize="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", minimumSizeForOverlappingWithCutoutAsDefault="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isDexMode="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8312
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WindowManager"

    .line 8310
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 8294
    :cond_73
    :goto_73
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mIsOverlappingWithCutoutAsDefault:Z

    return-void
.end method

.method public updateKeepClearAreas()V
    .registers 4

    .line 6880
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 6881
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 6882
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->getKeepClearAreas(Ljava/util/Set;Ljava/util/Set;)V

    .line 6884
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mRestrictedKeepClearAreas:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mUnrestrictedKeepClearAreas:Ljava/util/Set;

    .line 6885
    invoke-interface {v2, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 6886
    :cond_1d
    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRestrictedKeepClearAreas:Ljava/util/Set;

    .line 6887
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mUnrestrictedKeepClearAreas:Ljava/util/Set;

    .line 6888
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayNotificationController:Lcom/android/server/wm/DisplayWindowListenerController;

    invoke-virtual {v2, p0, v0, v1}, Lcom/android/server/wm/DisplayWindowListenerController;->dispatchKeepClearAreasChanged(Lcom/android/server/wm/DisplayContent;Ljava/util/Set;Ljava/util/Set;)V

    :cond_28
    return-void
.end method

.method public updateMirroredSurfaceFromDisplayManager()V
    .registers 1

    .line 7770
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mContentRecorder:Lcom/android/server/wm/ContentRecorder;

    if-eqz p0, :cond_7

    .line 7771
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->updateMirroredSurfaceFromDisplayManager()V

    :cond_7
    return-void
.end method

.method public updateOrientation(Lcom/android/server/wm/WindowContainer;Z)Landroid/content/res/Configuration;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;Z)",
            "Landroid/content/res/Configuration;"
        }
    .end annotation

    .line 1886
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 1891
    :cond_6
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->updateOrientation(Z)Z

    move-result p2

    if-eqz p2, :cond_2e

    if-eqz p1, :cond_25

    .line 1894
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-boolean p2, p2, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    if-nez p2, :cond_25

    .line 1895
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_25

    .line 1896
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->mayFreezeScreenLocked()Z

    move-result p2

    if-eqz p2, :cond_25

    .line 1897
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->startFreezingScreen()V

    .line 1900
    :cond_25
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 1901
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->computeScreenConfiguration(Landroid/content/res/Configuration;)V

    goto :goto_a1

    .line 1902
    :cond_2e
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/TransitionController;->isCollecting(Lcom/android/server/wm/WindowContainer;)Z

    move-result p1

    if-nez p1, :cond_a1

    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 1904
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayRotation;->isWaitingForRemoteRotation()Z

    move-result p1

    if-nez p1, :cond_a1

    .line 1910
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 1911
    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p2}, Landroid/content/res/Configuration;->unset()V

    .line 1912
    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p2, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 1913
    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->computeScreenConfiguration(Landroid/content/res/Configuration;)V

    .line 1916
    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, p2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result p2

    if-eqz p2, :cond_a1

    const/4 v0, 0x1

    .line 1921
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    .line 1922
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 1924
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    .line 1925
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent;->shouldPrepareNormalRotation(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_9a

    .line 1927
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateOrientation, started prepareNormalRotation, displayId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " by changes="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", caller="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x5

    .line 1929
    invoke-static {p2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WindowManager"

    .line 1927
    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayRotation;->prepareNormalRotationAnimation()V

    .line 1934
    :cond_9a
    new-instance v1, Landroid/content/res/Configuration;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v1, p0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    :cond_a1
    :goto_a1
    return-object v1
.end method

.method public updateOrientation()Z
    .registers 2

    const/4 v0, 0x0

    .line 1872
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->updateOrientation(Z)Z

    move-result p0

    return p0
.end method

.method public final updateOrientation(Z)Z
    .registers 6

    .line 1972
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getOrientation()I

    move-result v0

    .line 1974
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 1976
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    if-eqz v1, :cond_32

    .line 1978
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 1979
    iget v3, v2, Lcom/android/server/wm/Task;->mLastReportedRequestedOrientation:I

    if-eq v0, v3, :cond_29

    .line 1980
    iput v0, v2, Lcom/android/server/wm/Task;->mLastReportedRequestedOrientation:I

    .line 1981
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v3

    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    .line 1982
    invoke-virtual {v3, v2, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskRequestedOrientationChanged(II)V

    :cond_29
    const/4 v2, 0x1

    .line 1985
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DisplayContent;->handleTopActivityLaunchingInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v1

    if-eqz v1, :cond_32

    const/4 p0, 0x0

    return p0

    .line 1990
    :cond_32
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/DisplayRotation;->updateOrientation(IZ)Z

    move-result p0

    return p0
.end method

.method public updatePrivacyIndicatorBounds([Landroid/graphics/Rect;)V
    .registers 3

    .line 3330
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mCurrentPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 3332
    invoke-virtual {v0, p1}, Landroid/view/PrivacyIndicatorBounds;->updateStaticBounds([Landroid/graphics/Rect;)Landroid/view/PrivacyIndicatorBounds;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mCurrentPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 3333
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 3334
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent;->updateDisplayFrames(ZZ)V

    :cond_13
    return-void
.end method

.method public updateRecording()V
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 7758
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getContentRecorder()Lcom/android/server/wm/ContentRecorder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->updateRecording()V

    return-void
.end method

.method public updateRotationUnchecked()Z
    .registers 2

    .line 2410
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayRotation;->updateRotationUnchecked(Z)Z

    move-result p0

    return p0
.end method

.method public updateSystemGestureExclusion()Z
    .registers 8

    .line 6628
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 6633
    :cond_a
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    .line 6634
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionUnrestricted:Landroid/graphics/Region;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/DisplayContent;->calculateSystemGestureExclusion(Landroid/graphics/Region;Landroid/graphics/Region;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionWasRestricted:Z

    .line 6637
    :try_start_16
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusion:Landroid/graphics/Region;

    invoke-virtual {v2, v0}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_5b

    if-eqz v2, :cond_22

    .line 6655
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    return v1

    .line 6640
    :cond_22
    :try_start_22
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusion:Landroid/graphics/Region;

    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 6641
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionWasRestricted:Z

    if-eqz v1, :cond_2e

    .line 6642
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionUnrestricted:Landroid/graphics/Region;

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x0

    .line 6643
    :goto_2f
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2
    :try_end_35
    .catchall {:try_start_22 .. :try_end_35} :catchall_5b

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_37
    if-ltz v2, :cond_52

    .line 6645
    :try_start_39
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/view/ISystemGestureExclusionListener;

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 6646
    invoke-interface {v4, v5, v0, v1}, Landroid/view/ISystemGestureExclusionListener;->onSystemGestureExclusionChanged(ILandroid/graphics/Region;Landroid/graphics/Region;)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_46} :catch_47
    .catchall {:try_start_39 .. :try_end_46} :catchall_5b

    goto :goto_4f

    :catch_47
    move-exception v4

    :try_start_48
    const-string v5, "WindowManager"

    const-string v6, "Failed to notify SystemGestureExclusionListener"

    .line 6649
    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4f
    add-int/lit8 v2, v2, -0x1

    goto :goto_37

    .line 6652
    :cond_52
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_57
    .catchall {:try_start_48 .. :try_end_57} :catchall_5b

    .line 6655
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    return v3

    :catchall_5b
    move-exception p0

    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    .line 6656
    throw p0
.end method

.method public updateSystemGestureExclusionLimit()V
    .registers 3

    .line 3372
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mConstants:Lcom/android/server/wm/WindowManagerConstants;

    iget v0, v0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExclusionLimitDp:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0xa0

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionLimit:I

    .line 3374
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusion()Z

    return-void
.end method

.method public updateTouchExcludeRegion()V
    .registers 7

    .line 3762
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-nez v0, :cond_18

    .line 3764
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 3767
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPointerTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    goto/16 :goto_95

    .line 3771
    :cond_18
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v2, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v3, v2}, Landroid/graphics/Region;->set(IIII)Z

    const/16 v1, 0x30

    .line 3780
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 3781
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 3784
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect3:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 3785
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mFreeformTasksPointerTouchRegion:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->setEmpty()V

    .line 3786
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mPointerTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v2, v4, v4, v5, v3}, Landroid/graphics/Region;->set(IIII)Z

    .line 3790
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpAlwaysOnTopFreeformRegion:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->setEmpty()V

    .line 3793
    new-instance v2, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda49;

    invoke-direct {v2}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda49;-><init>()V

    const-class v3, Lcom/android/server/wm/Task;

    .line 3795
    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3793
    invoke-static {v2, p0, v3, v0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v1

    .line 3796
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 3797
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 3802
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_95

    .line 3803
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 3806
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mPointerTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 3808
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTopFreeform()Z

    move-result v0

    if-nez v0, :cond_95

    .line 3810
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpAlwaysOnTopFreeformRegion:Landroid/graphics/Region;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 3812
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPointerTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mFreeformTasksPointerTouchRegion:Landroid/graphics/Region;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 3818
    :cond_95
    :goto_95
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_b8

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 3822
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 3823
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 3826
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPointerTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 3830
    :cond_b8
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_c0
    if-ltz v0, :cond_eb

    .line 3831
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 3832
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v3

    if-nez v3, :cond_d1

    goto :goto_e8

    .line 3835
    :cond_d1
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 3836
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    sget-object v4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 3839
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mPointerTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    sget-object v4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    :goto_e8
    add-int/lit8 v0, v0, -0x1

    goto :goto_c0

    .line 3845
    :cond_eb
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda50;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda50;-><init>(Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 3875
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->amendWindowTapExcludeRegion(Landroid/graphics/Region;)V

    .line 3878
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mPointerTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/TaskTapPointerEventListener;->setTouchExcludeRegion(Landroid/graphics/Region;Landroid/graphics/Region;)V

    return-void
.end method

.method public updateWindowsForAnimator()V
    .registers 3

    .line 5617
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mUpdateWindowsForAnimator:Ljava/util/function/Consumer;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method
