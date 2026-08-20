.class public Lcom/android/server/wm/DisplayPolicy;
.super Ljava/lang/Object;
.source "DisplayPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayPolicy$PolicyHandler;
    }
.end annotation


# static fields
.field public static final ANIMATION_NONE:I = -0x1

.field public static final ANIMATION_STYLEABLE:I = 0x0

.field public static final MSG_ARG_ENABLE:I = 0x2

.field public static final MSG_ARG_ENABLE_WITH_DEBUG:I = 0x1

.field public static final MSG_DISABLE_POINTER_LOCATION:I = 0x5

.field public static final MSG_DISABLE_TOUCH_EVENT:I = 0x8

.field public static final MSG_ENABLE_POINTER_LOCATION:I = 0x4

.field public static final MSG_ENABLE_TOUCH_EVENT:I = 0x7

.field public static final MSG_REQUEST_TRANSIENT_BARS:I = 0x2

.field public static final MSG_REQUEST_TRANSIENT_BARS_ARG_NAVIGATION:I = 0x1

.field public static final MSG_REQUEST_TRANSIENT_BARS_ARG_STATUS:I = 0x0

.field public static final NAV_BAR_FORCE_TRANSPARENT:I = 0x2

.field public static final NAV_BAR_OPAQUE_WHEN_FREEFORM_OR_DOCKED:I = 0x0

.field public static final NAV_BAR_TRANSLUCENT_WHEN_FREEFORM_OPAQUE_OTHERWISE:I = 0x1

.field public static final PANIC_GESTURE_EXPIRATION:J = 0x7530L

.field public static final SHOW_TYPES_FOR_PANIC:[I

.field public static final SHOW_TYPES_FOR_SWIPE:[I

.field public static final TAG:Ljava/lang/String; = "WindowManager"

.field public static final TAG_SPEG:Ljava/lang/String; = "SPEG"

.field public static final sTmpClientFrames:Landroid/window/ClientWindowFrames;

.field public static final sTmpDisplayCutoutSafe:Landroid/graphics/Rect;

.field public static final sTmpLastParentFrame:Landroid/graphics/Rect;

.field public static final sTmpRect:Landroid/graphics/Rect;

.field public static final sTmpRect2:Landroid/graphics/Rect;


# instance fields
.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mAllowLockscreenWhenOn:Z

.field public final mAppTransitionListener:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

.field public mAuthTouchEnableListener:Lcom/samsung/cmfa/AuthTouch/IAuthTouchEnableListener;

.field public volatile mAwake:Z

.field public mBottomGestureAdditionalInset:I

.field public final mCarDockEnablesAccelerometer:Z

.field public mClimateBarAlt:Lcom/android/server/wm/WindowState;

.field public mClimateBarAltPosition:I

.field public mCocktailBarInternal:Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserResources:Landroid/content/res/Resources;

.field public mDefaultNavigationBar:Lcom/android/server/wm/WindowState;

.field public mDefaultNotificationShade:Lcom/android/server/wm/WindowState;

.field public mDefaultStatusBar:Lcom/android/server/wm/WindowState;

.field public final mDeskDockEnablesAccelerometer:Z

.field public mDexTaskbarHeight:I

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mDisplayCutoutTouchableRegionSize:I

.field public volatile mDockMode:I

.field public mDreamingLockscreen:Z

.field public mEdgeEnabled:Z

.field public final mExt:Lcom/android/server/wm/DisplayPolicyExt;

.field public mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

.field public mExtraNavBarAltPosition:I

.field public mFocusedApp:Ljava/lang/String;

.field public mFocusedWindow:Lcom/android/server/wm/WindowState;

.field public mForceFreeformOverlappingWithNavBar:Z

.field public final mForceShowNavBarSettingsObserver:Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;

.field public mForceShowNavigationBarEnabled:Z

.field public mForceShowSystemBars:Z

.field public final mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

.field public final mHandler:Landroid/os/Handler;

.field public volatile mHasNavigationBar:Z

.field public volatile mHasStatusBar:Z

.field public volatile mHdmiPlugged:Z

.field public final mHiddenNavPanic:Ljava/lang/Runnable;

.field public final mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

.field public final mInsetsSourceWindowsExceptIme:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field public mIsCmfaStarted:Z

.field public mIsFreeformWindowOverlappingWithNavBar:Z

.field public mIsPipWindowOverlappingWithNavBar:Z

.field public mIsResizingByDivider:Z

.field public volatile mKeyguardDrawComplete:Z

.field public mLastAppearance:I

.field public mLastBehavior:I

.field public mLastDisableFlags:I

.field public mLastFocusIsFullscreen:Z

.field public mLastFocusIsFullscreenAll:Z

.field public mLastFocusedWindow:Lcom/android/server/wm/WindowState;

.field public mLastImmersiveMode:Z

.field public mLastShowingDream:Z

.field public mLastStatusBarAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

.field public mLastUpdatedCallers:Ljava/lang/String;

.field public mLastUpdatedUiContextPackageName:Ljava/lang/String;

.field public mLastUpdatedUserId:I

.field public mLeftGestureInset:I

.field public volatile mLidState:I

.field public final mLock:Ljava/lang/Object;

.field public mMovingFreeformTask:Lcom/android/server/wm/Task;

.field public mNavBarBackgroundWindow:Lcom/android/server/wm/WindowState;

.field public mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

.field public mNavBarOpacityMode:I

.field public mNavButtonForcedVisible:Z

.field public mNavigationBar:Lcom/android/server/wm/WindowState;

.field public mNavigationBarAlt:Lcom/android/server/wm/WindowState;

.field public mNavigationBarAltPosition:I

.field public volatile mNavigationBarAlwaysShowOnSideGesture:Z

.field public volatile mNavigationBarCanMove:Z

.field public mNavigationBarFrameHeightForRotationDefault:[I

.field public mNavigationBarHeightForRotationDefault:[I

.field public volatile mNavigationBarLetsThroughTaps:Z

.field public mNavigationBarPosition:I

.field public mNavigationBarWidthForRotationDefault:[I

.field public mNotificationShade:Lcom/android/server/wm/WindowState;

.field public mPendingPanicGestureUptime:J

.field public volatile mPersistentVrModeEnabled:Z

.field public mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

.field public mPrevNavigationBarFrameHeightForRotationDefault:[I

.field public mPrevNavigationBarHeightForRotationDefault:[I

.field public mPrevNavigationBarWidthForRotationDefault:[I

.field public mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

.field public mRequestedVisibilities:Landroid/view/InsetsVisibilities;

.field public mRightGestureInset:I

.field public volatile mScreenOnEarly:Z

.field public volatile mScreenOnFully:Z

.field public volatile mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

.field public final mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mServiceAcquireLock:Ljava/lang/Object;

.field public mShouldAttachNavBarToAppDuringTransition:Z

.field public mShowingDream:Z

.field public mSkipTransferTouchToStatusBar:Z

.field public mStatusBar:Lcom/android/server/wm/WindowState;

.field public mStatusBarAlt:Lcom/android/server/wm/WindowState;

.field public mStatusBarAltPosition:I

.field public final mStatusBarAppearanceRegionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/view/AppearanceRegion;",
            ">;"
        }
    .end annotation
.end field

.field public final mStatusBarBackgroundCheckedBounds:Landroid/graphics/Rect;

.field public final mStatusBarBackgroundWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field public final mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

.field public final mStatusBarHeightForRotation:[I

.field public mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field public final mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

.field public mSystemUiControllingWindow:Lcom/android/server/wm/WindowState;

.field public mTmpFrame:Landroid/graphics/Rect;

.field public mTopFreeFormFrameThickness:I

.field public mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

.field public mTopIsFullscreen:Z

.field public mTouchEventView:Lcom/samsung/cmfa/AuthTouch/TouchEventView;

.field public mTouchEventViewHash:I

.field public final mTwoFingerSwipeGestureDetector:Landroid/view/TwoFingerSwipeGestureDetector;

.field public mUiContext:Landroid/content/Context;

.field public mWindowBounds:Landroid/graphics/Rect;

.field public final mWindowLayout:Landroid/view/WindowLayout;

.field public volatile mWindowManagerDrawComplete:Z


# direct methods
.method public static synthetic $r8$lambda$1IFMg-XbxXfAcguIe-seSOWu0sI(Lcom/android/server/wm/DisplayPolicy;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->lambda$callCocktailBarSafely$24(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4FkMo0bjLTIdgDPM6sCgvcfbl94(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayPolicy;->lambda$addWindowLw$6(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6Q0A6oLdVOZMeLmtTS_MnlY9uyE(II[Lcom/android/internal/view/AppearanceRegion;ZLcom/samsung/android/cocktailbar/CocktailBarManagerInternal;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DisplayPolicy;->lambda$updateSystemBarAttributes$19(II[Lcom/android/internal/view/AppearanceRegion;ZLcom/samsung/android/cocktailbar/CocktailBarManagerInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9mJ1k6uXwfIy-6JIx5SOGD0wZ8o(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DisplayPolicy;->lambda$addWindowLw$7(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AjWd0eBfyzd1CHt9MC61bDlXS2w(Lcom/android/server/wm/DisplayPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$DFvWUg8SAcOT_8mMQFAKX6k62xo(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DisplayPolicy;->lambda$addWindowLw$3(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EZYRNxNLlxC0PNFNpnf17LOiDfs(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayPolicy;->lambda$addWindowLw$5(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$E_lr-EOeijFv_XXxZRrD8Ekrkdo(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DisplayPolicy;->lambda$addWindowLw$2(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Fu_BYmEwSOjsSS_Qcho-CLs1kIQ(Lcom/android/server/wm/Task;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/DisplayPolicy;->lambda$updateSystemBarsLw$21(Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$JZhIwqL_PdvsAj3Qdh_xTH6f7n8(Lcom/android/server/wm/Task;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/DisplayPolicy;->lambda$updateSystemBarsLw$23(Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$RG0NZXtK4BGsccgw8oiFK6iUy9I(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayPolicy;->lambda$addWindowLw$1(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UfdOVokg-SsamnmTuLU_K62qdyI(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayPolicy;->lambda$addWindowLw$4(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WrHQ8xJh3ck-dToYavNRaEKaWM8(Lcom/android/server/wm/DisplayPolicy;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->lambda$callStatusBarSafely$20(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XRFL4fosWYAXnP4Bz-bh9h86BvY(Lcom/android/server/wm/WindowState;ILcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DisplayPolicy;->lambda$addWindowLw$8(Lcom/android/server/wm/WindowState;ILcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YlhIzFaU9h5PdAgUqgz4g8_MEgU(IILjava/lang/String;Lcom/android/server/statusbar/StatusBarManagerInternal;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayPolicy;->lambda$updateSystemBarAttributes$15(IILjava/lang/String;Lcom/android/server/statusbar/StatusBarManagerInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d5phzIA9-Ppvj2TqVO0e2ehrglY(Lcom/android/server/wm/WindowState;ILcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DisplayPolicy;->lambda$addWindowLw$9(Lcom/android/server/wm/WindowState;ILcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fXdEg0huS5CISMcqMEg-QfqStos(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayPolicy;->lambda$addWindowLw$11(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gVW7GdxQ61-SVDApmBPK-hXtY5M(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayPolicy;->lambda$addWindowLw$10(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jdaoj0ULIO3S1krxMMvFZD4qx8E(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayPolicy;->lambda$getImeSourceFrameProvider$12(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lznSHg8W63ph2YDkrJoV4cl1aj4(Lcom/android/server/wm/DisplayPolicy;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateForceShowNavBarSettings()V

    return-void
.end method

.method public static synthetic $r8$lambda$okf6SsnI9qoMdVslXuespaOT654(Lcom/android/server/wm/DisplayPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->lambda$notifyDisplayReady$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$reUEhQuaVR3uIsw6Fc3tttSHaQY(II[Lcom/android/internal/view/AppearanceRegion;ZILandroid/view/InsetsVisibilities;Ljava/lang/String;Lcom/android/server/statusbar/StatusBarManagerInternal;)V
    .registers 8

    invoke-static/range {p0 .. p7}, Lcom/android/server/wm/DisplayPolicy;->lambda$updateSystemBarAttributes$17(II[Lcom/android/internal/view/AppearanceRegion;ZILandroid/view/InsetsVisibilities;Ljava/lang/String;Lcom/android/server/statusbar/StatusBarManagerInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tAtgcZy3KG0qGpp6JDCwHI1P7wc(II[Lcom/android/internal/view/AppearanceRegion;ZILandroid/view/InsetsVisibilities;Ljava/lang/String;Lcom/android/server/statusbar/StatusBarManagerInternal;)V
    .registers 8

    invoke-static/range {p0 .. p7}, Lcom/android/server/wm/DisplayPolicy;->lambda$updateSystemBarAttributes$18(II[Lcom/android/internal/view/AppearanceRegion;ZILandroid/view/InsetsVisibilities;Ljava/lang/String;Lcom/android/server/statusbar/StatusBarManagerInternal;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/wm/DisplayPolicy;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsCmfaStarted(Lcom/android/server/wm/DisplayPolicy;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mIsCmfaStarted:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNavigationBar(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNavigationBarAlwaysShowOnSideGesture(Lcom/android/server/wm/DisplayPolicy;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlwaysShowOnSideGesture:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNavigationBarPosition(Lcom/android/server/wm/DisplayPolicy;)I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSkipTransferTouchToStatusBar(Lcom/android/server/wm/DisplayPolicy;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mSkipTransferTouchToStatusBar:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStatusBar(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSystemGestures(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/SystemGesturesPointerEventListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTopFullscreenOpaqueWindowState(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTwoFingerSwipeGestureDetector(Lcom/android/server/wm/DisplayPolicy;)Landroid/view/TwoFingerSwipeGestureDetector;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mTwoFingerSwipeGestureDetector:Landroid/view/TwoFingerSwipeGestureDetector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmPendingPanicGestureUptime(Lcom/android/server/wm/DisplayPolicy;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/wm/DisplayPolicy;->mPendingPanicGestureUptime:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSkipTransferTouchToStatusBar(Lcom/android/server/wm/DisplayPolicy;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mSkipTransferTouchToStatusBar:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdisablePointerLocation(Lcom/android/server/wm/DisplayPolicy;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->disablePointerLocation()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menablePointerLocation(Lcom/android/server/wm/DisplayPolicy;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->enablePointerLocation()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menableTouchListener(Lcom/android/server/wm/DisplayPolicy;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->enableTouchListener(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfindAltBarMatchingPosition(Lcom/android/server/wm/DisplayPolicy;I)Lcom/android/server/wm/WindowState;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->findAltBarMatchingPosition(I)Lcom/android/server/wm/WindowState;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misTwoFingerSwipeGestureAcceptable(Lcom/android/server/wm/DisplayPolicy;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->isTwoFingerSwipeGestureAcceptable(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mrequestTransientBarByTwoFingerGesture(Lcom/android/server/wm/DisplayPolicy;Landroid/graphics/Region;II)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayPolicy;->requestTransientBarByTwoFingerGesture(Landroid/graphics/Region;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrequestTransientBars(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/WindowState;Z)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayPolicy;->requestTransientBars(Lcom/android/server/wm/WindowState;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartEnableTouchEvent(Lcom/android/server/wm/DisplayPolicy;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->startEnableTouchEvent(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msupportTransientEdgeInSplitMode(Lcom/android/server/wm/DisplayPolicy;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->supportTransientEdgeInSplitMode()Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 244
    fill-array-data v0, :array_34

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->SHOW_TYPES_FOR_SWIPE:[I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 246
    sput-object v1, Lcom/android/server/wm/DisplayPolicy;->SHOW_TYPES_FOR_PANIC:[I

    .line 426
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    .line 427
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect2:Landroid/graphics/Rect;

    .line 428
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpLastParentFrame:Landroid/graphics/Rect;

    .line 429
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpDisplayCutoutSafe:Landroid/graphics/Rect;

    .line 430
    new-instance v0, Landroid/window/ClientWindowFrames;

    invoke-direct {v0}, Landroid/window/ClientWindowFrames;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpClientFrames:Landroid/window/ClientWindowFrames;

    return-void

    :array_34
    .array-data 4
        0x1
        0x0
        0x14
        0x15
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 15

    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mServiceAcquireLock:Ljava/lang/Object;

    .line 282
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTmpFrame:Landroid/graphics/Rect;

    .line 283
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowBounds:Landroid/graphics/Rect;

    const/4 v0, -0x1

    .line 298
    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    const/4 v1, 0x0

    .line 299
    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    const/4 v2, 0x0

    .line 320
    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 321
    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    const/4 v3, 0x4

    new-array v4, v3, [I

    .line 322
    iput-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    .line 323
    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 324
    iput v3, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    .line 328
    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDefaultStatusBar:Lcom/android/server/wm/WindowState;

    .line 329
    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDefaultNotificationShade:Lcom/android/server/wm/WindowState;

    .line 330
    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDefaultNavigationBar:Lcom/android/server/wm/WindowState;

    .line 341
    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    .line 342
    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAltPosition:I

    .line 346
    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    .line 347
    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAltPosition:I

    .line 351
    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mClimateBarAlt:Lcom/android/server/wm/WindowState;

    .line 352
    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mClimateBarAltPosition:I

    .line 357
    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    .line 358
    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAltPosition:I

    .line 362
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mInsetsSourceWindowsExceptIme:Landroid/util/ArraySet;

    .line 399
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    .line 405
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundWindows:Ljava/util/ArrayList;

    .line 411
    new-instance v4, Landroid/view/InsetsVisibilities;

    invoke-direct {v4}, Landroid/view/InsetsVisibilities;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;

    .line 415
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    .line 418
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundCheckedBounds:Landroid/graphics/Rect;

    .line 421
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreen:Z

    .line 432
    new-instance v4, Landroid/view/WindowLayout;

    invoke-direct {v4}, Landroid/view/WindowLayout;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowLayout:Landroid/view/WindowLayout;

    .line 436
    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    .line 445
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mIsCmfaStarted:Z

    .line 446
    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTouchEventView:Lcom/samsung/cmfa/AuthTouch/TouchEventView;

    .line 447
    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTouchEventViewHash:I

    .line 472
    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDexTaskbarHeight:I

    .line 4070
    new-instance v0, Lcom/android/server/wm/DisplayPolicy$4;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DisplayPolicy$4;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHiddenNavPanic:Ljava/lang/Runnable;

    .line 4477
    new-instance v0, Lcom/android/server/wm/DisplayPolicy$5;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DisplayPolicy$5;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAuthTouchEnableListener:Lcom/samsung/cmfa/AuthTouch/IAuthTouchEnableListener;

    new-array v0, v3, [I

    .line 4645
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarHeightForRotationDefault:[I

    new-array v0, v3, [I

    .line 4646
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarFrameHeightForRotationDefault:[I

    new-array v0, v3, [I

    .line 4647
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarWidthForRotationDefault:[I

    new-array v0, v3, [I

    .line 4648
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPrevNavigationBarHeightForRotationDefault:[I

    new-array v0, v3, [I

    .line 4649
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPrevNavigationBarFrameHeightForRotationDefault:[I

    new-array v0, v3, [I

    .line 4650
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPrevNavigationBarWidthForRotationDefault:[I

    .line 552
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 553
    iget-boolean v0, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_ae

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    goto :goto_b8

    .line 554
    :cond_ae
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    :goto_b8
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    .line 555
    iget-boolean v3, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v3, :cond_c3

    iget-object v3, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    goto :goto_cf

    .line 557
    :cond_c3
    iget-object v3, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mSystemThread:Landroid/app/ActivityThread;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/ActivityThread;->getSystemUiContext(I)Landroid/app/ContextImpl;

    move-result-object v3

    :goto_cf
    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    .line 558
    iput-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 559
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    .line 562
    new-instance v3, Lcom/android/server/wm/DisplayPolicyExt;

    invoke-direct {v3, v0, p1, p0}, Lcom/android/server/wm/DisplayPolicyExt;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayPolicy;)V

    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 565
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    .line 567
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x111004d

    .line 568
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/wm/DisplayPolicy;->mCarDockEnablesAccelerometer:Z

    const v5, 0x111010a

    .line 569
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/wm/DisplayPolicy;->mDeskDockEnablesAccelerometer:Z

    const v5, 0x10503ab

    .line 573
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40200000    # 2.5f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFreeFormFrameThickness:I

    const-string v4, "accessibility"

    .line 577
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    iput-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 579
    iget-boolean v4, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v5, 0x1

    if-nez v4, :cond_11d

    .line 580
    iput-boolean v5, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    .line 581
    iput-boolean v5, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 582
    iput-boolean v5, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 585
    :cond_11d
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    .line 586
    new-instance v6, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    invoke-direct {v6, p0, v4}, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;-><init>(Lcom/android/server/wm/DisplayPolicy;Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    .line 588
    new-instance v7, Lcom/android/server/wm/SystemGesturesPointerEventListener;

    iget-object v8, p0, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    new-instance v9, Lcom/android/server/wm/DisplayPolicy$1;

    invoke-direct {v9, p0}, Lcom/android/server/wm/DisplayPolicy$1;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-direct {v7, v8, v6, v9}, Lcom/android/server/wm/SystemGesturesPointerEventListener;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;)V

    iput-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    .line 756
    new-instance v8, Landroid/view/TwoFingerSwipeGestureDetector;

    iget-object v9, p0, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    new-instance v10, Lcom/android/server/wm/DisplayPolicy$2;

    invoke-direct {v10, p0}, Lcom/android/server/wm/DisplayPolicy$2;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    const-string v11, "DP"

    invoke-direct {v8, v9, v10, v11}, Landroid/view/TwoFingerSwipeGestureDetector;-><init>(Landroid/content/Context;Landroid/view/TwoFingerSwipeGestureDetector$GestureListener;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/wm/DisplayPolicy;->mTwoFingerSwipeGestureDetector:Landroid/view/TwoFingerSwipeGestureDetector;

    .line 792
    invoke-virtual {p2, v8}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 799
    invoke-virtual {p2, v7}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 800
    new-instance v7, Lcom/android/server/wm/DisplayPolicy$3;

    invoke-direct {v7, p0, v3}, Lcom/android/server/wm/DisplayPolicy$3;-><init>(Lcom/android/server/wm/DisplayPolicy;I)V

    iput-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mAppTransitionListener:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    .line 852
    iget-object v3, p2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3, v7}, Lcom/android/server/wm/AppTransition;->registerListenerLocked(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 853
    iget-object v3, p2, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3, v7}, Lcom/android/server/wm/TransitionController;->registerLegacyListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 854
    new-instance v3, Lcom/android/server/wm/ImmersiveModeConfirmation;

    iget-boolean v7, p1, Lcom/android/server/wm/WindowManagerService;->mVrModeEnabled:Z

    invoke-direct {v3, v0, v4, v7, p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;-><init>(Landroid/content/Context;Landroid/os/Looper;ZLcom/android/server/wm/DisplayPolicy;)V

    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 861
    iget-boolean v3, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v3, :cond_173

    .line 862
    new-instance v2, Lcom/android/internal/util/ScreenshotHelper;

    invoke-direct {v2, v0}, Lcom/android/internal/util/ScreenshotHelper;-><init>(Landroid/content/Context;)V

    :cond_173
    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    .line 864
    iget-boolean v2, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v2, :cond_189

    .line 865
    iput-boolean v5, p0, Lcom/android/server/wm/DisplayPolicy;->mHasStatusBar:Z

    .line 866
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11101b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    goto :goto_191

    .line 883
    :cond_189
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mHasStatusBar:Z

    .line 884
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->supportsSystemDecorations()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    .line 887
    :goto_191
    new-instance v1, Lcom/android/server/wm/RefreshRatePolicy;

    .line 888
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p2

    iget-object v2, p1, Lcom/android/server/wm/WindowManagerService;->mHighRefreshRateDenylist:Lcom/android/server/wm/HighRefreshRateDenylist;

    invoke-direct {v1, p1, p2, v2}, Lcom/android/server/wm/RefreshRatePolicy;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/DisplayInfo;Lcom/android/server/wm/HighRefreshRateDenylist;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    .line 891
    new-instance p1, Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    new-instance p2, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda20;

    invoke-direct {p2, p0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-direct {p1, v6, v0, p2}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    .line 899
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda21;

    invoke-direct {p2, p1}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda21;-><init>(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)V

    invoke-virtual {v6, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 901
    new-instance p1, Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;

    invoke-direct {p1, v6, v0}, Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowNavBarSettingsObserver:Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;

    .line 903
    new-instance p2, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda22;

    invoke-direct {p2, p0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {p1, p2}, Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;->setOnChangeRunnable(Ljava/lang/Runnable;)V

    .line 904
    invoke-virtual {p1}, Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;->isEnabled()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowNavigationBarEnabled:Z

    .line 905
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda23;

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda23;-><init>(Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;)V

    invoke-virtual {v6, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static chooseNavigationColorWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;I)Lcom/android/server/wm/WindowState;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-eqz p1, :cond_16

    .line 3640
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x4

    if-ne p2, v0, :cond_16

    iget-object p2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v0, -0x80000000

    and-int/2addr p2, v0

    if-eqz p2, :cond_16

    const/4 p2, 0x1

    goto :goto_17

    :cond_16
    const/4 p2, 0x0

    :goto_17
    if-nez p2, :cond_1a

    return-object p0

    :cond_1a
    if-eqz p0, :cond_2e

    .line 3649
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result p2

    if-eqz p2, :cond_2e

    .line 3652
    iget-object p2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {p2}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result p2

    if-eqz p2, :cond_2d

    return-object p1

    :cond_2d
    return-object p0

    :cond_2e
    return-object p1
.end method

.method public static enforceSingleInsetsTypeCorrespondingToWindowType([I)V
    .registers 7

    .line 1812
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v1, v0, :cond_27

    aget v3, p0, v1

    const/4 v4, 0x1

    if-eqz v3, :cond_18

    if-eq v3, v4, :cond_18

    const/4 v5, 0x2

    if-eq v3, v5, :cond_18

    const/16 v5, 0x14

    if-eq v3, v5, :cond_18

    const/16 v5, 0x15

    if-eq v3, v5, :cond_18

    goto :goto_1c

    :cond_18
    add-int/lit8 v2, v2, 0x1

    if-gt v2, v4, :cond_1f

    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1820
    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Multiple InsetsTypes corresponding to Window type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_27
    return-void
.end method

.method public static intersectsAnyInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;I)Z
    .registers 7

    .line 4445
    invoke-static {p2}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    .line 4446
    :goto_6
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_32

    .line 4447
    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 4448
    invoke-virtual {v2}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v3

    if-nez v3, :cond_23

    goto :goto_2f

    .line 4451
    :cond_23
    invoke-virtual {v2}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const/4 p0, 0x1

    return p0

    :cond_2f
    :goto_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_32
    return v0
.end method

.method public static isLightBarAllowed(Lcom/android/server/wm/WindowState;I)Z
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 3828
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getInsetsState()Landroid/view/InsetsState;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/android/server/wm/DisplayPolicy;->intersectsAnyInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;I)Z

    move-result p0

    return p0
.end method

.method public static isNavBarEmpty(I)Z
    .registers 2

    const/high16 v0, 0x1600000

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public static isOverlappingWithNavBar(Lcom/android/server/wm/WindowState;)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4410
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 4412
    invoke-static {v0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->hasWallpaperBackgroundForLetterbox(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_23

    .line 4417
    :cond_18
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_73

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_73

    .line 4422
    :cond_23
    :goto_23
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 4423
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 4425
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v0

    .line 4426
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_4e

    :cond_4a
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object p0

    .line 4427
    :goto_4e
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    .line 4426
    invoke-static {p0, v0, v1}, Lcom/android/server/wm/DisplayPolicy;->intersectsAnyInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;I)Z

    move-result p0

    return p0

    .line 4432
    :cond_57
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_66

    :cond_62
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 4433
    :goto_66
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getInsetsState()Landroid/view/InsetsState;

    move-result-object p0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    .line 4432
    invoke-static {v0, p0, v1}, Lcom/android/server/wm/DisplayPolicy;->intersectsAnyInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;I)Z

    move-result p0

    return p0

    :cond_73
    :goto_73
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$addWindowLw$1(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V
    .registers 5

    .line 1567
    iget p2, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarHeight(Lcom/android/server/wm/DisplayFrames;)I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p3, Landroid/graphics/Rect;->bottom:I

    .line 1568
    iget-object p1, p1, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    .line 1569
    invoke-virtual {p1}, Landroid/view/InsetsState;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    if-eqz p1, :cond_34

    .line 1570
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MD_DEX_NOT_SUPPORT_CUTOUT:Z

    if-eqz p2, :cond_1d

    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1572
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result p2

    if-nez p2, :cond_34

    .line 1574
    :cond_1d
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object p1

    .line 1575
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_34

    .line 1576
    iget p2, p3, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayCutoutTouchableRegionSize:I

    add-int/2addr p1, p0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, p3, Landroid/graphics/Rect;->bottom:I

    :cond_34
    return-void
.end method

.method private synthetic lambda$addWindowLw$10(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V
    .registers 5

    .line 1736
    iget-object p2, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    const/4 v0, 0x0

    .line 1737
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1738
    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 1739
    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 1740
    iget p1, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iput p1, p3, Landroid/graphics/Rect;->bottom:I

    .line 1741
    iget p0, p0, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureInset:I

    add-int/2addr p2, p0

    iput p2, p3, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method private synthetic lambda$addWindowLw$11(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V
    .registers 5

    .line 1746
    iget-object p2, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 1747
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1749
    iget p0, p0, Lcom/android/server/wm/DisplayPolicy;->mRightGestureInset:I

    sub-int/2addr p2, p0

    iput p2, p3, Landroid/graphics/Rect;->left:I

    const/4 p0, 0x0

    .line 1750
    iput p0, p3, Landroid/graphics/Rect;->top:I

    .line 1751
    iget p0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iput p0, p3, Landroid/graphics/Rect;->bottom:I

    .line 1752
    iget p0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iput p0, p3, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method private synthetic lambda$addWindowLw$2(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V
    .registers 5

    .line 1604
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavButtonForcedVisible:Z

    if-nez p0, :cond_1e

    .line 1605
    iget p0, p2, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowState;->getLayoutingAttrs(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget-object p0, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:[Landroid/graphics/Insets;

    if-eqz p0, :cond_19

    .line 1607
    array-length p2, p0

    const/4 p3, 0x1

    if-le p2, p3, :cond_19

    aget-object p0, p0, p3

    if-eqz p0, :cond_19

    .line 1610
    invoke-virtual {p4, p0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 1612
    :cond_19
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p4, p0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    :cond_1e
    return-void
.end method

.method private synthetic lambda$addWindowLw$3(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V
    .registers 6

    .line 1619
    iget-boolean p3, p0, Lcom/android/server/wm/DisplayPolicy;->mNavButtonForcedVisible:Z

    if-nez p3, :cond_35

    iget-object p3, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 1620
    invoke-virtual {p3}, Lcom/android/server/wm/DisplayPolicyExt;->isNavigationGestureMode()Z

    move-result p3

    if-eqz p3, :cond_35

    iget-object p3, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget v0, p2, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 1621
    invoke-virtual {p3, v0}, Lcom/android/server/wm/DisplayPolicyExt;->isNavBarImeBtnAllowed(I)Z

    move-result p3

    if-eqz p3, :cond_1b

    iget p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    const/4 p3, 0x4

    if-eq p0, p3, :cond_35

    .line 1624
    :cond_1b
    iget p0, p2, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowState;->getLayoutingAttrs(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget-object p0, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:[Landroid/graphics/Insets;

    if-eqz p0, :cond_30

    .line 1626
    array-length p2, p0

    const/4 p3, 0x1

    if-le p2, p3, :cond_30

    aget-object p0, p0, p3

    if-eqz p0, :cond_30

    .line 1629
    invoke-virtual {p4, p0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 1631
    :cond_30
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p4, p0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    :cond_35
    return-void
.end method

.method private synthetic lambda$addWindowLw$4(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V
    .registers 5

    .line 1638
    iget p1, p3, Landroid/graphics/Rect;->top:I

    iget p2, p0, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureAdditionalInset:I

    sub-int/2addr p1, p2

    iput p1, p3, Landroid/graphics/Rect;->top:I

    if-eqz p2, :cond_22

    .line 1640
    iget p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    const/4 v0, 0x4

    if-eq p0, v0, :cond_22

    add-int/2addr p1, p2

    .line 1643
    iput p1, p3, Landroid/graphics/Rect;->top:I

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1a

    .line 1645
    iget p0, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr p0, p2

    iput p0, p3, Landroid/graphics/Rect;->right:I

    goto :goto_22

    :cond_1a
    const/4 p1, 0x2

    if-ne p0, p1, :cond_22

    .line 1647
    iget p0, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, p2

    iput p0, p3, Landroid/graphics/Rect;->left:I

    :cond_22
    :goto_22
    return-void
.end method

.method private synthetic lambda$addWindowLw$5(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V
    .registers 5

    .line 1654
    iget-object p2, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    const/4 v0, 0x0

    .line 1655
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1656
    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 1657
    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 1658
    iget p1, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iput p1, p3, Landroid/graphics/Rect;->bottom:I

    .line 1659
    iget p0, p0, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureInset:I

    add-int/2addr p2, p0

    iput p2, p3, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method private synthetic lambda$addWindowLw$6(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V
    .registers 5

    .line 1663
    iget-object p2, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 1664
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1666
    iget p0, p0, Lcom/android/server/wm/DisplayPolicy;->mRightGestureInset:I

    sub-int/2addr p2, p0

    iput p2, p3, Landroid/graphics/Rect;->left:I

    const/4 p0, 0x0

    .line 1667
    iput p0, p3, Landroid/graphics/Rect;->top:I

    .line 1668
    iget p0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iput p0, p3, Landroid/graphics/Rect;->bottom:I

    .line 1669
    iget p0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iput p0, p3, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method private synthetic lambda$addWindowLw$7(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V
    .registers 5

    .line 1673
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 p1, p1, 0x10

    if-nez p1, :cond_e

    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarLetsThroughTaps:Z

    if-eqz p0, :cond_11

    .line 1675
    :cond_e
    invoke-virtual {p4}, Landroid/graphics/Rect;->setEmpty()V

    :cond_11
    return-void
.end method

.method public static synthetic lambda$addWindowLw$8(Lcom/android/server/wm/WindowState;ILcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V
    .registers 5

    .line 1687
    iget p2, p2, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 1688
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowState;->getLayoutingAttrs(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget-object p0, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalImeInsets:[Landroid/graphics/Insets;

    if-eqz p0, :cond_14

    .line 1690
    array-length p2, p0

    if-le p2, p1, :cond_14

    aget-object p0, p0, p1

    if-eqz p0, :cond_14

    .line 1693
    invoke-virtual {p4, p0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    :cond_14
    return-void
.end method

.method public static synthetic lambda$addWindowLw$9(Lcom/android/server/wm/WindowState;ILcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V
    .registers 5

    .line 1717
    iget p2, p2, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowState;->getLayoutingAttrs(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget-object p2, p2, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:[Landroid/graphics/Insets;

    if-eqz p2, :cond_14

    .line 1719
    array-length p3, p2

    if-le p3, p1, :cond_14

    aget-object p1, p2, p1

    if-eqz p1, :cond_14

    .line 1722
    invoke-virtual {p4, p1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 1724
    :cond_14
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p4, p0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    return-void
.end method

.method private synthetic lambda$callCocktailBarSafely$24(Ljava/util/function/Consumer;)V
    .registers 2

    .line 4617
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getCocktailBarManagerInternal()Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 4619
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method private synthetic lambda$callStatusBarSafely$20(Ljava/util/function/Consumer;)V
    .registers 2

    .line 3626
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 3628
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method private synthetic lambda$getImeSourceFrameProvider$12(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V
    .registers 6

    .line 1786
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object p2

    if-eqz p2, :cond_3a

    .line 1791
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_34

    iget v0, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_34

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget p1, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 1795
    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayPolicyExt;->isNavBarImeBtnAllowed(I)Z

    move-result p1

    if-eqz p1, :cond_34

    .line 1800
    sget-object p1, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1801
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 1802
    iget-object p0, p2, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p3, p0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 1803
    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_39

    .line 1805
    :cond_34
    iget-object p0, p2, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p3, p0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    :goto_39
    return-void

    .line 1788
    :cond_3a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "IME insets must be provided by a window."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private synthetic lambda$new$0()V
    .registers 3

    .line 893
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 894
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->onConfigurationChanged()V

    .line 895
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {v1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->onConfigurationChanged()V

    .line 896
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusion()Z

    .line 897
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method private synthetic lambda$notifyDisplayReady$13()V
    .registers 2

    .line 2919
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v0

    .line 2920
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 2922
    invoke-interface {p0, v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onDisplayReady(I)V

    .line 2924
    :cond_d
    const-class p0, Lcom/android/server/wallpaper/WallpaperManagerInternal;

    .line 2925
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wallpaper/WallpaperManagerInternal;

    if-eqz p0, :cond_1a

    .line 2927
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerInternal;->onDisplayReady(I)V

    :cond_1a
    return-void
.end method

.method public static synthetic lambda$updateSystemBarAttributes$14(IILjava/lang/String;ILcom/android/server/statusbar/StatusBarManagerInternal;)V
    .registers 5

    .line 3513
    invoke-interface {p4, p0, p1, p2, p3}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setDisableFlagsToType(IILjava/lang/String;I)V

    return-void
.end method

.method public static synthetic lambda$updateSystemBarAttributes$15(IILjava/lang/String;Lcom/android/server/statusbar/StatusBarManagerInternal;)V
    .registers 4

    .line 3517
    invoke-interface {p3, p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setDisableFlags(IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$updateSystemBarAttributes$16(II[Lcom/android/internal/view/AppearanceRegion;ZILandroid/view/InsetsVisibilities;Ljava/lang/String;ILcom/android/server/statusbar/StatusBarManagerInternal;)V
    .registers 18

    move-object/from16 v0, p8

    move v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    move/from16 v8, p7

    .line 3576
    invoke-interface/range {v0 .. v8}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onSystemBarAttributesChangedToType(II[Lcom/android/internal/view/AppearanceRegion;ZILandroid/view/InsetsVisibilities;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic lambda$updateSystemBarAttributes$17(II[Lcom/android/internal/view/AppearanceRegion;ZILandroid/view/InsetsVisibilities;Ljava/lang/String;Lcom/android/server/statusbar/StatusBarManagerInternal;)V
    .registers 16

    move-object v0, p7

    move v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 3581
    invoke-interface/range {v0 .. v7}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZILandroid/view/InsetsVisibilities;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$updateSystemBarAttributes$18(II[Lcom/android/internal/view/AppearanceRegion;ZILandroid/view/InsetsVisibilities;Ljava/lang/String;Lcom/android/server/statusbar/StatusBarManagerInternal;)V
    .registers 17

    const/4 v8, 0x2

    move-object/from16 v0, p7

    move v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 3587
    invoke-interface/range {v0 .. v8}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onSystemBarAttributesChangedToType(II[Lcom/android/internal/view/AppearanceRegion;ZILandroid/view/InsetsVisibilities;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic lambda$updateSystemBarAttributes$19(II[Lcom/android/internal/view/AppearanceRegion;ZLcom/samsung/android/cocktailbar/CocktailBarManagerInternal;)V
    .registers 5

    .line 3606
    invoke-virtual {p4, p0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;->onSystemBarAppearanceChanged(II[Lcom/android/internal/view/AppearanceRegion;)V

    const/4 p1, 0x1

    .line 3608
    invoke-virtual {p4, p0, p3, p1}, Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;->topAppWindowChanged(IZZ)V

    return-void
.end method

.method public static synthetic lambda$updateSystemBarsLw$21(Lcom/android/server/wm/Task;)Z
    .registers 2

    .line 3725
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3726
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopLeafTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public static synthetic lambda$updateSystemBarsLw$22(Lcom/android/server/wm/Task;)Z
    .registers 2

    .line 3730
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3731
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopLeafTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public static synthetic lambda$updateSystemBarsLw$23(Lcom/android/server/wm/Task;)Z
    .registers 2

    .line 3737
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopVisibleTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 3738
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopVisibleTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isSplitEmbedded()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method


# virtual methods
.method public final addStatusBarAppearanceRegionsForDimmingWindow(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 12

    .line 2475
    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p3, p2}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_9

    return-void

    .line 2478
    :cond_9
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    :cond_12
    const/4 v1, 0x0

    if-eqz p1, :cond_7d

    .line 2481
    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v2, p4, p2}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p2

    if-nez p2, :cond_1e

    goto :goto_7d

    .line 2498
    :cond_1e
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/view/AppearanceRegion;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {v3, p1, v4}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2499
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_77

    .line 2500
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result p2

    if-ne p1, p2, :cond_77

    .line 2501
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget p2, v2, Landroid/graphics/Rect;->left:I

    if-eq p1, p2, :cond_5a

    .line 2502
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    new-instance p2, Lcom/android/internal/view/AppearanceRegion;

    new-instance p4, Landroid/graphics/Rect;

    iget v3, p3, Landroid/graphics/Rect;->left:I

    iget v4, p3, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v6, p3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p4, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p2, v1, p4}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2505
    :cond_5a
    iget p1, v0, Landroid/graphics/Rect;->right:I

    iget p2, v2, Landroid/graphics/Rect;->right:I

    if-eq p1, p2, :cond_77

    .line 2506
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    new-instance p2, Lcom/android/internal/view/AppearanceRegion;

    new-instance p4, Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    iget v4, p3, Landroid/graphics/Rect;->right:I

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p4, v2, v3, v4, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p2, v1, p4}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2512
    :cond_77
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    return-void

    .line 2482
    :cond_7d
    :goto_7d
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    new-instance p2, Lcom/android/internal/view/AppearanceRegion;

    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {p2, v1, p4}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2483
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    return-void
.end method

.method public addWindowLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .registers 15

    .line 1532
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_108

    const/16 v1, 0x7e3

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x1

    if-eq v0, v1, :cond_a9

    const/16 v1, 0x7f8

    if-eq v0, v1, :cond_a5

    packed-switch v0, :pswitch_data_12c

    .line 1682
    iget-object v0, p2, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    if-eqz v0, :cond_126

    .line 1683
    array-length v1, v0

    :goto_1b
    if-ge v2, v1, :cond_126

    aget v7, v0, v2

    .line 1685
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    iget-object v8, v8, Landroid/view/WindowManager$LayoutParams;->providedInternalImeInsets:[Landroid/graphics/Insets;

    if-eqz v8, :cond_2d

    .line 1686
    new-instance v8, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda13;

    invoke-direct {v8, p1, v7}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/wm/WindowState;I)V

    goto :goto_2e

    :cond_2d
    move-object v8, v3

    :goto_2e
    const/16 v9, 0x15

    if-eqz v7, :cond_56

    if-eq v7, v6, :cond_4d

    const/16 v10, 0x14

    if-eq v7, v10, :cond_44

    if-eq v7, v9, :cond_3b

    goto :goto_5e

    .line 1710
    :cond_3b
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    .line 1711
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayPolicy;->getAltBarPosition(Landroid/view/WindowManager$LayoutParams;)I

    move-result v10

    iput v10, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAltPosition:I

    goto :goto_5e

    .line 1706
    :cond_44
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mClimateBarAlt:Lcom/android/server/wm/WindowState;

    .line 1707
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayPolicy;->getAltBarPosition(Landroid/view/WindowManager$LayoutParams;)I

    move-result v10

    iput v10, p0, Lcom/android/server/wm/DisplayPolicy;->mClimateBarAltPosition:I

    goto :goto_5e

    .line 1702
    :cond_4d
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    .line 1703
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayPolicy;->getAltBarPosition(Landroid/view/WindowManager$LayoutParams;)I

    move-result v10

    iput v10, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAltPosition:I

    goto :goto_5e

    .line 1698
    :cond_56
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    .line 1699
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayPolicy;->getAltBarPosition(Landroid/view/WindowManager$LayoutParams;)I

    move-result v10

    iput v10, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAltPosition:I

    .line 1714
    :goto_5e
    iget-object v10, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1715
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    iget-object v11, v11, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:[Landroid/graphics/Insets;

    if-eqz v11, :cond_6e

    new-instance v11, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda14;

    invoke-direct {v11, p1, v7}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/wm/WindowState;I)V

    goto :goto_6f

    :cond_6e
    move-object v11, v3

    .line 1714
    :goto_6f
    invoke-virtual {v10, v7, p1, v11, v8}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1727
    iget-object v8, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-nez v8, :cond_82

    if-ne v7, v9, :cond_82

    .line 1729
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayPolicyExt;->getTaskbarController()Lcom/android/server/wm/TaskbarController;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/android/server/wm/TaskbarController;->setAdditionalInsetProviders(Lcom/android/server/wm/WindowState;)V

    goto :goto_9c

    :cond_82
    if-nez v8, :cond_9c

    if-eq v7, v6, :cond_88

    if-ne v7, v9, :cond_9c

    .line 1734
    :cond_88
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v8, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda15;

    invoke-direct {v8, p0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v7, v5, p1, v8}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1744
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v8, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda6;

    invoke-direct {v8, p0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v7, v4, p1, v8}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1755
    :cond_9c
    :goto_9c
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mInsetsSourceWindowsExceptIme:Landroid/util/ArraySet;

    invoke-virtual {v7, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1b

    .line 1548
    :cond_a5
    :pswitch_a5
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    goto/16 :goto_126

    .line 1601
    :cond_a9
    :pswitch_a9
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 1602
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v1, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/WindowState;)V

    new-instance v2, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/WindowState;)V

    invoke-virtual {v0, v6, p1, v1, v2}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1636
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v1, 0x8

    new-instance v2, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1652
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v1, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v5, p1, v1}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1661
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v1, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v4, p1, v1}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1671
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v1, 0x12

    new-instance v2, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/WindowState;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1678
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mInsetsSourceWindowsExceptIme:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1679
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_126

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NAVIGATION BAR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_126

    .line 1564
    :cond_108
    :pswitch_108
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 1565
    new-instance v0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    .line 1581
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1582
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1584
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p1, v3}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1585
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mInsetsSourceWindowsExceptIme:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1763
    :cond_126
    :goto_126
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayPolicyExt;->addWindowLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :pswitch_data_12c
    .packed-switch 0xa3d
        :pswitch_108
        :pswitch_a5
        :pswitch_a9
    .end packed-switch
.end method

.method public adjustWindowParamsLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .registers 11

    .line 1231
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v0, v2, :cond_4d

    const/16 v4, 0x7dd

    if-eq v0, v4, :cond_49

    const/16 v4, 0x7df

    if-eq v0, v4, :cond_3d

    const/16 v4, 0x7d5

    if-eq v0, v4, :cond_19

    const/16 v4, 0x7d6

    if-eq v0, v4, :cond_3d

    goto/16 :goto_c1

    .line 1264
    :cond_19
    iget-wide v4, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    const-wide/16 v6, 0x1004

    if-ltz v0, :cond_27

    cmp-long v0, v4, v6

    if-lez v0, :cond_29

    .line 1266
    :cond_27
    iput-wide v6, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 1271
    :cond_29
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-wide v4, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    long-to-int v4, v4

    invoke-virtual {v0, v4, v3}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result v0

    int-to-long v4, v0

    iput-wide v4, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 1275
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto/16 :goto_c1

    .line 1235
    :cond_3d
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x18

    const v4, -0x40001

    and-int/2addr v0, v4

    .line 1237
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto/16 :goto_c1

    .line 1242
    :cond_49
    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    goto/16 :goto_c1

    .line 1282
    :cond_4d
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_90

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_90

    .line 1283
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v0

    if-eqz v0, :cond_90

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v4, 0x20000

    and-int/2addr v0, v4

    if-eqz v0, :cond_90

    .line 1285
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v0

    if-nez v0, :cond_6d

    goto :goto_90

    .line 1286
    :cond_6d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal attributes: Main activity window that isn\'t translucent trying to fit insets: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1288
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " attrs="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1292
    :cond_90
    :goto_90
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isPopOver()Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 1293
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v0, v3

    iput v0, p1, Lcom/android/server/wm/WindowState;->mOriginalDimBehind:I

    .line 1294
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iput v0, p1, Lcom/android/server/wm/WindowState;->mOriginalDimAmount:F

    .line 1295
    iget-wide v4, p2, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    iput-wide v4, p1, Lcom/android/server/wm/WindowState;->mOriginalDimDuration:J

    .line 1297
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mPopOverController:Lcom/android/server/wm/PopOverController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/PopOverController;->updatePopOverDimAttributesLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V

    .line 1299
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 1300
    invoke-virtual {v0}, Lcom/android/server/wm/PopOverState;->isAllowOutsideTouchSet()Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 1301
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_c1

    .line 1303
    :cond_bb
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1310
    :cond_c1
    :goto_c1
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v0

    if-eqz v0, :cond_116

    .line 1311
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mMaximumObscuringOpacityForTouch:F

    .line 1312
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    cmpl-float v4, v4, v0

    if-lez v4, :cond_116

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_116

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v5, 0x20000000

    and-int/2addr v4, v5

    if-nez v4, :cond_116

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 1319
    iget-object v6, p2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    aput-object v6, v4, v5

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1324
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v4, v1

    const-string v1, "App %s has a system alert window (type = %d) with FLAG_NOT_TOUCHABLE and LayoutParams.alpha = %.2f > %.2f, setting alpha to %.2f to let touches pass through (if this is isn\'t desirable, remove flag FLAG_NOT_TOUCHABLE)."

    .line 1319
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 1326
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    .line 1331
    :cond_116
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_120

    .line 1332
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayPolicy;->getAltBarPosition(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAltPosition:I

    .line 1334
    :cond_120
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_12a

    .line 1335
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayPolicy;->getAltBarPosition(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAltPosition:I

    .line 1337
    :cond_12a
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mClimateBarAlt:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_134

    .line 1338
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayPolicy;->getAltBarPosition(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mClimateBarAltPosition:I

    .line 1340
    :cond_134
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_13e

    .line 1341
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayPolicy;->getAltBarPosition(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAltPosition:I

    .line 1344
    :cond_13e
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object p1

    if-eqz p1, :cond_159

    .line 1345
    invoke-virtual {p1}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getInsetsRoundedCornerFrame()Z

    move-result v0

    iget-boolean v1, p2, Landroid/view/WindowManager$LayoutParams;->insetsRoundedCornerFrame:Z

    if-eq v0, v1, :cond_159

    .line 1347
    invoke-virtual {p1}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object p1

    iget-boolean v0, p2, Landroid/view/WindowManager$LayoutParams;->insetsRoundedCornerFrame:Z

    invoke-virtual {p1, v0}, Landroid/view/InsetsSource;->setInsetsRoundedCornerFrame(Z)V

    .line 1352
    :cond_159
    iget-object p1, p2, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, p1, Landroid/view/InsetsFlags;->appearance:I

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayPolicyExt;->getForceLightNavigationBar(Landroid/view/WindowManager$LayoutParams;)I

    move-result p0

    or-int/2addr p0, v0

    iput p0, p1, Landroid/view/InsetsFlags;->appearance:I

    return-void
.end method

.method public final applyKeyguardPolicy(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .registers 6

    .line 2551
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canBeHiddenByKeyguard()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    .line 2552
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayPolicy;->shouldBeHiddenByKeyguard(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z

    move-result p0

    if-eqz p0, :cond_12

    .line 2553
    invoke-virtual {p1, v2, v1}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    goto :goto_35

    .line 2555
    :cond_12
    invoke-virtual {p1, v2, v1}, Lcom/android/server/wm/WindowState;->show(ZZ)Z

    goto :goto_35

    .line 2558
    :cond_16
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/DisplayPolicyExt;->canBeForceHiddenByAodLw(Lcom/android/server/wm/WindowState;)Z

    move-result p2

    if-eqz p2, :cond_35

    .line 2559
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/server/wm/KeyguardController;->isAodShowing(I)Z

    move-result p0

    if-eqz p0, :cond_32

    .line 2560
    invoke-virtual {p1, v2, v1}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    goto :goto_35

    .line 2562
    :cond_32
    invoke-virtual {p1, v2, v1}, Lcom/android/server/wm/WindowState;->show(ZZ)Z

    :cond_35
    :goto_35
    return-void
.end method

.method public applyPostLayoutPolicyLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .registers 10

    .line 2327
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7e3

    if-ne v0, v1, :cond_12

    .line 2330
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 2331
    iget v0, v0, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    .line 2333
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canAffectSystemUiFlags()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_22

    .line 2335
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_22

    move v0, v2

    goto :goto_23

    :cond_22
    move v0, v1

    .line 2337
    :goto_23
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v3, :cond_45

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Win "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": affectsSystemUi="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2340
    :cond_45
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/DisplayPolicyExt;->applyPostLayoutPolicyLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V

    .line 2342
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/DisplayPolicyExt;->applyForceHidePolicyLw(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    if-nez v3, :cond_55

    .line 2344
    invoke-virtual {p0, p1, p4}, Lcom/android/server/wm/DisplayPolicy;->applyKeyguardPolicy(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    .line 2348
    :cond_55
    invoke-static {p1}, Lcom/android/server/wm/DisplayPolicy;->isOverlappingWithNavBar(Lcom/android/server/wm/WindowState;)Z

    move-result p4

    if-eqz p4, :cond_71

    .line 2349
    iget-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    if-nez v3, :cond_71

    .line 2350
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_71

    .line 2351
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    .line 2353
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mMovingFreeformTask:Lcom/android/server/wm/Task;

    .line 2354
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eq v3, v4, :cond_71

    .line 2355
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceFreeformOverlappingWithNavBar:Z

    .line 2362
    :cond_71
    iget-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mIsPipWindowOverlappingWithNavBar:Z

    if-nez v3, :cond_93

    .line 2363
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_93

    .line 2364
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_93

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->matchParentBounds()Z

    move-result v3

    if-nez v3, :cond_93

    .line 2365
    invoke-static {p1}, Lcom/android/server/wm/DisplayPolicy;->isOverlappingWithNavBar(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    if-eqz v3, :cond_93

    .line 2366
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mIsPipWindowOverlappingWithNavBar:Z

    .line 2368
    :cond_93
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->multiwindowFlags:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_9d

    .line 2370
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mIsResizingByDivider:Z

    :cond_9d
    if-nez v0, :cond_a0

    return-void

    .line 2378
    :cond_a0
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v0, v2, :cond_aa

    const/16 v3, 0x7d0

    if-ge v0, v3, :cond_aa

    move v0, v2

    goto :goto_ab

    :cond_aa
    move v0, v1

    .line 2380
    :goto_ab
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-nez v3, :cond_d9

    .line 2381
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2382
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDreamWindow()Z

    move-result v4

    if-eqz v4, :cond_ca

    .line 2385
    iget-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingLockscreen:Z

    if-eqz v4, :cond_c7

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_ca

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasDrawn()Z

    move-result v4

    if-eqz v4, :cond_ca

    .line 2386
    :cond_c7
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    move v0, v2

    :cond_ca
    if-eqz v0, :cond_d9

    if-nez p3, :cond_d9

    .line 2391
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v4

    if-eqz v4, :cond_d9

    and-int/2addr v3, v2

    if-eqz v3, :cond_d9

    .line 2393
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    :cond_d9
    if-eqz v0, :cond_e3

    if-nez p3, :cond_e3

    .line 2398
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result p3

    if-nez p3, :cond_e9

    :cond_e3
    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 p3, 0x7ef

    if-ne p2, p3, :cond_18a

    .line 2402
    :cond_e9
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-nez p2, :cond_fb

    .line 2404
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isInBubbleMode()Z

    move-result p2

    if-nez p2, :cond_fb

    .line 2405
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isPopOver()Z

    move-result p2

    if-nez p2, :cond_fb

    .line 2407
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 2412
    :cond_fb
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz p2, :cond_17b

    sget-object p2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    .line 2413
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object p3

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p3

    if-eqz p3, :cond_17b

    iget-object p3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundCheckedBounds:Landroid/graphics/Rect;

    .line 2414
    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p3

    if-nez p3, :cond_17b

    .line 2417
    iget-object p3, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2418
    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result p3

    if-eqz p3, :cond_12c

    .line 2419
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result p3

    if-nez p3, :cond_12c

    goto :goto_137

    .line 2423
    :cond_12c
    iget-object p3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundWindows:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2424
    iget-object p3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundCheckedBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    move v1, v2

    :goto_137
    if-eqz v1, :cond_17b

    .line 2428
    iget-object p3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p3

    if-nez p3, :cond_17b

    .line 2430
    iget-object p3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object p3, p3, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget p3, p3, Landroid/view/InsetsFlags;->appearance:I

    and-int/lit8 p3, p3, 0x8

    .line 2431
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mIsResizingByDivider:Z

    if-eqz v0, :cond_163

    .line 2432
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_163

    and-int/lit8 p3, p3, -0x2

    .line 2436
    :cond_163
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/view/AppearanceRegion;

    new-instance v2, Landroid/graphics/Rect;

    .line 2438
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {v1, p3, v2}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    .line 2436
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2439
    iget-object p3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :cond_17b
    if-eqz p4, :cond_1bb

    .line 2450
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    if-nez p2, :cond_183

    .line 2451
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 2453
    :cond_183
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindow:Lcom/android/server/wm/WindowState;

    if-nez p2, :cond_1bb

    .line 2454
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindow:Lcom/android/server/wm/WindowState;

    goto :goto_1bb

    .line 2457
    :cond_18a
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result p2

    if-eqz p2, :cond_1bb

    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 2460
    invoke-virtual {p2, p1}, Lcom/android/server/wm/DisplayPolicyExt;->isBlurringWinNotAffectingLightBarAppearance(Lcom/android/server/wm/WindowState;)Z

    move-result p2

    if-nez p2, :cond_1bb

    .line 2462
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz p2, :cond_1b3

    .line 2463
    iget-object p3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object p3, p3, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget p3, p3, Landroid/view/InsetsFlags;->appearance:I

    and-int/lit8 p3, p3, 0x8

    .line 2465
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    .line 2463
    invoke-virtual {p0, p3, p2, v0, v1}, Lcom/android/server/wm/DisplayPolicy;->addStatusBarAppearanceRegionsForDimmingWindow(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_1b3
    if-eqz p4, :cond_1bb

    .line 2467
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    if-nez p2, :cond_1bb

    .line 2468
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    :cond_1bb
    :goto_1bb
    return-void
.end method

.method public areSystemBarsForcedShownLw()Z
    .registers 1

    .line 2088
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    return p0
.end method

.method public beginPostLayoutPolicyLw()V
    .registers 3

    const/4 v0, 0x0

    .line 2293
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 2294
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 2295
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindow:Lcom/android/server/wm/WindowState;

    .line 2296
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2297
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2298
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2299
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundCheckedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v0, 0x0

    .line 2301
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    .line 2302
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    .line 2303
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    .line 2307
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicyExt;->beginPostLayoutPolicyLw()V

    .line 2310
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mIsPipWindowOverlappingWithNavBar:Z

    .line 2313
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mIsResizingByDivider:Z

    return-void
.end method

.method public final callCocktailBarSafely(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;",
            ">;)V"
        }
    .end annotation

    .line 4616
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/wm/DisplayPolicy;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final callStatusBarSafely(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/statusbar/StatusBarManagerInternal;",
            ">;)V"
        }
    .end annotation

    .line 3625
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/wm/DisplayPolicy;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final canHideNavigationBar()Z
    .registers 1

    .line 4059
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result p0

    return p0
.end method

.method public final canReplaceSystemWindowForDexStandAlone(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 7

    .line 4722
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0x7d0

    if-eq p1, v0, :cond_45

    const/16 v1, 0x7e3

    if-eq p1, v1, :cond_40

    const/16 v2, 0x7f8

    if-eq p1, v2, :cond_3b

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_4a

    return v4

    .line 4736
    :pswitch_14
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz p0, :cond_1f

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne p0, v1, :cond_1f

    goto :goto_20

    :cond_1f
    move v3, v4

    :goto_20
    return v3

    .line 4739
    :pswitch_21
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eqz p0, :cond_2c

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne p0, v2, :cond_2c

    goto :goto_2d

    :cond_2c
    move v3, v4

    :goto_2d
    return v3

    .line 4733
    :pswitch_2e
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz p0, :cond_39

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne p0, v0, :cond_39

    goto :goto_3a

    :cond_39
    move v3, v4

    :goto_3a
    return v3

    .line 4730
    :cond_3b
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasDexStandAloneNotificationShade()Z

    move-result p0

    return p0

    .line 4727
    :cond_40
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasDexStandAloneNavigationBar()Z

    move-result p0

    return p0

    .line 4724
    :cond_45
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasDexStandAloneStatusBar()Z

    move-result p0

    return p0

    :pswitch_data_4a
    .packed-switch 0xa3d
        :pswitch_2e
        :pswitch_21
        :pswitch_14
    .end packed-switch
.end method

.method public final clearNavBarOpaqueFlag(I)I
    .registers 2

    and-int/lit8 p0, p1, -0x3

    return p0
.end method

.method public final configureNavBarOpacity(IZZ)I
    .registers 10

    .line 3907
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayPolicy;->drawsBarBackground(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    .line 3909
    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    const/16 v2, 0x80

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v1, v3, :cond_25

    if-eqz p3, :cond_1e

    .line 3911
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    if-nez v1, :cond_18

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceFreeformOverlappingWithNavBar:Z

    if-eqz v1, :cond_1e

    .line 3913
    :cond_18
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->clearNavBarOpaqueFlag(I)I

    move-result p1

    :goto_1c
    or-int/2addr p1, v2

    goto :goto_48

    :cond_1e
    if-eqz v0, :cond_48

    .line 3917
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->clearNavBarOpaqueFlag(I)I

    move-result p1

    goto :goto_48

    :cond_25
    if-nez v1, :cond_40

    if-nez p2, :cond_33

    if-eqz p3, :cond_2c

    goto :goto_33

    :cond_2c
    if-eqz v0, :cond_48

    .line 3930
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->clearNavBarOpaqueFlag(I)I

    move-result p1

    goto :goto_48

    .line 3921
    :cond_33
    :goto_33
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    if-nez v1, :cond_3b

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceFreeformOverlappingWithNavBar:Z

    if-eqz v1, :cond_48

    .line 3922
    :cond_3b
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->clearNavBarOpaqueFlag(I)I

    move-result p1

    goto :goto_1c

    :cond_40
    if-ne v1, v4, :cond_48

    if-eqz p3, :cond_48

    .line 3934
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->clearNavBarOpaqueFlag(I)I

    move-result p1

    .line 3938
    :cond_48
    :goto_48
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v1, v4}, Lcom/android/server/wm/DisplayPolicy;->isFullyTransparentAllowed(Lcom/android/server/wm/WindowState;I)Z

    move-result v1

    if-nez v1, :cond_52

    or-int/lit8 p1, p1, 0x40

    .line 3943
    :cond_52
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_62

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindow:Lcom/android/server/wm/WindowState;

    const/16 v5, 0x15

    .line 3944
    invoke-virtual {p0, v1, v5}, Lcom/android/server/wm/DisplayPolicy;->isFullyTransparentAllowed(Lcom/android/server/wm/WindowState;I)Z

    move-result v1

    if-nez v1, :cond_62

    or-int/lit8 p1, p1, 0x40

    .line 3948
    :cond_62
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicyExt;->isGameToolsOverlayVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 3949
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->clearNavBarOpaqueFlag(I)I

    move-result v2

    goto/16 :goto_142

    .line 3950
    :cond_70
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mNaturalSwitchingController:Lcom/android/server/wm/NaturalSwitchingController;

    .line 3951
    invoke-virtual {v1}, Lcom/android/server/wm/NaturalSwitchingController;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 3952
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->clearNavBarOpaqueFlag(I)I

    move-result v2

    goto/16 :goto_142

    .line 3953
    :cond_82
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mIsPipWindowOverlappingWithNavBar:Z

    if-eqz v1, :cond_9a

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 3955
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/wm/TaskDisplayArea;->isRootTaskVisible(I)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 3956
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->clearNavBarOpaqueFlag(I)I

    move-result p0

    or-int/lit8 v2, p0, 0x40

    goto/16 :goto_142

    :cond_9a
    if-eqz p3, :cond_b0

    if-eqz v0, :cond_b0

    .line 3959
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindow:Lcom/android/server/wm/WindowState;

    if-eqz p2, :cond_aa

    .line 3960
    invoke-virtual {p2, v4}, Lcom/android/server/wm/WindowState;->getRequestedVisibility(I)Z

    move-result p2

    if-nez p2, :cond_aa

    goto/16 :goto_142

    .line 3963
    :cond_aa
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->clearNavBarOpaqueFlag(I)I

    move-result v2

    goto/16 :goto_142

    :cond_b0
    if-eqz p2, :cond_119

    .line 3968
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindow:Lcom/android/server/wm/WindowState;

    const/4 p3, 0x0

    if-nez p2, :cond_c6

    .line 3969
    iget p2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    and-int/2addr p2, v3

    if-nez p2, :cond_bd

    goto :goto_111

    .line 3971
    :cond_bd
    sget-boolean p2, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    if-nez p2, :cond_111

    sget-boolean p2, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_NAVISTAR_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    if-eqz p2, :cond_110

    goto :goto_111

    .line 3976
    :cond_c6
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result p2

    if-nez p2, :cond_cd

    goto :goto_111

    .line 3979
    :cond_cd
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 3980
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowState;->getRequestedVisibility(I)Z

    move-result v0

    if-eqz v0, :cond_e4

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_e4

    move v0, v4

    goto :goto_e5

    :cond_e4
    move v0, p3

    .line 3982
    :goto_e5
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v0, :cond_102

    if-eqz v1, :cond_102

    .line 3985
    iget v2, v1, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_102

    .line 3986
    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 3987
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v1, v1, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    if-ge v2, v1, :cond_102

    move v0, p3

    .line 3991
    :cond_102
    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->multiwindowFlags:I

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_10a

    move p2, v4

    goto :goto_10b

    :cond_10a
    move p2, p3

    :goto_10b
    if-nez v0, :cond_111

    if-eqz p2, :cond_110

    goto :goto_111

    :cond_110
    move v4, p3

    :cond_111
    :goto_111
    if-eqz v4, :cond_141

    .line 3999
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->clearNavBarOpaqueFlag(I)I

    move-result p0

    move v2, p0

    goto :goto_142

    .line 4004
    :cond_119
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz p2, :cond_130

    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindow:Lcom/android/server/wm/WindowState;

    if-eqz p2, :cond_130

    .line 4005
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isEmbedded()Z

    move-result p2

    if-eqz p2, :cond_130

    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindow:Lcom/android/server/wm/WindowState;

    .line 4006
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isFullscreenEmbedded()Z

    move-result p2

    if-nez p2, :cond_130

    goto :goto_13e

    .line 4008
    :cond_130
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_ACTIVITY:Z

    if-eqz p2, :cond_141

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindow:Lcom/android/server/wm/WindowState;

    if-eqz p0, :cond_141

    .line 4009
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isInSplitActivityMode()Z

    move-result p0

    if-eqz p0, :cond_141

    :goto_13e
    or-int/lit8 v2, p1, 0x2

    goto :goto_142

    :cond_141
    move v2, p1

    :goto_142
    return v2
.end method

.method public final configureStatusBarOpacity(I)I
    .registers 7

    .line 3884
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v2, v1

    :goto_9
    if-ltz v0, :cond_21

    .line 3885
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 3886
    invoke-virtual {p0, v3}, Lcom/android/server/wm/DisplayPolicy;->drawsBarBackground(Lcom/android/server/wm/WindowState;)Z

    move-result v4

    and-int/2addr v1, v4

    const/4 v4, 0x0

    .line 3887
    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/DisplayPolicy;->isFullyTransparentAllowed(Lcom/android/server/wm/WindowState;I)Z

    move-result v3

    and-int/2addr v2, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_21
    if-eqz v1, :cond_25

    and-int/lit8 p1, p1, -0x2

    :cond_25
    if-nez v2, :cond_29

    or-int/lit8 p1, p1, 0x20

    :cond_29
    return p1
.end method

.method public convertNonDecorInsetsToStableInsets(Landroid/graphics/Rect;I)V
    .registers 4

    .line 3121
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    aget p0, p0, p2

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->top:I

    return-void
.end method

.method public final disablePointerLocation()V
    .registers 3

    .line 4359
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-nez v0, :cond_5

    return-void

    .line 4365
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disablePointerLocation: v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isRemoved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 4366
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isRemoved()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    .line 4365
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4368
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_42

    .line 4369
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 4375
    :cond_42
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 4376
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 4377
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    return-void
.end method

.method public disableTouchListener()V
    .registers 5

    .line 4528
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTouchEventView:Lcom/samsung/cmfa/AuthTouch/TouchEventView;

    const-string v1, "WindowManager"

    if-nez v0, :cond_c

    const-string p0, "TouchEventView is not added"

    .line 4529
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4532
    :cond_c
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mIsCmfaStarted:Z

    if-nez v2, :cond_16

    const-string p0, "mIsCmfaStarted is false"

    .line 4533
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4538
    :cond_16
    :try_start_16
    iget v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTouchEventViewHash:I

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    if-ne v2, v0, :cond_3b

    .line 4539
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTouchEventView:Lcom/samsung/cmfa/AuthTouch/TouchEventView;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayContent;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V
    :try_end_25
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_25} :catch_26

    goto :goto_3b

    :catch_26
    move-exception v0

    .line 4542
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in unregistering mTouchEventView :- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    :goto_3b
    const/4 v0, 0x0

    .line 4545
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mIsCmfaStarted:Z

    return-void
.end method

.method public final drawsBarBackground(Lcom/android/server/wm/WindowState;)Z
    .registers 5

    const/4 p0, 0x1

    if-nez p1, :cond_4

    return p0

    .line 3873
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    move v0, p0

    goto :goto_13

    :cond_12
    move v0, v1

    .line 3875
    :goto_13
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x20000

    and-int/2addr p1, v2

    if-eqz p1, :cond_20

    move p1, p0

    goto :goto_21

    :cond_20
    move p1, v1

    :goto_21
    if-nez p1, :cond_27

    if-eqz v0, :cond_26

    goto :goto_27

    :cond_26
    move p0, v1

    :cond_27
    :goto_27
    return p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 8

    .line 4138
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "DisplayPolicy"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4141
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mCarDockEnablesAccelerometer="

    .line 4142
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mCarDockEnablesAccelerometer:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " mDeskDockEnablesAccelerometer="

    .line 4143
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4144
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDeskDockEnablesAccelerometer:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 4145
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mDockMode="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    invoke-static {v2}, Landroid/content/Intent;->dockStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " mLidState="

    .line 4146
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    invoke-static {v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->lidStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4147
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mAwake="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " mScreenOnEarly="

    .line 4148
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " mScreenOnFully="

    .line 4149
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 4150
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mKeyguardDrawComplete="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " mWindowManagerDrawComplete="

    .line 4151
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 4152
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mHdmiPlugged="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 4153
    iget v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastDisableFlags:I

    if-eqz v2, :cond_b8

    .line 4154
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mLastDisableFlags=0x"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4155
    iget v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastDisableFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4157
    :cond_b8
    iget v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    if-eqz v2, :cond_d1

    .line 4158
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mLastAppearance="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4159
    const-class v2, Landroid/view/InsetsFlags;

    iget v3, p0, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    const-string v4, "appearance"

    invoke-static {v2, v4, v3}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4161
    :cond_d1
    iget v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastBehavior:I

    if-eqz v2, :cond_ea

    .line 4162
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mLastBehavior="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4163
    const-class v2, Landroid/view/InsetsFlags;

    iget v3, p0, Lcom/android/server/wm/DisplayPolicy;->mLastBehavior:I

    const-string v4, "behavior"

    invoke-static {v2, v4, v3}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4165
    :cond_ea
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mShowingDream="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " mDreamingLockscreen="

    .line 4166
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingLockscreen:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 4167
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_112

    .line 4168
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mStatusBar="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4170
    :cond_112
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_130

    .line 4171
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mStatusBarAlt="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4172
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mStatusBarAltPosition="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4173
    iget v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAltPosition:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 4175
    :cond_130
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_141

    .line 4176
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mExpandedPanel="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4178
    :cond_141
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "isKeyguardShowing="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardShowing()Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 4179
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_208

    .line 4180
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mNavigationBar="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4181
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mNavBarOpacityMode="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 4182
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mNavigationBarCanMove="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarCanMove:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 4183
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mNavigationBarPosition="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4184
    iget v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 4186
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    if-eqz v2, :cond_208

    .line 4187
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mCurrentUserResources"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4188
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " .mUserId="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4189
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    iget v2, v2, Landroid/content/res/Resources;->mUserId:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 4190
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " .getAssets().getApkPaths()="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4191
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/AssetManager;->getApkPaths()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4192
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " .getConfiguration()="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4193
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4194
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " .getDimensionPixelSize(R.dimen.navigation_bar_height)="

    .line 4200
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4201
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    const v3, 0x1050244

    .line 4202
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 4201
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 4204
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " mLastUpdatedUserId="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastUpdatedUserId:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 4205
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " mLastUpdatedUiContextPackageName="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4206
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastUpdatedUiContextPackageName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4207
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " mLastUpdatedCallers="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4208
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastUpdatedCallers:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4212
    :cond_208
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_226

    .line 4213
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mNavigationBarAlt="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4214
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mNavigationBarAltPosition="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4215
    iget v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAltPosition:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 4236
    :cond_226
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mClimateBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_244

    .line 4237
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mClimateBarAlt="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mClimateBarAlt:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4238
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mClimateBarAltPosition="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4239
    iget v2, p0, Lcom/android/server/wm/DisplayPolicy;->mClimateBarAltPosition:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 4241
    :cond_244
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_262

    .line 4242
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mExtraNavBarAlt="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4243
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mExtraNavBarAltPosition="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4244
    iget v2, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAltPosition:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 4246
    :cond_262
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_273

    .line 4247
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mFocusedWindow="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4249
    :cond_273
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_284

    .line 4250
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mTopFullscreenOpaqueWindowState="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4251
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4253
    :cond_284
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_295

    .line 4254
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mNavBarColorWindowCandidate="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4255
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4257
    :cond_295
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_2a6

    .line 4258
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mNavBarBackgroundWindow="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4259
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4261
    :cond_2a6
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastStatusBarAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    if-eqz v2, :cond_2c6

    .line 4262
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mLastStatusBarAppearanceRegions="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4263
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastStatusBarAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    :goto_2b7
    if-ltz v2, :cond_2c6

    .line 4264
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mLastStatusBarAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    aget-object v3, v3, v2

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_2b7

    .line 4267
    :cond_2c6
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundWindows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2f1

    .line 4268
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mStatusBarBackgroundWindows="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4269
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundWindows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_2de
    if-ltz v2, :cond_2f1

    .line 4270
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 4271
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_2de

    .line 4274
    :cond_2f1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mTopIsFullscreen="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 4275
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mForceShowNavigationBarEnabled="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4276
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowNavigationBarEnabled:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mAllowLockscreenWhenOn="

    .line 4277
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 4278
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mRemoteInsetsControllerControlsSystemBars="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4279
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/InsetsPolicy;->getRemoteInsetsControllerControlsSystemBars()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 4282
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mForceFreeformOverlappingWithNavBar="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4283
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceFreeformOverlappingWithNavBar:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 4286
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {v1, p2, v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4288
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Looper state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4289
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/util/PrintWriterPrinter;

    invoke-direct {v2, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 4293
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mStatusBarHeightForRotation="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4294
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4295
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    if-eqz p1, :cond_3ac

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p1, :cond_3ac

    .line 4296
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "UiContextResourcesConfig="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4297
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4298
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "UiContextResourcesMetrics="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4299
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4304
    :cond_3ac
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4305
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/DisplayPolicyExt;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final enablePointerLocation()V
    .registers 4

    .line 4332
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-eqz v0, :cond_5

    return-void

    .line 4336
    :cond_5
    new-instance v0, Lcom/android/internal/widget/PointerLocationView;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/PointerLocationView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    const/4 v1, 0x0

    .line 4337
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView;->setPrintCoords(Z)V

    .line 4338
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v2, 0x7df

    .line 4339
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x118

    .line 4340
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4343
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/4 v1, 0x3

    .line 4344
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 4345
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 4346
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4347
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_38
    const/4 v1, -0x3

    .line 4350
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 4351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PointerLocation - display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 4352
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 4353
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 4354
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4355
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    return-void
.end method

.method public final enableTouchListener(Z)V
    .registers 6

    .line 4506
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mIsCmfaStarted:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_c

    const-string p0, "TouchEventView is already added"

    .line 4507
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4511
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTouchEventView:Lcom/samsung/cmfa/AuthTouch/TouchEventView;

    if-nez v0, :cond_1b

    .line 4512
    new-instance v0, Lcom/samsung/cmfa/AuthTouch/TouchEventView;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mAuthTouchEnableListener:Lcom/samsung/cmfa/AuthTouch/IAuthTouchEnableListener;

    invoke-direct {v0, v2, v3}, Lcom/samsung/cmfa/AuthTouch/TouchEventView;-><init>(Landroid/content/Context;Lcom/samsung/cmfa/AuthTouch/IAuthTouchEnableListener;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTouchEventView:Lcom/samsung/cmfa/AuthTouch/TouchEventView;

    .line 4514
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableTouchListener debugmode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4515
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTouchEventView:Lcom/samsung/cmfa/AuthTouch/TouchEventView;

    invoke-virtual {v0, p1}, Lcom/samsung/cmfa/AuthTouch/TouchEventView;->setDebugmode(Z)V

    .line 4518
    :try_start_34
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTouchEventView:Lcom/samsung/cmfa/AuthTouch/TouchEventView;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V
    :try_end_3b
    .catch Ljava/lang/IllegalStateException; {:try_start_34 .. :try_end_3b} :catch_3c

    goto :goto_51

    :catch_3c
    move-exception p1

    .line 4520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in registering mTouchEventView :- "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4523
    :goto_51
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTouchEventView:Lcom/samsung/cmfa/AuthTouch/TouchEventView;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTouchEventViewHash:I

    const/4 p1, 0x1

    .line 4524
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mIsCmfaStarted:Z

    return-void
.end method

.method public final findAltBarMatchingPosition(I)Lcom/android/server/wm/WindowState;
    .registers 4

    .line 953
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_9

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAltPosition:I

    if-ne v1, p1, :cond_9

    return-object v0

    .line 956
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_12

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAltPosition:I

    if-ne v1, p1, :cond_12

    return-object v0

    .line 959
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mClimateBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1b

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mClimateBarAltPosition:I

    if-ne v1, p1, :cond_1b

    return-object v0

    .line 962
    :cond_1b
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_24

    iget p0, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAltPosition:I

    if-ne p0, p1, :cond_24

    return-object v0

    :cond_24
    const/4 p0, 0x0

    return-object p0
.end method

.method public findTransientNavOrAltBar()Lcom/android/server/wm/WindowState;
    .registers 2

    .line 972
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_5

    return-object v0

    .line 975
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_a

    return-object v0

    .line 978
    :cond_a
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz p0, :cond_f

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public finishKeyguardDrawn()Z
    .registers 4

    .line 1154
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1155
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    if-eqz v1, :cond_d

    goto :goto_14

    :cond_d
    const/4 v1, 0x1

    .line 1159
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    .line 1160
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .line 1161
    monitor-exit v0

    return v1

    .line 1156
    :cond_14
    :goto_14
    monitor-exit v0

    return v2

    :catchall_16
    move-exception p0

    .line 1161
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public finishPostLayoutPolicyLw()V
    .registers 3

    .line 2523
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    if-nez v0, :cond_e

    .line 2524
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingLockscreen:Z

    .line 2527
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemBarAttributes()V

    .line 2529
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastShowingDream:Z

    if-eq v0, v1, :cond_1e

    .line 2530
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastShowingDream:Z

    .line 2532
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->notifyKeyguardFlagsChanged()V

    .line 2537
    :cond_1e
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicyExt;->finishPostLayoutPolicyLw()V

    .line 2541
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v1

    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    invoke-interface {v0, v1, p0}, Lcom/android/server/policy/WindowManagerPolicy;->setAllowLockscreenWhenOn(IZ)V

    return-void
.end method

.method public finishScreenTurningOn()Z
    .registers 14

    .line 1179
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1182
    :try_start_3
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_FORCE_DEBUG_SCREEN_ON_enabled:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_43

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    iget-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    iget-boolean v5, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    iget-boolean v6, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    iget-boolean v7, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_SCREEN_ON:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, 0x4e34d208    # 7.5841587E8f

    const/16 v10, 0x3ff

    const-string v11, "finishScreenTurningOn: mAwake=%b, mScreenOnEarly=%b, mScreenOnFully=%b, mKeyguardDrawComplete=%b, mWindowManagerDrawComplete=%b"

    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v12, v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v12, v2

    const/4 v1, 0x2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v12, v1

    const/4 v1, 0x3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v12, v1

    const/4 v1, 0x4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v12, v1

    invoke-static {v8, v9, v10, v11, v12}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1197
    :cond_43
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    if-nez v1, :cond_7c

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    if-eqz v1, :cond_7c

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    if-eqz v1, :cond_7c

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    if-eqz v1, :cond_58

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    if-nez v1, :cond_58

    goto :goto_7c

    .line 1203
    :cond_58
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_FORCE_DEBUG_SCREEN_ON_enabled:Z

    const/4 v4, 0x0

    if-eqz v1, :cond_67

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_SCREEN_ON:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, 0x311132ce

    const-string v6, "Finished screen turning on..."

    invoke-static {v1, v5, v3, v6, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1209
    :cond_67
    iput-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    .line 1210
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 1211
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_3 .. :try_end_6c} :catchall_7e

    .line 1214
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_STATE_CONTROLLER:Z

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_7b

    .line 1215
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicyExt;->finishScreenTurningOn()V

    :cond_7b
    return v2

    .line 1199
    :cond_7c
    :goto_7c
    :try_start_7c
    monitor-exit v0

    return v3

    :catchall_7e
    move-exception p0

    .line 1211
    monitor-exit v0
    :try_end_80
    .catchall {:try_start_7c .. :try_end_80} :catchall_7e

    throw p0
.end method

.method public finishWindowsDrawn()Z
    .registers 3

    .line 1167
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1168
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    if-eqz v1, :cond_c

    goto :goto_11

    :cond_c
    const/4 v1, 0x1

    .line 1172
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .line 1173
    monitor-exit v0

    return v1

    :cond_11
    :goto_11
    const/4 p0, 0x0

    .line 1169
    monitor-exit v0

    return p0

    :catchall_14
    move-exception p0

    .line 1173
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public focusChangedLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .registers 3

    .line 3242
    iput-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 3243
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 3244
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean p1, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz p1, :cond_11

    .line 3245
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->onDefaultDisplayFocusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 3247
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemBarAttributes()V

    return-void
.end method

.method public final getAltBarPosition(Landroid/view/WindowManager$LayoutParams;)I
    .registers 2

    .line 1770
    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 p1, 0x3

    if-eq p0, p1, :cond_19

    const/4 p1, 0x5

    if-eq p0, p1, :cond_17

    const/16 p1, 0x30

    if-eq p0, p1, :cond_14

    const/16 p1, 0x50

    if-eq p0, p1, :cond_12

    const/4 p0, -0x1

    return p0

    :cond_12
    const/4 p0, 0x4

    return p0

    :cond_14
    const/16 p0, 0x8

    return p0

    :cond_17
    const/4 p0, 0x2

    return p0

    :cond_19
    const/4 p0, 0x1

    return p0
.end method

.method public final getBarContentFrameForWindow(Lcom/android/server/wm/WindowState;I)Landroid/graphics/Rect;
    .registers 6

    .line 3832
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowState;->getDisplayFrames(Lcom/android/server/wm/DisplayFrames;)Lcom/android/server/wm/DisplayFrames;

    move-result-object p0

    .line 3833
    iget-object p1, p0, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    .line 3834
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3835
    sget-object v1, Lcom/android/server/wm/DisplayPolicy;->sTmpDisplayCutoutSafe:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-nez p2, :cond_29

    .line 3840
    invoke-virtual {p1}, Landroid/view/InsetsState;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Insets;->top:I

    const/4 v2, 0x0

    invoke-static {p0, v2}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, v1, Landroid/graphics/Rect;->top:I

    .line 3842
    :cond_29
    invoke-virtual {p1, p2}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object p0

    if-eqz p0, :cond_39

    .line 3844
    invoke-virtual {p0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3845
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    :cond_39
    return-object v0
.end method

.method public getBottomGestureSensitivity()I
    .registers 2

    .line 4670
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getBottomSensitivity(Landroid/content/res/Resources;)I

    move-result p0

    return p0
.end method

.method public final getCocktailBarManagerInternal()Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;
    .registers 3

    .line 4625
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mServiceAcquireLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4626
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mCocktailBarInternal:Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    if-nez v1, :cond_11

    .line 4627
    const-class v1, Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mCocktailBarInternal:Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    .line 4629
    :cond_11
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mCocktailBarInternal:Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    monitor-exit v0

    return-object p0

    :catchall_15
    move-exception p0

    .line 4630
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public getConfigDisplayHeight(IIIILandroid/view/DisplayCutout;)I
    .registers 7

    .line 3086
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    aget p1, p1, p3

    if-eqz p5, :cond_1c

    .line 3087
    sget-boolean p4, Lcom/samsung/android/rune/CoreRune;->MD_DEX_NOT_SUPPORT_CUTOUT:Z

    if-eqz p4, :cond_12

    iget-object p4, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 3089
    invoke-virtual {p4}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result p4

    if-nez p4, :cond_1c

    :cond_12
    const/4 p4, 0x0

    .line 3093
    invoke-virtual {p5}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {p4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3095
    :cond_1c
    invoke-virtual {p0, p2, p3, p5}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayHeight(IILandroid/view/DisplayCutout;)I

    move-result p0

    sub-int/2addr p0, p1

    return p0
.end method

.method public getConfigDisplayWidth(IIIILandroid/view/DisplayCutout;)I
    .registers 6

    .line 3071
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result p0

    return p0
.end method

.method public getContext()Landroid/content/Context;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2871
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getCurrentUserResources()Landroid/content/res/Resources;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2863
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    if-nez v0, :cond_7

    .line 2864
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateCurrentUserResources()V

    .line 2866
    :cond_7
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    return-object p0
.end method

.method public getDisplayId()I
    .registers 1

    .line 1006
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p0

    return p0
.end method

.method public getDockMode()I
    .registers 1

    .line 1049
    iget p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    return p0
.end method

.method public getFocusedWindow()Lcom/android/server/wm/WindowState;
    .registers 1

    .line 4636
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method public getImeSourceFrameProvider()Lcom/android/internal/util/function/TriConsumer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/util/function/TriConsumer<",
            "Lcom/android/server/wm/DisplayFrames;",
            "Lcom/android/server/wm/WindowContainer;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 1785
    new-instance v0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    return-object v0
.end method

.method public getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;
    .registers 1

    .line 3422
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object p0

    return-object p0
.end method

.method public getLidState()I
    .registers 1

    .line 1079
    iget p0, p0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    return p0
.end method

.method public getNavBarPosition()I
    .registers 1

    .line 3235
    iget p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    return p0
.end method

.method public getNavigationBar()Lcom/android/server/wm/WindowState;
    .registers 2

    .line 1936
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    :goto_7
    return-object v0
.end method

.method public final getNavigationBarFrameHeight(I)I
    .registers 3

    .line 3012
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->shouldIgnoreNavBarParams()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3013
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarFrameHeightForRotationDefault:[I

    aget p0, p0, p1

    return p0

    .line 3016
    :cond_b
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-nez p0, :cond_11

    const/4 p0, 0x0

    return p0

    .line 3026
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->getLayoutingAttrs(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    return p0
.end method

.method public getNavigationBarHeight(I)I
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2976
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->shouldIgnoreNavBarParams()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2977
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarHeightForRotationDefault:[I

    aget p0, p0, p1

    return p0

    .line 2980
    :cond_b
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    const/4 v0, 0x0

    if-nez p0, :cond_11

    return v0

    .line 2984
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->getLayoutingAttrs(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    .line 2986
    iget-object p1, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:[Landroid/graphics/Insets;

    if-eqz p1, :cond_22

    array-length v1, p1

    const/4 v2, 0x1

    if-le v1, v2, :cond_22

    aget-object p1, p1, v2

    if-eqz p1, :cond_22

    goto :goto_24

    .line 2991
    :cond_22
    sget-object p1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 2993
    :goto_24
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget p1, p1, Landroid/graphics/Insets;->top:I

    if-ge p0, p1, :cond_2b

    return v0

    :cond_2b
    sub-int/2addr p0, p1

    return p0
.end method

.method public final getNavigationBarWidth(III)I
    .registers 7

    .line 2880
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->shouldIgnoreNavBarParams()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 2881
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarWidthForRotationDefault:[I

    aget p0, p0, p1

    return p0

    .line 2884
    :cond_b
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    const/4 p2, 0x0

    if-nez p0, :cond_11

    return p2

    .line 2887
    :cond_11
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 2888
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_20

    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_20

    aget-object p1, v0, p1

    if-eqz p1, :cond_20

    move-object p0, p1

    .line 2894
    :cond_20
    iget-object p1, p0, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:[Landroid/graphics/Insets;

    const/4 v0, 0x1

    if-eqz p1, :cond_2d

    array-length v1, p1

    if-le v1, v0, :cond_2d

    aget-object p1, p1, v0

    if-eqz p1, :cond_2d

    goto :goto_2f

    .line 2899
    :cond_2d
    sget-object p1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    :goto_2f
    if-ne p3, v0, :cond_3a

    .line 2902
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget p1, p1, Landroid/graphics/Insets;->right:I

    if-le p0, p1, :cond_39

    sub-int/2addr p0, p1

    return p0

    :cond_39
    return p2

    :cond_3a
    const/4 v0, 0x2

    if-ne p3, v0, :cond_46

    .line 2908
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget p1, p1, Landroid/graphics/Insets;->left:I

    if-le p0, p1, :cond_45

    sub-int/2addr p0, p1

    return p0

    :cond_45
    return p2

    .line 2914
    :cond_46
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    return p0
.end method

.method public getNonDecorDisplayHeight(IILandroid/view/DisplayCutout;)I
    .registers 6

    .line 3036
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    .line 3043
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarHeight(I)I

    move-result v0

    sub-int/2addr p1, v0

    :cond_c
    if-eqz p3, :cond_24

    .line 3045
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MD_DEX_NOT_SUPPORT_CUTOUT:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 3047
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v0

    if-nez v0, :cond_24

    .line 3049
    :cond_1a
    invoke-virtual {p3}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v0

    invoke-virtual {p3}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result p3

    add-int/2addr v0, p3

    sub-int/2addr p1, v0

    .line 3052
    :cond_24
    iget-object p3, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {p3}, Lcom/android/server/wm/DisplayPolicyExt;->getTaskbarController()Lcom/android/server/wm/TaskbarController;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/wm/TaskbarController;->hasTaskbar()Z

    move-result p3

    if-eqz p3, :cond_3d

    .line 3053
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicyExt;->getTaskbarController()Lcom/android/server/wm/TaskbarController;

    move-result-object p0

    .line 3054
    invoke-virtual {p0, p2}, Lcom/android/server/wm/TaskbarController;->calculateTaskbarAdditionalInset(I)I

    move-result p0

    if-lez p0, :cond_3d

    sub-int/2addr p1, p0

    :cond_3d
    return p1
.end method

.method public getNonDecorDisplayWidth(IIIILandroid/view/DisplayCutout;)I
    .registers 9

    .line 2946
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_17

    .line 2947
    invoke-virtual {p0, p3}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(I)I

    move-result v0

    if-eq v0, v1, :cond_10

    if-ne v0, v2, :cond_17

    .line 2949
    :cond_10
    invoke-virtual {p0, p3, p4, v0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarWidth(III)I

    move-result p4

    sub-int p4, p1, p4

    goto :goto_18

    :cond_17
    move p4, p1

    :goto_18
    if-eqz p5, :cond_30

    .line 2952
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MD_DEX_NOT_SUPPORT_CUTOUT:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2954
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v0

    if-nez v0, :cond_30

    .line 2956
    :cond_26
    invoke-virtual {p5}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v0

    invoke-virtual {p5}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result p5

    add-int/2addr v0, p5

    sub-int/2addr p4, v0

    .line 2959
    :cond_30
    sget-boolean p5, Lcom/samsung/android/rune/CoreRune;->CARLIFE_NAVBAR:Z

    if-eqz p5, :cond_55

    iget-object p5, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p5}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    move-result p5

    if-eqz p5, :cond_55

    iget-object p5, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz p5, :cond_55

    if-eqz p3, :cond_44

    if-ne p3, v2, :cond_55

    :cond_44
    if-le p1, p2, :cond_55

    .line 2961
    iget p1, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAltPosition:I

    if-eq p1, v1, :cond_4c

    if-ne p1, v2, :cond_55

    .line 2962
    :cond_4c
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mCarLifePolicy:Lcom/android/server/wm/CarLifePolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/CarLifePolicy;->getExtraNavBarInsetWidth()I

    move-result p0

    sub-int/2addr p4, p0

    :cond_55
    return p4
.end method

.method public getNonDecorInsetsLw(ILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V
    .registers 9

    .line 3149
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 3152
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_32

    .line 3153
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->getUiMode()I

    move-result v0

    .line 3154
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(I)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_21

    .line 3161
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarHeight(I)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_32

    :cond_21
    if-ne v3, v2, :cond_2a

    .line 3163
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarWidth(III)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->right:I

    goto :goto_32

    :cond_2a
    if-ne v3, v1, :cond_32

    .line 3165
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarWidth(III)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->left:I

    :cond_32
    :goto_32
    if-eqz p2, :cond_64

    .line 3169
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MD_DEX_NOT_SUPPORT_CUTOUT:Z

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 3171
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v0

    if-nez v0, :cond_64

    .line 3173
    :cond_40
    iget v0, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v3

    add-int/2addr v0, v3

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 3174
    iget v0, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v3

    add-int/2addr v0, v3

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 3175
    iget v0, p3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v3

    add-int/2addr v0, v3

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 3176
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result p2

    add-int/2addr v0, p2

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 3180
    :cond_64
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->CARLIFE_NAVBAR:Z

    if-eqz p2, :cond_95

    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    move-result p2

    if-eqz p2, :cond_95

    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz p2, :cond_95

    .line 3181
    iget p2, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAltPosition:I

    if-ne p2, v1, :cond_86

    .line 3182
    iget p2, p3, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicyExt;->mCarLifePolicy:Lcom/android/server/wm/CarLifePolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/CarLifePolicy;->getExtraNavBarInsetWidth()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p3, Landroid/graphics/Rect;->left:I

    goto :goto_95

    :cond_86
    if-ne p2, v2, :cond_95

    .line 3184
    iget p2, p3, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicyExt;->mCarLifePolicy:Lcom/android/server/wm/CarLifePolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/CarLifePolicy;->getExtraNavBarInsetWidth()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p3, Landroid/graphics/Rect;->right:I

    .line 3190
    :cond_95
    :goto_95
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayPolicyExt;->getTaskbarController()Lcom/android/server/wm/TaskbarController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/TaskbarController;->hasTaskbar()Z

    move-result p2

    if-eqz p2, :cond_aa

    .line 3191
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicyExt;->getTaskbarController()Lcom/android/server/wm/TaskbarController;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/TaskbarController;->addTaskbarAdditionalInset(ILandroid/graphics/Rect;)V

    :cond_aa
    return-void
.end method

.method public getNotificationShade()Lcom/android/server/wm/WindowState;
    .registers 1

    .line 1932
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method public getRefreshRatePolicy()Lcom/android/server/wm/RefreshRatePolicy;
    .registers 1

    .line 4134
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    return-object p0
.end method

.method public getScreenOnListener()Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;
    .registers 1

    .line 1123
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    return-object p0
.end method

.method public getStableInsetsLw(ILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V
    .registers 4

    .line 3133
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 3136
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorInsetsLw(ILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 3137
    invoke-virtual {p0, p3, p1}, Lcom/android/server/wm/DisplayPolicy;->convertNonDecorInsetsToStableInsets(Landroid/graphics/Rect;I)V

    return-void
.end method

.method public getStatusBar()Lcom/android/server/wm/WindowState;
    .registers 2

    .line 1928
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    :goto_7
    return-object v0
.end method

.method public getStatusBarHeight(I)I
    .registers 2

    .line 1903
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    aget p0, p0, p1

    return p0
.end method

.method public final getStatusBarHeight(Lcom/android/server/wm/DisplayFrames;)I
    .registers 4

    .line 1909
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_d

    .line 1910
    iget v1, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->getLayoutingAttrs(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 1915
    :goto_e
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MD_DEX_NOT_SUPPORT_CUTOUT:Z

    if-eqz v1, :cond_1b

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result p0

    if-eqz p0, :cond_1b

    return v0

    .line 1919
    :cond_1b
    iget-object p0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public getStatusBarHeightForRotation(I)I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1924
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeightForRotation(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;
    .registers 3

    .line 287
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mServiceAcquireLock:Ljava/lang/Object;

    monitor-enter v0

    .line 288
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-nez v1, :cond_11

    .line 289
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 290
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 292
    :cond_11
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    monitor-exit v0

    return-object p0

    :catchall_15
    move-exception p0

    .line 293
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public getSystemUiContext()Landroid/content/Context;
    .registers 1

    .line 2875
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    return-object p0
.end method

.method public getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;
    .registers 1

    .line 2282
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method public getWindowCornerRadius()F
    .registers 3

    .line 3106
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 3107
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result p0

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public final hasDexStandAloneNavigationBar()Z
    .registers 2

    .line 4764
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz p0, :cond_e

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0xa3f

    if-ne p0, v0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public final hasDexStandAloneNotificationShade()Z
    .registers 2

    .line 4782
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eqz p0, :cond_e

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0xa3e

    if-ne p0, v0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public final hasDexStandAloneStatusBar()Z
    .registers 2

    .line 4748
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz p0, :cond_e

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0xa3d

    if-ne p0, v0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public hasNavigationBar()Z
    .registers 1

    .line 1053
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    return p0
.end method

.method public hasSideGestures()Z
    .registers 2

    .line 1067
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureInset:I

    if-gtz v0, :cond_c

    iget p0, p0, Lcom/android/server/wm/DisplayPolicy;->mRightGestureInset:I

    if-lez p0, :cond_e

    :cond_c
    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public hasStatusBar()Z
    .registers 1

    .line 1063
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mHasStatusBar:Z

    return p0
.end method

.method public hideImmersiveModeConfirmation()V
    .registers 1

    .line 4605
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    if-eqz p0, :cond_7

    .line 4606
    invoke-virtual {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->hideImmersiveModeConfirmation()V

    :cond_7
    return-void
.end method

.method public isAwake()Z
    .registers 1

    .line 1099
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    return p0
.end method

.method public isCarDockEnablesAccelerometer()Z
    .registers 1

    .line 1029
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mCarDockEnablesAccelerometer:Z

    return p0
.end method

.method public isDeskDockEnablesAccelerometer()Z
    .registers 1

    .line 1033
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDeskDockEnablesAccelerometer:Z

    return p0
.end method

.method public isDexForceImmersiveModeEnabled()Z
    .registers 2

    .line 4574
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    .line 4575
    invoke-virtual {p0}, Lcom/android/server/wm/DexController;->isDexForceImmersiveModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public isDexStandAloneMode()Z
    .registers 2

    .line 4718
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean p0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public isFocusedWindowVisible()Z
    .registers 1

    .line 4640
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result p0

    return p0
.end method

.method public isForceShowNavigationBarEnabled()Z
    .registers 1

    .line 1119
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowNavigationBarEnabled:Z

    return p0
.end method

.method public isFullyTransparentAllowed(Lcom/android/server/wm/WindowState;I)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-nez p1, :cond_4

    const/4 p0, 0x1

    return p0

    .line 3864
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayPolicy;->getBarContentFrameForWindow(Lcom/android/server/wm/WindowState;I)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowState;->isFullyTransparentBarAllowed(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public isHdmiPlugged()Z
    .registers 1

    .line 1025
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    return p0
.end method

.method public final isImmersiveMode(Lcom/android/server/wm/WindowState;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 4032
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_17

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 4034
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicyExt;->getTaskbarController()Lcom/android/server/wm/TaskbarController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskbarController;->hasTaskbar()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 4036
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->canHideNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_6f

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v1, v1, Landroid/view/InsetsFlags;->behavior:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_6f

    .line 4040
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    if-ne v1, v2, :cond_6f

    .line 4042
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InsetsPolicy;->isHidden(I)Z

    move-result v1

    if-nez v1, :cond_62

    .line 4045
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InsetsPolicy;->isTransient(I)Z

    move-result v1

    if-nez v1, :cond_62

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 4047
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicyExt;->getTaskbarController()Lcom/android/server/wm/TaskbarController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskbarController;->hasTaskbar()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 4048
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v1

    const/16 v3, 0x15

    invoke-virtual {v1, v3}, Lcom/android/server/wm/InsetsPolicy;->isTransient(I)Z

    move-result v1

    if-nez v1, :cond_62

    .line 4049
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/wm/InsetsPolicy;->isHidden(I)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 4051
    :cond_62
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eq p1, p0, :cond_6f

    .line 4052
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeDream()Z

    move-result p0

    if-nez p0, :cond_6f

    move v0, v2

    :cond_6f
    return v0
.end method

.method public isInDexForceImmersiveMode()Z
    .registers 2

    .line 4579
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    .line 4580
    invoke-virtual {p0}, Lcom/android/server/wm/DexController;->isInDexForceImmersiveMode()Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public isInImmersiveSplitMode(Lcom/android/server/wm/WindowState;)Z
    .registers 3

    const/4 v0, 0x0

    .line 4698
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy;->isInImmersiveSplitMode(Lcom/android/server/wm/WindowState;Z)Z

    move-result p0

    return p0
.end method

.method public isInImmersiveSplitMode(Lcom/android/server/wm/WindowState;Z)Z
    .registers 3

    if-nez p1, :cond_8

    .line 4706
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-nez p1, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    if-eqz p2, :cond_f

    .line 4711
    invoke-static {p1}, Lcom/android/server/wm/PolicyControl;->shouldApplySplitImmersiveStatusBar(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    goto :goto_13

    .line 4712
    :cond_f
    invoke-static {p1}, Lcom/android/server/wm/PolicyControl;->shouldApplySplitImmersiveNavigation(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    :goto_13
    return p0
.end method

.method public isKeyguardDrawComplete()Z
    .registers 1

    .line 1111
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    return p0
.end method

.method public final isKeyguardOccluded()Z
    .registers 2

    .line 3414
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/WindowManagerPolicyExt;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/android/server/policy/WindowManagerPolicyExt;->isKeyguardOccluded(I)Z

    move-result p0

    return p0
.end method

.method public isKeyguardShowing()Z
    .registers 1

    .line 3409
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowing()Z

    move-result p0

    return p0
.end method

.method public isNavOrAltBar(Lcom/android/server/wm/WindowState;)Z
    .registers 3

    .line 4586
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eq v0, p1, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    if-eq v0, p1, :cond_f

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    if-ne p0, p1, :cond_d

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

.method public isNavigationBarVisibleLw()Z
    .registers 2

    .line 4596
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-nez v0, :cond_22

    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 4598
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicyExt;->getTaskbarController()Lcom/android/server/wm/TaskbarController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskbarController;->hasTaskbar()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 4599
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicyExt;->getTaskbarController()Lcom/android/server/wm/TaskbarController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskbarController;->isTaskbarVisible()Z

    move-result p0

    if-eqz p0, :cond_24

    :cond_22
    const/4 p0, 0x1

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    :goto_25
    return p0
.end method

.method public isPersistentVrModeEnabled()Z
    .registers 1

    .line 1041
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mPersistentVrModeEnabled:Z

    return p0
.end method

.method public isScreenOnEarly()Z
    .registers 1

    .line 1103
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    return p0
.end method

.method public isScreenOnFully()Z
    .registers 1

    .line 1107
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    return p0
.end method

.method public isShowingDreamLw()Z
    .registers 1

    .line 3111
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    return p0
.end method

.method public isStatusBarVisibleLw()Z
    .registers 1

    .line 4592
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isTopLayoutFullscreen()Z
    .registers 1

    .line 2286
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    return p0
.end method

.method public final isTwoFingerSwipeGestureAcceptable(I)Z
    .registers 5

    .line 910
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 911
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_18

    if-eq p1, v0, :cond_16

    const/4 p0, 0x4

    if-ne p1, p0, :cond_17

    :cond_16
    move v1, v2

    :cond_17
    return v1

    :cond_18
    if-ne p0, v0, :cond_20

    if-eq p1, v2, :cond_1f

    const/4 p0, 0x3

    if-ne p1, p0, :cond_20

    :cond_1f
    move v1, v2

    :cond_20
    return v1
.end method

.method public isWindowExcludedFromContent(Lcom/android/server/wm/WindowState;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_10

    .line 4387
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-eqz p0, :cond_10

    .line 4388
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-virtual {p0}, Lcom/android/internal/widget/PointerLocationView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    if-ne p1, p0, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method public isWindowManagerDrawComplete()Z
    .registers 1

    .line 1115
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    return p0
.end method

.method public layoutWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2158
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->skipLayout()Z

    move-result v2

    if-eqz v2, :cond_b

    return-void

    :cond_b
    move-object/from16 v2, p3

    .line 2164
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowState;->getDisplayFrames(Lcom/android/server/wm/DisplayFrames;)Lcom/android/server/wm/DisplayFrames;

    move-result-object v2

    .line 2166
    iget v3, v2, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowState;->getLayoutingAttrs(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    if-eqz p2, :cond_1e

    .line 2167
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v3

    goto :goto_1f

    :cond_1e
    const/4 v3, 0x0

    :goto_1f
    move-object v13, v3

    .line 2171
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-ne v5, v3, :cond_26

    const/4 v3, 0x1

    goto :goto_27

    :cond_26
    const/4 v3, 0x0

    :goto_27
    const/4 v4, -0x1

    if-eqz v3, :cond_2e

    .line 2172
    iget v6, v1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    move v10, v6

    goto :goto_2f

    :cond_2e
    move v10, v4

    :goto_2f
    if-eqz v3, :cond_35

    .line 2180
    iget v3, v1, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    move v11, v3

    goto :goto_36

    :cond_35
    move v11, v4

    .line 2185
    :goto_36
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mWindowBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2186
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/DisplayPolicy;->preLayoutWindow(Lcom/android/server/wm/WindowState;)V

    .line 2189
    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mWindowLayout:Landroid/view/WindowLayout;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getInsetsState()Landroid/view/InsetsState;

    move-result-object v6

    iget-object v7, v2, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget-object v8, v0, Lcom/android/server/wm/DisplayPolicy;->mWindowBounds:Landroid/graphics/Rect;

    .line 2191
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v9

    .line 2192
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getRequestedVisibilities()Landroid/view/InsetsVisibilities;

    move-result-object v12

    iget v14, v1, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->sTmpClientFrames:Landroid/window/ClientWindowFrames;

    .line 2193
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v16

    move-object v15, v2

    .line 2189
    invoke-virtual/range {v4 .. v16}, Landroid/view/WindowLayout;->computeFrames(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;IIILandroid/view/InsetsVisibilities;Landroid/graphics/Rect;FLandroid/window/ClientWindowFrames;I)V

    .line 2196
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/DisplayPolicy;->postLayoutWindow(Lcom/android/server/wm/WindowState;)V

    .line 2200
    iget v0, v1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    iget v3, v1, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/wm/WindowState;->setFrames(Landroid/window/ClientWindowFrames;II)V

    return-void
.end method

.method public navigationBarCanMove()Z
    .registers 1

    .line 1071
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarCanMove:Z

    return p0
.end method

.method public navigationBarPosition(I)I
    .registers 7

    .line 3202
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->shouldIgnoreNavBarParams()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v0, :cond_17

    .line 3203
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->navigationBarCanMove()Z

    move-result p0

    if-eqz p0, :cond_16

    if-ne p1, v3, :cond_13

    return v4

    :cond_13
    if-ne p1, v4, :cond_16

    return v1

    :cond_16
    return v2

    .line 3213
    :cond_17
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz p0, :cond_29

    .line 3214
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->getLayoutingAttrs(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq p0, v3, :cond_28

    const/4 p1, 0x5

    if-eq p0, p1, :cond_27

    return v2

    :cond_27
    return v1

    :cond_28
    return v4

    :cond_29
    const/4 p0, -0x1

    return p0
.end method

.method public notifyDisplayReady()V
    .registers 3

    .line 2918
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 2932
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayPolicy;->startEnableTouchEvent(Z)V

    .line 2933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDisplayReady() >> CMFA startEnableTouchEvent called for Display Id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WindowManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onConfigurationChanged()V
    .registers 10

    .line 2654
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v0

    .line 2656
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2657
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getPortraitRotation()I

    move-result v2

    .line 2658
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getUpsideDownRotation()I

    move-result v3

    .line 2659
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getLandscapeRotation()I

    move-result v4

    .line 2660
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getSeascapeRotation()I

    move-result v0

    .line 2662
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasStatusBar()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_45

    .line 2663
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    .line 2665
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarHeightForRotation(I)I

    move-result v7

    aput v7, v5, v3

    aput v7, v5, v2

    .line 2666
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    .line 2667
    invoke-virtual {p0, v4}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarHeightForRotation(I)I

    move-result v7

    aput v7, v5, v4

    .line 2668
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    .line 2669
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarHeightForRotation(I)I

    move-result v7

    aput v7, v5, v0

    const v5, 0x105014a

    .line 2670
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayCutoutTouchableRegionSize:I

    goto :goto_51

    .line 2673
    :cond_45
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    aput v6, v5, v0

    aput v6, v5, v4

    aput v6, v5, v3

    aput v6, v5, v2

    .line 2677
    iput v6, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayCutoutTouchableRegionSize:I

    .line 2681
    :goto_51
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v5, v5, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v5, :cond_60

    const v5, 0x11101b5

    .line 2682
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    :cond_60
    move v5, v6

    :goto_61
    const/4 v7, 0x3

    if-gt v5, v7, :cond_7f

    .line 2691
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mPrevNavigationBarHeightForRotationDefault:[I

    iget-object v8, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarHeightForRotationDefault:[I

    aget v8, v8, v5

    aput v8, v7, v5

    .line 2693
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mPrevNavigationBarFrameHeightForRotationDefault:[I

    iget-object v8, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarFrameHeightForRotationDefault:[I

    aget v8, v8, v5

    aput v8, v7, v5

    .line 2695
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mPrevNavigationBarWidthForRotationDefault:[I

    iget-object v8, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarWidthForRotationDefault:[I

    aget v8, v8, v5

    aput v8, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_61

    .line 2700
    :cond_7f
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarHeightForRotationDefault:[I

    const v8, 0x1050244

    .line 2702
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v5, v3

    aput v8, v5, v2

    .line 2703
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarHeightForRotationDefault:[I

    const v8, 0x1050246

    .line 2705
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v5, v0

    aput v8, v5, v4

    .line 2707
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarFrameHeightForRotationDefault:[I

    const v8, 0x105023f

    .line 2709
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v5, v3

    aput v8, v5, v2

    .line 2710
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarFrameHeightForRotationDefault:[I

    const v8, 0x1050240

    .line 2712
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v5, v0

    aput v8, v5, v4

    .line 2715
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarWidthForRotationDefault:[I

    const v8, 0x1050249

    .line 2719
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v5, v0

    aput v8, v5, v4

    aput v8, v5, v3

    aput v8, v5, v2

    :goto_c4
    if-gt v6, v7, :cond_eb

    .line 2725
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPrevNavigationBarHeightForRotationDefault:[I

    aget v0, v0, v6

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarHeightForRotationDefault:[I

    aget v3, v3, v6

    if-ne v0, v3, :cond_e8

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPrevNavigationBarFrameHeightForRotationDefault:[I

    aget v0, v0, v6

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarFrameHeightForRotationDefault:[I

    aget v3, v3, v6

    if-ne v0, v3, :cond_e8

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPrevNavigationBarWidthForRotationDefault:[I

    aget v0, v0, v6

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarWidthForRotationDefault:[I

    aget v3, v3, v6

    if-eq v0, v3, :cond_e5

    goto :goto_e8

    :cond_e5
    add-int/lit8 v6, v6, 0x1

    goto :goto_c4

    .line 2731
    :cond_e8
    :goto_e8
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->setWaitingForNavBarParamsUpdate()V

    .line 2738
    :cond_eb
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_12f

    .line 2739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DisplayPolicy#onConfigurationChanged, displayId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2740
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ResourcesConfig="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    .line 2741
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", ResourcesMetrics="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    .line 2742
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "WindowManager"

    .line 2739
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12f
    const v0, 0x10e00d7

    .line 2750
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    .line 2751
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getLeftSensitivity(Landroid/content/res/Resources;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureInset:I

    .line 2752
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getRightSensitivity(Landroid/content/res/Resources;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mRightGestureInset:I

    .line 2753
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    .line 2754
    invoke-virtual {v0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->areNavigationButtonForcedVisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavButtonForcedVisible:Z

    const v0, 0x111018d

    .line 2755
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarLetsThroughTaps:Z

    const v0, 0x1110189

    .line 2757
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlwaysShowOnSideGesture:Z

    .line 2763
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    .line 2764
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getBottomSensitivity(Landroid/content/res/Resources;)I

    move-result v0

    .line 2765
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarFrameHeight(I)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureAdditionalInset:I

    .line 2773
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateConfigurationAndScreenSizeDependentBehaviors()V

    const v0, 0x10503ab

    .line 2777
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40200000    # 2.5f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFreeFormFrameThickness:I

    .line 2781
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->onConfigurationChanged()V

    const v0, 0x111002f

    .line 2786
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2787
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mShouldAttachNavBarToAppDuringTransition:Z

    if-eq v1, v0, :cond_192

    .line 2788
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShouldAttachNavBarToAppDuringTransition:Z

    .line 2793
    :cond_192
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicyExt;->onConfigurationChanged()V

    return-void
.end method

.method public onDisplayInfoChanged(Landroid/view/DisplayInfo;)V
    .registers 3

    .line 2137
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->onDisplayInfoChanged(Landroid/view/DisplayInfo;)V

    .line 2140
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FOR_SUB_DISPLAY:Z

    if-eqz v0, :cond_12

    iget v0, p1, Landroid/view/DisplayInfo;->displayId:I

    if-nez v0, :cond_12

    .line 2141
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RefreshRatePolicy;->onDisplayInfoChanged(Landroid/view/DisplayInfo;)V

    :cond_12
    return-void
.end method

.method public onLockTaskStateChangedLw(I)V
    .registers 2

    .line 4109
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->onLockTaskModeChangedLw(I)V

    return-void
.end method

.method public onOverlayChangedLw()V
    .registers 1

    .line 2645
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateCurrentUserResources()V

    .line 2646
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->onConfigurationChanged()V

    .line 2647
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {p0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->onConfigurationChanged()V

    return-void
.end method

.method public onPowerKeyDown(Z)V
    .registers 8

    .line 4087
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 4088
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemUiControllingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayPolicy;->isImmersiveMode(Lcom/android/server/wm/WindowState;)Z

    move-result v4

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastDisableFlags:I

    .line 4089
    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->isNavBarEmpty(I)Z

    move-result v5

    move v1, p1

    .line 4087
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ImmersiveModeConfirmation;->onPowerKeyDown(ZJZZ)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 4091
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mHiddenNavPanic:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_20
    return-void
.end method

.method public onSystemUiSettingsChanged()Z
    .registers 2

    .line 4113
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget p0, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->onSettingChanged(I)Z

    move-result p0

    return p0
.end method

.method public onVrStateChangedLw(Z)V
    .registers 2

    .line 4096
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->onVrStateChangedLw(Z)V

    return-void
.end method

.method public final postLayoutWindow(Lcom/android/server/wm/WindowState;)V
    .registers 2

    .line 2275
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isMultiWindowHandler()Z

    move-result p0

    if-nez p0, :cond_c

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isMultiWindowMenuPopup()Z

    move-result p0

    if-eqz p0, :cond_11

    .line 2276
    :cond_c
    sget-object p0, Lcom/android/server/wm/DisplayPolicy;->sTmpClientFrames:Landroid/window/ClientWindowFrames;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowState;->fitToStableAreaForHandler(Landroid/window/ClientWindowFrames;)V

    :cond_11
    return-void
.end method

.method public final preLayoutWindow(Lcom/android/server/wm/WindowState;)V
    .registers 9

    .line 2205
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 2236
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v1

    if-nez v1, :cond_13

    .line 2237
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isPopOver()Z

    move-result v1

    if-eqz v1, :cond_cc

    .line 2238
    :cond_13
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 2239
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getImeInputTarget()Lcom/android/server/wm/InputTarget;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 2240
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getImeInputTarget()Lcom/android/server/wm/InputTarget;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v2

    goto :goto_27

    :cond_26
    const/4 v2, 0x0

    :goto_27
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_33

    .line 2241
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-ne v0, v2, :cond_33

    move v0, v3

    goto :goto_34

    :cond_33
    move v0, v4

    .line 2242
    :goto_34
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_c0

    if-eqz v2, :cond_c0

    .line 2243
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 2244
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v0

    .line 2245
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2246
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTmpFrame:Landroid/graphics/Rect;

    .line 2247
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v5

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v6

    or-int/2addr v5, v6

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v6

    or-int/2addr v5, v6

    .line 2246
    invoke-virtual {v0, v2, v5, v4}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 2248
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTmpFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    if-lez v0, :cond_cc

    .line 2251
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isPopOver()Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 2252
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mPopOverController:Lcom/android/server/wm/PopOverController;

    .line 2253
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mTmpFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 2252
    invoke-virtual {v1, p1, v2, v5}, Lcom/android/server/wm/PopOverController;->getDistanceToTopForPopOver(Lcom/android/server/wm/WindowState;II)I

    move-result v1

    goto :goto_a2

    .line 2255
    :cond_8c
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mTmpFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v5

    .line 2256
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/DisplayPolicy;->mTopFreeFormFrameThickness:I

    sub-int/2addr v2, v1

    .line 2255
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2258
    :goto_a2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2259
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowBounds:Landroid/graphics/Rect;

    neg-int v0, v0

    invoke-virtual {p0, v4, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 2260
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isLayoutWithIme()Z

    move-result p0

    if-nez p0, :cond_b8

    .line 2261
    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowState;->setLayoutWithIme(Z)V

    .line 2262
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->forceReportingResized()V

    .line 2264
    :cond_b8
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowFrames;->setContentChanged(Z)V

    goto :goto_cc

    .line 2266
    :cond_c0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isLayoutWithIme()Z

    move-result p0

    if-eqz p0, :cond_cc

    .line 2267
    invoke-virtual {p1, v4}, Lcom/android/server/wm/WindowState;->setLayoutWithIme(Z)V

    .line 2268
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->forceReportingResized()V

    :cond_cc
    :goto_cc
    return-void
.end method

.method public release()V
    .registers 4

    .line 4395
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAppTransitionListener:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TransitionController;->unregisterLegacyListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 4396
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda16;

    invoke-direct {v2, v1}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda16;-><init>(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4397
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowNavBarSettingsObserver:Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda17;

    invoke-direct {v2, v1}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda17;-><init>(Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4398
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-virtual {v0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->release()V

    const/4 v0, 0x0

    .line 4401
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mIsCmfaStarted:Z

    .line 4402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "release() >> CMFA mIsCmfaStarted is false for Display Id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WindowManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeWindowLw(Lcom/android/server/wm/WindowState;)V
    .registers 5

    .line 1834
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-eq v0, p1, :cond_58

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_a

    goto :goto_58

    .line 1845
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eq v0, p1, :cond_36

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_13

    goto :goto_36

    .line 1861
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_1a

    .line 1868
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    goto :goto_62

    .line 1870
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mClimateBarAlt:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_28

    .line 1871
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mClimateBarAlt:Lcom/android/server/wm/WindowState;

    .line 1872
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriConsumer;)V

    goto :goto_62

    .line 1873
    :cond_28
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_62

    .line 1874
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    .line 1875
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v2, 0x15

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriConsumer;)V

    goto :goto_62

    .line 1852
    :cond_36
    :goto_36
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 1853
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    .line 1854
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1856
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicyExt;->getTaskbarController()Lcom/android/server/wm/TaskbarController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskbarController;->hasTaskbar()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1857
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicyExt;->getTaskbarController()Lcom/android/server/wm/TaskbarController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskbarController;->setAdditionalInsetProviders(Lcom/android/server/wm/WindowState;)V

    goto :goto_62

    .line 1841
    :cond_58
    :goto_58
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 1842
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    .line 1843
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1877
    :cond_62
    :goto_62
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_68

    .line 1878
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 1881
    :cond_68
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mInsetsSourceWindowsExceptIme:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1896
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicyExt;->removeWindowLw(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public final requestTransientBarByTwoFingerGesture(Landroid/graphics/Region;II)V
    .registers 6

    .line 928
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_9

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    if-ne v1, p2, :cond_9

    goto :goto_d

    .line 930
    :cond_9
    invoke-virtual {p0, p3}, Lcom/android/server/wm/DisplayPolicy;->findAltBarMatchingPosition(I)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 931
    :goto_d
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->currentGestureStartedInRegion(Landroid/graphics/Region;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-nez v0, :cond_22

    if-nez p1, :cond_1a

    goto :goto_22

    .line 936
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->findTransientNavOrAltBar()Lcom/android/server/wm/WindowState;

    move-result-object p1

    const/4 p2, 0x0

    .line 937
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayPolicy;->requestTransientBars(Lcom/android/server/wm/WindowState;Z)V

    :cond_22
    :goto_22
    return-void
.end method

.method public final requestTransientBars(Lcom/android/server/wm/WindowState;Z)V
    .registers 11

    .line 3263
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_FACTORY_BINARY:Z

    const-string v1, "WindowManager"

    if-nez v0, :cond_17b

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    .line 3265
    invoke-static {v0}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_17b

    .line 3266
    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v0

    if-eqz v0, :cond_16

    goto/16 :goto_17b

    .line 3272
    :cond_16
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/WindowManagerPolicyExt;

    .line 3273
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicyExt;->isLockTaskModePinned()Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string p0, "Not showing transient bar, because lock task mode pinned"

    .line 3274
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3279
    :cond_2c
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DIRECT_WRITING:Z

    if-eqz v0, :cond_4d

    .line 3280
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicyExt;->getDisableTransientBarsWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 3282
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Not showing transient bar, because it is disabled by "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3289
    :cond_4d
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastDisableFlags:I

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->isNavBarEmpty(I)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_59

    move v0, v3

    goto :goto_5a

    :cond_59
    move v0, v2

    :goto_5a
    if-eqz v0, :cond_63

    .line 3292
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->isNavOrAltBar(Lcom/android/server/wm/WindowState;)Z

    move-result v4

    if-eqz v4, :cond_63

    return-void

    :cond_63
    if-eqz p1, :cond_17a

    .line 3298
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v4}, Lcom/android/server/policy/WindowManagerPolicy;->isUserSetupComplete()Z

    move-result v4

    if-nez v4, :cond_71

    goto/16 :goto_17a

    .line 3303
    :cond_71
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eq p1, v4, :cond_79

    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    if-ne p1, v4, :cond_7e

    .line 3306
    :cond_79
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-virtual {v4}, Lcom/android/server/wm/ImmersiveModeConfirmation;->showOkButton()V

    .line 3309
    :cond_7e
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v4

    if-eqz v4, :cond_89

    .line 3311
    invoke-virtual {v4}, Lcom/android/server/wm/InsetsSourceProvider;->getControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v4

    goto :goto_8a

    :cond_89
    const/4 v4, 0x0

    :goto_8a
    if-eqz v4, :cond_17a

    .line 3313
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v5

    if-ne v4, v5, :cond_94

    goto/16 :goto_17a

    .line 3319
    :cond_94
    invoke-interface {v4, v2}, Lcom/android/server/wm/InsetsControlTarget;->getRequestedVisibility(I)Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 3320
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    goto :goto_a0

    :cond_9f
    move v2, v3

    .line 3321
    :goto_a0
    invoke-interface {v4, v3}, Lcom/android/server/wm/InsetsControlTarget;->getRequestedVisibility(I)Z

    move-result v5

    if-eqz v5, :cond_ab

    .line 3325
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v5

    goto :goto_ac

    :cond_ab
    move v5, v3

    :goto_ac
    or-int/2addr v2, v5

    .line 3326
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_be

    const/16 v5, 0x15

    invoke-interface {v4, v5}, Lcom/android/server/wm/InsetsControlTarget;->getRequestedVisibility(I)Z

    move-result v5

    if-eqz v5, :cond_be

    .line 3328
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v5

    goto :goto_bf

    :cond_be
    move v5, v3

    :goto_bf
    or-int/2addr v2, v5

    .line 3332
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mClimateBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_d1

    const/16 v5, 0x14

    .line 3329
    invoke-interface {v4, v5}, Lcom/android/server/wm/InsetsControlTarget;->getRequestedVisibility(I)Z

    move-result v5

    if-eqz v5, :cond_d1

    .line 3334
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v5

    goto :goto_d2

    :cond_d1
    move v5, v3

    :goto_d2
    or-int/2addr v2, v5

    .line 3338
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requestTransientBars: swipeTarget="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", controlTarget="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", canShowTransient="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3340
    invoke-interface {v4}, Lcom/android/server/wm/InsetsControlTarget;->canShowTransient()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", restorePositionTypes=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3341
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", from="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    .line 3342
    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3338
    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3346
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eq p1, v5, :cond_11d

    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    if-ne p1, v5, :cond_12c

    .line 3350
    :cond_11d
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v5

    and-int/2addr v5, v2

    if-eqz v5, :cond_12c

    .line 3354
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p0

    invoke-interface {v4, p0, v3}, Lcom/android/server/wm/InsetsControlTarget;->showInsets(IZ)V

    return-void

    .line 3358
    :cond_12c
    invoke-interface {v4}, Lcom/android/server/wm/InsetsControlTarget;->canShowTransient()Z

    move-result v5

    if-eqz v5, :cond_15a

    .line 3362
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object p1

    instance-of v1, v4, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;

    iput-boolean v1, p1, Lcom/android/server/wm/InsetsPolicy;->mLastTransientRequestedByPolicyControl:Z

    if-eqz v0, :cond_14b

    .line 3366
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object p0

    new-array p1, v6, [I

    fill-array-data p1, :array_182

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/InsetsPolicy;->showTransient([IZ)V

    goto :goto_156

    .line 3370
    :cond_14b
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object p0

    sget-object p1, Lcom/android/server/wm/DisplayPolicy;->SHOW_TYPES_FOR_SWIPE:[I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/InsetsPolicy;->showTransient([IZ)V

    .line 3373
    :goto_156
    invoke-interface {v4, v2, v3}, Lcom/android/server/wm/InsetsControlTarget;->showInsets(IZ)V

    goto :goto_17a

    .line 3381
    :cond_15a
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result p2

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    or-int/2addr p2, v0

    invoke-interface {v4, p2, v3}, Lcom/android/server/wm/InsetsControlTarget;->showInsets(IZ)V

    .line 3386
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-ne p1, p2, :cond_17a

    .line 3391
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mSkipTransferTouchToStatusBar:Z

    if-eqz p0, :cond_16f

    return-void

    .line 3395
    :cond_16f
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->transferTouch()Z

    move-result p0

    if-nez p0, :cond_17a

    const-string p0, "Could not transfer touch to the status bar"

    .line 3397
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17a
    :goto_17a
    return-void

    :cond_17b
    :goto_17b
    const-string p0, "Not showing transient bar, because factory test mode"

    .line 3267
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :array_182
    .array-data 4
        0x0
        0x14
    .end array-data
.end method

.method public requestTransientTaskBar()V
    .registers 4

    .line 3252
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_f

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_f

    const/4 v1, 0x0

    .line 3256
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayPolicy;->requestTransientBars(Lcom/android/server/wm/WindowState;Z)V

    :cond_f
    return-void
.end method

.method public resetSystemBarAttributes()V
    .registers 2

    const/4 v0, 0x0

    .line 3426
    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastDisableFlags:I

    .line 3427
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemBarAttributes()V

    return-void
.end method

.method public final restoreDefaultNavigationBar()V
    .registers 4

    .line 4769
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDefaultNavigationBar:Lcom/android/server/wm/WindowState;

    if-ne v0, v1, :cond_7

    return-void

    :cond_7
    const/4 v2, 0x0

    .line 4773
    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_11

    .line 4775
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DisplayPolicy;->addWindowLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V

    .line 4777
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restoreDefaultNavigationBar: prev="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", now="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WindowManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final restoreDefaultNotificationShade()V
    .registers 4

    .line 4787
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDefaultNotificationShade:Lcom/android/server/wm/WindowState;

    if-ne v0, v1, :cond_7

    return-void

    :cond_7
    const/4 v2, 0x0

    .line 4791
    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_11

    .line 4793
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DisplayPolicy;->addWindowLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V

    .line 4795
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restoreDefaultNotificationShade: prev="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", now="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WindowManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final restoreDefaultStatusBar()V
    .registers 4

    .line 4752
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDefaultStatusBar:Lcom/android/server/wm/WindowState;

    if-ne v0, v1, :cond_7

    return-void

    :cond_7
    const/4 v2, 0x0

    .line 4756
    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_11

    .line 4758
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DisplayPolicy;->addWindowLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V

    .line 4760
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restoreDefaultStatusBar: prev="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", now="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WindowManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public screenTurnedOff()V
    .registers 3

    .line 1137
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1138
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 1139
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 1140
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    .line 1141
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    const/4 v1, 0x0

    .line 1142
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    .line 1146
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicyExt;->screenTurnedOff()V

    .line 1149
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public screenTurnedOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V
    .registers 4

    .line 1127
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 1128
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    const/4 v1, 0x0

    .line 1129
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 1130
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    .line 1131
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .line 1132
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    .line 1133
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public selectAnimation(Lcom/android/server/wm/WindowState;I)I
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1960
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ANIM_enabled:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-eqz v3, :cond_26

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    int-to-long v9, v2

    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v12, 0x1458bdef

    new-array v13, v6, [Ljava/lang/Object;

    aput-object v3, v13, v5

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v13, v8

    invoke-static {v11, v12, v7, v4, v13}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1962
    :cond_26
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    const/4 v9, -0x1

    if-eqz v3, :cond_34

    .line 1963
    invoke-virtual {v3, v1}, Lcom/android/server/wm/CoverPolicy;->shouldApplyNoAnimation(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    if-eqz v3, :cond_34

    return v9

    .line 1969
    :cond_34
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v3, :cond_4f

    .line 1970
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    iget v3, v3, Landroid/view/DisplayInfo;->flags:I

    const v10, 0x8000

    and-int/2addr v3, v10

    if-eqz v3, :cond_4f

    const-string v0, "SPEG"

    const-string/jumbo v1, "skip animation-leash of window_animation"

    .line 1972
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    .line 1978
    :cond_4f
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    const v10, 0x10a003c

    const v11, 0x10a003d

    const/4 v12, 0x3

    if-ne v1, v3, :cond_65

    if-eq v2, v6, :cond_64

    if-ne v2, v7, :cond_5f

    goto :goto_64

    :cond_5f
    if-eq v2, v8, :cond_63

    if-ne v2, v12, :cond_110

    :cond_63
    return v10

    :cond_64
    :goto_64
    return v11

    .line 1986
    :cond_65
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    const v13, 0x10a0038

    const v14, 0x10a003a

    const v15, 0x10a0035

    const v16, 0x10a0039

    const v17, 0x10a0036

    const v18, 0x10a003b

    if-ne v1, v3, :cond_bb

    .line 1987
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v3, :cond_84

    return v5

    .line 1991
    :cond_84
    iget v3, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    if-ne v3, v7, :cond_a1

    if-eq v2, v6, :cond_92

    if-ne v2, v7, :cond_8d

    goto :goto_92

    :cond_8d
    if-eq v2, v8, :cond_91

    if-ne v2, v12, :cond_110

    :cond_91
    return v15

    .line 1994
    :cond_92
    :goto_92
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_a0

    const v0, 0x10a0037

    return v0

    :cond_a0
    return v17

    :cond_a1
    if-ne v3, v6, :cond_ae

    if-eq v2, v6, :cond_ad

    if-ne v2, v7, :cond_a8

    goto :goto_ad

    :cond_a8
    if-eq v2, v8, :cond_ac

    if-ne v2, v12, :cond_110

    :cond_ac
    return v14

    :cond_ad
    :goto_ad
    return v18

    :cond_ae
    if-ne v3, v8, :cond_110

    if-eq v2, v6, :cond_ba

    if-ne v2, v7, :cond_b5

    goto :goto_ba

    :cond_b5
    if-eq v2, v8, :cond_b9

    if-ne v2, v12, :cond_110

    :cond_b9
    return v13

    :cond_ba
    :goto_ba
    return v16

    .line 2020
    :cond_bb
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    if-eq v1, v3, :cond_cb

    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    if-eq v1, v3, :cond_cb

    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mClimateBarAlt:Lcom/android/server/wm/WindowState;

    if-eq v1, v3, :cond_cb

    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    if-ne v1, v3, :cond_110

    .line 2022
    :cond_cb
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v3, :cond_d4

    return v5

    .line 2026
    :cond_d4
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    if-ne v1, v3, :cond_db

    iget v0, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAltPosition:I

    goto :goto_dd

    :cond_db
    iget v0, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAltPosition:I

    :goto_dd
    if-eq v2, v6, :cond_e4

    if-ne v2, v7, :cond_e2

    goto :goto_e4

    :cond_e2
    move v3, v5

    goto :goto_e5

    :cond_e4
    :goto_e4
    move v3, v8

    :goto_e5
    if-eq v2, v8, :cond_ec

    if-ne v2, v12, :cond_ea

    goto :goto_ec

    :cond_ea
    move v12, v5

    goto :goto_ed

    :cond_ec
    :goto_ec
    move v12, v8

    :goto_ed
    if-eq v0, v8, :cond_10a

    if-eq v0, v6, :cond_104

    if-eq v0, v7, :cond_fe

    const/16 v6, 0x8

    if-eq v0, v6, :cond_f8

    goto :goto_110

    :cond_f8
    if-eqz v3, :cond_fb

    return v11

    :cond_fb
    if-eqz v12, :cond_110

    return v10

    :cond_fe
    if-eqz v3, :cond_101

    return v17

    :cond_101
    if-eqz v12, :cond_110

    return v15

    :cond_104
    if-eqz v3, :cond_107

    return v18

    :cond_107
    if-eqz v12, :cond_110

    return v14

    :cond_10a
    if-eqz v3, :cond_10d

    return v16

    :cond_10d
    if-eqz v12, :cond_110

    return v13

    :cond_110
    :goto_110
    const/4 v0, 0x5

    if-ne v2, v0, :cond_13a

    .line 2064
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->hasAppShownWindows()Z

    move-result v0

    if-eqz v0, :cond_13a

    .line 2065
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_139

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_129

    goto :goto_139

    .line 2076
    :cond_129
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ANIM_enabled:Z

    if-eqz v0, :cond_135

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, -0x4db3cc1d

    invoke-static {v0, v1, v5, v4, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_135
    const v0, 0x10a0017

    return v0

    :cond_139
    :goto_139
    return v9

    :cond_13a
    return v5
.end method

.method public setAwake(Z)V
    .registers 2

    .line 1083
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    return-void
.end method

.method public setControlTargetToNotificationShade()V
    .registers 3

    .line 4565
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_28

    .line 4566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set ControlTarget to NotificationShade="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4567
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/InsetsPolicy;->updateBarControlTarget(Lcom/android/server/wm/WindowState;)V

    :cond_28
    return-void
.end method

.method public setDockMode(I)V
    .registers 2

    .line 1045
    iput p1, p0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    return-void
.end method

.method public setDropInputModePolicy(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .registers 5

    .line 1362
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d5

    if-ne v0, v1, :cond_23

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v0, 0x20000000

    and-int/2addr p2, v0

    if-nez p2, :cond_23

    .line 1366
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl$Transaction;

    .line 1367
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setDropInputMode(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_23
    return-void
.end method

.method public setForceFreeformOverlappingWithNavBar(Z)V
    .registers 3

    .line 4802
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceFreeformOverlappingWithNavBar:Z

    if-eq p1, v0, :cond_14

    .line 4803
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceFreeformOverlappingWithNavBar:Z

    .line 4804
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    if-eq p1, v0, :cond_14

    .line 4807
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemBarAttributes()V

    :cond_14
    return-void
.end method

.method public setHdmiPlugged(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 1010
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy;->setHdmiPlugged(ZZ)V

    return-void
.end method

.method public setHdmiPlugged(ZZ)V
    .registers 4

    if-nez p2, :cond_6

    .line 1014
    iget-boolean p2, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    if-eq p2, p1, :cond_27

    .line 1015
    :cond_6
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    .line 1016
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v0, 0x1

    invoke-virtual {p2, v0, v0}, Lcom/android/server/wm/WindowManagerService;->updateRotation(ZZ)V

    .line 1017
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.HDMI_PLUGGED"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x4000000

    .line 1018
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v0, "state"

    .line 1019
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1020
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_27
    return-void
.end method

.method public setLidState(I)V
    .registers 2

    .line 1075
    iput p1, p0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    return-void
.end method

.method public setMovingFreeformTask(Lcom/android/server/wm/Task;)V
    .registers 2

    .line 4815
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mMovingFreeformTask:Lcom/android/server/wm/Task;

    return-void
.end method

.method public setPersistentVrModeEnabled(Z)V
    .registers 2

    .line 1037
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mPersistentVrModeEnabled:Z

    return-void
.end method

.method public setPointerLocationEnabled(Z)V
    .registers 3

    .line 4323
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->supportsPointerLocation()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 4327
    :cond_7
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_d

    const/4 p1, 0x4

    goto :goto_e

    :cond_d
    const/4 p1, 0x5

    :goto_e
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setWaitingForNavBarParamsUpdate()V
    .registers 2

    .line 4653
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-nez p0, :cond_b

    goto :goto_e

    :cond_b
    const/4 v0, 0x1

    .line 4656
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsWaitingForParamsUpdate:Z

    :cond_e
    :goto_e
    return-void
.end method

.method public shouldAttachNavBarToAppDuringTransition()Z
    .registers 2

    .line 4462
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShouldAttachNavBarToAppDuringTransition:Z

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final shouldBeHiddenByKeyguard(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z
    .registers 7

    .line 2576
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_10

    .line 2577
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    move v0, v3

    goto :goto_27

    .line 2581
    :cond_10
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2582
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isAodShowing()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    if-nez v0, :cond_e

    :cond_26
    move v0, v2

    :goto_27
    if-eqz v0, :cond_2a

    return v2

    .line 2589
    :cond_2a
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_85

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_85

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2596
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isKeyguardGoingAway()Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2597
    invoke-virtual {v0, v3}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v0

    if-eqz v0, :cond_4b

    goto :goto_85

    :cond_4b
    if-eqz p2, :cond_65

    .line 2603
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_65

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v0, :cond_65

    .line 2604
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->canShowWhenLocked()Z

    move-result v0

    if-nez v0, :cond_63

    .line 2605
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->canBeHiddenByKeyguard()Z

    move-result p2

    if-nez p2, :cond_65

    :cond_63
    move p2, v2

    goto :goto_66

    :cond_65
    move p2, v3

    :goto_66
    if-eqz p2, :cond_69

    return v3

    .line 2611
    :cond_69
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 2612
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardOccluded()Z

    move-result p0

    if-eqz p0, :cond_82

    .line 2617
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canShowWhenLocked()Z

    move-result p0

    if-nez p0, :cond_81

    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_82

    :cond_81
    move v3, v2

    :cond_82
    xor-int/lit8 p0, v3, 0x1

    return p0

    :cond_85
    :goto_85
    return v3
.end method

.method public final shouldIgnoreNavBarParams()Z
    .registers 4

    .line 4660
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 4663
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_10

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mIsWaitingForParamsUpdate:Z

    if-nez v2, :cond_1a

    :cond_10
    if-nez v0, :cond_1b

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 4664
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->isFolded()Z

    move-result p0

    if-eqz p0, :cond_1b

    :cond_1a
    const/4 v1, 0x1

    :cond_1b
    return v1
.end method

.method public simulateLayoutDisplay(Lcom/android/server/wm/DisplayFrames;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2097
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v2

    .line 2098
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mInsetsSourceWindowsExceptIme:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_12
    if-ltz v3, :cond_6b

    .line 2099
    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mInsetsSourceWindowsExceptIme:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 2100
    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mWindowLayout:Landroid/view/WindowLayout;

    iget v6, v1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowState;->getLayoutingAttrs(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    iget-object v8, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget-object v9, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    .line 2102
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v10

    const/4 v11, -0x1

    const/4 v12, -0x1

    .line 2103
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getRequestedVisibilities()Landroid/view/InsetsVisibilities;

    move-result-object v13

    const/4 v14, 0x0

    iget v15, v4, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    sget-object v16, Lcom/android/server/wm/DisplayPolicy;->sTmpClientFrames:Landroid/window/ClientWindowFrames;

    .line 2105
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v17

    .line 2100
    invoke-virtual/range {v5 .. v17}, Landroid/view/WindowLayout;->computeFrames(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;IIILandroid/view/InsetsVisibilities;Landroid/graphics/Rect;FLandroid/window/ClientWindowFrames;I)V

    .line 2106
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getProvidedInsetsSources()Landroid/util/SparseArray;

    move-result-object v4

    .line 2107
    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    .line 2108
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_50
    if-ltz v6, :cond_68

    .line 2109
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 2110
    invoke-virtual {v2, v7}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    move-result-object v7

    sget-object v8, Lcom/android/server/wm/DisplayPolicy;->sTmpClientFrames:Landroid/window/ClientWindowFrames;

    iget-object v8, v8, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v7, v1, v8}, Lcom/android/server/wm/InsetsSourceProvider;->createSimulatedSource(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_50

    :cond_68
    add-int/lit8 v3, v3, -0x1

    goto :goto_12

    :cond_6b
    return-void
.end method

.method public final startEnableTouchEvent(Z)V
    .registers 4

    .line 4467
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x7

    .line 4468
    iput v1, v0, Landroid/os/Message;->what:I

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    .line 4470
    iput p1, v0, Landroid/os/Message;->arg1:I

    goto :goto_11

    :cond_e
    const/4 p1, 0x2

    .line 4472
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 4474
    :goto_11
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final supportTransientEdgeInSplitMode()Z
    .registers 4

    .line 4678
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mEdgeEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v2, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v2, :cond_2d

    sget-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    if-eqz v2, :cond_2d

    .line 4681
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_2d

    .line 4685
    :cond_1a
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarCanMove:Z

    const/4 v2, 0x1

    if-nez v0, :cond_20

    return v2

    .line 4686
    :cond_20
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p0

    .line 4687
    iget v0, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget p0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    if-ge v0, p0, :cond_2d

    return v2

    :cond_2d
    :goto_2d
    return v1
.end method

.method public final supportsPointerLocation()Z
    .registers 4

    .line 4312
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 4313
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    const-string v2, "SpegVirtualDisplay"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string p0, "SPEG"

    const-string v0, "Pointer location is not supported"

    .line 4314
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4319
    :cond_1d
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v0, :cond_29

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result p0

    if-nez p0, :cond_2a

    :cond_29
    const/4 v1, 0x1

    :cond_2a
    return v1
.end method

.method public switchUser()V
    .registers 1

    .line 2637
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateCurrentUserResources()V

    .line 2638
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateForceShowNavBarSettings()V

    return-void
.end method

.method public systemReady()V
    .registers 3

    .line 985
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->systemReady()V

    .line 986
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mPointerLocationEnabled:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    .line 987
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayPolicy;->setPointerLocationEnabled(Z)V

    :cond_f
    const/4 v0, 0x0

    .line 992
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayPolicy;->startEnableTouchEvent(Z)V

    .line 993
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "systemReady() >> CMFA startEnableTouchEvent called for Display Id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-virtual {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->systemReady()V

    return-void
.end method

.method public takeScreenshot(II)V
    .registers 10

    .line 4125
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    if-eqz v0, :cond_33

    .line 4127
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBar()Lcom/android/server/wm/WindowState;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_18

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBar()Lcom/android/server/wm/WindowState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_18

    move v4, v2

    goto :goto_19

    :cond_18
    move v4, v3

    .line 4128
    :goto_19
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_2a

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2a

    move v3, v2

    :cond_2a
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x0

    move v1, p1

    move v2, v4

    move v4, p2

    .line 4126
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/util/ScreenshotHelper;->takeScreenshot(IZZILandroid/os/Handler;Ljava/util/function/Consumer;)V

    :cond_33
    return-void
.end method

.method public topAppHidesStatusBar()Z
    .registers 3

    .line 2627
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    if-eqz p0, :cond_a

    goto :goto_11

    .line 2630
    :cond_a
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->getRequestedVisibility(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_11
    :goto_11
    return v1
.end method

.method public updateConfigurationAndScreenSizeDependentBehaviors()V
    .registers 5

    .line 2799
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2800
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    const/4 v3, 0x0

    if-eq v2, v1, :cond_18

    const v1, 0x111018a

    .line 2802
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    move v1, v3

    :goto_19
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarCanMove:Z

    .line 2804
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_NAVBAR_MOVABLE_POLICY:Z

    if-eqz v1, :cond_21

    .line 2805
    iput-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarCanMove:Z

    .line 2808
    :cond_21
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayRotation;->updateUserDependentConfiguration(Landroid/content/res/Resources;)V

    .line 2811
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/server/wm/DisplayPolicyExt;->updateConfigurationAndScreenSizeDependentBehaviors(IIII)V

    return-void
.end method

.method public final updateCurrentUserResources()V
    .registers 15

    .line 2822
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v0

    .line 2823
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getSystemUiContext()Landroid/content/Context;

    move-result-object v1

    .line 2827
    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastUpdatedUserId:I

    .line 2828
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastUpdatedUiContextPackageName:Ljava/lang/String;

    const/4 v2, 0x2

    .line 2829
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastUpdatedCallers:Ljava/lang/String;

    .line 2830
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCurrentUserResources: userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/DisplayPolicy;->mLastUpdatedUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " uiContext.getPackageName()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mLastUpdatedUiContextPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mLastUpdatedCallers:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_51

    .line 2839
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    return-void

    .line 2845
    :cond_51
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    .line 2846
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2845
    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/app/ActivityThread;->getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;II)Landroid/app/LoadedApk;

    move-result-object v0

    .line 2847
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v2

    .line 2848
    invoke-virtual {v1}, Landroid/content/Context;->getWindowContextToken()Landroid/os/IBinder;

    move-result-object v3

    .line 2849
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 2851
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getOverlayDirs()[Ljava/lang/String;

    move-result-object v6

    .line 2852
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getOverlayPaths()[Ljava/lang/String;

    move-result-object v7

    .line 2853
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2854
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    .line 2856
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 2847
    invoke-virtual/range {v2 .. v13}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    return-void
.end method

.method public updateDisplayOverrideConfiguration()V
    .registers 4

    .line 4553
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4554
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 4555
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayContent;->computeScreenConfiguration(Landroid/content/res/Configuration;)V

    .line 4556
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 4557
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 4558
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->onConfigurationChanged()V

    .line 4559
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {p0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->onConfigurationChanged()V

    return-void
.end method

.method public updateEdgeSettings(Z)V
    .registers 2

    .line 4694
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mEdgeEnabled:Z

    return-void
.end method

.method public final updateForceShowNavBarSettings()V
    .registers 3

    .line 942
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 943
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowNavBarSettingsObserver:Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;

    .line 944
    invoke-virtual {v1}, Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowNavigationBarEnabled:Z

    .line 945
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemBarAttributes()V

    .line 946
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public updateInsetsSourceFramesExceptIme(Lcom/android/server/wm/DisplayFrames;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2117
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mInsetsSourceWindowsExceptIme:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_c
    if-ltz v2, :cond_4a

    .line 2118
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mInsetsSourceWindowsExceptIme:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 2119
    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mWindowLayout:Landroid/view/WindowLayout;

    iget v5, v1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowState;->getLayoutingAttrs(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget-object v8, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    .line 2121
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v9

    const/4 v10, -0x1

    const/4 v11, -0x1

    .line 2122
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getRequestedVisibilities()Landroid/view/InsetsVisibilities;

    move-result-object v12

    const/4 v13, 0x0

    iget v14, v3, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    sget-object v15, Lcom/android/server/wm/DisplayPolicy;->sTmpClientFrames:Landroid/window/ClientWindowFrames;

    .line 2124
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v16

    move-object/from16 v17, v15

    .line 2119
    invoke-virtual/range {v4 .. v16}, Landroid/view/WindowLayout;->computeFrames(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;IIILandroid/view/InsetsVisibilities;Landroid/graphics/Rect;FLandroid/window/ClientWindowFrames;I)V

    move-object/from16 v4, v17

    .line 2125
    iget-object v4, v4, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowState;->updateSourceFrame(Landroid/graphics/Rect;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    :cond_4a
    return-void
.end method

.method public updateLightNavigationBarLw(ILcom/android/server/wm/WindowState;)I
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-eqz p2, :cond_4d

    .line 3666
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    invoke-static {p2, v0}, Lcom/android/server/wm/DisplayPolicy;->isLightBarAllowed(Lcom/android/server/wm/WindowState;I)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_4d

    .line 3680
    :cond_d
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mIsResizingByDivider:Z

    .line 3681
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v1, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mNaturalSwitchingController:Lcom/android/server/wm/NaturalSwitchingController;

    .line 3682
    invoke-virtual {v1}, Lcom/android/server/wm/NaturalSwitchingController;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_23

    const/4 v1, 0x1

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    if-nez v0, :cond_4a

    if-eqz v1, :cond_29

    goto :goto_4a

    :cond_29
    and-int/lit8 p1, p1, -0x11

    .line 3702
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, v0, Landroid/view/InsetsFlags;->appearance:I

    and-int/lit8 v0, v0, 0x10

    or-int/2addr p1, v0

    .line 3707
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0xa2c

    if-ne p2, v0, :cond_49

    .line 3710
    iget p0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_47

    or-int/lit8 p1, p1, 0x10

    goto :goto_49

    :cond_47
    and-int/lit8 p1, p1, -0x11

    :cond_49
    :goto_49
    return p1

    :cond_4a
    :goto_4a
    and-int/lit8 p0, p1, -0x11

    return p0

    :cond_4d
    :goto_4d
    and-int/lit8 p1, p1, -0x11

    if-eqz p2, :cond_64

    .line 3670
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 3671
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayPolicyExt;->isUsingBlurEffect(Landroid/view/WindowManager$LayoutParams;)Z

    move-result p0

    if-eqz p0, :cond_64

    .line 3672
    iget-object p0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object p0, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget p0, p0, Landroid/view/InsetsFlags;->appearance:I

    and-int/lit8 p0, p0, 0x10

    or-int/2addr p1, p0

    :cond_64
    return p1
.end method

.method public updateSystemBarAttributes()V
    .registers 22

    move-object/from16 v0, p0

    .line 3431
    iget-object v1, v0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_13

    .line 3432
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_13

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_13

    move-object v1, v2

    :cond_13
    if-nez v1, :cond_16

    return-void

    .line 3446
    :cond_16
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-virtual {v3}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_4c

    .line 3451
    iget-object v1, v0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_32

    .line 3452
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v1

    if-eqz v1, :cond_32

    move v1, v4

    goto :goto_33

    :cond_32
    move v1, v5

    .line 3453
    :goto_33
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardShowing()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardOccluded()Z

    move-result v2

    if-nez v2, :cond_42

    iget-object v1, v0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    goto :goto_49

    :cond_42
    if-eqz v1, :cond_47

    .line 3454
    iget-object v1, v0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    goto :goto_49

    .line 3455
    :cond_47
    iget-object v1, v0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    :goto_49
    if-nez v1, :cond_4c

    return-void

    .line 3461
    :cond_4c
    iput-object v1, v0, Lcom/android/server/wm/DisplayPolicy;->mSystemUiControllingWindow:Lcom/android/server/wm/WindowState;

    .line 3463
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v2

    .line 3464
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisableFlags()I

    move-result v3

    .line 3465
    invoke-virtual {v0, v1, v3}, Lcom/android/server/wm/DisplayPolicy;->updateSystemBarsLw(Lcom/android/server/wm/WindowState;I)I

    move-result v6

    .line 3466
    iget-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    iget-object v8, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v8, v8, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget v9, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    invoke-static {v7, v8, v9}, Lcom/android/server/wm/DisplayPolicy;->chooseNavigationColorWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;I)Lcom/android/server/wm/WindowState;

    move-result-object v14

    if-eqz v14, :cond_70

    .line 3468
    iget-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne v14, v7, :cond_70

    move v15, v4

    goto :goto_71

    :cond_70
    move v15, v5

    .line 3471
    :goto_71
    iget-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 3473
    invoke-virtual {v7, v1, v14}, Lcom/android/server/wm/DisplayPolicyExt;->canBeNavColorWinLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z

    move-result v13

    .line 3474
    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v7, v7, Landroid/view/InsetsFlags;->appearance:I

    .line 3475
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v8

    if-eqz v8, :cond_89

    and-int/lit8 v8, v7, 0x4

    if-eqz v8, :cond_89

    and-int/lit8 v7, v7, -0x5

    :cond_89
    if-eqz v13, :cond_8d

    move-object v8, v1

    goto :goto_8e

    :cond_8d
    move-object v8, v14

    .line 3483
    :goto_8e
    invoke-virtual {v0, v7, v8}, Lcom/android/server/wm/DisplayPolicy;->updateLightNavigationBarLw(ILcom/android/server/wm/WindowState;)I

    move-result v7

    or-int v12, v7, v6

    .line 3495
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayPolicy;->isInImmersiveSplitMode(Lcom/android/server/wm/WindowState;)Z

    move-result v6

    if-eqz v6, :cond_9c

    const/4 v7, 0x2

    goto :goto_a2

    .line 3497
    :cond_9c
    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v7, v7, Landroid/view/InsetsFlags;->behavior:I

    :goto_a2
    move v11, v7

    .line 3499
    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v10, v7, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 3500
    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowState;->getRequestedVisibility(I)Z

    move-result v7

    if-eqz v7, :cond_b6

    .line 3501
    invoke-virtual {v1, v4}, Lcom/android/server/wm/WindowState;->getRequestedVisibility(I)Z

    move-result v7

    if-nez v7, :cond_b4

    goto :goto_b6

    :cond_b4
    move v7, v5

    goto :goto_b7

    :cond_b6
    :goto_b6
    move v7, v4

    .line 3502
    :goto_b7
    iget-object v8, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    .line 3503
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v9, v8, [Lcom/android/internal/view/AppearanceRegion;

    .line 3504
    iget-object v8, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 3506
    iget-object v8, v0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-static {v8, v2}, Landroid/app/StatusBarManager;->getNaturalBarTypeByDisplayId(Landroid/content/Context;I)I

    .line 3508
    iget v8, v0, Lcom/android/server/wm/DisplayPolicy;->mLastDisableFlags:I

    if-eq v8, v3, :cond_db

    .line 3509
    iput v3, v0, Lcom/android/server/wm/DisplayPolicy;->mLastDisableFlags:I

    .line 3510
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3517
    new-instance v4, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, v3, v8}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda0;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/android/server/wm/DisplayPolicy;->callStatusBarSafely(Ljava/util/function/Consumer;)V

    :cond_db
    if-eqz v6, :cond_f2

    .line 3526
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getWindowType()I

    move-result v3

    const/16 v4, 0x8b2

    if-eq v3, v4, :cond_f0

    .line 3527
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getWindowType()I

    move-result v3

    const/16 v4, 0x7f8

    if-ne v3, v4, :cond_ee

    goto :goto_f0

    :cond_ee
    move v3, v5

    goto :goto_f6

    :cond_f0
    :goto_f0
    const/4 v3, 0x1

    goto :goto_f6

    .line 3529
    :cond_f2
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v3

    .line 3531
    :goto_f6
    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowState;->getRequestedVisibility(I)Z

    move-result v4

    if-nez v4, :cond_107

    const/4 v4, 0x1

    .line 3532
    invoke-virtual {v1, v4}, Lcom/android/server/wm/WindowState;->getRequestedVisibility(I)Z

    move-result v6

    if-nez v6, :cond_108

    if-nez v3, :cond_108

    move v3, v4

    goto :goto_109

    :cond_107
    const/4 v4, 0x1

    :cond_108
    move v3, v5

    .line 3536
    :goto_109
    iget v6, v0, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    if-ne v6, v12, :cond_136

    iget v6, v0, Lcom/android/server/wm/DisplayPolicy;->mLastBehavior:I

    if-ne v6, v11, :cond_136

    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;

    .line 3538
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getRequestedVisibilities()Landroid/view/InsetsVisibilities;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/view/InsetsVisibilities;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_136

    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mFocusedApp:Ljava/lang/String;

    .line 3539
    invoke-static {v6, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_136

    iget-boolean v6, v0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreen:Z

    if-ne v6, v7, :cond_136

    iget-boolean v6, v0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreenAll:Z

    if-ne v6, v3, :cond_136

    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mLastStatusBarAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 3545
    invoke-static {v6, v9}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_136

    return-void

    .line 3548
    :cond_136
    iget-boolean v6, v0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreen:Z

    if-ne v6, v7, :cond_141

    iget v6, v0, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    xor-int/2addr v6, v12

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_156

    .line 3555
    :cond_141
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v6, v6, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v6, :cond_156

    .line 3556
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    if-nez v7, :cond_153

    and-int/lit8 v8, v12, 0x4

    if-eqz v8, :cond_152

    goto :goto_153

    :cond_152
    move v4, v5

    :cond_153
    :goto_153
    invoke-virtual {v6, v4}, Lcom/android/server/input/InputManagerService;->setSystemUiLightsOut(Z)V

    .line 3566
    :cond_156
    new-instance v4, Landroid/view/InsetsVisibilities;

    .line 3567
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getRequestedVisibilities()Landroid/view/InsetsVisibilities;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/InsetsVisibilities;-><init>(Landroid/view/InsetsVisibilities;)V

    .line 3568
    iput v12, v0, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    .line 3569
    iput v11, v0, Lcom/android/server/wm/DisplayPolicy;->mLastBehavior:I

    .line 3570
    iput-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;

    .line 3571
    iput-object v10, v0, Lcom/android/server/wm/DisplayPolicy;->mFocusedApp:Ljava/lang/String;

    .line 3572
    iput-boolean v7, v0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreen:Z

    .line 3573
    iput-object v9, v0, Lcom/android/server/wm/DisplayPolicy;->mLastStatusBarAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 3581
    new-instance v5, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda1;

    move-object v6, v5

    move v7, v2

    move v8, v12

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    move v10, v15

    move/from16 v18, v11

    move/from16 v19, v12

    move-object v12, v4

    move/from16 v20, v13

    move-object/from16 v13, v17

    invoke-direct/range {v6 .. v13}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda1;-><init>(II[Lcom/android/internal/view/AppearanceRegion;ZILandroid/view/InsetsVisibilities;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/android/server/wm/DisplayPolicy;->callStatusBarSafely(Ljava/util/function/Consumer;)V

    .line 3586
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->CARLIFE_NAVBAR:Z

    if-eqz v5, :cond_1a4

    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    move-result v5

    if-eqz v5, :cond_1a4

    .line 3587
    new-instance v5, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda2;

    move-object v6, v5

    move v7, v2

    move/from16 v8, v19

    move-object/from16 v9, v16

    move v10, v15

    move/from16 v11, v18

    move-object v12, v4

    move-object/from16 v13, v17

    invoke-direct/range {v6 .. v13}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda2;-><init>(II[Lcom/android/internal/view/AppearanceRegion;ZILandroid/view/InsetsVisibilities;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/android/server/wm/DisplayPolicy;->callStatusBarSafely(Ljava/util/function/Consumer;)V

    .line 3594
    :cond_1a4
    iput-boolean v3, v0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreenAll:Z

    .line 3605
    new-instance v5, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda3;

    move-object/from16 v7, v16

    move/from16 v6, v19

    invoke-direct {v5, v2, v6, v7, v3}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda3;-><init>(II[Lcom/android/internal/view/AppearanceRegion;Z)V

    invoke-virtual {v0, v5}, Lcom/android/server/wm/DisplayPolicy;->callCocktailBarSafely(Ljava/util/function/Consumer;)V

    .line 3613
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateSystemBarAttributes: displayId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", win="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", navColorWin="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", focusedCanBeNavColorWin="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v20

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", behavior="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, v18

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", appearance="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", statusBarAppearanceRegions="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", requestedVisibilities="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", from="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x3

    .line 3619
    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    .line 3613
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final updateSystemBarsLw(Lcom/android/server/wm/WindowState;I)I
    .registers 14

    .line 3721
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 3725
    new-instance v1, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda24;

    invoke-direct {v1}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda24;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_15

    move v1, v3

    goto :goto_16

    :cond_15
    move v1, v2

    .line 3736
    :goto_16
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v4, :cond_27

    new-instance v4, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda25;

    invoke-direct {v4}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda25;-><init>()V

    .line 3737
    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_27

    move v4, v3

    goto :goto_28

    :cond_27
    move v4, v2

    :goto_28
    const/4 v5, 0x5

    .line 3742
    invoke-virtual {v0, v5}, Lcom/android/server/wm/TaskDisplayArea;->isRootTaskVisible(I)Z

    move-result v0

    if-nez v1, :cond_34

    if-eqz v4, :cond_32

    goto :goto_34

    :cond_32
    move v4, v2

    goto :goto_35

    :cond_34
    :goto_34
    move v4, v3

    .line 3748
    :goto_35
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    .line 3753
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/wm/InsetsPolicy;->updateBarControlTarget(Lcom/android/server/wm/WindowState;)V

    .line 3755
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->topAppHidesStatusBar()Z

    move-result v4

    .line 3756
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBar()Lcom/android/server/wm/WindowState;

    move-result-object v5

    if-eqz v5, :cond_53

    .line 3757
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v5

    if-eqz v5, :cond_53

    .line 3759
    invoke-interface {v5, v4}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setTopAppHidesStatusBar(Z)V

    :cond_53
    if-eqz v4, :cond_61

    .line 3764
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_5f

    .line 3765
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v4

    if-nez v4, :cond_61

    :cond_5f
    move v4, v3

    goto :goto_62

    :cond_61
    move v4, v2

    :goto_62
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    const/4 v4, 0x3

    .line 3768
    invoke-virtual {p0, v4}, Lcom/android/server/wm/DisplayPolicy;->configureStatusBarOpacity(I)I

    move-result v4

    .line 3769
    invoke-virtual {p0, v4, v1, v0}, Lcom/android/server/wm/DisplayPolicy;->configureNavBarOpacity(IZZ)I

    move-result v0

    .line 3772
    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowState;->getRequestedVisibility(I)Z

    move-result v1

    xor-int/2addr v1, v3

    .line 3773
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3774
    iget-wide v6, p0, Lcom/android/server/wm/DisplayPolicy;->mPendingPanicGestureUptime:J

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-eqz v10, :cond_86

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x7530

    cmp-long v4, v4, v6

    if-gtz v4, :cond_86

    move v2, v3

    .line 3776
    :cond_86
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 3777
    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v4

    if-eqz v2, :cond_d2

    if-eqz v1, :cond_d2

    .line 3778
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eq p1, v1, :cond_d2

    .line 3779
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/wm/InsetsPolicy;->isHidden(I)Z

    move-result v1

    if-eqz v1, :cond_d2

    .line 3781
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardDrawComplete()Z

    move-result v1

    if-eqz v1, :cond_d2

    .line 3784
    iput-wide v8, p0, Lcom/android/server/wm/DisplayPolicy;->mPendingPanicGestureUptime:J

    .line 3787
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x8b2

    if-ne v1, v2, :cond_c1

    .line 3788
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardShowing()Z

    move-result v1

    if-eqz v1, :cond_c1

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardOccluded()Z

    move-result v1

    if-nez v1, :cond_c1

    goto :goto_d2

    .line 3792
    :cond_c1
    invoke-static {p2}, Lcom/android/server/wm/DisplayPolicy;->isNavBarEmpty(I)Z

    move-result v1

    if-nez v1, :cond_d2

    .line 3793
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v1

    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->SHOW_TYPES_FOR_PANIC:[I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/InsetsPolicy;->showTransient([IZ)V

    .line 3800
    :cond_d2
    :goto_d2
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastImmersiveMode:Z

    .line 3801
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->isImmersiveMode(Lcom/android/server/wm/WindowState;)Z

    move-result v4

    if-eq v1, v4, :cond_f9

    .line 3803
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mLastImmersiveMode:Z

    .line 3810
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    move-result-object v1

    if-nez v1, :cond_e4

    const/4 v1, -0x1

    goto :goto_e6

    .line 3811
    :cond_e4
    iget v1, v1, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    :goto_e6
    move v3, v1

    .line 3812
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 3813
    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy;->isUserSetupComplete()Z

    move-result v5

    .line 3814
    invoke-static {p2}, Lcom/android/server/wm/DisplayPolicy;->isNavBarEmpty(I)Z

    move-result v6

    move-object v7, p1

    .line 3812
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/ImmersiveModeConfirmation;->immersiveModeChangedLw(IZZZLcom/android/server/wm/WindowState;)V

    :cond_f9
    return v0
.end method

.method public validateAddingWindowLw(Landroid/view/WindowManager$LayoutParams;II)I
    .registers 10

    .line 1387
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    const-string v1, "DisplayPolicy"

    if-eqz v0, :cond_10

    .line 1388
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v0, v2, p2, p3, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1392
    :cond_10
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, -0x80000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_1a

    .line 1393
    invoke-static {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 1396
    :cond_1a
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7d0

    const-string v3, "android.permission.STATUS_BAR_SERVICE"

    const/4 v4, -0x7

    if-eq v0, v2, :cond_a1

    const/16 v2, 0x7de

    const/16 v5, -0xa

    if-eq v0, v2, :cond_a0

    const/16 v2, 0x7e1

    if-eq v0, v2, :cond_9a

    const/16 v2, 0x7e3

    if-eq v0, v2, :cond_80

    const/16 v2, 0x7e8

    if-eq v0, v2, :cond_70

    const/16 v2, 0x7f1

    if-eq v0, v2, :cond_9a

    const/16 v2, 0x8e9

    if-eq v0, v2, :cond_9a

    const/16 v2, 0x7f8

    if-eq v0, v2, :cond_60

    const/16 v2, 0x7f9

    if-eq v0, v2, :cond_9a

    const-string v2, "WindowManager"

    packed-switch v0, :pswitch_data_12e

    goto :goto_bb

    :pswitch_4b
    const-string/jumbo p0, "validateAddingWindowLw: failed, TYPE_NAVIGATION_BAR_STANDALONE"

    .line 1445
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :pswitch_52
    const-string/jumbo p0, "validateAddingWindowLw: failed, TYPE_NOTIFICATION_SHADE_STANDALONE"

    .line 1422
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :pswitch_59
    const-string/jumbo p0, "validateAddingWindowLw: failed, TYPE_STATUS_BAR_STANDALONE"

    .line 1400
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 1427
    :cond_60
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3, p2, p3, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1430
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_bb

    .line 1431
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_bb

    return v4

    .line 1466
    :cond_70
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->isCallerRecents(I)Z

    move-result v0

    if-nez v0, :cond_bb

    .line 1467
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3, p2, p3, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_bb

    .line 1450
    :cond_80
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3, p2, p3, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1453
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_8f

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v0

    if-nez v0, :cond_99

    :cond_8f
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_bb

    .line 1454
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_bb

    :cond_99
    return v4

    .line 1478
    :cond_9a
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3, p2, p3, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_bb

    :cond_a0
    return v5

    .line 1405
    :cond_a1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3, p2, p3, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1408
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_b0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v0

    if-nez v0, :cond_ba

    :cond_b0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_bb

    .line 1409
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_bb

    :cond_ba
    return v4

    .line 1486
    :cond_bb
    :goto_bb
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    const/4 v2, 0x0

    if-eqz v0, :cond_12d

    .line 1488
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->isCallerRecents(I)Z

    move-result v0

    if-nez v0, :cond_cf

    .line 1489
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3, p2, p3, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1493
    :cond_cf
    iget-object p2, p1, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    invoke-static {p2}, Lcom/android/server/wm/DisplayPolicy;->enforceSingleInsetsTypeCorrespondingToWindowType([I)V

    .line 1495
    iget-object p1, p1, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    array-length p2, p1

    move p3, v2

    :goto_d8
    if-ge p3, p2, :cond_12d

    aget v0, p1, p3

    if-eqz v0, :cond_115

    const/4 v1, 0x1

    if-eq v0, v1, :cond_100

    const/16 v1, 0x14

    if-eq v0, v1, :cond_f5

    const/16 v1, 0x15

    if-eq v0, v1, :cond_ea

    goto :goto_12a

    .line 1515
    :cond_ea
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_12a

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_12a

    return v4

    .line 1510
    :cond_f5
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mClimateBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_12a

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_12a

    return v4

    .line 1504
    :cond_100
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_10a

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v0

    if-nez v0, :cond_114

    :cond_10a
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_12a

    .line 1505
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_12a

    :cond_114
    return v4

    .line 1498
    :cond_115
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_11f

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v0

    if-nez v0, :cond_129

    :cond_11f
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_12a

    .line 1499
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_12a

    :cond_129
    return v4

    :cond_12a
    :goto_12a
    add-int/lit8 p3, p3, 0x1

    goto :goto_d8

    :cond_12d
    return v2

    :pswitch_data_12e
    .packed-switch 0xa3d
        :pswitch_59
        :pswitch_52
        :pswitch_4b
    .end packed-switch
.end method
