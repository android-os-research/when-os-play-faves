.class public Lcom/android/internal/policy/DecorView;
.super Landroid/widget/FrameLayout;
.source "DecorView.java"

# interfaces
.implements Lcom/android/internal/view/RootViewSurfaceTaker;
.implements Landroid/view/WindowCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;,
        Lcom/android/internal/policy/DecorView$ColorViewAttributes;,
        Lcom/android/internal/policy/DecorView$ColorViewState;
    }
.end annotation


# static fields
.field public static final blacklist CAPTION_TYPE_HAS_CAPTION_VIEW:I = 0x1

.field public static final blacklist CAPTION_TYPE_HAS_COMPAT_WINDOW:I = 0x2

.field public static final blacklist CAPTION_TYPE_IS_COMPAT_WINDOW:I = 0x3

.field public static final blacklist CAPTION_TYPE_NONE:I = 0x0

.field public static final blacklist DEBUG_CAPTION:Z

.field private static final blacklist DEBUG_DEX:Z = false

.field private static final blacklist DEBUG_KNOX:Z = false

.field private static final blacklist DEBUG_KNOX_TAG:Ljava/lang/String; = "DecorView_KNOX"

.field private static final blacklist DEBUG_MEASURE:Z = false

.field public static final blacklist DECOR_SHADOW_FOCUSED_HEIGHT_IN_DIP:I = 0x20

.field public static final blacklist DECOR_SHADOW_UNFOCUSED_HEIGHT_IN_DIP:I = 0x20

.field private static final blacklist LEGACY_DECOR_SHADOW_HEIGHT_IN_DIP:I = 0xc

.field private static final blacklist MULTI_SPLIT_POPUP_ELEVATION_IN_DIP:I = 0xc

.field public static final blacklist NAVIGATION_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

.field private static final blacklist PIP_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

.field private static final blacklist POP_OVER_ANIM_DELAY_TIME:I = 0x64

.field private static final blacklist POP_OVER_BACKGROUND_ANIM_DURATION:I = 0xc8

.field private static final blacklist POP_OVER_CONTENTS_ANIM_DURATION:I = 0x64

.field private static final blacklist POP_OVER_ELEVATION_IN_DIP:I = 0x20

.field public static final blacklist RESIZE_OVERLAP_AREA_IN_DP:I = 0x4

.field private static final blacklist SCRIM_LIGHT:I = -0x19000001

.field private static final blacklist SEM_ROUNDED_CORNER_BOTTOM:I = 0xc

.field private static final blacklist SEM_ROUNDED_CORNER_LEFT:I = 0x5

.field private static final blacklist SEM_ROUNDED_CORNER_RIGHT:I = 0xa

.field private static final blacklist SEM_ROUNDED_CORNER_TOP:I = 0x3

.field public static final blacklist STATUS_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

.field private static final blacklist SWEEP_OPEN_MENU:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "DecorView"

.field private static final blacklist WINDOW_RESIZE_ELEVATION_ANIM_DELAY:I = 0x190

.field private static final blacklist WINDOW_RESIZE_ELEVATION_ANIM_DURATION:I = 0xc8

.field private static blacklist sKnoxBadgeRightCutout:I


# instance fields
.field private final blacklist FREEFORM_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

.field private final blacklist POP_OVER_BACKGROUND_ALPHA:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/internal/policy/DecorView;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist POP_OVER_CONTENT_ALPHA:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/internal/policy/DecorView;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist POP_OVER_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

.field private blacklist mAllowUpdateElevation:Z

.field private blacklist mApplyFloatingHorizontalInsets:Z

.field private blacklist mApplyFloatingVerticalInsets:Z

.field private blacklist mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

.field private blacklist mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

.field private final blacklist mBackgroundBlurOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private blacklist mBackgroundBlurRadius:I

.field private final blacklist mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

.field private blacklist mBackgroundInsets:Landroid/graphics/Insets;

.field private final blacklist mBackgroundPadding:Landroid/graphics/Rect;

.field private final blacklist mBarEnterExitDuration:I

.field private blacklist mCalledDisplayCutoutBackgroundColor:Z

.field private blacklist mCalledOnAttachedToWindow:Z

.field private blacklist mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mCaptionType:I

.field private blacklist mChanging:Z

.field private blacklist mCheckEdgeFirst:Z

.field private blacklist mCompatWindow:Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;

.field blacklist mContentRoot:Landroid/view/ViewGroup;

.field private final blacklist mControlInsetsChangedListener:Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;

.field private blacklist mCrossWindowBlurEnabled:Z

.field private blacklist mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

.field private blacklist mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

.field blacklist mDefaultOpacity:I

.field private blacklist mDensityDpi:I

.field private blacklist mDensityForKnoxBadge:I

.field private blacklist mDensityRatio:F

.field private blacklist mDisplayCutoutBackgroundColor:I

.field private blacklist mDisplayCutoutBackgroundView:Landroid/view/View;

.field private blacklist mDownY:I

.field private blacklist mDrawLegacyNavigationBarBackground:Z

.field private blacklist mDrawLegacyNavigationBarBackgroundHandled:Z

.field private final blacklist mDrawingBounds:Landroid/graphics/Rect;

.field private blacklist mEdgeFlag:I

.field private blacklist mElevationAdjustedForStack:Z

.field private blacklist mFadeAnim:Landroid/animation/ObjectAnimator;

.field private final blacklist mFeatureId:I

.field private blacklist mFloatingActionMode:Landroid/view/ActionMode;

.field private blacklist mFloatingActionModeOriginatingView:Landroid/view/View;

.field private final blacklist mFloatingInsets:Landroid/graphics/Rect;

.field private blacklist mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

.field private blacklist mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private blacklist mForceHideRoundedCorner:Z

.field private blacklist mForceRoundedCorner:Z

.field final blacklist mForceWindowDrawsBarBackgrounds:Z

.field private blacklist mFrameDrawHelper:Lcom/samsung/android/multiwindow/FrameDrawHelper;

.field private final blacklist mFrameOffsets:Landroid/graphics/Rect;

.field private final blacklist mFramePadding:Landroid/graphics/Rect;

.field private blacklist mGestureHintEnabled:Z

.field private blacklist mGestureNavBarEnabled:Z

.field private blacklist mHasCaption:Z

.field private blacklist mHasDisplayCutout:Z

.field private blacklist mHasWindowFocus:Z

.field private blacklist mHasWindowFocusInTask:Z

.field private final blacklist mHideInterpolator:Landroid/view/animation/Interpolator;

.field private final blacklist mHorizontalResizeShadowPaint:Landroid/graphics/Paint;

.field private blacklist mImmersiveHelper:Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;

.field private blacklist mIsActivatedBlinkEffect:Z

.field private blacklist mIsDexEnabled:Z

.field private blacklist mIsFixedOrientation:Z

.field private blacklist mIsFlexPanelMode:Z

.field private blacklist mIsFullViewShown:Z

.field private blacklist mIsImmersiveMode:Z

.field private blacklist mIsImmersiveModeForKnox:Z

.field private blacklist mIsInPictureInPictureMode:Z

.field private blacklist mIsInSplitImmersiveMode:Z

.field private blacklist mIsKeyboardShown:Z

.field private blacklist mIsKnoxActivity:Z

.field private blacklist mIsMovingTask:Z

.field private blacklist mIsPenSelectionMode:Z

.field private blacklist mIsPopOver:Z

.field private blacklist mIsPopOverForMultiPaneLayout:Z

.field private blacklist mIsShowNavigationBar:Z

.field private blacklist mIsStatusBarHidden:Z

.field private blacklist mIsWindowResizable:Z

.field private blacklist mKeepScreenOn:Z

.field private blacklist mKnoxBadge:Landroid/graphics/drawable/Drawable;

.field private blacklist mKnoxBadgeDisplayRunnable:Ljava/lang/Runnable;

.field private blacklist mKnoxBadgeInsets:Landroid/graphics/Insets;

.field private blacklist mKnoxBadgeStartX:I

.field private blacklist mKnoxBadgeStartY:I

.field private blacklist mKnoxBadgeView:Landroid/view/View;

.field private blacklist mKnoxBadgeViewGroupOverlay:Landroid/view/ViewGroupOverlay;

.field private blacklist mKnoxLayoutBottom:I

.field private blacklist mKnoxLayoutLeft:I

.field private blacklist mKnoxLayoutRight:I

.field private blacklist mLastBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

.field private blacklist mLastBackgroundDrawableCb:Landroid/graphics/drawable/Drawable$Callback;

.field private blacklist mLastBackgroundInsets:Landroid/graphics/Insets;

.field private blacklist mLastBackgroundResource:I

.field private greylist mLastBottomInset:I

.field private blacklist mLastDisplayDeviceType:I

.field private blacklist mLastDrawLegacyNavigationBarBackground:Z

.field private blacklist mLastEmbeddingState:I

.field private blacklist mLastFreeformStashType:I

.field private blacklist mLastHasBottomStableInset:Z

.field private blacklist mLastHasLeftStableInset:Z

.field private blacklist mLastHasRightStableInset:Z

.field private blacklist mLastHasTopStableInset:Z

.field private blacklist mLastLayoutBounds:Landroid/graphics/Rect;

.field private greylist mLastLeftInset:I

.field private blacklist mLastOrientation:I

.field private blacklist mLastOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mLastOutlineProvider:Landroid/view/ViewOutlineProvider;

.field private greylist mLastRightInset:I

.field private blacklist mLastShouldAlwaysConsumeSystemBars:Z

.field private blacklist mLastTopInset:I

.field private blacklist mLastWindowFlags:I

.field private blacklist mLastWindowingMode:I

.field private final blacklist mLegacyNavigationBarBackgroundPaint:Landroid/graphics/Paint;

.field blacklist mLogTag:Ljava/lang/String;

.field private blacklist mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

.field private blacklist mMenuBackground:Landroid/graphics/drawable/Drawable;

.field private blacklist mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

.field private blacklist mMultiSplitHelpMode:I

.field private blacklist mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

.field private blacklist mMultiWindowMenuInFullScreenObserver:Landroid/database/ContentObserver;

.field private final blacklist mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

.field private blacklist mNeedToInitDexInfo:Z

.field private final blacklist mOnStateChangeListener:Lcom/samsung/android/multiwindow/BlinkEffectPopup$OnStateChangeListener;

.field private blacklist mOriginalBackgroundBlurRadius:I

.field private blacklist mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private final blacklist mOverrideRoundedCornerBounds:Landroid/graphics/Rect;

.field private blacklist mPackageManagerForKnoxBadge:Landroid/content/pm/PackageManager;

.field private blacklist mParentWindow:Landroid/view/Window;

.field private blacklist mPendingInsetsController:Landroid/view/PendingInsetsController;

.field private blacklist mPendingWindowBackground:Landroid/graphics/drawable/Drawable;

.field private blacklist mPopOverBackgroundAlpha:F

.field private blacklist mPopOverBackgroundColor:I

.field private final blacklist mPopOverClipOutPath:Landroid/graphics/Path;

.field private blacklist mPopOverContentAlpha:F

.field private final blacklist mPopOverPaint:Landroid/graphics/Paint;

.field private blacklist mPopOverRadius:I

.field private blacklist mPreventElevationUpdate:Z

.field private blacklist mPreventPopOverElevation:Z

.field blacklist mPrimaryActionMode:Landroid/view/ActionMode;

.field private blacklist mPrimaryActionModePopup:Landroid/widget/PopupWindow;

.field private blacklist mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

.field private blacklist mResizeMode:I

.field private final blacklist mResizeShadowSize:I

.field private blacklist mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mRestartNotiHelpToken:Landroid/os/IBinder;

.field private blacklist mReverseKnoxBadge:Landroid/graphics/drawable/Drawable;

.field private blacklist mRootScrollY:I

.field private blacklist mRoundedCornerMode:I

.field private blacklist mRoundedCornerRadius:I

.field private blacklist mRoundedCornerRadiusForLetterBox:I

.field private blacklist mRoundedCornerRadiusForMultiWindow:I

.field private final blacklist mSemiTransparentBarColor:I

.field blacklist mShadowAnimator:Landroid/animation/ObjectAnimator;

.field private final blacklist mShowInterpolator:Landroid/view/animation/Interpolator;

.field private blacklist mShowPopOver:Z

.field private blacklist mShowPrimaryActionModePopup:Ljava/lang/Runnable;

.field private final blacklist mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

.field private blacklist mStatusGuard:Landroid/view/View;

.field private blacklist mStayFocus:Z

.field private blacklist mTempRect:Landroid/graphics/Rect;

.field private final blacklist mTmpColorViewBounds:Landroid/graphics/Rect;

.field private final blacklist mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

.field private blacklist mTmpRegion:Landroid/graphics/Region;

.field private blacklist mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mUserId:I

.field private final blacklist mVerticalResizeShadowPaint:Landroid/graphics/Paint;

.field private blacklist mVisibility:I

.field private blacklist mWatchingForMenu:Z

.field private greylist mWindow:Lcom/android/internal/policy/PhoneWindow;

.field private blacklist mWindowResizeCallbacksAdded:Z

.field private blacklist mWindowingMode:I

.field private blacklist mWm:Landroid/view/WindowManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDensityRatio(Lcom/android/internal/policy/DecorView;)F
    .registers 1

    iget p0, p0, Lcom/android/internal/policy/DecorView;->mDensityRatio:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFadeAnim(Lcom/android/internal/policy/DecorView;)Landroid/animation/ObjectAnimator;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFloatingActionMode(Lcom/android/internal/policy/DecorView;)Landroid/view/ActionMode;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFloatingToolbar(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKnoxBadge(Lcom/android/internal/policy/DecorView;)Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadge:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKnoxBadgeInsets(Lcom/android/internal/policy/DecorView;)Landroid/graphics/Insets;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeInsets:Landroid/graphics/Insets;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKnoxBadgeStartX(Lcom/android/internal/policy/DecorView;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeStartX:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKnoxBadgeStartY(Lcom/android/internal/policy/DecorView;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeStartY:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKnoxBadgeView(Lcom/android/internal/policy/DecorView;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKnoxLayoutBottom(Lcom/android/internal/policy/DecorView;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/policy/DecorView;->mKnoxLayoutBottom:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKnoxLayoutLeft(Lcom/android/internal/policy/DecorView;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/policy/DecorView;->mKnoxLayoutLeft:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKnoxLayoutRight(Lcom/android/internal/policy/DecorView;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/policy/DecorView;->mKnoxLayoutRight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMultiSplitHandler(Lcom/android/internal/policy/DecorView;)Lcom/samsung/android/multiwindow/MultiSplitHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPrimaryActionModePopup(Lcom/android/internal/policy/DecorView;)Landroid/widget/PopupWindow;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPrimaryActionModeView(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/widget/ActionBarContextView;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReverseKnoxBadge(Lcom/android/internal/policy/DecorView;)Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/policy/DecorView;->mReverseKnoxBadge:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShowPrimaryActionModePopup(Lcom/android/internal/policy/DecorView;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/policy/DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWindow(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/policy/PhoneWindow;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWm(Lcom/android/internal/policy/DecorView;)Landroid/view/WindowManager;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/policy/DecorView;->mWm:Landroid/view/WindowManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFadeAnim(Lcom/android/internal/policy/DecorView;Landroid/animation/ObjectAnimator;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFloatingActionMode(Lcom/android/internal/policy/DecorView;Landroid/view/ActionMode;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsActivatedBlinkEffect(Lcom/android/internal/policy/DecorView;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/policy/DecorView;->mIsActivatedBlinkEffect:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmKnoxBadgeInsets(Lcom/android/internal/policy/DecorView;Landroid/graphics/Insets;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeInsets:Landroid/graphics/Insets;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmKnoxBadgeStartX(Lcom/android/internal/policy/DecorView;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeStartX:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmKnoxBadgeStartY(Lcom/android/internal/policy/DecorView;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeStartY:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddKnoxBadge(Lcom/android/internal/policy/DecorView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->addKnoxBadge()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcleanupFloatingActionModeViews(Lcom/android/internal/policy/DecorView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->cleanupFloatingActionModeViews()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mendOnGoingFadeAnimation(Lcom/android/internal/policy/DecorView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->endOnGoingFadeAnimation()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetBackgroundAlpha(Lcom/android/internal/policy/DecorView;)F
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->getBackgroundAlpha()F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetContentAlpha(Lcom/android/internal/policy/DecorView;)F
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->getContentAlpha()F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhideKnoxBadge(Lcom/android/internal/policy/DecorView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->hideKnoxBadge()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrequestInvalidateRenderNode(Lcom/android/internal/policy/DecorView;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->requestInvalidateRenderNode(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetBackgroundAlpha(Lcom/android/internal/policy/DecorView;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->setBackgroundAlpha(F)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetContentAlpha(Lcom/android/internal/policy/DecorView;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->setContentAlpha(F)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mshouldHideProfileBadge(Lcom/android/internal/policy/DecorView;ZZI)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/DecorView;->shouldHideProfileBadge(ZZI)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsKnoxBadgeRightCutout()I
    .registers 1

    sget v0, Lcom/android/internal/policy/DecorView;->sKnoxBadgeRightCutout:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsKnoxBadgeRightCutout(I)V
    .registers 1

    sput p0, Lcom/android/internal/policy/DecorView;->sKnoxBadgeRightCutout:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 19

    .line 294
    new-instance v9, Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    const/high16 v1, 0x4000000

    const/16 v2, 0x30

    const/4 v3, 0x3

    const/4 v4, 0x5

    const-string v5, "android:status:background"

    const v6, 0x102002f

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;-><init>(IIIILjava/lang/String;IILcom/android/internal/policy/DecorView$ColorViewAttributes-IA;)V

    sput-object v9, Lcom/android/internal/policy/DecorView;->STATUS_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    .line 300
    new-instance v0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    const/high16 v11, 0x8000000

    const/16 v12, 0x50

    const/4 v13, 0x5

    const/4 v14, 0x3

    const-string v15, "android:navigation:background"

    const v16, 0x1020030

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;-><init>(IIIILjava/lang/String;IILcom/android/internal/policy/DecorView$ColorViewAttributes-IA;)V

    sput-object v0, Lcom/android/internal/policy/DecorView;->NAVIGATION_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    .line 308
    new-instance v0, Lcom/android/internal/policy/DecorView$1;

    invoke-direct {v0}, Lcom/android/internal/policy/DecorView$1;-><init>()V

    sput-object v0, Lcom/android/internal/policy/DecorView;->PIP_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    .line 450
    const-string v0, "decorview.debug.caption"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3d

    const/4 v1, 0x1

    :cond_3d
    sput-boolean v1, Lcom/android/internal/policy/DecorView;->DEBUG_CAPTION:Z

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;ILcom/android/internal/policy/PhoneWindow;Landroid/view/WindowManager$LayoutParams;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "featureId"    # I
    .param p3, "window"    # Lcom/android/internal/policy/PhoneWindow;
    .param p4, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 716
    const-string v0, "android"

    const-string/jumbo v1, "string"

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 277
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/policy/DecorView;->mDensityForKnoxBadge:I

    .line 282
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadge:Landroid/graphics/drawable/Drawable;

    .line 283
    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mReverseKnoxBadge:Landroid/graphics/drawable/Drawable;

    .line 284
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lcom/android/internal/policy/DecorView;->mDensityRatio:F

    .line 285
    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mPackageManagerForKnoxBadge:Landroid/content/pm/PackageManager;

    .line 287
    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeView:Landroid/view/View;

    .line 288
    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    .line 289
    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mWm:Landroid/view/WindowManager;

    .line 290
    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeInsets:Landroid/graphics/Insets;

    .line 291
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsImmersiveModeForKnox:Z

    .line 319
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mAllowUpdateElevation:Z

    .line 321
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    .line 329
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/internal/policy/DecorView;->mDefaultOpacity:I

    .line 334
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/internal/policy/DecorView;->mDrawingBounds:Landroid/graphics/Rect;

    .line 336
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 338
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    .line 340
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/internal/policy/DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    .line 342
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mHasCaption:Z

    .line 363
    new-instance v6, Lcom/android/internal/policy/DecorView$ColorViewState;

    sget-object v7, Lcom/android/internal/policy/DecorView;->STATUS_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    invoke-direct {v6, v7}, Lcom/android/internal/policy/DecorView$ColorViewState;-><init>(Lcom/android/internal/policy/DecorView$ColorViewAttributes;)V

    iput-object v6, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 365
    new-instance v6, Lcom/android/internal/policy/DecorView$ColorViewState;

    sget-object v7, Lcom/android/internal/policy/DecorView;->NAVIGATION_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    invoke-direct {v6, v7}, Lcom/android/internal/policy/DecorView$ColorViewState;-><init>(Lcom/android/internal/policy/DecorView$ColorViewAttributes;)V

    iput-object v6, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 374
    new-instance v6, Lcom/android/internal/widget/BackgroundFallback;

    invoke-direct {v6}, Lcom/android/internal/widget/BackgroundFallback;-><init>()V

    iput-object v6, p0, Lcom/android/internal/policy/DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    .line 376
    iput v2, p0, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    .line 377
    iput v2, p0, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    .line 379
    iput v2, p0, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    .line 381
    iput v2, p0, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    .line 383
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mLastHasTopStableInset:Z

    .line 384
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mLastHasBottomStableInset:Z

    .line 385
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mLastHasRightStableInset:Z

    .line 386
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mLastHasLeftStableInset:Z

    .line 387
    iput v2, p0, Lcom/android/internal/policy/DecorView;->mLastWindowFlags:I

    .line 388
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mLastShouldAlwaysConsumeSystemBars:Z

    .line 390
    iput v2, p0, Lcom/android/internal/policy/DecorView;->mRootScrollY:I

    .line 404
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    .line 405
    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundDrawableCb:Landroid/graphics/drawable/Drawable$Callback;

    .line 406
    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    .line 423
    const-string v6, "DecorView"

    iput-object v6, p0, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    .line 424
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    .line 425
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mApplyFloatingVerticalInsets:Z

    .line 426
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mApplyFloatingHorizontalInsets:Z

    .line 428
    iput v5, p0, Lcom/android/internal/policy/DecorView;->mResizeMode:I

    .line 430
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, p0, Lcom/android/internal/policy/DecorView;->mVerticalResizeShadowPaint:Landroid/graphics/Paint;

    .line 431
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, p0, Lcom/android/internal/policy/DecorView;->mHorizontalResizeShadowPaint:Landroid/graphics/Paint;

    .line 432
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, p0, Lcom/android/internal/policy/DecorView;->mLegacyNavigationBarBackgroundPaint:Landroid/graphics/Paint;

    .line 433
    sget-object v8, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v8, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    .line 434
    sget-object v8, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v8, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundInsets:Landroid/graphics/Insets;

    .line 438
    new-instance v8, Landroid/view/PendingInsetsController;

    invoke-direct {v8}, Landroid/view/PendingInsetsController;-><init>()V

    iput-object v8, p0, Lcom/android/internal/policy/DecorView;->mPendingInsetsController:Landroid/view/PendingInsetsController;

    .line 440
    iput v2, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundBlurRadius:I

    .line 441
    iput v2, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurRadius:I

    .line 443
    new-instance v8, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0}, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/policy/DecorView;)V

    iput-object v8, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 489
    iput v2, p0, Lcom/android/internal/policy/DecorView;->mCaptionType:I

    .line 493
    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v8, p0, Lcom/android/internal/policy/DecorView;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 496
    iput v2, p0, Lcom/android/internal/policy/DecorView;->mWindowingMode:I

    .line 497
    iput v2, p0, Lcom/android/internal/policy/DecorView;->mLastWindowingMode:I

    .line 498
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Lcom/android/internal/policy/DecorView;->mLastLayoutBounds:Landroid/graphics/Rect;

    .line 499
    iput v5, p0, Lcom/android/internal/policy/DecorView;->mLastFreeformStashType:I

    .line 501
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mKeepScreenOn:Z

    .line 502
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mHasWindowFocus:Z

    .line 504
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mPreventElevationUpdate:Z

    .line 506
    iput v2, p0, Lcom/android/internal/policy/DecorView;->mLastEmbeddingState:I

    .line 510
    new-instance v8, Lcom/android/internal/policy/DecorView$2;

    invoke-direct {v8, p0}, Lcom/android/internal/policy/DecorView$2;-><init>(Lcom/android/internal/policy/DecorView;)V

    iput-object v8, p0, Lcom/android/internal/policy/DecorView;->FREEFORM_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    .line 540
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mCalledOnAttachedToWindow:Z

    .line 541
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    .line 542
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/policy/DecorView;->mNeedToInitDexInfo:Z

    .line 543
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsFixedOrientation:Z

    .line 544
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsWindowResizable:Z

    .line 549
    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mParentWindow:Landroid/view/Window;

    .line 554
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsImmersiveMode:Z

    .line 556
    new-instance v9, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda1;

    invoke-direct {v9, p0}, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/policy/DecorView;)V

    iput-object v9, p0, Lcom/android/internal/policy/DecorView;->mControlInsetsChangedListener:Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;

    .line 574
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsMovingTask:Z

    .line 578
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mCheckEdgeFirst:Z

    .line 579
    iput v2, p0, Lcom/android/internal/policy/DecorView;->mEdgeFlag:I

    .line 596
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mHasDisplayCutout:Z

    .line 598
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mForceRoundedCorner:Z

    .line 599
    iput v2, p0, Lcom/android/internal/policy/DecorView;->mRoundedCornerMode:I

    .line 600
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, p0, Lcom/android/internal/policy/DecorView;->mOverrideRoundedCornerBounds:Landroid/graphics/Rect;

    .line 601
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, p0, Lcom/android/internal/policy/DecorView;->mTmpColorViewBounds:Landroid/graphics/Rect;

    .line 607
    new-instance v10, Landroid/graphics/Region;

    invoke-direct {v10}, Landroid/graphics/Region;-><init>()V

    iput-object v10, p0, Lcom/android/internal/policy/DecorView;->mTmpRegion:Landroid/graphics/Region;

    .line 616
    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    .line 618
    iput v2, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHelpMode:I

    .line 619
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsActivatedBlinkEffect:Z

    .line 620
    const/16 v10, 0x8

    iput v10, p0, Lcom/android/internal/policy/DecorView;->mVisibility:I

    .line 622
    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mMultiWindowMenuInFullScreenObserver:Landroid/database/ContentObserver;

    .line 624
    new-instance v10, Lcom/android/internal/policy/DecorView$3;

    invoke-direct {v10, p0}, Lcom/android/internal/policy/DecorView$3;-><init>(Lcom/android/internal/policy/DecorView;)V

    iput-object v10, p0, Lcom/android/internal/policy/DecorView;->mOnStateChangeListener:Lcom/samsung/android/multiwindow/BlinkEffectPopup$OnStateChangeListener;

    .line 631
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsStatusBarHidden:Z

    .line 641
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    .line 642
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsPopOverForMultiPaneLayout:Z

    .line 643
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mPreventPopOverElevation:Z

    .line 646
    new-instance v10, Lcom/android/internal/policy/DecorView$4;

    invoke-direct {v10, p0}, Lcom/android/internal/policy/DecorView$4;-><init>(Lcom/android/internal/policy/DecorView;)V

    iput-object v10, p0, Lcom/android/internal/policy/DecorView;->POP_OVER_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    .line 658
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    iput-object v10, p0, Lcom/android/internal/policy/DecorView;->mPopOverPaint:Landroid/graphics/Paint;

    .line 659
    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    iput-object v10, p0, Lcom/android/internal/policy/DecorView;->mPopOverClipOutPath:Landroid/graphics/Path;

    .line 661
    iput-boolean v8, p0, Lcom/android/internal/policy/DecorView;->mShowPopOver:Z

    .line 663
    iput v5, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundColor:I

    .line 664
    iput v4, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundAlpha:F

    .line 665
    iput v4, p0, Lcom/android/internal/policy/DecorView;->mPopOverContentAlpha:F

    .line 667
    new-instance v4, Lcom/android/internal/policy/DecorView$5;

    const-string v10, "backgroundAlpha"

    invoke-direct {v4, p0, v10}, Lcom/android/internal/policy/DecorView$5;-><init>(Lcom/android/internal/policy/DecorView;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/internal/policy/DecorView;->POP_OVER_BACKGROUND_ALPHA:Landroid/util/FloatProperty;

    .line 680
    new-instance v4, Lcom/android/internal/policy/DecorView$6;

    const-string v10, "contentAlpha"

    invoke-direct {v4, p0, v10}, Lcom/android/internal/policy/DecorView$6;-><init>(Lcom/android/internal/policy/DecorView;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/internal/policy/DecorView;->POP_OVER_CONTENT_ALPHA:Landroid/util/FloatProperty;

    .line 695
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsPenSelectionMode:Z

    .line 699
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsFlexPanelMode:Z

    .line 707
    iput v2, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundResource:I

    .line 5797
    iput v2, p0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundColor:I

    .line 5798
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mCalledDisplayCutoutBackgroundColor:Z

    .line 6230
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mForceHideRoundedCorner:Z

    .line 717
    iput p2, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    .line 719
    const v4, 0x10c000e

    invoke-static {p1, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/DecorView;->mShowInterpolator:Landroid/view/animation/Interpolator;

    .line 721
    const v4, 0x10c000f

    invoke-static {p1, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/DecorView;->mHideInterpolator:Landroid/view/animation/Interpolator;

    .line 724
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v10, 0x10e0150

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/DecorView;->mBarEnterExitDuration:I

    .line 726
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v10, 0x1110160

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1a6

    .line 728
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v10, 0x18

    if-lt v4, v10, :cond_1a6

    move v4, v8

    goto :goto_1a7

    :cond_1a6
    move v4, v2

    :goto_1a7
    iput-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsBarBackgrounds:Z

    .line 729
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v10, 0x10608f9

    invoke-virtual {v4, v10, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/DecorView;->mSemiTransparentBarColor:I

    .line 732
    invoke-virtual {p0, p3}, Lcom/android/internal/policy/DecorView;->setWindow(Lcom/android/internal/policy/PhoneWindow;)V

    .line 734
    invoke-virtual {p0, p4}, Lcom/android/internal/policy/DecorView;->updateLogTag(Landroid/view/WindowManager$LayoutParams;)V

    .line 736
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v10, 0x10502ee

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/DecorView;->mResizeShadowSize:I

    .line 738
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->initResizingPaints()V

    .line 740
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 748
    .local v4, "res":Landroid/content/res/Resources;
    iget-object v10, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 750
    invoke-virtual {v10}, Lcom/android/internal/policy/PhoneWindow;->getDeviceDefaultNavigationBarColor()I

    move-result v10

    .line 748
    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 755
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/PhoneWindow;->mActivityCurrentConfig:Landroid/content/res/Configuration;

    if-eqz v7, :cond_1e6

    .line 756
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/PhoneWindow;->mActivityCurrentConfig:Landroid/content/res/Configuration;

    iget-object v7, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .local v7, "winConfig":Landroid/app/WindowConfiguration;
    goto :goto_1ec

    .line 758
    .end local v7    # "winConfig":Landroid/app/WindowConfiguration;
    :cond_1e6
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v7, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 760
    .restart local v7    # "winConfig":Landroid/app/WindowConfiguration;
    :goto_1ec
    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v10

    iput v10, p0, Lcom/android/internal/policy/DecorView;->mWindowingMode:I

    .line 763
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v10

    .line 764
    .local v10, "controller":Landroid/view/WindowInsetsController;
    invoke-interface {v10, v9}, Landroid/view/WindowInsetsController;->addOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V

    .line 774
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget-object v9, v9, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v9}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    .line 775
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    iput v9, p0, Lcom/android/internal/policy/DecorView;->mLastDisplayDeviceType:I

    .line 777
    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->isPopOverWithoutOutlineEffect()Z

    move-result v9

    if-eqz v9, :cond_215

    .line 779
    iput-boolean v8, p0, Lcom/android/internal/policy/DecorView;->mIsPopOverForMultiPaneLayout:Z

    .line 782
    :cond_215
    iget-boolean v9, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    if-eqz v9, :cond_270

    iget-boolean v9, p0, Lcom/android/internal/policy/DecorView;->mIsPopOverForMultiPaneLayout:Z

    if-nez v9, :cond_270

    .line 783
    iget-object v9, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v9}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v9

    instance-of v9, v9, Lcom/android/internal/app/ChooserActivity;

    if-eqz v9, :cond_231

    .line 784
    const v5, 0x1060351

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundColor:I

    goto :goto_24b

    .line 785
    :cond_231
    iget v9, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundColor:I

    if-ne v9, v5, :cond_24b

    .line 786
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/util/SemViewUtils;->isLightTheme(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_241

    .line 787
    const v5, 0x10602ba

    goto :goto_244

    .line 788
    :cond_241
    const v5, 0x10602bb

    :goto_244
    nop

    .line 786
    invoke-virtual {v4, v5, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundColor:I

    .line 790
    :cond_24b
    :goto_24b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mPopOverBackgroundColor="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v9, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundColor:I

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    const v5, 0x10503ac

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/DecorView;->mPopOverRadius:I

    .line 797
    .end local v7    # "winConfig":Landroid/app/WindowConfiguration;
    .end local v10    # "controller":Landroid/view/WindowInsetsController;
    :cond_270
    const v5, 0x11101b5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/DecorView;->mIsShowNavigationBar:Z

    .line 800
    :try_start_279
    const-string v5, "config_mainBuiltInDisplayCutout"

    invoke-virtual {v4, v5, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 801
    .local v5, "resId":I
    if-lez v5, :cond_286

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_287

    :cond_286
    move-object v6, v3

    .line 802
    .local v6, "spec":Ljava/lang/String;
    :goto_287
    if-eqz v6, :cond_291

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_291

    move v7, v8

    goto :goto_292

    :cond_291
    move v7, v2

    :goto_292
    iput-boolean v7, p0, Lcom/android/internal/policy/DecorView;->mHasDisplayCutout:Z

    .line 803
    if-nez v7, :cond_2ac

    .line 804
    const-string v7, "config_subBuiltInDisplayCutout"

    invoke-virtual {v4, v7, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 806
    .local v0, "subResId":I
    nop

    .line 807
    if-lez v0, :cond_2a3

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 806
    :cond_2a3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2aa

    move v2, v8

    :cond_2aa
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mHasDisplayCutout:Z
    :try_end_2ac
    .catch Ljava/lang/Exception; {:try_start_279 .. :try_end_2ac} :catch_2ad

    .line 811
    .end local v0    # "subResId":I
    .end local v5    # "resId":I
    .end local v6    # "spec":Ljava/lang/String;
    :cond_2ac
    goto :goto_2ca

    .line 809
    :catch_2ad
    move-exception v0

    .line 810
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not update hasDisplayCutout. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2ca
    const v0, 0x1050477

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mRoundedCornerRadius:I

    .line 814
    const v0, 0x1050308

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mRoundedCornerRadiusForLetterBox:I

    .line 816
    const v0, 0x1050309

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mRoundedCornerRadiusForMultiWindow:I

    .line 819
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/internal/policy/DecorView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/DecorView;

    .line 252
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic blacklist access$100(Lcom/android/internal/policy/DecorView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/DecorView;

    .line 252
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic blacklist access$200(Lcom/android/internal/policy/DecorView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/DecorView;

    .line 252
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private blacklist addKnoxBadge()V
    .registers 3

    .line 6001
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    if-nez v0, :cond_7

    .line 6002
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->setKnoxBadge()V

    .line 6004
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 6005
    return-void
.end method

.method public static blacklist calculateBarColor(IIIIIIZ)I
    .registers 15
    .param p0, "flags"    # I
    .param p1, "translucentFlag"    # I
    .param p2, "semiTransparentBarColor"    # I
    .param p3, "barColor"    # I
    .param p4, "appearance"    # I
    .param p5, "lightAppearanceFlag"    # I
    .param p6, "scrimTransparent"    # Z

    .line 2206
    const/high16 v7, -0x1000000

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/android/internal/policy/DecorView;->calculateBarColor(IIIIIIZI)I

    move-result v0

    return v0
.end method

.method public static blacklist calculateBarColor(IIIIIIZI)I
    .registers 10
    .param p0, "flags"    # I
    .param p1, "translucentFlag"    # I
    .param p2, "semiTransparentBarColor"    # I
    .param p3, "barColor"    # I
    .param p4, "appearance"    # I
    .param p5, "lightAppearanceFlag"    # I
    .param p6, "scrimTransparent"    # Z
    .param p7, "deviceDefaultColor"    # I

    .line 2214
    and-int v0, p0, p1

    if-eqz v0, :cond_5

    .line 2215
    return p2

    .line 2216
    :cond_5
    const/high16 v0, -0x80000000

    and-int/2addr v0, p0

    if-nez v0, :cond_b

    .line 2219
    return p7

    .line 2223
    :cond_b
    if-eqz p6, :cond_22

    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_22

    .line 2224
    and-int v0, p4, p5

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    .line 2225
    .local v0, "light":Z
    :goto_1a
    if-eqz v0, :cond_20

    const v1, -0x19000001

    goto :goto_21

    :cond_20
    move v1, p2

    :goto_21
    return v1

    .line 2227
    .end local v0    # "light":Z
    :cond_22
    return p3
.end method

.method private blacklist calculateNavigationBarColor(I)I
    .registers 11
    .param p1, "appearance"    # I

    .line 2191
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v3, p0, Lcom/android/internal/policy/DecorView;->mSemiTransparentBarColor:I

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v4, v0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mEnsureNavigationBarContrastWhenTransparent:Z

    if-eqz v0, :cond_27

    .line 2195
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x111018b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    move v7, v0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 2198
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getDeviceDefaultNavigationBarColor()I

    move-result v8

    .line 2191
    const/high16 v2, 0x8000000

    const/16 v6, 0x10

    move v5, p1

    invoke-static/range {v1 .. v8}, Lcom/android/internal/policy/DecorView;->calculateBarColor(IIIIIIZI)I

    move-result v0

    return v0
.end method

.method private blacklist calculateStatusBarColor(I)I
    .registers 10
    .param p1, "appearance"    # I

    .line 2184
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v3, p0, Lcom/android/internal/policy/DecorView;->mSemiTransparentBarColor:I

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v4, v0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v7, v0, Lcom/android/internal/policy/PhoneWindow;->mEnsureStatusBarContrastWhenTransparent:Z

    const/high16 v2, 0x4000000

    const/16 v6, 0x8

    move v5, p1

    invoke-static/range {v1 .. v7}, Lcom/android/internal/policy/DecorView;->calculateBarColor(IIIIIIZ)I

    move-result v0

    return v0
.end method

.method private blacklist checkEdgeFlags(IILandroid/view/MotionEvent;)I
    .registers 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "event"    # Landroid/view/MotionEvent;

    .line 5046
    const/4 v0, 0x0

    if-ltz p1, :cond_b7

    if-ltz p2, :cond_b7

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v1

    if-gt p1, v1, :cond_b7

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v1

    if-le p2, v1, :cond_13

    goto/16 :goto_b7

    .line 5050
    :cond_13
    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getDecorCaptionResources()Lcom/samsung/android/util/DecorCaptionResources;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/util/DecorCaptionResources;->getDensity()F

    move-result v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    .line 5051
    .local v1, "resizeArea":I
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v2, :cond_27

    invoke-virtual {v2}, Lcom/android/internal/widget/DecorCaptionView;->getCaptionHeight()I

    move-result v0

    .line 5052
    .local v0, "captionHeight":I
    :cond_27
    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    if-nez v2, :cond_39

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getMultiSplitActions()Lcom/samsung/android/multiwindow/MultiSplitActions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isHeaderTypeBar()Z

    move-result v2

    if-eqz v2, :cond_36

    goto :goto_39

    .line 5053
    :cond_36
    add-int v2, v0, v1

    goto :goto_3a

    :cond_39
    :goto_39
    move v2, v1

    .line 5054
    .local v2, "topResizeArea":I
    :goto_3a
    sget-boolean v3, Lcom/android/internal/policy/DecorView;->DEBUG_CAPTION:Z

    if-eqz v3, :cond_99

    .line 5055
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkEdgeFlags: x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " range={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5056
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "} captionHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5055
    const-string v4, "DecorView"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5058
    :cond_99
    const/4 v3, 0x0

    .line 5059
    .local v3, "flags":I
    if-gt p2, v2, :cond_9f

    .line 5060
    or-int/lit8 v3, v3, 0x1

    goto :goto_a8

    .line 5061
    :cond_9f
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v4

    sub-int/2addr v4, v1

    if-lt p2, v4, :cond_a8

    .line 5062
    or-int/lit8 v3, v3, 0x2

    .line 5064
    :cond_a8
    :goto_a8
    if-gt p1, v1, :cond_ad

    .line 5065
    or-int/lit8 v3, v3, 0x4

    goto :goto_b6

    .line 5066
    :cond_ad
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v4

    sub-int/2addr v4, v1

    if-lt p1, v4, :cond_b6

    .line 5067
    or-int/lit8 v3, v3, 0x8

    .line 5069
    :cond_b6
    :goto_b6
    return v3

    .line 5047
    .end local v0    # "captionHeight":I
    .end local v1    # "resizeArea":I
    .end local v2    # "topResizeArea":I
    .end local v3    # "flags":I
    :cond_b7
    :goto_b7
    return v0
.end method

.method private blacklist checkImmersiveModeBySystemUiVisibility(I)Z
    .registers 6
    .param p1, "systemUiVis"    # I

    .line 4823
    sget-boolean v0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->DEBUG:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_54

    .line 4824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkImmersiveModeBySystemUiVisibility: SYSTEM_UI_FLAG_IMMERSIVE="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit16 v3, p1, 0x800

    if-eqz v3, :cond_17

    move v3, v1

    goto :goto_18

    :cond_17
    move v3, v2

    :goto_18
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " SYSTEM_UI_FLAG_IMMERSIVE_STICKY="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit16 v3, p1, 0x1000

    if-eqz v3, :cond_28

    move v3, v1

    goto :goto_29

    :cond_28
    move v3, v2

    :goto_29
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " SYSTEM_UI_FLAG_HIDE_NAVIGATION="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_39

    move v3, v1

    goto :goto_3a

    :cond_39
    move v3, v2

    :goto_3a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " callers="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x7

    .line 4828
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4824
    invoke-static {v0}, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->log(Ljava/lang/String;)V

    .line 4830
    :cond_54
    and-int/lit16 v0, p1, 0x1800

    if-eqz v0, :cond_5d

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_5d

    .line 4832
    return v1

    .line 4834
    :cond_5d
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->hasDecorCaptionWindow()Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 4835
    sget-boolean v0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->DEBUG:Z

    if-eqz v0, :cond_a5

    .line 4836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkImmersiveModeBySystemUiVisibility: hasDecorCaptionWindow=true SYSTEM_UI_FLAG_FULLSCREEN="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit8 v3, p1, 0x4

    if-eqz v3, :cond_78

    move v3, v1

    goto :goto_79

    :cond_78
    move v3, v2

    :goto_79
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " FLAG_FULLSCREEN="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 4839
    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_99

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 4840
    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_99

    move v3, v1

    goto :goto_9a

    :cond_99
    move v3, v2

    :goto_9a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4836
    invoke-static {v0}, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->log(Ljava/lang/String;)V

    .line 4844
    :cond_a5
    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_c0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 4845
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_be

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_be

    goto :goto_c0

    :cond_be
    move v1, v2

    goto :goto_c1

    :cond_c0
    :goto_c0
    nop

    .line 4844
    :goto_c1
    return v1

    .line 4847
    :cond_c2
    return v2
.end method

.method private blacklist checkReadyToResizeFreeform(Landroid/view/MotionEvent;)Z
    .registers 15
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 4992
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFullscreenMode()Z

    move-result v0

    if-nez v0, :cond_136

    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->hasDecorCaptionWindow()Z

    move-result v0

    if-nez v0, :cond_136

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isDecorCaptionWindow()Z

    move-result v0

    if-nez v0, :cond_136

    .line 4993
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    const/high16 v2, 0x10000000

    and-int/2addr v0, v2

    if-nez v0, :cond_136

    .line 4994
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_29

    goto/16 :goto_136

    .line 4999
    :cond_29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 5000
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 5001
    .local v3, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const-string v5, " mEdgeFlag="

    const-string v6, " y="

    const-string v7, " x="

    const-string v8, " event="

    const-string v9, "checkReadyToResizeFreeform: "

    const-string v10, "DecorView"

    packed-switch v4, :pswitch_data_138

    goto/16 :goto_135

    .line 5012
    :pswitch_48
    iget-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mCheckEdgeFirst:Z

    if-nez v4, :cond_135

    .line 5013
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mCheckEdgeFirst:Z

    .line 5014
    sget-boolean v11, Lcom/android/internal/policy/DecorView;->DEBUG_CAPTION:Z

    if-eqz v11, :cond_99

    .line 5015
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 5016
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    invoke-static {v9}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 5017
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/DecorView;->mEdgeFlag:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5015
    invoke-static {v10, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5019
    :cond_99
    iget v5, p0, Lcom/android/internal/policy/DecorView;->mEdgeFlag:I

    if-eqz v5, :cond_135

    .line 5020
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 5021
    .local v5, "context":Landroid/content/Context;
    instance-of v6, v5, Landroid/app/Activity;

    if-eqz v6, :cond_dd

    .line 5022
    invoke-virtual {v5}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v6

    .line 5023
    .local v6, "token":Landroid/os/IBinder;
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v7

    if-eq v7, v2, :cond_bb

    .line 5024
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v7, 0x2

    if-ne v2, v7, :cond_b9

    goto :goto_bb

    :cond_b9
    move v4, v1

    goto :goto_bc

    :cond_bb
    :goto_bb
    nop

    :goto_bc
    move v2, v4

    .line 5025
    .local v2, "isPointerType":Z
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    if-nez v4, :cond_c7

    .line 5026
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/DecorView;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 5028
    :cond_c7
    if-eqz v11, :cond_ce

    .line 5029
    const-string v4, "checkReadyToResizeFreeform: calling startResizingFreeformTask"

    invoke-static {v10, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5031
    :cond_ce
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 5032
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v8, v8

    .line 5031
    invoke-virtual {v4, v6, v7, v8, v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->startResizingFreeformTask(Landroid/os/IBinder;IIZ)V

    .line 5034
    .end local v2    # "isPointerType":Z
    .end local v5    # "context":Landroid/content/Context;
    .end local v6    # "token":Landroid/os/IBinder;
    :cond_dd
    goto :goto_135

    .line 5038
    :pswitch_de
    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mCheckEdgeFirst:Z

    .line 5039
    iput v1, p0, Lcom/android/internal/policy/DecorView;->mEdgeFlag:I

    goto :goto_135

    .line 5003
    :pswitch_e3
    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mCheckEdgeFirst:Z

    .line 5004
    invoke-direct {p0, v0, v3, p1}, Lcom/android/internal/policy/DecorView;->checkEdgeFlags(IILandroid/view/MotionEvent;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/DecorView;->mEdgeFlag:I

    .line 5005
    sget-boolean v2, Lcom/android/internal/policy/DecorView;->DEBUG_CAPTION:Z

    if-eqz v2, :cond_135

    .line 5006
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5007
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-static {v4}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5008
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/internal/policy/DecorView;->mEdgeFlag:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5006
    invoke-static {v10, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5042
    :cond_135
    :goto_135
    return v1

    .line 4995
    .end local v0    # "x":I
    .end local v3    # "y":I
    :cond_136
    :goto_136
    return v1

    nop

    :pswitch_data_138
    .packed-switch 0x0
        :pswitch_e3
        :pswitch_de
        :pswitch_48
    .end packed-switch
.end method

.method private blacklist cleanupFloatingActionModeViews()V
    .registers 4

    .line 1676
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 1677
    invoke-virtual {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->dismiss()V

    .line 1678
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    .line 1680
    :cond_a
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    if-eqz v0, :cond_1f

    .line 1681
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v2, :cond_1d

    .line 1682
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 1683
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1684
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 1686
    :cond_1d
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    .line 1688
    :cond_1f
    return-void
.end method

.method private blacklist cleanupPrimaryActionMode()V
    .registers 2

    .line 1666
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_a

    .line 1667
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1668
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    .line 1670
    :cond_a
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_11

    .line 1671
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    .line 1673
    :cond_11
    return-void
.end method

.method private blacklist createActionMode(ILandroid/view/ActionMode$Callback2;Landroid/view/View;)Landroid/view/ActionMode;
    .registers 5
    .param p1, "type"    # I
    .param p2, "callback"    # Landroid/view/ActionMode$Callback2;
    .param p3, "originatingView"    # Landroid/view/View;

    .line 2993
    sparse-switch p1, :sswitch_data_10

    .line 2996
    invoke-direct {p0, p2}, Lcom/android/internal/policy/DecorView;->createStandaloneActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0

    .line 3000
    :sswitch_8
    invoke-direct {p0, p3, p2}, Lcom/android/internal/policy/DecorView;->createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;

    move-result-object v0

    .line 3001
    .local v0, "mode":Landroid/view/ActionMode;
    invoke-virtual {v0, p1}, Landroid/view/ActionMode;->setType(I)V

    .line 3002
    return-object v0

    :sswitch_data_10
    .sparse-switch
        0x1 -> :sswitch_8
        0x63 -> :sswitch_8
    .end sparse-switch
.end method

.method private blacklist createDecorCaptionView(Landroid/view/LayoutInflater;)Lcom/android/internal/widget/DecorCaptionView;
    .registers 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .line 3669
    const/4 v0, 0x0

    .line 3670
    .local v0, "decorCaptionView":Lcom/android/internal/widget/DecorCaptionView;
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_7
    if-ltz v1, :cond_1f

    if-nez v0, :cond_1f

    .line 3671
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3672
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v3, :cond_1c

    .line 3674
    move-object v0, v2

    check-cast v0, Lcom/android/internal/widget/DecorCaptionView;

    .line 3676
    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->restoreOutlineProvider()V

    .line 3678
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->removeViewAt(I)V

    .line 3670
    .end local v2    # "view":Landroid/view/View;
    :cond_1c
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 3683
    .end local v1    # "i":I
    :cond_1f
    if-eqz v0, :cond_24

    .line 3684
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->removeView(Landroid/view/View;)V

    .line 3686
    :cond_24
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->hasDecorCaptionWindow()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 3687
    const/4 v0, 0x0

    .line 3688
    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mCalledOnAttachedToWindow:Z

    if-eqz v1, :cond_4f

    .line 3689
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->createDecorCaptionWindowIfNeeded()V

    goto :goto_4f

    .line 3691
    :cond_33
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->hasDecorCaptionView()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 3692
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->inflateDecorCaptionView(Landroid/view/LayoutInflater;)Lcom/android/internal/widget/DecorCaptionView;

    move-result-object v0

    .line 3693
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->getNeedsShowingCaption()Z

    move-result v1

    .line 3694
    .local v1, "showCaption":Z
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/DecorCaptionView;->setPhoneWindow(Lcom/android/internal/policy/PhoneWindow;Z)V

    .line 3695
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->enableCaption(Z)V

    .line 3696
    .end local v1    # "showCaption":Z
    goto :goto_4f

    .line 3697
    :cond_4a
    const/4 v0, 0x0

    .line 3698
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->enableCaption(Z)V

    .line 3721
    :cond_4f
    :goto_4f
    return-object v0
.end method

.method private blacklist createDecorCaptionWindowIfNeeded()V
    .registers 5

    .line 4768
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    if-eqz v0, :cond_af

    .line 4769
    sget-boolean v0, Lcom/android/internal/policy/DecorView;->DEBUG_CAPTION:Z

    const-string v1, "DecorView"

    if-eqz v0, :cond_51

    .line 4770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DexCompat] createDecorCaptionWindowIfNeeded: hasDecorCaptionWindow="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4771
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->hasDecorCaptionWindow()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " isFloating="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 4772
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " isFullScreen="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4773
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFullscreenMode()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Callers="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x6

    .line 4774
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4770
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4777
    :cond_51
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    move-result v0

    if-nez v0, :cond_af

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->hasDecorCaptionWindow()Z

    move-result v0

    if-eqz v0, :cond_af

    .line 4778
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCompatWindow:Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;

    if-eqz v0, :cond_6f

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_6f

    .line 4779
    const-string v0, "createDecorCaptionWindowIfNeeded: DecorCaptionWindow is already been created."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4780
    return-void

    .line 4783
    :cond_6f
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->removeDecorCaptionWindow()V

    .line 4784
    new-instance v0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v0, v2}, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;-><init>(Landroid/view/Window;)V

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mCompatWindow:Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;

    .line 4785
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->addWindow()V

    .line 4788
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateDecorCaptionWindowVisibility()V

    .line 4790
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getLastRequestedOrientation()I

    move-result v0

    .line 4791
    .local v0, "lastRequestedOrientation":I
    const/4 v2, -0x2

    if-eq v0, v2, :cond_8d

    .line 4795
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->dispatchRequestedOrientation(I)V

    .line 4798
    :cond_8d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created DecorCaptionWindow, window="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", this="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4801
    .end local v0    # "lastRequestedOrientation":I
    :cond_af
    return-void
.end method

.method private blacklist createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;
    .registers 6
    .param p1, "originatingView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback2;

    .line 3151
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_7

    .line 3152
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 3154
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->cleanupFloatingActionModeViews()V

    .line 3155
    new-instance v0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;-><init>(Landroid/view/Window;)V

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    .line 3156
    new-instance v0, Lcom/android/internal/view/FloatingActionMode;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    invoke-direct {v0, v1, p2, p1, v2}, Lcom/android/internal/view/FloatingActionMode;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback2;Landroid/view/View;Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;)V

    .line 3158
    .local v0, "mode":Lcom/android/internal/view/FloatingActionMode;
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    .line 3159
    new-instance v1, Lcom/android/internal/policy/DecorView$12;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/policy/DecorView$12;-><init>(Lcom/android/internal/policy/DecorView;Lcom/android/internal/view/FloatingActionMode;)V

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 3167
    return-object v0
.end method

.method private blacklist createStandaloneActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 11
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .line 3017
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->endOnGoingFadeAnimation()V

    .line 3018
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->cleanupPrimaryActionMode()V

    .line 3025
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_b5

    .line 3026
    :cond_13
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 3028
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 3029
    .local v0, "outValue":Landroid/util/TypedValue;
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 3030
    .local v4, "baseTheme":Landroid/content/res/Resources$Theme;
    const v5, 0x1010431

    invoke-virtual {v4, v5, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3033
    iget v5, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_51

    .line 3034
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 3035
    .local v5, "actionBarTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v5, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 3036
    iget v6, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v6, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 3038
    new-instance v6, Landroid/view/ContextThemeWrapper;

    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 3039
    .local v6, "actionBarContext":Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 3040
    .end local v5    # "actionBarTheme":Landroid/content/res/Resources$Theme;
    goto :goto_53

    .line 3041
    .end local v6    # "actionBarContext":Landroid/content/Context;
    :cond_51
    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    .line 3044
    .restart local v6    # "actionBarContext":Landroid/content/Context;
    :goto_53
    new-instance v5, Lcom/android/internal/widget/ActionBarContextView;

    invoke-direct {v5, v6}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 3045
    new-instance v5, Landroid/widget/PopupWindow;

    const v7, 0x1120008

    invoke-direct {v5, v6, v2, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v5, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    .line 3047
    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 3049
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v5, v7}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 3050
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    const/4 v7, -0x1

    invoke-virtual {v5, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 3052
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v7, 0x10102eb

    invoke-virtual {v5, v7, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3054
    iget v5, v0, Landroid/util/TypedValue;->data:I

    .line 3055
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 3054
    invoke-static {v5, v7}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v5

    .line 3056
    .local v5, "height":I
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7, v5}, Lcom/android/internal/widget/ActionBarContextView;->setContentHeight(I)V

    .line 3057
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    const/4 v8, -0x2

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 3058
    new-instance v7, Lcom/android/internal/policy/DecorView$10;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/DecorView$10;-><init>(Lcom/android/internal/policy/DecorView;)V

    iput-object v7, p0, Lcom/android/internal/policy/DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    .line 3087
    .end local v0    # "outValue":Landroid/util/TypedValue;
    .end local v4    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v5    # "height":I
    .end local v6    # "actionBarContext":Landroid/content/Context;
    goto :goto_b5

    .line 3088
    :cond_a0
    const v0, 0x10201c7

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 3089
    .local v0, "stub":Landroid/view/ViewStub;
    if-eqz v0, :cond_b5

    .line 3090
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/ActionBarContextView;

    iput-object v4, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 3091
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    .line 3095
    .end local v0    # "stub":Landroid/view/ViewStub;
    :cond_b5
    :goto_b5
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_cf

    .line 3096
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    .line 3097
    new-instance v0, Lcom/android/internal/view/StandaloneActionMode;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 3098
    invoke-virtual {v2}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    if-nez v5, :cond_cb

    move v1, v3

    :cond_cb
    invoke-direct {v0, v2, v4, p1, v1}, Lcom/android/internal/view/StandaloneActionMode;-><init>(Landroid/content/Context;Lcom/android/internal/widget/ActionBarContextView;Landroid/view/ActionMode$Callback;Z)V

    .line 3100
    .local v0, "mode":Landroid/view/ActionMode;
    return-object v0

    .line 3102
    .end local v0    # "mode":Landroid/view/ActionMode;
    :cond_cf
    return-object v2
.end method

.method private blacklist dipToPx(F)F
    .registers 4
    .param p1, "dip"    # F

    .line 4233
    nop

    .line 4234
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 4233
    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private blacklist drawLegacyNavigationBarBackground(Landroid/graphics/RecordingCanvas;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/RecordingCanvas;

    .line 3993
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mLastDrawLegacyNavigationBarBackground:Z

    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackground:Z

    if-eq v0, v1, :cond_d

    .line 3995
    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mLastDrawLegacyNavigationBarBackground:Z

    .line 3996
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->updateForceLightNavigationBar()V

    .line 3999
    :cond_d
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackground:Z

    if-eqz v0, :cond_38

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackgroundHandled:Z

    if-eqz v0, :cond_16

    goto :goto_38

    .line 4002
    :cond_16
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    .line 4003
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1d

    .line 4004
    return-void

    .line 4006
    :cond_1d
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v3, v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v5, v1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v6, v1

    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mLegacyNavigationBarBackgroundPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/RecordingCanvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 4008
    return-void

    .line 4000
    .end local v0    # "v":Landroid/view/View;
    :cond_38
    :goto_38
    return-void
.end method

.method private blacklist drawResizingShadowIfNeeded(Landroid/graphics/RecordingCanvas;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/RecordingCanvas;

    .line 3976
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mResizeMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_62

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    if-nez v0, :cond_62

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 3977
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isTranslucent()Z

    move-result v0

    if-nez v0, :cond_62

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 3978
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isShowingWallpaper()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_62

    .line 3981
    :cond_1c
    invoke-virtual {p1}, Landroid/graphics/RecordingCanvas;->save()I

    .line 3982
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/RecordingCanvas;->translate(FF)V

    .line 3983
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v0

    int-to-float v5, v0

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mResizeShadowSize:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mHorizontalResizeShadowPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/RecordingCanvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3984
    invoke-virtual {p1}, Landroid/graphics/RecordingCanvas;->restore()V

    .line 3985
    invoke-virtual {p1}, Landroid/graphics/RecordingCanvas;->save()I

    .line 3986
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RecordingCanvas;->translate(FF)V

    .line 3987
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mResizeShadowSize:I

    int-to-float v5, v0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mVerticalResizeShadowPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/RecordingCanvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3988
    invoke-virtual {p1}, Landroid/graphics/RecordingCanvas;->restore()V

    .line 3989
    return-void

    .line 3979
    :cond_62
    :goto_62
    return-void
.end method

.method private blacklist drawableChanged()V
    .registers 11

    .line 2568
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mChanging:Z

    if-eqz v0, :cond_5

    .line 2569
    return-void

    .line 2573
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    if-eqz v0, :cond_a

    goto :goto_f

    :cond_a
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2574
    .local v0, "framePadding":Landroid/graphics/Rect;
    :goto_f
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    if-eqz v1, :cond_14

    goto :goto_19

    :cond_14
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2576
    .local v1, "backgroundPadding":Landroid/graphics/Rect;
    :goto_19
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/policy/DecorView;->setPadding(IIII)V

    .line 2580
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->requestLayout()V

    .line 2581
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->invalidate()V

    .line 2583
    const/4 v2, -0x1

    .line 2584
    .local v2, "opacity":I
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2585
    .local v3, "winConfig":Landroid/app/WindowConfiguration;
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v4, v4, Lcom/android/internal/policy/PhoneWindow;->mRenderShadowsInCompositor:Z

    if-eqz v4, :cond_50

    .line 2587
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_50

    const/4 v4, 0x1

    goto :goto_51

    :cond_50
    const/4 v4, 0x0

    .line 2590
    .local v4, "renderShadowsInCompositor":Z
    :goto_51
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->hasWindowShadow()Z

    move-result v5

    if-eqz v5, :cond_5b

    if-nez v4, :cond_5b

    .line 2592
    const/4 v2, -0x3

    goto :goto_a2

    .line 2594
    :cond_5b
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v5

    if-eqz v5, :cond_63

    .line 2595
    const/4 v2, -0x3

    goto :goto_a2

    .line 2603
    :cond_63
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 2604
    .local v5, "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 2605
    .local v6, "fg":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_a2

    .line 2606
    if-nez v6, :cond_74

    .line 2607
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    goto :goto_a2

    .line 2608
    :cond_74
    iget v7, v0, Landroid/graphics/Rect;->left:I

    if-gtz v7, :cond_a1

    iget v7, v0, Landroid/graphics/Rect;->top:I

    if-gtz v7, :cond_a1

    iget v7, v0, Landroid/graphics/Rect;->right:I

    if-gtz v7, :cond_a1

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    if-gtz v7, :cond_a1

    .line 2612
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v7

    .line 2613
    .local v7, "fop":I
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v8

    .line 2616
    .local v8, "bop":I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_9f

    if-ne v8, v9, :cond_92

    goto :goto_9f

    .line 2618
    :cond_92
    if-nez v7, :cond_96

    .line 2619
    move v2, v8

    goto :goto_a0

    .line 2620
    :cond_96
    if-nez v8, :cond_9a

    .line 2621
    move v2, v7

    goto :goto_a0

    .line 2623
    :cond_9a
    invoke-static {v7, v8}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v2

    goto :goto_a0

    .line 2617
    :cond_9f
    :goto_9f
    const/4 v2, -0x1

    .line 2625
    .end local v7    # "fop":I
    .end local v8    # "bop":I
    :goto_a0
    goto :goto_a2

    .line 2631
    :cond_a1
    const/4 v2, -0x3

    .line 2641
    .end local v5    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v6    # "fg":Landroid/graphics/drawable/Drawable;
    :cond_a2
    :goto_a2
    iput v2, p0, Lcom/android/internal/policy/DecorView;->mDefaultOpacity:I

    .line 2642
    iget v5, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v5, :cond_ad

    .line 2643
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v5, v2}, Lcom/android/internal/policy/PhoneWindow;->setDefaultWindowFormat(I)V

    .line 2645
    :cond_ad
    return-void
.end method

.method private blacklist endOnGoingFadeAnimation()V
    .registers 2

    .line 3106
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_7

    .line 3107
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 3109
    :cond_7
    return-void
.end method

.method private static blacklist enforceNonTranslucentBackground(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .registers 9
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "windowTranslucent"    # Z

    .line 3831
    if-nez p1, :cond_38

    instance-of v0, p0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_38

    .line 3832
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3833
    .local v0, "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    .line 3834
    .local v1, "color":I
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    const/16 v3, 0xff

    if-eq v2, v3, :cond_38

    .line 3835
    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 3836
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    .line 3837
    .local v2, "copy":Landroid/graphics/drawable/ColorDrawable;
    nop

    .line 3838
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    .line 3837
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 3839
    return-object v2

    .line 3842
    .end local v0    # "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    .end local v1    # "color":I
    .end local v2    # "copy":Landroid/graphics/drawable/ColorDrawable;
    :cond_38
    return-object p0
.end method

.method private blacklist getBackgroundAlpha()F
    .registers 2

    .line 5931
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundAlpha:F

    return v0
.end method

.method private final blacklist getConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .line 4359
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v0, :cond_d

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mActivityCurrentConfig:Landroid/content/res/Configuration;

    if-eqz v0, :cond_d

    .line 4360
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mActivityCurrentConfig:Landroid/content/res/Configuration;

    return-object v0

    .line 4362
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getContentAlpha()F
    .registers 2

    .line 5943
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mPopOverContentAlpha:F

    return v0
.end method

.method private blacklist getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I
    .registers 3
    .param p1, "state"    # Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 2255
    iget-boolean v0, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    if-eqz v0, :cond_7

    .line 2256
    iget v0, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->color:I

    return v0

    .line 2258
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist getCurrentDensityDpi(Ljava/lang/String;)I
    .registers 8
    .param p1, "msg"    # Ljava/lang/String;

    .line 4329
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mActivityCurrentConfig:Landroid/content/res/Configuration;

    const-string v1, " msg="

    const-string v2, "DecorView"

    if-eqz v0, :cond_3d

    .line 4330
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 4331
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_3c

    .line 4332
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 4333
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 4334
    .local v3, "densityDpi":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentDensityDpi: from real metrics. densityDpi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4335
    return v3

    .line 4337
    .end local v0    # "display":Landroid/view/Display;
    .end local v3    # "densityDpi":I
    :cond_3c
    goto :goto_70

    .line 4338
    :cond_3d
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 4339
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_70

    .line 4340
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    .line 4341
    .restart local v3    # "densityDpi":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentDensityDpi: from app context. densityDpi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4342
    return v3

    .line 4345
    .end local v0    # "appContext":Landroid/content/Context;
    .end local v3    # "densityDpi":I
    :cond_70
    :goto_70
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 4346
    .local v0, "densityDpi":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentDensityDpi: from context. densityDpi="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4347
    return v0
.end method

.method private blacklist getKnoxBadgeStateForImmersive()Z
    .registers 2

    .line 6062
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsImmersiveModeForKnox:Z

    return v0
.end method

.method public static blacklist getNavBarSize(III)I
    .registers 4
    .param p0, "bottomInset"    # I
    .param p1, "rightInset"    # I
    .param p2, "leftInset"    # I

    .line 1858
    invoke-static {p0, p1}, Lcom/android/internal/policy/DecorView;->isNavBarToRightEdge(II)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, p1

    goto :goto_11

    .line 1859
    :cond_8
    invoke-static {p0, p2}, Lcom/android/internal/policy/DecorView;->isNavBarToLeftEdge(II)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, p2

    goto :goto_11

    :cond_10
    move v0, p0

    .line 1858
    :goto_11
    return v0
.end method

.method public static blacklist getNavBarSizeForBadge(III)I
    .registers 4
    .param p0, "leftInset"    # I
    .param p1, "rightInset"    # I
    .param p2, "bottomInset"    # I

    .line 1863
    sget v0, Lcom/android/internal/policy/DecorView;->sKnoxBadgeRightCutout:I

    sub-int v0, p1, v0

    invoke-static {p2, v0}, Lcom/android/internal/policy/DecorView;->isNavBarToRightEdge(II)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, p1

    goto :goto_15

    .line 1864
    :cond_c
    invoke-static {p2, p0}, Lcom/android/internal/policy/DecorView;->isNavBarToLeftEdge(II)Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, p0

    goto :goto_15

    :cond_14
    move v0, p2

    .line 1863
    :goto_15
    return v0
.end method

.method public static blacklist getNavigationBarRect(IILandroid/graphics/Rect;Landroid/graphics/Rect;F)V
    .registers 11
    .param p0, "canvasWidth"    # I
    .param p1, "canvasHeight"    # I
    .param p2, "systemBarInsets"    # Landroid/graphics/Rect;
    .param p3, "outRect"    # Landroid/graphics/Rect;
    .param p4, "scale"    # F

    .line 1869
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    mul-float/2addr v0, p4

    float-to-int v0, v0

    .line 1870
    .local v0, "bottomInset":I
    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    mul-float/2addr v1, p4

    float-to-int v1, v1

    .line 1871
    .local v1, "leftInset":I
    iget v2, p2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    mul-float/2addr v2, p4

    float-to-int v2, v2

    .line 1872
    .local v2, "rightInset":I
    invoke-static {v0, v2, v1}, Lcom/android/internal/policy/DecorView;->getNavBarSize(III)I

    move-result v3

    .line 1873
    .local v3, "size":I
    invoke-static {v0, v2}, Lcom/android/internal/policy/DecorView;->isNavBarToRightEdge(II)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_20

    .line 1874
    sub-int v4, p0, v3

    invoke-virtual {p3, v4, v5, p0, p1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2f

    .line 1875
    :cond_20
    invoke-static {v0, v1}, Lcom/android/internal/policy/DecorView;->isNavBarToLeftEdge(II)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 1876
    invoke-virtual {p3, v5, v5, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2f

    .line 1878
    :cond_2a
    sub-int v4, p1, v3

    invoke-virtual {p3, v5, v4, p0, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1880
    :goto_2f
    return-void
.end method

.method private blacklist getNeedsShowingCaption()Z
    .registers 3

    .line 4632
    const/4 v0, 0x0

    .line 4634
    .local v0, "showCaption":Z
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->hasWindowDecorCaption()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFullSize()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 4635
    const/4 v0, 0x1

    .line 4649
    :cond_e
    return v0
.end method

.method public static blacklist getResizingBackgroundDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p0, "backgroundDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "fallbackDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "windowTranslucent"    # Z

    .line 3815
    if-eqz p0, :cond_7

    .line 3816
    invoke-static {p0, p2}, Lcom/android/internal/policy/DecorView;->enforceNonTranslucentBackground(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 3819
    :cond_7
    if-eqz p1, :cond_e

    .line 3820
    invoke-static {p1, p2}, Lcom/android/internal/policy/DecorView;->enforceNonTranslucentBackground(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 3822
    :cond_e
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method private blacklist getStagePosition()I
    .registers 2

    .line 4379
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result v0

    return v0
.end method

.method private static blacklist getTitleSuffix(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/String;
    .registers 4
    .param p0, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 4248
    const-string v0, ""

    if-nez p0, :cond_5

    .line 4249
    return-object v0

    .line 4251
    :cond_5
    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 4252
    .local v1, "split":[Ljava/lang/String;
    array-length v2, v1

    if-lez v2, :cond_1c

    .line 4253
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    return-object v0

    .line 4255
    :cond_1c
    return-object v0
.end method

.method private blacklist hasWindowDecorCaption()Z
    .registers 2

    .line 4622
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4623
    const/4 v0, 0x0

    return v0

    .line 4625
    :cond_12
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v0, :cond_25

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mActivityCurrentConfig:Landroid/content/res/Configuration;

    if-eqz v0, :cond_25

    .line 4626
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mActivityCurrentConfig:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->hasWindowDecorCaption()Z

    move-result v0

    return v0

    .line 4628
    :cond_25
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->hasWindowDecorCaption()Z

    move-result v0

    return v0
.end method

.method private blacklist hideKnoxBadge()V
    .registers 3

    .line 5995
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    if-eqz v0, :cond_9

    .line 5996
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 5998
    :cond_9
    return-void
.end method

.method private blacklist hidePopOver()V
    .registers 9

    .line 5958
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->POP_OVER_BACKGROUND_ALPHA:Landroid/util/FloatProperty;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const v3, 0x3e4ccccd    # 0.2f

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 5959
    .local v0, "animBackground":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 5960
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 5961
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->POP_OVER_CONTENT_ALPHA:Landroid/util/FloatProperty;

    new-array v6, v1, [F

    const/4 v7, 0x0

    aput v7, v6, v4

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 5962
    .local v5, "animContent":Landroid/animation/ObjectAnimator;
    invoke-virtual {v5, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 5963
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 5964
    .local v2, "animSet":Landroid/animation/AnimatorSet;
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v5, v3, v4

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 5965
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 5966
    return-void
.end method

.method private blacklist indexOfChildToRoot(Landroid/view/View;)I
    .registers 5
    .param p1, "child"    # Landroid/view/View;

    .line 2234
    const/4 v0, -0x1

    if-nez p1, :cond_4

    .line 2235
    return v0

    .line 2237
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2238
    .local v1, "p":Landroid/view/ViewParent;
    if-ne v1, p0, :cond_f

    .line 2239
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0

    .line 2241
    :cond_f
    :goto_f
    if-eqz v1, :cond_24

    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_24

    .line 2242
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    .line 2243
    .local v2, "v":Landroid/view/View;
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2244
    if-ne v1, p0, :cond_23

    .line 2245
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/DecorView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0

    .line 2247
    .end local v2    # "v":Landroid/view/View;
    :cond_23
    goto :goto_f

    .line 2249
    :cond_24
    return v0
.end method

.method private blacklist inflateDecorCaptionView(Landroid/view/LayoutInflater;)Lcom/android/internal/widget/DecorCaptionView;
    .registers 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .line 3742
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3743
    .local v0, "appContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    .line 3745
    .local v1, "isNightMode":Z
    :goto_1b
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v1, :cond_27

    .line 3746
    const v4, 0x1030128

    goto :goto_2a

    :cond_27
    const v4, 0x103012b

    :goto_2a
    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 3747
    .local v2, "context":Landroid/content/Context;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "app context info: config="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dm="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3748
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3747
    const-string v5, "DecorView"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3749
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decor context info: config="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3750
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3749
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3755
    .end local v0    # "appContext":Landroid/content/Context;
    .end local v1    # "isNightMode":Z
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 3756
    nop

    .line 3758
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    if-eqz v0, :cond_9a

    const v0, 0x109007c

    goto :goto_9d

    .line 3760
    :cond_9a
    const v0, 0x109007b

    :goto_9d
    const/4 v1, 0x0

    .line 3756
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/DecorCaptionView;

    .line 3761
    .local v0, "view":Lcom/android/internal/widget/DecorCaptionView;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->setDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V

    .line 3762
    return-object v0
.end method

.method private blacklist initResizingPaints()V
    .registers 19

    .line 3962
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060296

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 3964
    .local v1, "startColor":I
    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1060295

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 3966
    .local v2, "endColor":I
    add-int v3, v1, v2

    const/4 v4, 0x2

    div-int/2addr v3, v4

    .line 3967
    .local v3, "middleColor":I
    iget-object v5, v0, Lcom/android/internal/policy/DecorView;->mHorizontalResizeShadowPaint:Landroid/graphics/Paint;

    new-instance v14, Landroid/graphics/LinearGradient;

    iget v6, v0, Lcom/android/internal/policy/DecorView;->mResizeShadowSize:I

    int-to-float v10, v6

    const/4 v15, 0x3

    new-array v11, v15, [I

    const/16 v16, 0x0

    aput v1, v11, v16

    const/16 v17, 0x1

    aput v3, v11, v17

    aput v2, v11, v4

    new-array v12, v15, [F

    fill-array-data v12, :array_66

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, v14

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v5, v14}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 3970
    iget-object v5, v0, Lcom/android/internal/policy/DecorView;->mVerticalResizeShadowPaint:Landroid/graphics/Paint;

    new-instance v14, Landroid/graphics/LinearGradient;

    iget v6, v0, Lcom/android/internal/policy/DecorView;->mResizeShadowSize:I

    int-to-float v9, v6

    new-array v11, v15, [I

    aput v1, v11, v16

    aput v3, v11, v17

    aput v2, v11, v4

    new-array v12, v15, [F

    fill-array-data v12, :array_70

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v10, 0x0

    move-object v6, v14

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v5, v14}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 3973
    return-void

    nop

    :array_66
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_70
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private blacklist initializeDexInfo()V
    .registers 5

    .line 4718
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    if-eqz v0, :cond_3f

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mNeedToInitDexInfo:Z

    if-eqz v0, :cond_3f

    .line 4719
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mNeedToInitDexInfo:Z

    .line 4721
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4722
    .local v0, "context":Landroid/content/Context;
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_3f

    .line 4724
    :try_start_15
    new-instance v1, Lcom/samsung/android/desktopmode/DexTaskInfo;

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    .line 4725
    invoke-interface {v2}, Landroid/app/IActivityTaskManager;->getMultiTaskingBinder()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->getDexTaskInfoFlags(Landroid/os/IBinder;)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/desktopmode/DexTaskInfo;-><init>(I)V

    .line 4726
    .local v1, "info":Lcom/samsung/android/desktopmode/DexTaskInfo;
    invoke-virtual {v1}, Lcom/samsung/android/desktopmode/DexTaskInfo;->isResizableToFullscreen()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsWindowResizable:Z

    .line 4727
    invoke-virtual {v1}, Lcom/samsung/android/desktopmode/DexTaskInfo;->isFixedOrientation()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsFixedOrientation:Z
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_36} :catch_37

    .line 4730
    .end local v1    # "info":Lcom/samsung/android/desktopmode/DexTaskInfo;
    goto :goto_3f

    .line 4728
    :catch_37
    move-exception v1

    .line 4729
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "DecorView"

    const-string v3, "RemoteException from initializeDexInfo."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4733
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3f
    :goto_3f
    return-void
.end method

.method private blacklist initializeElevation()V
    .registers 2

    .line 4035
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mAllowUpdateElevation:Z

    .line 4040
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    .line 4041
    return-void
.end method

.method private blacklist isActivity()Z
    .registers 2

    .line 4351
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private blacklist isActivityHomeOrRecent()Z
    .registers 2

    .line 5561
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v0

    packed-switch v0, :pswitch_data_16

    .line 5566
    const/4 v0, 0x0

    return v0

    .line 5564
    :pswitch_13
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_16
    .packed-switch 0x2
        :pswitch_13
        :pswitch_13
    .end packed-switch
.end method

.method private blacklist isChildIntersectsWith(Landroid/view/View;)Z
    .registers 9
    .param p1, "colorView"    # Landroid/view/View;

    .line 5359
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mTmpColorViewBounds:Landroid/graphics/Rect;

    .line 5360
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 5359
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 5361
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_16
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_48

    .line 5362
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5363
    .local v1, "child":Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    if-eq v2, v1, :cond_45

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v2, v2, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-ne v2, v1, :cond_2b

    .line 5364
    goto :goto_45

    .line 5366
    :cond_2b
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mTmpColorViewBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 5367
    const/4 v2, 0x1

    return v2

    .line 5361
    .end local v1    # "child":Landroid/view/View;
    :cond_45
    :goto_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 5370
    .end local v0    # "i":I
    :cond_48
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isDeviceLocked()Z
    .registers 6

    .line 5571
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 5572
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    const-string v1, "DecorView"

    if-nez v0, :cond_15

    .line 5573
    const-string v2, "keyguard service is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5574
    const/4 v1, 0x0

    return v1

    .line 5576
    :cond_15
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result v2

    .line 5577
    .local v2, "deviceLocked":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDeviceLocked = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5579
    return v2
.end method

.method private blacklist isDimBehind()Z
    .registers 4

    .line 4069
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 4070
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1d

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1d

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1d

    const/4 v1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    return v1
.end method

.method private blacklist isFillingScreen(Landroid/content/res/Configuration;)Z
    .registers 7
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 3515
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    move v0, v1

    .line 3517
    .local v0, "isFullscreen":Z
    :goto_d
    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWindowSystemUiVisibility()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getSystemUiVisibility()I

    move-result v4

    or-int/2addr v3, v4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1d

    move v1, v2

    :cond_1d
    return v1
.end method

.method private blacklist isImmersiveFullscreenOnDex()Z
    .registers 2

    .line 4851
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsImmersiveMode:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private blacklist isMultiSplitHandlerValid()Z
    .registers 2

    .line 996
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static blacklist isNavBarToLeftEdge(II)Z
    .registers 3
    .param p0, "bottomInset"    # I
    .param p1, "leftInset"    # I

    .line 1854
    if-nez p0, :cond_6

    if-lez p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static blacklist isNavBarToRightEdge(II)Z
    .registers 3
    .param p0, "bottomInset"    # I
    .param p1, "rightInset"    # I

    .line 1850
    if-nez p0, :cond_6

    if-lez p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private blacklist isOutOfBounds(II)Z
    .registers 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1137
    const/4 v0, -0x5

    if-lt p1, v0, :cond_18

    if-lt p2, v0, :cond_18

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-gt p1, v0, :cond_18

    .line 1138
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-le p2, v0, :cond_16

    goto :goto_18

    :cond_16
    const/4 v0, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v0, 0x1

    .line 1137
    :goto_19
    return v0
.end method

.method private blacklist isOutOfInnerBounds(II)Z
    .registers 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1133
    if-ltz p1, :cond_13

    if-ltz p2, :cond_13

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v0

    if-gt p1, v0, :cond_13

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v0

    if-le p2, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method private blacklist isPopOverState()Z
    .registers 2

    .line 4076
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mPreventPopOverElevation:Z

    if-nez v0, :cond_20

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    if-nez v0, :cond_12

    .line 4077
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFreeformMode()Z

    move-result v0

    if-nez v0, :cond_20

    .line 4078
    :cond_12
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFullSize()Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 4076
    :goto_21
    return v0
.end method

.method private blacklist isResizing()Z
    .registers 2

    .line 4026
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private blacklist isResolverActivityWithoutShadow()Z
    .registers 4

    .line 4083
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/app/ResolverActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 4084
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v0

    .line 4085
    .local v0, "callback":Landroid/view/Window$WindowControllerCallback;
    if-eqz v0, :cond_1a

    invoke-interface {v0}, Landroid/view/Window$WindowControllerCallback;->isTaskRoot()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 4087
    return v1

    .line 4089
    :cond_1a
    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    if-nez v2, :cond_26

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFullscreenMode()Z

    move-result v2

    if-nez v2, :cond_26

    .line 4090
    const/4 v1, 0x1

    return v1

    .line 4093
    .end local v0    # "callback":Landroid/view/Window$WindowControllerCallback;
    :cond_26
    return v1
.end method

.method private blacklist isStatusBarHiddenByFlags()Z
    .registers 4

    .line 5598
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFullscreenMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    .line 5599
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getSystemUiVisibility()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWindowSystemUiVisibility()I

    move-result v2

    or-int/2addr v0, v2

    .line 5600
    .local v0, "systemUiVis":I
    and-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_28

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 5601
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_29

    :cond_28
    const/4 v1, 0x1

    .line 5600
    :cond_29
    return v1

    .line 5603
    .end local v0    # "systemUiVis":I
    :cond_2a
    return v1
.end method

.method private blacklist loadBackgroundDrawablesIfNeeded()V
    .registers 4

    .line 3647
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_42

    .line 3648
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 3649
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isTranslucent()Z

    move-result v2

    if-nez v2, :cond_1f

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 3650
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isShowingWallpaper()Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v2, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v2, 0x1

    .line 3648
    :goto_20
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/DecorView;->getResizingBackgroundDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 3651
    if-nez v0, :cond_42

    .line 3654
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find background drawable for PhoneWindow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3657
    :cond_42
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_53

    .line 3658
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1080294

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 3661
    :cond_53
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_63

    .line 3662
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundDrawableCb:Landroid/graphics/drawable/Drawable$Callback;

    .line 3663
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3665
    :cond_63
    return-void
.end method

.method private blacklist onImmersiveModeChanged(Z)V
    .registers 6
    .param p1, "isImmersiveMode"    # Z

    .line 4855
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsImmersiveMode:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, p1, :cond_64

    .line 4856
    iput-boolean p1, p0, Lcom/android/internal/policy/DecorView;->mIsImmersiveMode:Z

    .line 4857
    sget-boolean v0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->DEBUG:Z

    if-eqz v0, :cond_24

    .line 4858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onImmersiveModeChanged: changed to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mIsImmersiveMode:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->log(Ljava/lang/String;)V

    .line 4860
    :cond_24
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    if-eqz v0, :cond_36

    .line 4861
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->prepareImmersiveHelper()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 4862
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mImmersiveHelper:Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;

    iget-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mIsImmersiveMode:Z

    invoke-virtual {v0, v3}, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->dispatchCaptionVisibilityChanged(Z)V

    goto :goto_55

    .line 4864
    :cond_36
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mCaptionType:I

    if-ne v0, v2, :cond_55

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_55

    .line 4865
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->hasWindowDecorCaption()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFullSize()Z

    move-result v0

    if-eqz v0, :cond_4c

    move v0, v2

    goto :goto_4d

    :cond_4c
    move v0, v1

    .line 4866
    .local v0, "showCaption":Z
    :goto_4d
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/DecorCaptionView;->onConfigurationChanged(Z)V

    .line 4867
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->enableCaption(Z)V

    .line 4869
    .end local v0    # "showCaption":Z
    :cond_55
    :goto_55
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isMultiSplitHandlerValid()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 4870
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isHandlerAutoHide()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->setHandlerAutoHide(Z)V

    .line 4874
    :cond_64
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    if-nez v0, :cond_9b

    .line 4875
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsImmersiveMode:Z

    if-nez v0, :cond_72

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isStatusBarHiddenByFlags()Z

    move-result v0

    if-eqz v0, :cond_73

    :cond_72
    move v1, v2

    :cond_73
    move v0, v1

    .line 4876
    .local v0, "isStatusBarHidden":Z
    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mIsStatusBarHidden:Z

    if-eq v1, v0, :cond_9b

    .line 4877
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsStatusBarHidden:Z

    .line 4878
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImmersiveModeChanged: isStatusBarHidden="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsStatusBarHidden:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DecorView"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4879
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    if-eqz v1, :cond_9b

    .line 4880
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->onStatusBarVisibilityChanged()V

    .line 4885
    .end local v0    # "isStatusBarHidden":Z
    :cond_9b
    return-void
.end method

.method private blacklist prepareImmersiveHelper()Z
    .registers 3

    .line 4924
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mImmersiveHelper:Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v0, :cond_15

    .line 4925
    new-instance v0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;-><init>(Lcom/android/internal/policy/DecorView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mImmersiveHelper:Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;

    .line 4927
    :cond_15
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mImmersiveHelper:Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0
.end method

.method private blacklist refreshGestureNavBarSettings()V
    .registers 5

    .line 5374
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigation_bar_gesture_while_hidden"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    move v0, v1

    goto :goto_13

    :cond_12
    move v0, v2

    :goto_13
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mGestureNavBarEnabled:Z

    .line 5376
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "navigation_bar_gesture_hint"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_24

    move v2, v1

    :cond_24
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mGestureHintEnabled:Z

    .line 5378
    return-void
.end method

.method private blacklist releaseThreadedRenderer()V
    .registers 4

    .line 4012
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundDrawableCb:Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v2, :cond_e

    .line 4013
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 4014
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundDrawableCb:Landroid/graphics/drawable/Drawable$Callback;

    .line 4017
    :cond_e
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-eqz v0, :cond_1a

    .line 4018
    invoke-virtual {v0}, Lcom/android/internal/policy/BackdropFrameRenderer;->releaseRenderer()V

    .line 4019
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    .line 4021
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    .line 4023
    :cond_1a
    return-void
.end method

.method private blacklist removeDecorCaptionIfNeeded(Landroid/content/res/Configuration;)Z
    .registers 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 3466
    const/4 v0, 0x0

    .line 3469
    .local v0, "captionRemoved":Z
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mDensityDpi:I

    .line 3470
    .local v1, "oldDensityDpi":I
    const-string v2, "remove_caption"

    invoke-direct {p0, v2}, Lcom/android/internal/policy/DecorView;->getCurrentDensityDpi(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/DecorView;->mDensityDpi:I

    .line 3471
    if-ne v2, v1, :cond_11

    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    if-eqz v2, :cond_12

    .line 3472
    :cond_11
    const/4 v0, 0x1

    .line 3495
    :cond_12
    if-eqz v0, :cond_1b

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v2, :cond_1b

    .line 3496
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->removeDecorCaptionView()V

    .line 3499
    :cond_1b
    return v0
.end method

.method private blacklist removeDecorCaptionView()V
    .registers 5

    .line 3726
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_2a

    .line 3727
    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->restoreOutlineProvider()V

    .line 3729
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->removeAllViews()V

    .line 3730
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->clearDisappearingChildren()V

    .line 3731
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 3732
    .local v0, "contentIndex":I
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->removeView(Landroid/view/View;)V

    .line 3733
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    .line 3734
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3736
    .end local v0    # "contentIndex":I
    :cond_2a
    return-void
.end method

.method private blacklist removeDecorCaptionWindow()V
    .registers 2

    .line 4804
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCompatWindow:Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;

    if-eqz v0, :cond_e

    .line 4805
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->removeWindow()V

    .line 4806
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mCompatWindow:Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;

    .line 4808
    :cond_e
    return-void
.end method

.method private blacklist removeKnoxBadge()V
    .registers 2

    .line 5985
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    if-eqz v0, :cond_10

    .line 5986
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->hideKnoxBadge()V

    .line 5987
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    .line 5988
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeView:Landroid/view/View;

    .line 5989
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadge:Landroid/graphics/drawable/Drawable;

    .line 5990
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mReverseKnoxBadge:Landroid/graphics/drawable/Drawable;

    .line 5992
    :cond_10
    return-void
.end method

.method private blacklist requestInvalidateRenderNode(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .line 4657
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->hasDecorCaptionWindow()Z

    move-result v0

    if-nez v0, :cond_33

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isResizing()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_33

    .line 4661
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 4662
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_32

    .line 4663
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    .line 4664
    sget-boolean v1, Lcom/android/internal/policy/DecorView;->DEBUG_DRAW:Z

    if-eqz v1, :cond_32

    .line 4665
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestInvalidateRootRenderNode: msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DecorView"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4668
    :cond_32
    return-void

    .line 4658
    .end local v0    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_33
    :goto_33
    return-void
.end method

.method private blacklist setBackgroundAlpha(F)V
    .registers 4
    .param p1, "alpha"    # F

    .line 5923
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_23

    .line 5924
    iput p1, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundAlpha:F

    .line 5925
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changed bg alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DecorView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5926
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->invalidate()V

    .line 5928
    :cond_23
    return-void
.end method

.method private blacklist setBadgeResource()V
    .registers 4

    .line 6008
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPackageManagerForKnoxBadge:Landroid/content/pm/PackageManager;

    new-instance v1, Landroid/os/UserHandle;

    iget v2, p0, Lcom/android/internal/policy/DecorView;->mUserId:I

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadge:Landroid/graphics/drawable/Drawable;

    .line 6009
    new-instance v0, Landroid/os/UserHandle;

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mUserId:I

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getCustomReverseBadgeForCustomContainer(Landroid/os/UserHandle;ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mReverseKnoxBadge:Landroid/graphics/drawable/Drawable;

    .line 6010
    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadge:Landroid/graphics/drawable/Drawable;

    :cond_23
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mReverseKnoxBadge:Landroid/graphics/drawable/Drawable;

    .line 6011
    return-void
.end method

.method private static blacklist setColor(Landroid/view/View;IIZZ)V
    .registers 16
    .param p0, "v"    # Landroid/view/View;
    .param p1, "color"    # I
    .param p2, "dividerColor"    # I
    .param p3, "verticalBar"    # Z
    .param p4, "seascape"    # Z

    .line 2384
    if-eqz p2, :cond_9b

    .line 2385
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 2386
    .local v0, "dir":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_40

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v3, p3, :cond_40

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eq v3, p4, :cond_21

    goto :goto_40

    .line 2399
    :cond_21
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    .line 2400
    .local v3, "d":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/InsetDrawable;

    .line 2401
    .local v1, "inset":Landroid/graphics/drawable/InsetDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 2402
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2, p2}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    goto :goto_9a

    .line 2387
    .end local v1    # "inset":Landroid/graphics/drawable/InsetDrawable;
    .end local v3    # "d":Landroid/graphics/drawable/LayerDrawable;
    :cond_40
    :goto_40
    const/high16 v3, 0x3f800000    # 1.0f

    .line 2389
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 2388
    invoke-static {v1, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    .line 2387
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 2391
    .local v3, "size":I
    new-instance v10, Landroid/graphics/drawable/InsetDrawable;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 2392
    if-eqz p3, :cond_63

    if-nez p4, :cond_63

    move v6, v3

    goto :goto_64

    :cond_63
    move v6, v2

    .line 2393
    :goto_64
    if-nez p3, :cond_68

    move v7, v3

    goto :goto_69

    :cond_68
    move v7, v2

    .line 2394
    :goto_69
    if-eqz p3, :cond_6f

    if-eqz p4, :cond_6f

    move v8, v3

    goto :goto_70

    :cond_6f
    move v8, v2

    :goto_70
    const/4 v9, 0x0

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 2395
    .local v4, "d":Landroid/graphics/drawable/InsetDrawable;
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v7, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v7, v6, v2

    aput-object v4, v6, v1

    invoke-direct {v5, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2397
    new-instance v1, Landroid/util/Pair;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2398
    .end local v3    # "size":I
    .end local v4    # "d":Landroid/graphics/drawable/InsetDrawable;
    nop

    .line 2404
    .end local v0    # "dir":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    :goto_9a
    goto :goto_a2

    .line 2405
    :cond_9b
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2406
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2408
    :goto_a2
    return-void
.end method

.method private blacklist setContentAlpha(F)V
    .registers 4
    .param p1, "alpha"    # F

    .line 5935
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mPopOverContentAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_23

    .line 5936
    iput p1, p0, Lcom/android/internal/policy/DecorView;->mPopOverContentAlpha:F

    .line 5937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changed content alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DecorView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5938
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->invalidate()V

    .line 5940
    :cond_23
    return-void
.end method

.method private blacklist setDarkDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V
    .registers 4
    .param p1, "view"    # Lcom/android/internal/widget/DecorCaptionView;

    .line 3803
    const v0, 0x10203ed

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1080298

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3805
    const v0, 0x1020263

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1080296

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3807
    return-void
.end method

.method private blacklist setDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V
    .registers 2
    .param p1, "view"    # Lcom/android/internal/widget/DecorCaptionView;

    .line 3767
    invoke-virtual {p1}, Lcom/android/internal/widget/DecorCaptionView;->setDecorCaptionShade()V

    .line 3768
    return-void
.end method

.method private blacklist setHandledActionMode(Landroid/view/ActionMode;)V
    .registers 4
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 3008
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v0

    if-nez v0, :cond_a

    .line 3009
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->setHandledPrimaryActionMode(Landroid/view/ActionMode;)V

    goto :goto_1c

    .line 3010
    :cond_a
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    .line 3011
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_1c

    .line 3012
    :cond_19
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->setHandledFloatingActionMode(Landroid/view/ActionMode;)V

    .line 3014
    :cond_1c
    :goto_1c
    return-void
.end method

.method private blacklist setHandledFloatingActionMode(Landroid/view/ActionMode;)V
    .registers 6
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 3171
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    .line 3174
    const/4 v0, 0x0

    .line 3175
    .local v0, "isSemTypeFloating":Z
    const/4 v1, 0x0

    .line 3177
    .local v1, "isDeviceDefaultThemeTextView":Z
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_10

    .line 3178
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isThemeDeviceDefault()Z

    move-result v1

    .line 3181
    :cond_10
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v2

    const/16 v3, 0x63

    if-eq v2, v3, :cond_1d

    if-eqz v1, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v2, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v2, 0x1

    :goto_1e
    move v0, v2

    .line 3183
    new-instance v2, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v2, v3, v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;-><init>(Landroid/view/Window;Z)V

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    .line 3184
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    check-cast v3, Lcom/android/internal/view/FloatingActionMode;

    invoke-virtual {v3, v2}, Lcom/android/internal/view/FloatingActionMode;->setFloatingToolbar(Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;)V

    .line 3187
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->invalidate()V

    .line 3188
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 3189
    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3190
    return-void
.end method

.method private blacklist setHandledPrimaryActionMode(Landroid/view/ActionMode;)V
    .registers 5
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 3112
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->endOnGoingFadeAnimation()V

    .line 3113
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    .line 3114
    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    .line 3115
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->initForMode(Landroid/view/ActionMode;)V

    .line 3116
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_19

    .line 3117
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->post(Ljava/lang/Runnable;)Z

    goto :goto_4a

    .line 3119
    :cond_19
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->shouldAnimatePrimaryActionModeView()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 3120
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_52

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    .line 3121
    new-instance v1, Lcom/android/internal/policy/DecorView$11;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/DecorView$11;-><init>(Lcom/android/internal/policy/DecorView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3133
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_4a

    .line 3135
    :cond_3d
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setAlpha(F)V

    .line 3136
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setVisibility(I)V

    .line 3139
    :goto_4a
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 3141
    return-void

    :array_52
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private blacklist setKnoxBadge()V
    .registers 3

    .line 6014
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    .line 6015
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPackageManagerForKnoxBadge:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_12

    .line 6016
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mPackageManagerForKnoxBadge:Landroid/content/pm/PackageManager;

    .line 6018
    :cond_12
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->setBadgeResource()V

    .line 6019
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeView:Landroid/view/View;

    if-nez v0, :cond_22

    .line 6020
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeView:Landroid/view/View;

    .line 6022
    :cond_22
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6023
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mWm:Landroid/view/WindowManager;

    .line 6024
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mDensityForKnoxBadge:I

    .line 6025
    return-void
.end method

.method private blacklist setKnoxBadgePosition()V
    .registers 2

    .line 6066
    new-instance v0, Lcom/android/internal/policy/DecorView$14;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/DecorView$14;-><init>(Lcom/android/internal/policy/DecorView;)V

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeDisplayRunnable:Ljava/lang/Runnable;

    .line 6170
    return-void
.end method

.method private blacklist setKnoxBadgeStateForImmersive(Z)V
    .registers 2
    .param p1, "isImmersiveMode"    # Z

    .line 6057
    iput-boolean p1, p0, Lcom/android/internal/policy/DecorView;->mIsImmersiveModeForKnox:Z

    .line 6059
    return-void
.end method

.method private blacklist setLightDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V
    .registers 4
    .param p1, "view"    # Lcom/android/internal/widget/DecorCaptionView;

    .line 3796
    const v0, 0x10203ed

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1080299

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3798
    const v0, 0x1020263

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1080297

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3800
    return-void
.end method

.method private blacklist shouldHideProfileBadge(ZZI)Z
    .registers 6
    .param p1, "isGestureHintOff"    # Z
    .param p2, "taskbarEnabled"    # Z
    .param p3, "displayType"    # I

    .line 6028
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeView:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 6030
    return v1

    .line 6032
    :cond_e
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isPopOverState()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 6034
    return v1

    .line 6036
    :cond_15
    if-eqz p1, :cond_1f

    .line 6037
    if-eqz p3, :cond_1a

    .line 6039
    return v1

    .line 6040
    :cond_1a
    if-nez p2, :cond_1f

    if-nez p3, :cond_1f

    .line 6042
    return v1

    .line 6045
    :cond_1f
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->getKnoxBadgeStateForImmersive()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 6047
    return v1

    .line 6049
    :cond_2c
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isSplitMode()Z

    move-result v0

    if-eqz v0, :cond_37

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    if-eqz v0, :cond_37

    .line 6051
    return v1

    .line 6053
    :cond_37
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist showContextMenuForChildInternal(Landroid/view/View;FF)Z
    .registers 10
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 1561
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    if-eqz v0, :cond_12

    .line 1562
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    invoke-interface {v0}, Lcom/android/internal/view/menu/MenuHelper;->dismiss()V

    .line 1563
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    .line 1567
    :cond_12
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuCallback:Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;

    .line 1568
    .local v0, "callback":Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    if-nez v1, :cond_31

    .line 1569
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    new-instance v2, Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/view/menu/ContextMenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    .line 1570
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v1, v0}, Lcom/android/internal/view/menu/ContextMenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    goto :goto_38

    .line 1572
    :cond_31
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/ContextMenuBuilder;->clearAll()V

    .line 1576
    :goto_38
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_48

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_48

    move v1, v2

    goto :goto_49

    :cond_48
    move v1, v3

    .line 1577
    .local v1, "isPopup":Z
    :goto_49
    if-eqz v1, :cond_58

    .line 1578
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v4, v4, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, p1, p2, p3}, Lcom/android/internal/view/menu/ContextMenuBuilder;->showPopup(Landroid/content/Context;Landroid/view/View;FF)Lcom/android/internal/view/menu/MenuPopupHelper;

    move-result-object v4

    .local v4, "helper":Lcom/android/internal/view/menu/MenuHelper;
    goto :goto_64

    .line 1580
    .end local v4    # "helper":Lcom/android/internal/view/menu/MenuHelper;
    :cond_58
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v4, v4, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/android/internal/view/menu/ContextMenuBuilder;->showDialog(Landroid/view/View;Landroid/os/IBinder;)Lcom/android/internal/view/menu/MenuDialogHelper;

    move-result-object v4

    .line 1583
    .restart local v4    # "helper":Lcom/android/internal/view/menu/MenuHelper;
    :goto_64
    if-eqz v4, :cond_71

    .line 1587
    if-nez v1, :cond_6a

    move v5, v2

    goto :goto_6b

    :cond_6a
    move v5, v3

    :goto_6b
    invoke-virtual {v0, v5}, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->setShowDialogForSubmenu(Z)V

    .line 1588
    invoke-interface {v4, v0}, Lcom/android/internal/view/menu/MenuHelper;->setPresenterCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 1591
    :cond_71
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iput-object v4, v5, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    .line 1592
    if-eqz v4, :cond_78

    goto :goto_79

    :cond_78
    move v2, v3

    :goto_79
    return v2
.end method

.method private blacklist showPopOver()V
    .registers 8

    .line 5947
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->POP_OVER_BACKGROUND_ALPHA:Landroid/util/FloatProperty;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 5948
    .local v0, "animBackground":Landroid/animation/ObjectAnimator;
    const-wide/16 v5, 0xc8

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 5949
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->POP_OVER_CONTENT_ALPHA:Landroid/util/FloatProperty;

    new-array v5, v1, [F

    aput v4, v5, v3

    invoke-static {p0, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 5950
    .local v2, "animContent":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x64

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 5951
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 5952
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 5953
    .local v4, "animSet":Landroid/animation/AnimatorSet;
    const/4 v5, 0x2

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v0, v5, v3

    aput-object v2, v5, v1

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 5954
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 5955
    return-void
.end method

.method private blacklist startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 8
    .param p1, "originatingView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "type"    # I

    .line 1619
    new-instance v0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;

    invoke-direct {v0, p0, p2}, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;-><init>(Lcom/android/internal/policy/DecorView;Landroid/view/ActionMode$Callback;)V

    .line 1620
    .local v0, "wrappedCallback":Landroid/view/ActionMode$Callback2;
    const/4 v1, 0x0

    .line 1621
    .local v1, "mode":Landroid/view/ActionMode;
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_32

    .line 1623
    :try_start_16
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    invoke-interface {v2, v0, p3}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v2
    :try_end_20
    .catch Ljava/lang/AbstractMethodError; {:try_start_16 .. :try_end_20} :catch_22

    move-object v1, v2

    .line 1634
    goto :goto_32

    .line 1624
    :catch_22
    move-exception v2

    .line 1626
    .local v2, "ame":Ljava/lang/AbstractMethodError;
    if-nez p3, :cond_32

    .line 1628
    :try_start_25
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v3
    :try_end_2f
    .catch Ljava/lang/AbstractMethodError; {:try_start_25 .. :try_end_2f} :catch_31

    move-object v1, v3

    .line 1632
    goto :goto_32

    .line 1630
    :catch_31
    move-exception v3

    .line 1636
    .end local v2    # "ame":Ljava/lang/AbstractMethodError;
    :cond_32
    :goto_32
    if-eqz v1, :cond_59

    .line 1637
    invoke-virtual {v1}, Landroid/view/ActionMode;->getType()I

    move-result v2

    if-nez v2, :cond_40

    .line 1638
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->cleanupPrimaryActionMode()V

    .line 1639
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    goto :goto_6e

    .line 1640
    :cond_40
    invoke-virtual {v1}, Landroid/view/ActionMode;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4f

    .line 1641
    invoke-virtual {v1}, Landroid/view/ActionMode;->getType()I

    move-result v2

    const/16 v3, 0x63

    if-ne v2, v3, :cond_6e

    .line 1642
    :cond_4f
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_56

    .line 1643
    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    .line 1645
    :cond_56
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    goto :goto_6e

    .line 1648
    :cond_59
    invoke-direct {p0, p3, v0, p1}, Lcom/android/internal/policy/DecorView;->createActionMode(ILandroid/view/ActionMode$Callback2;Landroid/view/View;)Landroid/view/ActionMode;

    move-result-object v1

    .line 1649
    if-eqz v1, :cond_6d

    invoke-virtual {v1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ActionMode$Callback2;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 1650
    invoke-direct {p0, v1}, Lcom/android/internal/policy/DecorView;->setHandledActionMode(Landroid/view/ActionMode;)V

    goto :goto_6e

    .line 1652
    :cond_6d
    const/4 v1, 0x0

    .line 1655
    :cond_6e
    :goto_6e
    if-eqz v1, :cond_8b

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    if-eqz v2, :cond_8b

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_8b

    .line 1657
    :try_start_80
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V
    :try_end_89
    .catch Ljava/lang/AbstractMethodError; {:try_start_80 .. :try_end_89} :catch_8a

    .line 1660
    goto :goto_8b

    .line 1658
    :catch_8a
    move-exception v2

    .line 1662
    :cond_8b
    :goto_8b
    return-object v1
.end method

.method private blacklist updateBackgroundBlurCorners()V
    .registers 5

    .line 2119
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    if-nez v0, :cond_5

    return-void

    .line 2121
    :cond_5
    const/4 v0, 0x0

    .line 2124
    .local v0, "cornerRadius":F
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurRadius:I

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_24

    .line 2125
    new-instance v1, Landroid/graphics/Outline;

    invoke-direct {v1}, Landroid/graphics/Outline;-><init>()V

    .line 2126
    .local v1, "outline":Landroid/graphics/Outline;
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 2127
    iget v2, v1, Landroid/graphics/Outline;->mMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_22

    invoke-virtual {v1}, Landroid/graphics/Outline;->getRadius()F

    move-result v2

    goto :goto_23

    :cond_22
    const/4 v2, 0x0

    :goto_23
    move v0, v2

    .line 2129
    .end local v1    # "outline":Landroid/graphics/Outline;
    :cond_24
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    invoke-virtual {v1, v0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->setCornerRadius(F)V

    .line 2130
    return-void
.end method

.method private blacklist updateBackgroundBlurRadius()V
    .registers 3

    .line 2133
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 2135
    :cond_7
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabled:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isTranslucent()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2136
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundBlurRadius:I

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurRadius:I

    .line 2137
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    if-nez v1, :cond_2c

    if-lez v0, :cond_2c

    .line 2138
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->createBackgroundBlurDrawable()Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    .line 2139
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateBackgroundDrawable()V

    .line 2142
    :cond_2c
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    if-eqz v0, :cond_35

    .line 2143
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurRadius:I

    invoke-virtual {v0, v1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->setBlurRadius(I)V

    .line 2145
    :cond_35
    return-void
.end method

.method private blacklist updateBackgroundDrawable()V
    .registers 10

    .line 2078
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    if-nez v0, :cond_8

    .line 2079
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    .line 2082
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundInsets:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mLastOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, v1, :cond_1f

    .line 2085
    return-void

    .line 2088
    :cond_1f
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 2089
    .local v0, "destDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    if-eqz v1, :cond_38

    .line 2090
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object v0, v1

    .line 2094
    :cond_38
    if-eqz v0, :cond_5d

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    sget-object v2, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v1, v2}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 2095
    new-instance v8, Lcom/android/internal/policy/DecorView$7;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    iget v4, v1, Landroid/graphics/Insets;->left:I

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    iget v5, v1, Landroid/graphics/Insets;->top:I

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    iget v6, v1, Landroid/graphics/Insets;->right:I

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    iget v7, v1, Landroid/graphics/Insets;->bottom:I

    move-object v1, v8

    move-object v2, p0

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/policy/DecorView$7;-><init>(Lcom/android/internal/policy/DecorView;Landroid/graphics/drawable/Drawable;IIII)V

    move-object v0, v8

    .line 2111
    :cond_5d
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2113
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundInsets:Landroid/graphics/Insets;

    .line 2114
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    .line 2115
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mLastOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 2116
    return-void
.end method

.method private blacklist updateCaptionType(Landroid/content/res/Configuration;)V
    .registers 14
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 4530
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    .line 4531
    return-void

    .line 4534
    :cond_c
    sget-boolean v0, Lcom/android/internal/policy/DecorView;->DEBUG_CAPTION:Z

    const-string v2, " config="

    const-string v3, "DecorView"

    if-eqz v0, :cond_44

    .line 4535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCaptionType: isDexEnabled="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " callers="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v4, 0x6

    .line 4536
    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4535
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4539
    :cond_44
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v0

    .line 4540
    .local v0, "isPopOver":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[INFO] isPopOver="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_6b

    move v6, v5

    goto :goto_6c

    :cond_6b
    move v6, v4

    :goto_6c
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4542
    if-nez v0, :cond_1b4

    .line 4543
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 4544
    .local v2, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isActivity()Z

    move-result v6

    .line 4545
    .local v6, "isActivity":Z
    iget-boolean v7, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    const-string v8, " this="

    const/4 v9, 0x2

    if-eqz v7, :cond_14c

    sget-boolean v7, Landroid/view/ViewRootImpl;->CAPTION_ON_SHELL:Z

    if-nez v7, :cond_14c

    .line 4546
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[INFO] WindowingMode="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWindowingMode()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4549
    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit16 v7, v7, 0x100

    if-eqz v7, :cond_ba

    .line 4551
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->setCaptionType(I)V

    .line 4552
    return-void

    .line 4556
    :cond_ba
    if-eqz p1, :cond_14c

    .line 4557
    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v5, :cond_c7

    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v1, v9, :cond_c5

    goto :goto_c7

    :cond_c5
    move v1, v4

    goto :goto_c8

    :cond_c7
    :goto_c7
    move v1, v5

    .line 4558
    .local v1, "isApplication":Z
    :goto_c8
    iget v7, p1, Landroid/content/res/Configuration;->dexCompatEnabled:I

    if-ne v7, v9, :cond_ce

    move v7, v5

    goto :goto_cf

    :cond_ce
    move v7, v4

    .line 4559
    .local v7, "isDexCompatEnabled":Z
    :goto_cf
    if-nez v1, :cond_fc

    if-eqz v7, :cond_fc

    iget-object v10, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v10, v10, Lcom/android/internal/policy/PhoneWindow;->mActivityCurrentConfig:Landroid/content/res/Configuration;

    if-eqz v10, :cond_fc

    .line 4566
    const/4 v1, 0x1

    .line 4567
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " Invalid window type("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") set. this="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4570
    :cond_fc
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateCaptionType: isApplication="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isDexCompatEnabled="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isDecorCaptionWindow=false hasContainer="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 4572
    invoke-virtual {v11}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v11

    if-nez v11, :cond_126

    move v11, v5

    goto :goto_127

    :cond_126
    move v11, v4

    :goto_127
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 4570
    invoke-static {v3, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4573
    if-eqz v1, :cond_14c

    if-eqz v6, :cond_14c

    if-eqz v7, :cond_14c

    iget-object v10, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v10}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v10

    if-nez v10, :cond_14c

    .line 4575
    invoke-virtual {p0, v9}, Lcom/android/internal/policy/DecorView;->setCaptionType(I)V

    .line 4576
    return-void

    .line 4582
    .end local v1    # "isApplication":Z
    .end local v7    # "isDexCompatEnabled":Z
    :cond_14c
    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v5, :cond_15c

    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v9, :cond_15c

    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v7, 0x4

    if-ne v1, v7, :cond_15a

    goto :goto_15c

    :cond_15a
    move v1, v4

    goto :goto_15d

    :cond_15c
    :goto_15c
    move v1, v5

    .line 4584
    .restart local v1    # "isApplication":Z
    :goto_15d
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->hasWindowDecorCaption()Z

    move-result v7

    .line 4585
    .local v7, "hasWindowDecorCaption":Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateCaptionType: isFloating="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v10}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isApplication="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " hasWindowDecorCaption="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4588
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    move-result v3

    if-nez v3, :cond_1b4

    if-eqz v1, :cond_1b4

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->hasWindowDecorCaption()Z

    move-result v3

    if-eqz v3, :cond_1b4

    sget-boolean v3, Landroid/view/ViewRootImpl;->CAPTION_ON_SHELL:Z

    if-nez v3, :cond_1b4

    if-eqz v6, :cond_1b4

    .line 4590
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/DecorView;->setCaptionType(I)V

    .line 4591
    return-void

    .line 4596
    .end local v1    # "isApplication":Z
    .end local v2    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "isActivity":Z
    .end local v7    # "hasWindowDecorCaption":Z
    :cond_1b4
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/DecorView;->setCaptionType(I)V

    .line 4597
    return-void
.end method

.method private blacklist updateColorViewInt(Lcom/android/internal/policy/DecorView$ColorViewState;IIIZZIZZLandroid/view/WindowInsetsController;)V
    .registers 30
    .param p1, "state"    # Lcom/android/internal/policy/DecorView$ColorViewState;
    .param p2, "color"    # I
    .param p3, "dividerColor"    # I
    .param p4, "size"    # I
    .param p5, "verticalBar"    # Z
    .param p6, "seascape"    # Z
    .param p7, "sideMargin"    # I
    .param p8, "animate"    # Z
    .param p9, "force"    # Z
    .param p10, "controller"    # Landroid/view/WindowInsetsController;

    .line 2277
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p9

    iget-object v8, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget-object v9, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget v9, v9, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->insetsType:I

    .line 2278
    move-object/from16 v10, p10

    invoke-interface {v10, v9}, Landroid/view/WindowInsetsController;->isRequestedVisible(I)Z

    move-result v9

    iget-object v11, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 2279
    invoke-virtual {v11}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2277
    invoke-virtual {v8, v9, v11, v7}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isPresent(ZIZ)Z

    move-result v8

    iput-boolean v8, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->present:Z

    .line 2280
    iget-object v8, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget-boolean v9, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->present:Z

    iget-object v11, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 2281
    invoke-virtual {v11}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2280
    invoke-virtual {v8, v9, v2, v11, v7}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isVisible(ZIIZ)Z

    move-result v8

    .line 2282
    .local v8, "show":Z
    if-eqz v8, :cond_4a

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->isResizing()Z

    move-result v12

    if-nez v12, :cond_4a

    iget-boolean v12, v0, Lcom/android/internal/policy/DecorView;->mHasCaption:Z

    if-nez v12, :cond_4a

    if-lez p4, :cond_4a

    const/4 v12, 0x1

    goto :goto_4b

    :cond_4a
    const/4 v12, 0x0

    .line 2297
    .local v12, "showView":Z
    :goto_4b
    const/4 v13, 0x0

    .line 2298
    .local v13, "visibilityChanged":Z
    iget-object v14, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    .line 2300
    .local v14, "view":Landroid/view/View;
    const/4 v15, -0x1

    if-eqz v4, :cond_54

    move/from16 v16, v15

    goto :goto_56

    :cond_54
    move/from16 v16, p4

    :goto_56
    move/from16 v17, v16

    .line 2301
    .local v17, "resolvedHeight":I
    if-eqz v4, :cond_5c

    move/from16 v15, p4

    .line 2302
    .local v15, "resolvedWidth":I
    :cond_5c
    if-eqz v4, :cond_68

    .line 2303
    iget-object v9, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    if-eqz v5, :cond_65

    iget v9, v9, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->seascapeGravity:I

    goto :goto_6c

    :cond_65
    iget v9, v9, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->horizontalGravity:I

    goto :goto_6c

    .line 2304
    :cond_68
    iget-object v9, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget v9, v9, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->verticalGravity:I

    :goto_6c
    nop

    .line 2306
    .local v9, "resolvedGravity":I
    if-nez v14, :cond_ae

    .line 2307
    if-eqz v12, :cond_aa

    .line 2308
    new-instance v11, Landroid/view/View;

    iget-object v7, v0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v11, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object v14, v11

    iput-object v11, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    .line 2309
    invoke-static {v14, v2, v3, v4, v5}, Lcom/android/internal/policy/DecorView;->setColor(Landroid/view/View;IIZZ)V

    .line 2310
    iget-object v7, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget-object v7, v7, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->transitionName:Ljava/lang/String;

    invoke-virtual {v14, v7}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 2311
    iget-object v7, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget v7, v7, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->id:I

    invoke-virtual {v14, v7}, Landroid/view/View;->setId(I)V

    .line 2312
    const/4 v13, 0x1

    .line 2313
    const/4 v7, 0x4

    invoke-virtual {v14, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2314
    const/4 v11, 0x0

    iput v11, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->targetVisibility:I

    .line 2316
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    move/from16 v7, v17

    .end local v17    # "resolvedHeight":I
    .local v7, "resolvedHeight":I
    invoke-direct {v11, v15, v7, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 2318
    .local v11, "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v5, :cond_a0

    .line 2319
    iput v6, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_a2

    .line 2321
    :cond_a0
    iput v6, v11, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2323
    :goto_a2
    invoke-virtual {v0, v14, v11}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2324
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->updateColorViewTranslations()V

    .line 2325
    .end local v11    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    goto/16 :goto_118

    .line 2307
    .end local v7    # "resolvedHeight":I
    .restart local v17    # "resolvedHeight":I
    :cond_aa
    move/from16 v7, v17

    .end local v17    # "resolvedHeight":I
    .restart local v7    # "resolvedHeight":I
    goto/16 :goto_118

    .line 2327
    .end local v7    # "resolvedHeight":I
    .restart local v17    # "resolvedHeight":I
    :cond_ae
    move/from16 v7, v17

    .end local v17    # "resolvedHeight":I
    .restart local v7    # "resolvedHeight":I
    if-eqz v12, :cond_b4

    const/4 v11, 0x0

    goto :goto_b5

    :cond_b4
    const/4 v11, 0x4

    .line 2328
    .local v11, "vis":I
    :goto_b5
    iget v6, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->targetVisibility:I

    if-eq v6, v11, :cond_bc

    const/16 v16, 0x1

    goto :goto_be

    :cond_bc
    const/16 v16, 0x0

    :goto_be
    move/from16 v13, v16

    .line 2329
    iput v11, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->targetVisibility:I

    .line 2330
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 2331
    .local v6, "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v5, :cond_cd

    const/16 v16, 0x0

    goto :goto_cf

    :cond_cd
    move/from16 v16, p7

    :goto_cf
    move/from16 v17, v16

    .line 2332
    .local v17, "rightMargin":I
    if-eqz v5, :cond_d6

    move/from16 v16, p7

    goto :goto_d8

    :cond_d6
    const/16 v16, 0x0

    :goto_d8
    move/from16 v18, v16

    .line 2333
    .local v18, "leftMargin":I
    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v10, v7, :cond_fc

    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v10, v15, :cond_fc

    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-ne v10, v9, :cond_fc

    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v16, v11

    move/from16 v11, v17

    .end local v17    # "rightMargin":I
    .local v11, "rightMargin":I
    .local v16, "vis":I
    if-ne v10, v11, :cond_f7

    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v17, v13

    move/from16 v13, v18

    .end local v18    # "leftMargin":I
    .local v13, "leftMargin":I
    .local v17, "visibilityChanged":Z
    if-eq v10, v13, :cond_111

    goto :goto_104

    .end local v17    # "visibilityChanged":Z
    .local v13, "visibilityChanged":Z
    .restart local v18    # "leftMargin":I
    :cond_f7
    move/from16 v17, v13

    move/from16 v13, v18

    .end local v18    # "leftMargin":I
    .local v13, "leftMargin":I
    .restart local v17    # "visibilityChanged":Z
    goto :goto_104

    .end local v16    # "vis":I
    .local v11, "vis":I
    .local v13, "visibilityChanged":Z
    .local v17, "rightMargin":I
    .restart local v18    # "leftMargin":I
    :cond_fc
    move/from16 v16, v11

    move/from16 v11, v17

    move/from16 v17, v13

    move/from16 v13, v18

    .line 2336
    .end local v18    # "leftMargin":I
    .local v11, "rightMargin":I
    .local v13, "leftMargin":I
    .restart local v16    # "vis":I
    .local v17, "visibilityChanged":Z
    :goto_104
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2337
    iput v15, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2338
    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2339
    iput v11, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2340
    iput v13, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2341
    invoke-virtual {v14, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2343
    :cond_111
    if-eqz v12, :cond_116

    .line 2344
    invoke-static {v14, v2, v3, v4, v5}, Lcom/android/internal/policy/DecorView;->setColor(Landroid/view/View;IIZZ)V

    .line 2347
    .end local v6    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v11    # "rightMargin":I
    .end local v13    # "leftMargin":I
    .end local v16    # "vis":I
    :cond_116
    move/from16 v13, v17

    .end local v17    # "visibilityChanged":Z
    .local v13, "visibilityChanged":Z
    :goto_118
    if-eqz v13, :cond_17b

    .line 2348
    invoke-virtual {v14}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2349
    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz p8, :cond_170

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->isResizing()Z

    move-result v10

    if-nez v10, :cond_170

    .line 2350
    const/4 v10, 0x0

    if-eqz v12, :cond_150

    .line 2351
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-eqz v11, :cond_13b

    .line 2352
    const/4 v11, 0x0

    invoke-virtual {v14, v11}, Landroid/view/View;->setVisibility(I)V

    .line 2353
    invoke-virtual {v14, v10}, Landroid/view/View;->setAlpha(F)V

    .line 2355
    :cond_13b
    invoke-virtual {v14}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget-object v10, v0, Lcom/android/internal/policy/DecorView;->mShowInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v10}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget v10, v0, Lcom/android/internal/policy/DecorView;->mBarEnterExitDuration:I

    int-to-long v10, v10

    .line 2356
    invoke-virtual {v6, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_17b

    .line 2359
    :cond_150
    iget-object v6, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    .line 2361
    .local v6, "hideView":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    iget-object v11, v0, Lcom/android/internal/policy/DecorView;->mHideInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    iget v11, v0, Lcom/android/internal/policy/DecorView;->mBarEnterExitDuration:I

    int-to-long v3, v11

    .line 2362
    invoke-virtual {v10, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/internal/policy/DecorView$8;

    invoke-direct {v4, v0, v6}, Lcom/android/internal/policy/DecorView$8;-><init>(Lcom/android/internal/policy/DecorView;Landroid/view/View;)V

    .line 2363
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 2372
    .end local v6    # "hideView":Landroid/view/View;
    goto :goto_17b

    .line 2349
    :cond_170
    const/4 v11, 0x0

    .line 2374
    invoke-virtual {v14, v6}, Landroid/view/View;->setAlpha(F)V

    .line 2375
    if-eqz v12, :cond_177

    goto :goto_178

    :cond_177
    const/4 v11, 0x4

    :goto_178
    invoke-virtual {v14, v11}, Landroid/view/View;->setVisibility(I)V

    .line 2378
    :cond_17b
    :goto_17b
    iput-boolean v8, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    .line 2379
    iput v2, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->color:I

    .line 2380
    return-void
.end method

.method private blacklist updateColorViewTranslations()V
    .registers 5

    .line 2413
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mRootScrollY:I

    .line 2414
    .local v0, "rootScrollY":I
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    .line 2415
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-lez v0, :cond_11

    int-to-float v3, v0

    goto :goto_12

    :cond_11
    move v3, v2

    :goto_12
    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 2417
    :cond_15
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-eqz v1, :cond_25

    .line 2418
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-gez v0, :cond_22

    int-to-float v2, v0

    :cond_22
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 2420
    :cond_25
    return-void
.end method

.method private blacklist updateDecorCaptionStatus(Landroid/content/res/Configuration;)V
    .registers 8
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 3524
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsImmersiveMode:Z

    if-eqz v0, :cond_14

    .line 3525
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->hasWindowDecorCaption()Z

    move-result v0

    .local v0, "displayWindowDecor":Z
    goto :goto_23

    .line 3527
    .end local v0    # "displayWindowDecor":Z
    :cond_14
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->hasWindowDecorCaption()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->isFillingScreen(Landroid/content/res/Configuration;)Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    move v0, v1

    .line 3533
    .restart local v0    # "displayWindowDecor":Z
    :goto_23
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-nez v2, :cond_89

    if-eqz v0, :cond_89

    .line 3535
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewRootImpl;

    if-nez v2, :cond_39

    .line 3536
    const-string v1, "DecorView"

    const-string v2, "It doesn\'t generate decor captions because the app has abnormally created a decor view."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3537
    return-void

    .line 3542
    :cond_39
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 3543
    .local v2, "inflater":Landroid/view/LayoutInflater;
    invoke-direct {p0, v2}, Lcom/android/internal/policy/DecorView;->createDecorCaptionView(Landroid/view/LayoutInflater;)Lcom/android/internal/widget/DecorCaptionView;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    .line 3544
    if-eqz v3, :cond_89

    .line 3545
    invoke-virtual {v3}, Lcom/android/internal/widget/DecorCaptionView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    const/4 v4, -0x1

    if-nez v3, :cond_58

    .line 3546
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v1, v5}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3550
    :cond_58
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v1, p0, :cond_78

    .line 3551
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/DecorView;->indexOfChildToRoot(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3552
    .local v1, "realContentRoot":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->removeView(Landroid/view/View;)V

    .line 3553
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    new-instance v5, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v3, v1, v5}, Lcom/android/internal/widget/DecorCaptionView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3555
    .end local v1    # "realContentRoot":Landroid/view/View;
    goto :goto_89

    .line 3556
    :cond_78
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->removeView(Landroid/view/View;)V

    .line 3557
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    new-instance v5, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v5}, Lcom/android/internal/widget/DecorCaptionView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3566
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_89
    :goto_89
    return-void
.end method

.method private blacklist updateDecorCaptionWindowVisibility()V
    .registers 3

    .line 4931
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    if-eqz v0, :cond_48

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->hasDecorCaptionWindow()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 4932
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFreeformMode()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCompatWindow:Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;

    if-eqz v0, :cond_19

    .line 4933
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->updateCaptionState(I)V

    goto :goto_48

    .line 4934
    :cond_19
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_48

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsImmersiveMode:Z

    if-eqz v0, :cond_48

    .line 4935
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/internal/policy/DecorView;->updateCaptionState(IZ)V

    .line 4936
    sget-boolean v0, Lcom/android/internal/policy/DecorView;->DEBUG_CAPTION:Z

    if-eqz v0, :cond_48

    .line 4937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DexCompat]  hide DecorCaptionWindow, Callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x6

    .line 4938
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4937
    const-string v1, "DecorView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4942
    :cond_48
    :goto_48
    return-void
.end method

.method private blacklist updateDisplayCutoutBackground(Landroid/view/WindowInsets;)V
    .registers 20
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 5808
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/DecorView;->mCalledDisplayCutoutBackgroundColor:Z

    if-nez v1, :cond_16

    sget-boolean v1, Landroid/view/View;->sIsSamsungBasicInteraction:Z

    if-nez v1, :cond_e

    sget-boolean v1, Landroid/view/View;->sIsDisplayCutoutBackground:Z

    if-eqz v1, :cond_16

    .line 5810
    :cond_e
    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/DecorView;->getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundColor:I

    .line 5813
    :cond_16
    if-nez p1, :cond_22

    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    if-eqz v1, :cond_22

    .line 5814
    iget v2, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundColor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 5815
    return-void

    .line 5818
    :cond_22
    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 5819
    .local v1, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_37

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_33

    goto :goto_37

    :cond_33
    move-object/from16 v17, v1

    goto/16 :goto_178

    :cond_37
    :goto_37
    if-eqz p1, :cond_176

    .line 5821
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v2

    if-eqz v2, :cond_173

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->hasSystemWindowInsets()Z

    move-result v2

    if-eqz v2, :cond_173

    .line 5822
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v2

    .line 5823
    .local v2, "cutout":Landroid/view/DisplayCutout;
    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v3

    .line 5824
    .local v3, "leftCutout":I
    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v5

    .line 5825
    .local v5, "topCutout":I
    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v6

    .line 5826
    .local v6, "rightCutout":I
    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v7

    .line 5828
    .local v7, "bottomCutout":I
    sput v6, Lcom/android/internal/policy/DecorView;->sKnoxBadgeRightCutout:I

    .line 5830
    const/4 v8, 0x0

    .line 5831
    .local v8, "needBackground":Z
    const/4 v9, 0x0

    .line 5832
    .local v9, "gravity":I
    const/4 v10, 0x0

    .line 5833
    .local v10, "width":I
    const/4 v11, 0x0

    .line 5834
    .local v11, "height":I
    const/4 v12, 0x0

    .line 5835
    .local v12, "topMargin":I
    const/4 v13, 0x0

    .line 5836
    .local v13, "bottomMargin":I
    add-int v14, v3, v6

    if-nez v14, :cond_69

    move-object/from16 v17, v1

    goto/16 :goto_fd

    .line 5838
    :cond_69
    if-lez v3, :cond_b9

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v14

    if-lez v14, :cond_b9

    .line 5839
    const/4 v8, 0x1

    .line 5840
    const/4 v9, 0x3

    .line 5841
    move v10, v3

    .line 5842
    const/4 v11, -0x1

    .line 5843
    iget-object v14, v0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-boolean v14, v14, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    if-eqz v14, :cond_80

    iget-object v14, v0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v14, v14, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    goto :goto_81

    :cond_80
    const/4 v14, 0x0

    .line 5844
    .local v14, "statusBg":Landroid/view/View;
    :goto_81
    if-eqz v14, :cond_8f

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-nez v15, :cond_8f

    .line 5845
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    iget v12, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5847
    :cond_8f
    iget-object v15, v0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-boolean v15, v15, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    if-eqz v15, :cond_9a

    iget-object v15, v0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v15, v15, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    goto :goto_9b

    :cond_9a
    const/4 v15, 0x0

    .line 5848
    .local v15, "naviBg":Landroid/view/View;
    :goto_9b
    if-eqz v15, :cond_b6

    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v16

    if-nez v16, :cond_b6

    .line 5849
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v17, v1

    .end local v1    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v17, "attrs":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, -0x1

    if-eq v4, v1, :cond_b8

    .line 5850
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    move v13, v1

    .end local v13    # "bottomMargin":I
    .local v1, "bottomMargin":I
    goto :goto_b8

    .line 5848
    .end local v17    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v1, "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v13    # "bottomMargin":I
    :cond_b6
    move-object/from16 v17, v1

    .line 5852
    .end local v1    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v14    # "statusBg":Landroid/view/View;
    .end local v15    # "naviBg":Landroid/view/View;
    .restart local v17    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_b8
    :goto_b8
    goto :goto_fd

    .line 5838
    .end local v17    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v1    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_b9
    move-object/from16 v17, v1

    .line 5852
    .end local v1    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v17    # "attrs":Landroid/view/WindowManager$LayoutParams;
    if-lez v6, :cond_e2

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v1

    if-lez v1, :cond_e2

    .line 5853
    const/4 v8, 0x1

    .line 5854
    const/4 v9, 0x5

    .line 5855
    move v10, v6

    .line 5856
    const/4 v11, -0x1

    .line 5857
    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-boolean v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    if-eqz v1, :cond_d2

    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    goto :goto_d3

    :cond_d2
    const/4 v1, 0x0

    .line 5858
    .local v1, "statusBg":Landroid/view/View;
    :goto_d3
    if-eqz v1, :cond_e1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_e1

    .line 5859
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v12, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5861
    .end local v1    # "statusBg":Landroid/view/View;
    :cond_e1
    goto :goto_fd

    :cond_e2
    if-lez v5, :cond_f0

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    if-lez v1, :cond_f0

    .line 5862
    const/4 v8, 0x1

    .line 5863
    const/16 v9, 0x30

    .line 5864
    const/4 v10, -0x1

    .line 5865
    move v11, v5

    goto :goto_fd

    .line 5866
    :cond_f0
    if-lez v7, :cond_fd

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    if-lez v1, :cond_fd

    .line 5867
    const/4 v8, 0x1

    .line 5868
    const/16 v9, 0x50

    .line 5869
    const/4 v10, -0x1

    .line 5870
    move v11, v7

    .line 5873
    :cond_fd
    :goto_fd
    if-eqz v8, :cond_15f

    iget v1, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundColor:I

    if-eqz v1, :cond_15f

    .line 5874
    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    if-nez v1, :cond_116

    .line 5875
    new-instance v1, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    .line 5876
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;)V

    goto :goto_12a

    .line 5877
    :cond_116
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v1, v0, :cond_12a

    .line 5878
    new-instance v1, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    .line 5879
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;)V

    .line 5882
    :cond_12a
    :goto_12a
    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_140

    .line 5883
    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    const-string v4, "DisplayCutoutBackgroundView"

    invoke-virtual {v1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5884
    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v1, v4}, Landroid/view/View;->setElevation(F)V

    .line 5887
    :cond_140
    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 5888
    .local v1, "param":Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 5889
    iput v10, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 5890
    iput v11, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 5891
    iput v12, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 5892
    iput v13, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 5894
    iget-object v4, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    iget v14, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundColor:I

    invoke-virtual {v4, v14}, Landroid/view/View;->setBackgroundColor(I)V

    .line 5895
    iget-object v4, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    .end local v1    # "param":Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_172

    .line 5896
    :cond_15f
    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    if-eqz v1, :cond_172

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, v0, :cond_172

    .line 5897
    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DecorView;->removeView(Landroid/view/View;)V

    .line 5898
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    goto :goto_183

    .line 5896
    :cond_172
    :goto_172
    goto :goto_183

    .line 5821
    .end local v2    # "cutout":Landroid/view/DisplayCutout;
    .end local v3    # "leftCutout":I
    .end local v5    # "topCutout":I
    .end local v6    # "rightCutout":I
    .end local v7    # "bottomCutout":I
    .end local v8    # "needBackground":Z
    .end local v9    # "gravity":I
    .end local v10    # "width":I
    .end local v11    # "height":I
    .end local v12    # "topMargin":I
    .end local v13    # "bottomMargin":I
    .end local v17    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v1, "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_173
    move-object/from16 v17, v1

    .end local v1    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v17    # "attrs":Landroid/view/WindowManager$LayoutParams;
    goto :goto_178

    .line 5819
    .end local v17    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v1    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_176
    move-object/from16 v17, v1

    .line 5900
    .end local v1    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v17    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_178
    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    if-eqz v1, :cond_183

    .line 5901
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DecorView;->removeView(Landroid/view/View;)V

    .line 5902
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    goto :goto_184

    .line 5900
    :cond_183
    :goto_183
    nop

    .line 5904
    :goto_184
    return-void
.end method

.method private blacklist updateElevation()V
    .registers 2

    .line 4098
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->updateElevation(Z)V

    .line 4099
    return-void
.end method

.method private blacklist updateElevation(Z)V
    .registers 12
    .param p1, "forceUpdate"    # Z

    .line 4104
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mPreventElevationUpdate:Z

    if-eqz v0, :cond_5

    .line 4105
    return-void

    .line 4109
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWindowingMode()I

    move-result v0

    .line 4110
    .local v0, "windowingMode":I
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v1, v1, Lcom/android/internal/policy/PhoneWindow;->mRenderShadowsInCompositor:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_19

    .line 4111
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isPopOverState()Z

    move-result v1

    if-nez v1, :cond_19

    move v1, v3

    goto :goto_1a

    :cond_19
    move v1, v2

    .line 4113
    .local v1, "renderShadowsInCompositor":Z
    :goto_1a
    const/4 v4, 0x5

    if-eqz v1, :cond_3b

    .line 4115
    if-eq v0, v4, :cond_23

    iget-boolean v5, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    if-eqz v5, :cond_3a

    :cond_23
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 4117
    invoke-virtual {v5}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v5, v3, :cond_3a

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 4118
    invoke-virtual {v5}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x63

    if-gt v5, v6, :cond_3a

    goto :goto_3b

    .line 4122
    :cond_3a
    return-void

    .line 4126
    :cond_3b
    :goto_3b
    const/4 v5, 0x0

    .line 4127
    .local v5, "elevation":F
    iget-boolean v6, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    .line 4128
    .local v6, "wasAdjustedForStack":Z
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    .line 4132
    .local v7, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget-boolean v8, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    if-eqz v8, :cond_50

    iget-boolean v8, p0, Lcom/android/internal/policy/DecorView;->mIsPopOverForMultiPaneLayout:Z

    if-nez v8, :cond_56

    iget-boolean v8, p0, Lcom/android/internal/policy/DecorView;->mPreventPopOverElevation:Z

    if-nez v8, :cond_56

    .line 4133
    :cond_50
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isResolverActivityWithoutShadow()Z

    move-result v8

    if-eqz v8, :cond_5b

    .line 4134
    :cond_56
    const/4 v5, 0x0

    .line 4135
    iput-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    goto/16 :goto_d9

    .line 4136
    :cond_5b
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isPopOverState()Z

    move-result v8

    const/high16 v9, 0x42000000    # 32.0f

    if-eqz v8, :cond_6b

    .line 4137
    invoke-direct {p0, v9}, Lcom/android/internal/policy/DecorView;->dipToPx(F)F

    move-result v5

    .line 4138
    iput-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    goto/16 :goto_d9

    .line 4140
    :cond_6b
    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->multiwindowFlags:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_7a

    .line 4142
    const/high16 v2, 0x41400000    # 12.0f

    invoke-direct {p0, v2}, Lcom/android/internal/policy/DecorView;->dipToPx(F)F

    move-result v5

    .line 4143
    iput-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    goto :goto_d9

    .line 4144
    :cond_7a
    if-ne v0, v4, :cond_d7

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isResizing()Z

    move-result v4

    if-nez v4, :cond_d7

    .line 4146
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->hasDecorCaptionWindow()Z

    move-result v4

    if-nez v4, :cond_d7

    .line 4148
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->hasWindowFocus()Z

    .line 4149
    move v2, v9

    .line 4154
    .end local v5    # "elevation":F
    .local v2, "elevation":F
    iget-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mAllowUpdateElevation:Z

    if-nez v4, :cond_92

    .line 4155
    const/high16 v2, 0x42000000    # 32.0f

    .line 4159
    :cond_92
    iget-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    if-eqz v4, :cond_a7

    .line 4160
    iget v4, v7, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_a4

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFullscreenMode()Z

    move-result v4

    if-eqz v4, :cond_a4

    .line 4162
    const/4 v2, 0x0

    goto :goto_af

    .line 4164
    :cond_a4
    const/high16 v2, 0x41400000    # 12.0f

    goto :goto_af

    .line 4167
    :cond_a7
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isNativeActivity()Z

    move-result v4

    if-eqz v4, :cond_af

    .line 4168
    const/high16 v2, 0x41400000    # 12.0f

    .line 4170
    :cond_af
    :goto_af
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isActivity()Z

    move-result v4

    if-eqz v4, :cond_d0

    .line 4171
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFullSize()Z

    move-result v4

    if-nez v4, :cond_bd

    .line 4172
    const/4 v2, 0x0

    goto :goto_d0

    .line 4173
    :cond_bd
    iget v4, p0, Lcom/android/internal/policy/DecorView;->mLastEmbeddingState:I

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 4174
    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getEmbedActivityMode()I

    move-result v5

    if-eq v4, v5, :cond_d0

    .line 4175
    const/4 p1, 0x1

    .line 4180
    :cond_d0
    :goto_d0
    invoke-direct {p0, v2}, Lcom/android/internal/policy/DecorView;->dipToPx(F)F

    move-result v5

    .line 4181
    .end local v2    # "elevation":F
    .restart local v5    # "elevation":F
    iput-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    goto :goto_d9

    .line 4183
    :cond_d7
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    .line 4188
    :goto_d9
    if-nez v6, :cond_df

    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    if-eqz v2, :cond_f8

    .line 4189
    :cond_df
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getElevation()F

    move-result v2

    cmpl-float v2, v2, v5

    if-nez v2, :cond_e9

    if-eqz p1, :cond_f8

    .line 4190
    :cond_e9
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isResizing()Z

    move-result v2

    if-nez v2, :cond_f5

    .line 4191
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2, v5}, Lcom/android/internal/policy/PhoneWindow;->setElevation(F)V

    goto :goto_f8

    .line 4196
    :cond_f5
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/DecorView;->setElevation(F)V

    .line 4199
    :cond_f8
    :goto_f8
    return-void
.end method

.method private blacklist updateOutlineProvider()V
    .registers 3

    .line 4317
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 4318
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    if-eqz v0, :cond_10

    .line 4319
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->POP_OVER_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    goto :goto_26

    .line 4320
    :cond_10
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mWindowingMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1b

    .line 4321
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->FREEFORM_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    goto :goto_26

    .line 4322
    :cond_1b
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mLastOutlineProvider:Landroid/view/ViewOutlineProvider;

    if-eq v0, v1, :cond_26

    .line 4323
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 4326
    :cond_26
    :goto_26
    return-void
.end method

.method private blacklist updateOverlayWithAppContentForImmersive()V
    .registers 3

    .line 4964
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    if-eqz v0, :cond_3a

    .line 4965
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mCaptionType:I

    packed-switch v0, :pswitch_data_3c

    goto :goto_3a

    .line 4977
    :pswitch_a
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCompatWindow:Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->getDecorView()Lcom/android/internal/policy/DecorView;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 4978
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateDecorCaptionWindowVisibility()V

    .line 4979
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCompatWindow:Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->getDecorView()Lcom/android/internal/policy/DecorView;

    move-result-object v0

    invoke-direct {v0}, Lcom/android/internal/policy/DecorView;->updateOverlayWithAppContentForImmersive()V

    goto :goto_3a

    .line 4968
    :pswitch_21
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFreeformMode()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_3a

    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mIsImmersiveMode:Z

    if-eqz v1, :cond_3a

    .line 4969
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DecorCaptionView;->setOverlayWithAppContent(Z)V

    .line 4970
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mImmersiveHelper:Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;

    if-eqz v0, :cond_3a

    .line 4971
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->initImmersiveHoverState()V

    .line 4984
    :cond_3a
    :goto_3a
    return-void

    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_21
        :pswitch_a
        :pswitch_21
    .end packed-switch
.end method

.method private blacklist updateRoundedCornerStateIfNeeded()V
    .registers 20

    .line 5174
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow;->mActivityCurrentConfig:Landroid/content/res/Configuration;

    if-nez v1, :cond_9

    .line 5175
    return-void

    .line 5178
    :cond_9
    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 5179
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_13

    .line 5180
    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    .line 5182
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 5183
    .local v2, "config":Landroid/content/res/Configuration;
    const v3, -0xb1b1b2

    .line 5184
    .local v3, "cornerColorForDockedDivider":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getWindowingMode()I

    move-result v4

    .line 5185
    .local v4, "windowingMode":I
    iget-object v5, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_23b

    .line 5192
    iget-object v5, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v5

    .line 5193
    .local v5, "rotation":I
    const/4 v7, 0x0

    .line 5194
    .local v7, "show":Z
    const/4 v8, 0x5

    const/4 v10, 0x2

    const/16 v11, 0xc

    const/4 v12, 0x1

    if-ne v4, v12, :cond_154

    .line 5195
    iget-object v13, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v13}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    .line 5196
    .local v13, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v14, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v15, 0x7db

    if-ne v14, v15, :cond_43

    move v14, v12

    goto :goto_44

    :cond_43
    move v14, v6

    .line 5197
    .local v14, "isInputMethod":Z
    :goto_44
    invoke-virtual {v13}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v15

    .line 5198
    .local v15, "isFullscreen":Z
    iget v9, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v9, v10, :cond_a7

    iget-boolean v9, v0, Lcom/android/internal/policy/DecorView;->mHasDisplayCutout:Z

    if-eqz v9, :cond_a7

    if-nez v14, :cond_58

    iget v9, v13, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-eq v9, v12, :cond_a7

    if-eqz v15, :cond_a7

    .line 5200
    :cond_58
    const/4 v9, 0x0

    .line 5201
    .local v9, "corners":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v11

    .line 5202
    .local v11, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v11, :cond_98

    .line 5203
    iget v10, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v10, v10, 0x400

    const/16 v17, 0x4

    if-nez v10, :cond_6f

    iget v10, v13, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    and-int/lit8 v10, v10, 0x4

    if-eqz v10, :cond_6e

    goto :goto_6f

    :cond_6e
    move v12, v6

    :cond_6f
    :goto_6f
    move v10, v12

    .line 5205
    .local v10, "hasFullScreen":Z
    iget v12, v11, Landroid/view/ViewRootImpl;->mRequestedLetterboxDirection:I

    .line 5206
    .local v12, "letterboxDirection":I
    and-int/lit8 v18, v12, 0x1

    if-eqz v18, :cond_81

    .line 5207
    if-eqz v14, :cond_7f

    if-eqz v15, :cond_7c

    if-nez v10, :cond_7f

    .line 5208
    :cond_7c
    move/from16 v8, v17

    goto :goto_80

    :cond_7f
    nop

    :goto_80
    or-int/2addr v9, v8

    .line 5210
    :cond_81
    and-int/lit8 v8, v12, 0x2

    if-eqz v8, :cond_95

    .line 5211
    if-eqz v14, :cond_90

    if-eqz v15, :cond_8b

    if-nez v10, :cond_90

    .line 5212
    :cond_8b
    const/16 v8, 0x8

    move/from16 v16, v8

    goto :goto_92

    :cond_90
    const/16 v16, 0xa

    :goto_92
    or-int v8, v9, v16

    move v9, v8

    .line 5214
    :cond_95
    invoke-virtual {v11, v12}, Landroid/view/ViewRootImpl;->updateAppliedLetterboxDirection(I)Z

    .line 5216
    .end local v10    # "hasFullScreen":Z
    .end local v12    # "letterboxDirection":I
    :cond_98
    if-eqz v9, :cond_a5

    .line 5217
    iget v8, v0, Lcom/android/internal/policy/DecorView;->mRoundedCornerRadiusForLetterBox:I

    invoke-super {v0, v9, v8}, Landroid/widget/FrameLayout;->semSetRoundedCorners(II)V

    .line 5218
    const/high16 v8, -0x1000000

    invoke-super {v0, v9, v8}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    .line 5219
    const/4 v7, 0x1

    .line 5221
    .end local v9    # "corners":I
    .end local v11    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_a5
    goto/16 :goto_152

    :cond_a7
    iget v8, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v12, :cond_a5

    iget-boolean v8, v0, Lcom/android/internal/policy/DecorView;->mIsShowNavigationBar:Z

    if-eqz v8, :cond_a5

    iget v8, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0x7f5

    if-eq v8, v9, :cond_a5

    if-nez v14, :cond_a5

    .line 5223
    const/4 v8, 0x0

    .line 5224
    .local v8, "needToDrawAboveNavBar":Z
    iget-boolean v9, v0, Lcom/android/internal/policy/DecorView;->mForceHideRoundedCorner:Z

    if-eqz v9, :cond_bf

    .line 5225
    const/4 v8, 0x0

    goto/16 :goto_127

    .line 5226
    :cond_bf
    iget-boolean v9, v0, Lcom/android/internal/policy/DecorView;->mForceRoundedCorner:Z

    if-eqz v9, :cond_e4

    .line 5228
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "task_bar"

    invoke-static {v9, v10, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v12, :cond_d2

    move v9, v12

    goto :goto_d3

    :cond_d2
    move v9, v6

    .line 5231
    .local v9, "hasTaskBar":Z
    :goto_d3
    iget-object v10, v0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-boolean v10, v10, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    if-eqz v10, :cond_e1

    if-nez v9, :cond_e1

    iget v10, v0, Lcom/android/internal/policy/DecorView;->mRoundedCornerMode:I

    and-int/2addr v10, v11

    if-ne v10, v11, :cond_e1

    goto :goto_e2

    :cond_e1
    move v12, v6

    :goto_e2
    move v8, v12

    .line 5233
    .end local v9    # "hasTaskBar":Z
    goto :goto_127

    .line 5234
    :cond_e4
    sget-boolean v9, Landroid/view/View;->sIsSamsungBasicInteraction:Z

    if-eqz v9, :cond_f0

    iget-object v9, v0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-boolean v9, v9, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    if-eqz v9, :cond_f0

    move v9, v12

    goto :goto_f1

    :cond_f0
    move v9, v6

    :goto_f1
    move v8, v9

    .line 5236
    if-eqz v8, :cond_127

    .line 5238
    iget-object v9, v0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    if-eqz v9, :cond_fa

    move v9, v12

    goto :goto_fb

    :cond_fa
    move v9, v6

    .line 5239
    .local v9, "defaultViewCount":I
    :goto_fb
    iget-object v10, v0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v10, v10, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-eqz v10, :cond_103

    move v10, v12

    goto :goto_104

    :cond_103
    move v10, v6

    :goto_104
    add-int/2addr v9, v10

    .line 5240
    iget-object v10, v0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v10, v10, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-eqz v10, :cond_10c

    goto :goto_10d

    :cond_10c
    move v12, v6

    :goto_10d
    add-int/2addr v9, v12

    .line 5241
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getChildCount()I

    move-result v10

    if-ge v9, v10, :cond_127

    if-eqz v8, :cond_127

    iget-object v10, v0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v10, v10, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-eqz v10, :cond_127

    iget-object v10, v0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v10, v10, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    .line 5243
    invoke-direct {v0, v10}, Lcom/android/internal/policy/DecorView;->isChildIntersectsWith(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_127

    .line 5244
    const/4 v8, 0x0

    .line 5248
    .end local v9    # "defaultViewCount":I
    :cond_127
    :goto_127
    if-eqz v8, :cond_132

    iget-boolean v9, v0, Lcom/android/internal/policy/DecorView;->mGestureNavBarEnabled:Z

    if-eqz v9, :cond_132

    iget-boolean v9, v0, Lcom/android/internal/policy/DecorView;->mGestureHintEnabled:Z

    if-nez v9, :cond_132

    .line 5250
    const/4 v8, 0x0

    .line 5252
    :cond_132
    if-eqz v8, :cond_141

    if-eqz v15, :cond_141

    iget-object v9, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v9}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v9

    instance-of v9, v9, Landroid/app/Activity;

    if-eqz v9, :cond_141

    .line 5253
    const/4 v8, 0x0

    .line 5255
    :cond_141
    if-eqz v8, :cond_151

    .line 5256
    iget v9, v0, Lcom/android/internal/policy/DecorView;->mRoundedCornerRadius:I

    invoke-super {v0, v11, v9}, Landroid/widget/FrameLayout;->semSetRoundedCorners(II)V

    .line 5257
    iget-object v9, v0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 5258
    invoke-direct {v0, v9}, Lcom/android/internal/policy/DecorView;->getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I

    move-result v9

    .line 5257
    invoke-super {v0, v11, v9}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    .line 5260
    :cond_151
    move v7, v8

    .line 5262
    .end local v8    # "needToDrawAboveNavBar":Z
    .end local v13    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v14    # "isInputMethod":Z
    .end local v15    # "isFullscreen":Z
    :cond_152
    :goto_152
    goto/16 :goto_1fd

    :cond_154
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->isSplitMode()Z

    move-result v9

    if-eqz v9, :cond_152

    .line 5263
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getStagePosition()I

    move-result v9

    .line 5264
    .local v9, "stagePosition":I
    and-int/lit8 v10, v9, 0x78

    if-eqz v10, :cond_1fd

    .line 5268
    iget-object v10, v0, Lcom/android/internal/policy/DecorView;->mWm:Landroid/view/WindowManager;

    if-nez v10, :cond_171

    .line 5269
    const-string/jumbo v10, "window"

    invoke-virtual {v1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    iput-object v10, v0, Lcom/android/internal/policy/DecorView;->mWm:Landroid/view/WindowManager;

    .line 5271
    :cond_171
    iget-object v10, v0, Lcom/android/internal/policy/DecorView;->mWm:Landroid/view/WindowManager;

    invoke-interface {v10}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    .line 5272
    .local v10, "windowBounds":Landroid/graphics/Rect;
    sget-boolean v13, Lcom/samsung/android/rune/ViewRune;->VIEW_DECOR_ROUNDED_CORNER_MW_DIVIDER_3_UP:Z

    const/16 v14, 0xf

    const v15, -0xb1b1b2

    if-eqz v13, :cond_195

    iget-object v13, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v13}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    move-result v13

    if-nez v13, :cond_195

    .line 5273
    iget v8, v0, Lcom/android/internal/policy/DecorView;->mRoundedCornerRadiusForMultiWindow:I

    invoke-super {v0, v14, v8}, Landroid/widget/FrameLayout;->semSetRoundedCorners(II)V

    .line 5275
    invoke-super {v0, v14, v15}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    goto :goto_1f9

    .line 5277
    :cond_195
    sget-boolean v13, Lcom/samsung/android/rune/ViewRune;->VIEW_DECOR_ROUNDED_CORNER_MW_DIVIDER:Z

    if-eqz v13, :cond_1f9

    .line 5278
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v6

    if-gt v13, v6, :cond_1ad

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v13

    if-le v6, v13, :cond_1b9

    :cond_1ad
    iget-object v6, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v6, v6, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    if-nez v6, :cond_1f9

    .line 5279
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->isFullSize()Z

    move-result v6

    if-eqz v6, :cond_1f9

    .line 5280
    :cond_1b9
    sparse-switch v9, :sswitch_data_244

    goto :goto_1f9

    .line 5288
    :sswitch_1bd
    iget v6, v0, Lcom/android/internal/policy/DecorView;->mRoundedCornerRadiusForMultiWindow:I

    const/4 v8, 0x3

    invoke-super {v0, v8, v6}, Landroid/widget/FrameLayout;->semSetRoundedCorners(II)V

    .line 5290
    invoke-super {v0, v8, v15}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    .line 5292
    goto :goto_1f9

    .line 5307
    :sswitch_1c7
    if-ne v5, v12, :cond_1d2

    .line 5308
    iget v6, v0, Lcom/android/internal/policy/DecorView;->mRoundedCornerRadiusForMultiWindow:I

    invoke-super {v0, v8, v6}, Landroid/widget/FrameLayout;->semSetRoundedCorners(II)V

    .line 5310
    invoke-super {v0, v8, v15}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    goto :goto_1f9

    .line 5313
    :cond_1d2
    iget v6, v0, Lcom/android/internal/policy/DecorView;->mRoundedCornerRadiusForMultiWindow:I

    invoke-super {v0, v14, v6}, Landroid/widget/FrameLayout;->semSetRoundedCorners(II)V

    .line 5315
    invoke-super {v0, v14, v15}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    goto :goto_1f9

    .line 5282
    :sswitch_1db
    iget v6, v0, Lcom/android/internal/policy/DecorView;->mRoundedCornerRadiusForMultiWindow:I

    invoke-super {v0, v11, v6}, Landroid/widget/FrameLayout;->semSetRoundedCorners(II)V

    .line 5284
    invoke-super {v0, v11, v15}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    .line 5286
    goto :goto_1f9

    .line 5294
    :sswitch_1e4
    if-ne v5, v12, :cond_1ef

    .line 5295
    iget v6, v0, Lcom/android/internal/policy/DecorView;->mRoundedCornerRadiusForMultiWindow:I

    invoke-super {v0, v14, v6}, Landroid/widget/FrameLayout;->semSetRoundedCorners(II)V

    .line 5297
    invoke-super {v0, v14, v15}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    goto :goto_1f9

    .line 5300
    :cond_1ef
    iget v6, v0, Lcom/android/internal/policy/DecorView;->mRoundedCornerRadiusForMultiWindow:I

    const/16 v8, 0xa

    invoke-super {v0, v8, v6}, Landroid/widget/FrameLayout;->semSetRoundedCorners(II)V

    .line 5302
    invoke-super {v0, v8, v15}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    .line 5321
    :cond_1f9
    :goto_1f9
    const/4 v7, 0x1

    .line 5322
    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/android/internal/policy/DecorView;->mForceRoundedCorner:Z

    .line 5326
    .end local v9    # "stagePosition":I
    .end local v10    # "windowBounds":Landroid/graphics/Rect;
    :cond_1fd
    :goto_1fd
    if-eqz v7, :cond_231

    .line 5327
    if-eqz v5, :cond_219

    const/4 v6, 0x2

    if-ne v5, v6, :cond_205

    goto :goto_219

    .line 5331
    :cond_205
    iget-object v6, v0, Lcom/android/internal/policy/DecorView;->mOverrideRoundedCornerBounds:Landroid/graphics/Rect;

    iget v8, v0, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    .line 5332
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v9

    iget v10, v0, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    sub-int/2addr v9, v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v10

    .line 5331
    const/4 v11, 0x0

    invoke-virtual {v6, v8, v11, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_23a

    .line 5328
    :cond_219
    :goto_219
    iget-object v6, v0, Lcom/android/internal/policy/DecorView;->mOverrideRoundedCornerBounds:Landroid/graphics/Rect;

    iget v8, v0, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    iget v9, v0, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    .line 5329
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v10

    iget v11, v0, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    sub-int/2addr v10, v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v11

    iget v12, v0, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    sub-int/2addr v11, v12

    .line 5328
    invoke-virtual {v6, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_23a

    .line 5335
    :cond_231
    const/4 v6, 0x0

    invoke-super {v0, v6}, Landroid/widget/FrameLayout;->semSetRoundedCorners(I)V

    .line 5336
    iget-object v6, v0, Lcom/android/internal/policy/DecorView;->mOverrideRoundedCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 5338
    :goto_23a
    return-void

    .line 5187
    .end local v5    # "rotation":I
    .end local v7    # "show":Z
    :cond_23b
    invoke-super {v0, v6}, Landroid/widget/FrameLayout;->semSetRoundedCorners(I)V

    .line 5188
    iget-object v5, v0, Lcom/android/internal/policy/DecorView;->mOverrideRoundedCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    .line 5189
    return-void

    :sswitch_data_244
    .sparse-switch
        0x8 -> :sswitch_1e4
        0x10 -> :sswitch_1db
        0x20 -> :sswitch_1c7
        0x40 -> :sswitch_1bd
    .end sparse-switch
.end method

.method private blacklist updateStatusGuard(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 19
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 2423
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 2425
    .local v2, "showStatusGuard":Z
    iget-object v3, v0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/16 v4, 0x8

    if-eqz v3, :cond_12a

    .line 2426
    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_126

    .line 2428
    iget-object v3, v0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 2429
    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2430
    .local v3, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v6, 0x0

    .line 2431
    .local v6, "mlpChanged":Z
    iget-object v7, v0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->isShown()Z

    move-result v7

    if-eqz v7, :cond_f0

    .line 2432
    iget-object v7, v0, Lcom/android/internal/policy/DecorView;->mTempRect:Landroid/graphics/Rect;

    if-nez v7, :cond_2f

    .line 2433
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v0, Lcom/android/internal/policy/DecorView;->mTempRect:Landroid/graphics/Rect;

    .line 2435
    :cond_2f
    iget-object v7, v0, Lcom/android/internal/policy/DecorView;->mTempRect:Landroid/graphics/Rect;

    .line 2438
    .local v7, "rect":Landroid/graphics/Rect;
    iget-object v8, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v8, v8, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    .line 2439
    invoke-virtual {v8, v1, v7}, Landroid/view/ViewGroup;->computeSystemWindowInsets(Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    move-result-object v8

    .line 2440
    .local v8, "innerInsets":Landroid/view/WindowInsets;
    invoke-virtual {v8}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v9

    .line 2441
    .local v9, "newTopMargin":I
    invoke-virtual {v8}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v10

    .line 2442
    .local v10, "newLeftMargin":I
    invoke-virtual {v8}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v11

    .line 2447
    .local v11, "newRightMargin":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v12

    .line 2448
    .local v12, "rootInsets":Landroid/view/WindowInsets;
    invoke-virtual {v12}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v13

    .line 2449
    .local v13, "newGuardLeftMargin":I
    invoke-virtual {v12}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v14

    .line 2451
    .local v14, "newGuardRightMargin":I
    iget v15, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v15, v9, :cond_5d

    iget v15, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v15, v10, :cond_5d

    iget v15, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v15, v11, :cond_64

    .line 2453
    :cond_5d
    const/4 v6, 0x1

    .line 2454
    iput v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2455
    iput v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2456
    iput v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 2459
    :cond_64
    if-lez v9, :cond_95

    iget-object v15, v0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    if-nez v15, :cond_95

    .line 2460
    new-instance v15, Landroid/view/View;

    iget-object v5, v0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v15, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v15, v0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    .line 2461
    invoke-virtual {v15, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2462
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v15, -0x1

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v16, v2

    .end local v2    # "showStatusGuard":Z
    .local v16, "showStatusGuard":Z
    const/16 v2, 0x33

    invoke-direct {v5, v15, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object v2, v5

    .line 2464
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v13, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2465
    iput v14, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2466
    iget-object v4, v0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    iget-object v5, v0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v5, v5, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    invoke-virtual {v0, v5}, Lcom/android/internal/policy/DecorView;->indexOfChild(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v0, v4, v5, v2}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_be

    .line 2459
    .end local v16    # "showStatusGuard":Z
    .local v2, "showStatusGuard":Z
    :cond_95
    move/from16 v16, v2

    .line 2467
    .end local v2    # "showStatusGuard":Z
    .restart local v16    # "showStatusGuard":Z
    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v2, :cond_be

    .line 2468
    nop

    .line 2469
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 2470
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v4, v5, :cond_b0

    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-ne v4, v13, :cond_b0

    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    if-eq v4, v14, :cond_bf

    .line 2472
    :cond_b0
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2473
    iput v13, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2474
    iput v14, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2475
    iget-object v4, v0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_bf

    .line 2467
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_be
    :goto_be
    nop

    .line 2481
    :cond_bf
    :goto_bf
    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    const/4 v4, 0x1

    if-eqz v2, :cond_c6

    move v5, v4

    goto :goto_c7

    :cond_c6
    const/4 v5, 0x0

    .line 2483
    .end local v16    # "showStatusGuard":Z
    .local v5, "showStatusGuard":Z
    :goto_c7
    if-eqz v5, :cond_d2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_d2

    .line 2485
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->updateStatusGuardColor()V

    .line 2492
    :cond_d2
    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeaturesPrivate()I

    move-result v2

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_dd

    goto :goto_de

    :cond_dd
    const/4 v4, 0x0

    :goto_de
    move v2, v4

    .line 2494
    .local v2, "nonOverlay":Z
    if-eqz v2, :cond_ec

    if-eqz v5, :cond_ec

    .line 2495
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v4

    const/4 v15, 0x0

    invoke-virtual {v1, v15, v4, v15, v15}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object v1

    .line 2497
    .end local v2    # "nonOverlay":Z
    .end local v7    # "rect":Landroid/graphics/Rect;
    .end local v8    # "innerInsets":Landroid/view/WindowInsets;
    .end local v9    # "newTopMargin":I
    .end local v10    # "newLeftMargin":I
    .end local v11    # "newRightMargin":I
    .end local v12    # "rootInsets":Landroid/view/WindowInsets;
    .end local v13    # "newGuardLeftMargin":I
    .end local v14    # "newGuardRightMargin":I
    .end local p1    # "insets":Landroid/view/WindowInsets;
    .local v1, "insets":Landroid/view/WindowInsets;
    :cond_ec
    move/from16 v16, v5

    const/4 v2, 0x0

    goto :goto_11e

    .line 2499
    .end local v1    # "insets":Landroid/view/WindowInsets;
    .end local v5    # "showStatusGuard":Z
    .local v2, "showStatusGuard":Z
    .restart local p1    # "insets":Landroid/view/WindowInsets;
    :cond_f0
    move/from16 v16, v2

    .end local v2    # "showStatusGuard":Z
    .restart local v16    # "showStatusGuard":Z
    iget v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-nez v2, :cond_101

    iget v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-nez v2, :cond_101

    iget v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eqz v2, :cond_ff

    goto :goto_101

    :cond_ff
    const/4 v2, 0x0

    goto :goto_11e

    .line 2500
    :cond_101
    :goto_101
    const/4 v6, 0x1

    .line 2501
    const/4 v2, 0x0

    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2503
    iget-object v4, v0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v4, :cond_11e

    .line 2504
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 2505
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v5, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v5, v7, :cond_11e

    .line 2506
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2507
    iget-object v5, v0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2513
    .end local v4    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local p1    # "insets":Landroid/view/WindowInsets;
    .restart local v1    # "insets":Landroid/view/WindowInsets;
    :cond_11e
    :goto_11e
    if-eqz v6, :cond_12d

    .line 2514
    iget-object v4, v0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_12d

    .line 2426
    .end local v1    # "insets":Landroid/view/WindowInsets;
    .end local v3    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v6    # "mlpChanged":Z
    .end local v16    # "showStatusGuard":Z
    .restart local v2    # "showStatusGuard":Z
    .restart local p1    # "insets":Landroid/view/WindowInsets;
    :cond_126
    move/from16 v16, v2

    const/4 v2, 0x0

    .end local v2    # "showStatusGuard":Z
    .restart local v16    # "showStatusGuard":Z
    goto :goto_12d

    .line 2425
    .end local v16    # "showStatusGuard":Z
    .restart local v2    # "showStatusGuard":Z
    :cond_12a
    move/from16 v16, v2

    const/4 v2, 0x0

    .line 2518
    .end local v2    # "showStatusGuard":Z
    .end local p1    # "insets":Landroid/view/WindowInsets;
    .restart local v1    # "insets":Landroid/view/WindowInsets;
    .restart local v16    # "showStatusGuard":Z
    :cond_12d
    :goto_12d
    iget-object v3, v0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v3, :cond_13a

    .line 2519
    if-eqz v16, :cond_135

    move v4, v2

    goto :goto_137

    :cond_135
    const/16 v4, 0x8

    :goto_137
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2521
    :cond_13a
    return-object v1
.end method

.method private blacklist updateStatusGuardColor()V
    .registers 5

    .line 2525
    nop

    .line 2526
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWindowSystemUiVisibility()I

    move-result v0

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 2527
    .local v0, "lightStatusBar":Z
    :goto_c
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v0, :cond_1a

    .line 2528
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    const v3, 0x10601a5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    goto :goto_23

    .line 2529
    :cond_1a
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    const v3, 0x10601a4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 2527
    :goto_23
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2530
    return-void
.end method


# virtual methods
.method public blacklist addMultiSplitHandler()V
    .registers 5

    .line 5385
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    const-string v1, " decor="

    if-eqz v0, :cond_2a

    .line 5386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addMultiSplitHandler: already exist. msh="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 5388
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    .line 5389
    return-void

    .line 5392
    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addMultiSplitHandler: on request. msh="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 5394
    new-instance v0, Lcom/samsung/android/multiwindow/MultiSplitHandler;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getMultiSplitActions()Lcom/samsung/android/multiwindow/MultiSplitActions;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/multiwindow/MultiSplitHandler;-><init>(Landroid/content/Context;Lcom/samsung/android/multiwindow/MultiSplitActions;)V

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    .line 5395
    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;II)V

    .line 5397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addMultiSplitHandler: done. msh="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 5398
    return-void
.end method

.method blacklist clearContentView()V
    .registers 4

    .line 3846
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_8

    .line 3847
    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->removeContentView()V

    goto :goto_2a

    .line 3851
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_e
    if-ltz v0, :cond_2a

    .line 3852
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3853
    .local v1, "v":Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v2, v2, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-eq v1, v2, :cond_27

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v2, v2, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-eq v1, v2, :cond_27

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    if-eq v1, v2, :cond_27

    .line 3855
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->removeViewAt(I)V

    .line 3851
    .end local v1    # "v":Landroid/view/View;
    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 3860
    .end local v0    # "i":I
    :cond_2a
    :goto_2a
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    if-eqz v0, :cond_31

    .line 3861
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->removeDecorCaptionWindow()V

    .line 3864
    :cond_31
    return-void
.end method

.method public blacklist destroy()V
    .registers 2

    .line 4707
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    if-eqz v0, :cond_a

    .line 4708
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->release()V

    .line 4709
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    .line 4711
    :cond_a
    return-void
.end method

.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1536
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mPopOverContentAlpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_29

    .line 1537
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 1538
    .local v0, "saveCount":I
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v1

    .line 1539
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v2

    .line 1540
    .local v2, "height":I
    const/4 v4, 0x0

    const/4 v5, 0x0

    int-to-float v6, v1

    int-to-float v7, v2

    iget v3, p0, Lcom/android/internal/policy/DecorView;->mPopOverContentAlpha:F

    const/high16 v8, 0x437f0000    # 255.0f

    mul-float/2addr v3, v8

    float-to-int v8, v3

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFI)I

    .line 1541
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1542
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1543
    .end local v0    # "saveCount":I
    .end local v1    # "width":I
    .end local v2    # "height":I
    goto :goto_2c

    .line 1544
    :cond_29
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1546
    :goto_2c
    return-void
.end method

.method public whitelist dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1086
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1087
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_19

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v1, :cond_19

    .line 1088
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1d

    :cond_19
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1087
    :goto_1d
    return v1
.end method

.method protected whitelist dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 4687
    sget-boolean v0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->DEBUG:Z

    if-eqz v0, :cond_40

    .line 4688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchHoverEvent: action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mImmersiveHelper:Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;

    if-eqz v1, :cond_33

    .line 4689
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isImmersiveFullscreenOnDex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isImmersiveFullscreenOnDex()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_35

    :cond_33
    const-string v1, "mImmersiveHelper=null"

    :goto_35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4688
    invoke-static {v0}, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->log(Ljava/lang/String;)V

    .line 4691
    :cond_40
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mImmersiveHelper:Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;

    if-eqz v0, :cond_4f

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isImmersiveFullscreenOnDex()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 4692
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mImmersiveHelper:Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)V

    .line 4696
    :cond_4f
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 903
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 904
    .local v0, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    .line 905
    .local v1, "action":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_e

    move v4, v3

    goto :goto_f

    :cond_e
    move v4, v2

    .line 907
    .local v4, "isDown":Z
    :goto_f
    if-eqz v4, :cond_43

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_43

    .line 910
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v5, v5, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    if-lez v5, :cond_2a

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v5, v5, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    if-eq v5, v0, :cond_2a

    .line 911
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    .line 912
    .local v5, "handled":Z
    if-eqz v5, :cond_2a

    .line 913
    return v3

    .line 919
    .end local v5    # "handled":Z
    :cond_2a
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-eqz v5, :cond_43

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    iget-boolean v5, v5, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v5, :cond_43

    .line 920
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v6, v5, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    invoke-virtual {v5, v6, v0, p1, v2}, Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 921
    return v3

    .line 926
    :cond_43
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_64

    .line 927
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    .line 928
    .local v2, "cb":Landroid/view/Window$Callback;
    if-eqz v2, :cond_5c

    iget v5, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v5, :cond_5c

    invoke-interface {v2, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_60

    .line 929
    :cond_5c
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    :goto_60
    nop

    .line 930
    .restart local v5    # "handled":Z
    if-eqz v5, :cond_64

    .line 931
    return v3

    .line 935
    .end local v2    # "cb":Landroid/view/Window$Callback;
    .end local v5    # "handled":Z
    :cond_64
    if-eqz v4, :cond_73

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v3, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {v2, v3, v5, p1}, Lcom/android/internal/policy/PhoneWindow;->onKeyDown(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_7f

    .line 936
    :cond_73
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v3, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {v2, v3, v5, p1}, Lcom/android/internal/policy/PhoneWindow;->onKeyUp(IILandroid/view/KeyEvent;)Z

    move-result v2

    .line 935
    :goto_7f
    return v2
.end method

.method public whitelist dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "ev"    # Landroid/view/KeyEvent;

    .line 943
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    const/4 v1, 0x1

    if-eqz v0, :cond_22

    .line 944
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v0, v2, v3, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v0

    .line 946
    .local v0, "handled":Z
    if-eqz v0, :cond_22

    .line 947
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-eqz v2, :cond_21

    .line 948
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    iput-boolean v1, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 950
    :cond_21
    return v1

    .line 955
    .end local v0    # "handled":Z
    :cond_22
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 956
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_3b

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_3b

    iget v2, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v2, :cond_3b

    .line 957
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_3f

    :cond_3b
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 958
    .local v2, "handled":Z
    :goto_3f
    if-eqz v2, :cond_42

    .line 959
    return v1

    .line 966
    :cond_42
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 967
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v3

    .line 968
    .local v3, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v3, :cond_65

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-nez v5, :cond_65

    .line 969
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v5, v3, p1}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 970
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-virtual {v5, v3, v6, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v2

    .line 972
    iput-boolean v4, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 973
    if-eqz v2, :cond_65

    .line 974
    return v1

    .line 977
    :cond_65
    return v4
.end method

.method public whitelist dispatchPointerCaptureChanged(Z)V
    .registers 3
    .param p1, "hasCapture"    # Z

    .line 4277
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPointerCaptureChanged(Z)V

    .line 4278
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 4279
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onPointerCaptureChanged(Z)V

    .line 4281
    :cond_1c
    return-void
.end method

.method public blacklist dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1261
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1262
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_18

    .line 1263
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1264
    const/4 v1, 0x1

    return v1

    .line 1267
    :cond_18
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    return v1
.end method

.method blacklist dispatchRequestedOrientation(I)V
    .registers 2
    .param p1, "requestedOrientation"    # I

    .line 4753
    return-void
.end method

.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1016
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1027
    .local v0, "action":I
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->hasWindowDecorCaption()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1029
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->checkReadyToResizeFreeform(Landroid/view/MotionEvent;)Z

    .line 1033
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mImmersiveHelper:Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;

    if-eqz v1, :cond_1c

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isImmersiveFullscreenOnDex()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1034
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mImmersiveHelper:Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;

    invoke-virtual {v1, p1}, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    .line 1039
    :cond_1c
    sget-boolean v1, Lcom/samsung/android/rune/ViewRune;->DECORCAPTION_HANDLER_AUTO_HIDE:Z

    if-eqz v1, :cond_23

    .line 1040
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->notifyScreenTouched(Landroid/view/MotionEvent;)V

    .line 1044
    :cond_23
    sget-boolean v1, Lcom/samsung/android/rune/ViewRune;->WIDGET_PEN_SUPPORTED:Z

    if-eqz v1, :cond_5c

    .line 1045
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5c

    .line 1046
    packed-switch v0, :pswitch_data_7a

    goto :goto_5c

    .line 1056
    :pswitch_33
    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mIsPenSelectionMode:Z

    if-eqz v1, :cond_5c

    .line 1057
    const/16 v1, 0xd5

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_5c

    .line 1061
    :pswitch_3d
    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsPenSelectionMode:Z

    if-eqz v2, :cond_5c

    .line 1062
    const/16 v2, 0xd4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1063
    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mIsPenSelectionMode:Z

    goto :goto_5c

    .line 1048
    :pswitch_49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_5a

    .line 1049
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mIsPenSelectionMode:Z

    .line 1050
    const/16 v1, 0xd3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_5c

    .line 1052
    :cond_5a
    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mIsPenSelectionMode:Z

    .line 1072
    :cond_5c
    :goto_5c
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    .line 1073
    .local v1, "cb":Landroid/view/Window$Callback;
    if-eqz v1, :cond_75

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_75

    iget v2, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v2, :cond_75

    .line 1074
    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_79

    :cond_75
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1073
    :goto_79
    return v2

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_49
        :pswitch_3d
        :pswitch_33
    .end packed-switch
.end method

.method public whitelist dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1079
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1080
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_19

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v1, :cond_19

    .line 1081
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1d

    :cond_19
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1080
    :goto_1d
    return v1
.end method

.method public whitelist dispatchWindowSystemUiVisiblityChanged(I)V
    .registers 3
    .param p1, "visibility"    # I

    .line 4900
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->checkImmersiveModeBySystemUiVisibility(I)Z

    move-result v0

    .line 4901
    .local v0, "isImmersiveMode":Z
    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->setKnoxBadgeStateForImmersive(Z)V

    .line 4903
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchWindowSystemUiVisiblityChanged(I)V

    .line 4904
    return-void
.end method

.method public whitelist dispatchWindowVisibilityChanged(I)V
    .registers 4
    .param p1, "visibility"    # I

    .line 4909
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isImmersiveFullscreenOnDex()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->hasDecorCaptionWindow()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4910
    invoke-virtual {p0, v1, v1}, Lcom/android/internal/policy/DecorView;->updateCaptionState(IZ)V

    .line 4914
    :cond_12
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    if-eqz v0, :cond_1b

    if-eqz p1, :cond_1b

    .line 4916
    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->onWindowFocusChangedForMultiSplitHandler(Z)V

    .line 4919
    :cond_1b
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchWindowVisibilityChanged(I)V

    .line 4920
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1489
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateRoundedCornerStateIfNeeded()V

    .line 1493
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundAlpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_72

    .line 1494
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v0

    .line 1495
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v1

    .line 1497
    .local v1, "height":I
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPopOverClipOutPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1498
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPopOverClipOutPath:Landroid/graphics/Path;

    new-instance v3, Landroid/graphics/RectF;

    int-to-float v4, v0

    int-to-float v5, v1

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v4, p0, Lcom/android/internal/policy/DecorView;->mPopOverRadius:I

    int-to-float v5, v4

    int-to-float v4, v4

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v5, v4, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 1501
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPopOverClipOutPath:Landroid/graphics/Path;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 1503
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPopOverPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->reset()V

    .line 1504
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPopOverPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundAlpha:F

    iget v4, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundColor:I

    .line 1506
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v4, v5

    iget v7, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundColor:I

    .line 1507
    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v5

    iget v8, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundColor:I

    .line 1508
    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v5

    .line 1504
    invoke-static {v3, v4, v7, v8}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1509
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPopOverPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/BlendMode;->SRC:Landroid/graphics/BlendMode;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 1511
    new-instance v2, Landroid/graphics/RectF;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-direct {v2, v6, v6, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mPopOverPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1513
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPopOverClipOutPath:Landroid/graphics/Path;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    .line 1517
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_72
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1519
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMenuBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7c

    .line 1520
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1524
    :cond_7c
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    if-eqz v0, :cond_a7

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isDecorCaptionWindow()Z

    move-result v0

    if-eqz v0, :cond_a7

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_a7

    .line 1525
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1526
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->getCaptionHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1527
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1528
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1531
    :cond_a7
    return-void
.end method

.method public blacklist drawFrameIfNeeded(Landroid/graphics/Canvas;)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 5093
    sget-boolean v0, Landroid/view/ViewRootImpl;->CAPTION_ON_SHELL:Z

    if-eqz v0, :cond_5

    .line 5094
    return-void

    .line 5096
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isActivity()Z

    move-result v0

    .line 5097
    .local v0, "isActivity":Z
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFullSize()Z

    move-result v1

    .line 5102
    .local v1, "isFullSizeWindow":Z
    if-nez v0, :cond_11

    if-eqz v1, :cond_83

    .line 5103
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-nez v2, :cond_85

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->hasDecorCaptionWindow()Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_85

    .line 5111
    :cond_20
    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    if-eqz v2, :cond_50

    .line 5117
    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsPopOverForMultiPaneLayout:Z

    if-eqz v2, :cond_45

    .line 5118
    iget v2, p0, Lcom/android/internal/policy/DecorView;->mLastFreeformStashType:I

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v2, v3, :cond_42

    .line 5119
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 5120
    .local v2, "winConfig":Landroid/app/WindowConfiguration;
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getDexTaskDockingState()I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/DecorView;->mLastFreeformStashType:I

    .line 5121
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getDexTaskDockingState()I

    move-result v3

    if-eq v3, v4, :cond_41

    .line 5122
    return-void

    .line 5124
    .end local v2    # "winConfig":Landroid/app/WindowConfiguration;
    :cond_41
    goto :goto_45

    .line 5125
    :cond_42
    if-eq v2, v4, :cond_45

    .line 5126
    return-void

    .line 5131
    :cond_45
    :goto_45
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v2, :cond_73

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    move-result v2

    if-eqz v2, :cond_73

    .line 5132
    return-void

    .line 5135
    :cond_50
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFreeformMode()Z

    move-result v2

    .line 5136
    .local v2, "isFreeform":Z
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isResizing()Z

    move-result v3

    .line 5142
    .local v3, "isResizing":Z
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v4, v4, Lcom/android/internal/policy/PhoneWindow;->mIsStartingWindow:Z

    if-nez v4, :cond_60

    if-eqz v2, :cond_84

    :cond_60
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v4, v4, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    if-nez v4, :cond_84

    if-nez v3, :cond_84

    iget-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    if-eqz v4, :cond_73

    .line 5143
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFullscreenMode()Z

    move-result v4

    if-eqz v4, :cond_73

    goto :goto_84

    .line 5148
    .end local v2    # "isFreeform":Z
    .end local v3    # "isResizing":Z
    :cond_73
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFrameDrawHelper:Lcom/samsung/android/multiwindow/FrameDrawHelper;

    if-nez v2, :cond_7e

    .line 5149
    new-instance v2, Lcom/samsung/android/multiwindow/FrameDrawHelper;

    invoke-direct {v2, p0}, Lcom/samsung/android/multiwindow/FrameDrawHelper;-><init>(Lcom/android/internal/policy/DecorView;)V

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mFrameDrawHelper:Lcom/samsung/android/multiwindow/FrameDrawHelper;

    .line 5151
    :cond_7e
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFrameDrawHelper:Lcom/samsung/android/multiwindow/FrameDrawHelper;

    invoke-virtual {v2, p1}, Lcom/samsung/android/multiwindow/FrameDrawHelper;->drawFrame(Landroid/graphics/Canvas;)V

    .line 5153
    :cond_83
    return-void

    .line 5144
    .restart local v2    # "isFreeform":Z
    .restart local v3    # "isResizing":Z
    :cond_84
    :goto_84
    return-void

    .line 5108
    .end local v2    # "isFreeform":Z
    .end local v3    # "isResizing":Z
    :cond_85
    :goto_85
    return-void
.end method

.method blacklist enableCaption(Z)V
    .registers 3
    .param p1, "attachedAndVisible"    # Z

    .line 3198
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mHasCaption:Z

    if-eq v0, p1, :cond_12

    .line 3199
    iput-boolean p1, p0, Lcom/android/internal/policy/DecorView;->mHasCaption:Z

    .line 3200
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 3201
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    .line 3203
    :cond_f
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->notifyCaptionHeightChanged()V

    .line 3205
    :cond_12
    return-void
.end method

.method blacklist finishChanging()V
    .registers 2

    .line 1695
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mChanging:Z

    .line 1696
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    .line 1697
    return-void
.end method

.method public whitelist gatherTransparentRegion(Landroid/graphics/Region;)Z
    .registers 13
    .param p1, "region"    # Landroid/graphics/Region;

    .line 851
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/policy/DecorView;->gatherTransparentRegion(Lcom/android/internal/policy/DecorView$ColorViewState;Landroid/graphics/Region;)Z

    move-result v0

    .line 852
    .local v0, "statusOpaque":Z
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/policy/DecorView;->gatherTransparentRegion(Lcom/android/internal/policy/DecorView$ColorViewState;Landroid/graphics/Region;)Z

    move-result v1

    .line 853
    .local v1, "navOpaque":Z
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v2

    .line 856
    .local v2, "decorOpaque":Z
    iget-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_33

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isDecorCaptionWindow()Z

    move-result v3

    if-eqz v3, :cond_33

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v3, :cond_33

    .line 857
    invoke-virtual {p1}, Landroid/graphics/Region;->setEmpty()V

    .line 858
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v3}, Lcom/android/internal/widget/DecorCaptionView;->getCaptionHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v6

    invoke-virtual {p1, v4, v3, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 864
    :cond_33
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    if-eqz v3, :cond_49

    .line 865
    iget v6, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeStartX:I

    iget v7, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeStartY:I

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v9

    sget-object v10, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 871
    :cond_49
    if-nez v0, :cond_4f

    if-nez v1, :cond_4f

    if-eqz v2, :cond_50

    :cond_4f
    const/4 v4, 0x1

    :cond_50
    return v4
.end method

.method blacklist gatherTransparentRegion(Lcom/android/internal/policy/DecorView$ColorViewState;Landroid/graphics/Region;)Z
    .registers 4
    .param p1, "colorViewState"    # Lcom/android/internal/policy/DecorView$ColorViewState;
    .param p2, "region"    # Landroid/graphics/Region;

    .line 875
    iget-object v0, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-eqz v0, :cond_15

    iget-boolean v0, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    if-eqz v0, :cond_15

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isResizing()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 879
    iget-object v0, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    return v0

    .line 881
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAccessibilityViewId()I
    .registers 2

    .line 4285
    const v0, 0x7ffffffe

    return v0
.end method

.method public whitelist getBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 2180
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public blacklist getBackgroundFallback()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 828
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    invoke-virtual {v0}, Lcom/android/internal/widget/BackgroundFallback;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCaptionHeight()I
    .registers 2

    .line 4215
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isShowingCaption()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->getCaptionHeight()I

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public blacklist getCaptionInsetsHeight()I
    .registers 2

    .line 4223
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isOverlayWithDecorCaptionEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 4224
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getCaptionHeight()I

    move-result v0

    return v0
.end method

.method public blacklist getCaptionType()I
    .registers 2

    .line 4605
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mCaptionType:I

    return v0
.end method

.method public blacklist getDecorCaptionResources()Lcom/samsung/android/util/DecorCaptionResources;
    .registers 3

    .line 5912
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    if-nez v0, :cond_d

    .line 5913
    new-instance v0, Lcom/samsung/android/util/DecorCaptionResources;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/util/DecorCaptionResources;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    .line 5915
    :cond_d
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    return-object v0
.end method

.method public final blacklist getDecorCaptionView()Lcom/android/internal/widget/DecorCaptionView;
    .registers 2

    .line 4518
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    return-object v0
.end method

.method public final blacklist getDecorCaptionViewByType()Lcom/android/internal/widget/DecorCaptionView;
    .registers 2

    .line 4522
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->hasDecorCaptionWindow()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 4523
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCompatWindow:Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->getDecorView()Lcom/android/internal/policy/DecorView;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 4524
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCompatWindow:Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->getDecorView()Lcom/android/internal/policy/DecorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getDecorCaptionView()Lcom/android/internal/widget/DecorCaptionView;

    move-result-object v0

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    .line 4523
    :goto_1c
    return-object v0

    .line 4526
    :cond_1d
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    return-object v0
.end method

.method public blacklist getDexTaskDockingState()I
    .registers 2

    .line 6300
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mLastFreeformStashType:I

    return v0
.end method

.method public blacklist getFreeformOutlineProvider()Landroid/view/ViewOutlineProvider;
    .registers 2

    .line 4313
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->FREEFORM_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    return-object v0
.end method

.method public blacklist getLastBackgroundResource()I
    .registers 2

    .line 5979
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundResource:I

    return v0
.end method

.method public blacklist getMultiSplitActions()Lcom/samsung/android/multiwindow/MultiSplitActions;
    .registers 3

    .line 4306
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    if-nez v0, :cond_d

    .line 4307
    new-instance v0, Lcom/samsung/android/multiwindow/MultiSplitActions;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v0, v1}, Lcom/samsung/android/multiwindow/MultiSplitActions;-><init>(Landroid/view/Window;)V

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    .line 4309
    :cond_d
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    return-object v0
.end method

.method public blacklist getMultiSplitHelpMode()I
    .registers 2

    .line 5590
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHelpMode:I

    return v0
.end method

.method blacklist getNavigationBarBackgroundView()Landroid/view/View;
    .registers 2

    .line 836
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    return-object v0
.end method

.method public blacklist getParentWindow()Landroid/view/Window;
    .registers 2

    .line 4815
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mParentWindow:Landroid/view/Window;

    return-object v0
.end method

.method public whitelist getResources()Landroid/content/res/Resources;
    .registers 2

    .line 3239
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getStageType()I
    .registers 2

    .line 4374
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v0

    return v0
.end method

.method blacklist getStatusBarBackgroundView()Landroid/view/View;
    .registers 2

    .line 832
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    return-object v0
.end method

.method public whitelist getWindowInsetsController()Landroid/view/WindowInsetsController;
    .registers 2

    .line 4290
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4291
    invoke-super {p0}, Landroid/widget/FrameLayout;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    return-object v0

    .line 4293
    :cond_b
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPendingInsetsController:Landroid/view/PendingInsetsController;

    return-object v0
.end method

.method public blacklist getWindowingMode()I
    .registers 2

    .line 4366
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mWindowingMode:I

    if-eqz v0, :cond_5

    .line 4367
    return v0

    .line 4369
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    return v0
.end method

.method blacklist hasDecorCaptionView()Z
    .registers 4

    .line 4609
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mCaptionType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v2, 0x3

    if-ne v0, v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_a
    return v1
.end method

.method blacklist hasDecorCaptionWindow()Z
    .registers 3

    .line 4614
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mCaptionType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist hasEdgeFlag()Z
    .registers 2

    .line 5073
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mEdgeFlag:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist hasWindowFocusInMultiSplitHandler()Z
    .registers 2

    .line 6265
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->hasWindowFocusInMultiSplitHandler()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist hasWindowFocusInTask()Z
    .registers 2

    .line 2651
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mHasWindowFocusInTask:Z

    return v0
.end method

.method public greylist hidden_semSetForceHideRoundedCorner(Z)V
    .registers 4
    .param p1, "hide"    # Z

    .line 6237
    iput-boolean p1, p0, Lcom/android/internal/policy/DecorView;->mForceHideRoundedCorner:Z

    .line 6238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hidden_semSetForceHideRoundedCorner() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DecorView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6239
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->semSetRoundedCorners(I)V

    .line 6240
    return-void
.end method

.method public blacklist isDecorCaptionWindow()Z
    .registers 3

    .line 4618
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mCaptionType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist isDexEnabled()Z
    .registers 2

    .line 4736
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    return v0
.end method

.method public blacklist isDialogInPopOver()Z
    .registers 2

    .line 4060
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mPreventPopOverElevation:Z

    if-nez v0, :cond_35

    .line 4061
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    if-nez v0, :cond_1e

    .line 4062
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 4063
    :cond_1e
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFullSize()Z

    move-result v0

    if-nez v0, :cond_32

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isDimBehind()Z

    move-result v0

    if-eqz v0, :cond_32

    :cond_30
    const/4 v0, 0x1

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :goto_33
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mPreventPopOverElevation:Z

    .line 4065
    :cond_35
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mPreventPopOverElevation:Z

    return v0
.end method

.method blacklist isDrawLegacyNavigationBarBackground()Z
    .registers 2

    .line 6177
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackground:Z

    return v0
.end method

.method public blacklist isFreeformMode()Z
    .registers 3

    .line 4387
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public blacklist isFullSize()Z
    .registers 2

    .line 4514
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public blacklist isFullscreenMode()Z
    .registers 3

    .line 4383
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public blacklist isHandlerAutoHide()Z
    .registers 2

    .line 982
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mKeepScreenOn:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsImmersiveMode:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public blacklist isMovingTask()Z
    .registers 2

    .line 6269
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsMovingTask:Z

    return v0
.end method

.method public blacklist isMultiSplitHandlerRequested()Z
    .registers 10

    .line 5456
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_237

    sget-boolean v0, Landroid/view/ViewRootImpl;->CAPTION_ON_SHELL:Z

    if-eqz v0, :cond_b

    goto/16 :goto_237

    .line 5460
    :cond_b
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    const-string v2, "check: return. pkg="

    const/4 v3, 0x5

    if-nez v0, :cond_41

    .line 5461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " isActivity=false callers="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5462
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5461
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 5463
    return v1

    .line 5466
    :cond_41
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewRootImpl;

    const-string v4, " callers="

    if-nez v0, :cond_82

    .line 5467
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 5468
    .local v0, "parent":Landroid/view/View;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " parent="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5469
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5468
    invoke-static {v2}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 5470
    return v1

    .line 5473
    .end local v0    # "parent":Landroid/view/View;
    :cond_82
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    if-nez v0, :cond_8c

    .line 5474
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 5476
    :cond_8c
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/samsung/android/multiwindow/MultiWindowManager;->supportsMultiWindow(Landroid/os/IBinder;)Z

    move-result v0

    if-nez v0, :cond_bb

    .line 5477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check: return. Multi-window not supported pkg="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    .line 5478
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5477
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 5479
    return v1

    .line 5482
    :cond_bb
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWindowingMode()I

    move-result v0

    .line 5483
    .local v0, "windowingMode":I
    const/4 v5, 0x1

    if-ne v0, v3, :cond_10b

    .line 5486
    iget-boolean v6, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    if-eqz v6, :cond_c7

    .line 5487
    return v1

    .line 5489
    :cond_c7
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getMultiSplitActions()Lcom/samsung/android/multiwindow/MultiSplitActions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isHeaderTypeBar()Z

    move-result v6

    .line 5490
    .local v6, "captionMode":Z
    if-nez v6, :cond_da

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->hasWindowDecorCaption()Z

    move-result v7

    if-nez v7, :cond_d8

    goto :goto_da

    .line 5495
    .end local v6    # "captionMode":Z
    :cond_d8
    goto/16 :goto_1a9

    .line 5491
    .restart local v6    # "captionMode":Z
    :cond_da
    :goto_da
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " mode=freeform caption="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5492
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5491
    invoke-static {v2}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 5493
    return v1

    .line 5498
    .end local v6    # "captionMode":Z
    :cond_10b
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isActivityHomeOrRecent()Z

    move-result v6

    if-nez v6, :cond_236

    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v6

    instance-of v6, v6, Lcom/android/internal/app/ResolverActivity;

    if-eqz v6, :cond_11d

    goto/16 :goto_236

    .line 5502
    :cond_11d
    if-ne v0, v5, :cond_19e

    .line 5505
    sget-boolean v6, Lcom/samsung/android/rune/ViewRune;->MULTISPLIT_FULLSCREEN:Z

    if-nez v6, :cond_124

    .line 5506
    return v1

    .line 5508
    :cond_124
    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getDisplayId()I

    move-result v6

    if-eqz v6, :cond_12d

    .line 5509
    return v1

    .line 5511
    :cond_12d
    iget-boolean v6, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    if-eqz v6, :cond_136

    iget-boolean v6, p0, Lcom/android/internal/policy/DecorView;->mIsPopOverForMultiPaneLayout:Z

    if-nez v6, :cond_136

    .line 5512
    return v1

    .line 5514
    :cond_136
    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "multi_window_menu_in_full_screen"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_146

    move v6, v5

    goto :goto_147

    :cond_146
    move v6, v1

    .line 5516
    .local v6, "labsOff":Z
    :goto_147
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isDeviceLocked()Z

    move-result v7

    .line 5517
    .local v7, "isDeviceLocked":Z
    if-nez v6, :cond_163

    if-nez v7, :cond_163

    invoke-static {}, Lcom/samsung/android/util/SemViewUtils;->isFoldDevice()Z

    move-result v8

    if-eqz v8, :cond_162

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-eqz v8, :cond_162

    goto :goto_163

    .line 5523
    .end local v6    # "labsOff":Z
    .end local v7    # "isDeviceLocked":Z
    :cond_162
    goto :goto_1a9

    .line 5519
    .restart local v6    # "labsOff":Z
    .restart local v7    # "isDeviceLocked":Z
    :cond_163
    :goto_163
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " mode=fullscreen op="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " locked="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5520
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5519
    invoke-static {v2}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 5521
    return v1

    .line 5523
    .end local v6    # "labsOff":Z
    .end local v7    # "isDeviceLocked":Z
    :cond_19e
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isSplitMode()Z

    move-result v6

    if-eqz v6, :cond_205

    .line 5526
    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    if-eqz v2, :cond_1a9

    .line 5527
    return v1

    .line 5542
    :cond_1a9
    :goto_1a9
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 5543
    .local v2, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v3, v5, :cond_1c0

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1c0

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1be

    goto :goto_1c0

    :cond_1be
    move v3, v1

    goto :goto_1c1

    :cond_1c0
    :goto_1c0
    move v3, v5

    .line 5545
    .local v3, "isApplication":Z
    :goto_1c1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "check: isFloating="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " isApplication="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " this="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 5548
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    move-result v4

    if-nez v4, :cond_204

    if-eqz v3, :cond_204

    .line 5550
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v6, 0x1000000

    and-int/2addr v4, v6

    if-eqz v4, :cond_203

    .line 5552
    return v1

    .line 5555
    :cond_203
    return v5

    .line 5557
    :cond_204
    return v1

    .line 5536
    .end local v2    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "isApplication":Z
    :cond_205
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " mode="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5537
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5536
    invoke-static {v2}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 5538
    return v1

    .line 5499
    :cond_236
    :goto_236
    return v1

    .line 5457
    .end local v0    # "windowingMode":I
    :cond_237
    :goto_237
    return v1
.end method

.method public blacklist isNativeActivity()Z
    .registers 2

    .line 4355
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/NativeActivity;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public blacklist isPreserveOrientationMode()Z
    .registers 2

    .line 4744
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsFixedOrientation:Z

    return v0
.end method

.method public blacklist isShowingCaption()Z
    .registers 2

    .line 4202
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->isCaptionShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist isShowingCaptionByType()Z
    .registers 2

    .line 4207
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->hasDecorCaptionWindow()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4208
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCompatWindow:Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0

    .line 4210
    :cond_14
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isShowingCaption()Z

    move-result v0

    return v0
.end method

.method public blacklist isSplitMode()Z
    .registers 2

    .line 4391
    nop

    .line 4392
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 4391
    invoke-static {v0}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z

    move-result v0

    return v0
.end method

.method public blacklist isStatusBarHidden()Z
    .registers 2

    .line 5607
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsStatusBarHidden:Z

    return v0
.end method

.method public whitelist isTransitionGroup()Z
    .registers 2

    .line 1846
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isWindowResizable()Z
    .registers 2

    .line 4740
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsWindowResizable:Z

    return v0
.end method

.method synthetic blacklist lambda$new$0$com-android-internal-policy-DecorView()Z
    .registers 2

    .line 444
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateBackgroundBlurCorners()V

    .line 445
    const/4 v0, 0x1

    return v0
.end method

.method synthetic blacklist lambda$new$1$com-android-internal-policy-DecorView(Landroid/view/WindowInsetsController;I)V
    .registers 9
    .param p1, "controller"    # Landroid/view/WindowInsetsController;
    .param p2, "typeMask"    # I

    .line 559
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 560
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    :goto_e
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1b

    iget-object v3, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v3, v3, Landroid/view/InsetsFlags;->behavior:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1b

    move v3, v2

    goto :goto_1c

    :cond_1b
    move v3, v1

    .line 562
    .local v3, "swipe":Z
    :goto_1c
    invoke-interface {p1, v2}, Landroid/view/WindowInsetsController;->isRequestedVisible(I)Z

    move-result v4

    .line 563
    .local v4, "showNav":Z
    if-eqz v3, :cond_25

    if-nez v4, :cond_25

    move v1, v2

    .line 564
    .local v1, "isImmersiveMode":Z
    :cond_25
    sget-boolean v2, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->DEBUG:Z

    if-eqz v2, :cond_53

    .line 565
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onControllableInsetsChanged: isImmersiveMode="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " swipe="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " showNav="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->log(Ljava/lang/String;)V

    .line 568
    :cond_53
    invoke-direct {p0, v1}, Lcom/android/internal/policy/DecorView;->onImmersiveModeChanged(Z)V

    .line 569
    return-void
.end method

.method synthetic blacklist lambda$setBackgroundBlurRadius$2$com-android-internal-policy-DecorView(Ljava/lang/Boolean;)V
    .registers 3
    .param p1, "enabled"    # Ljava/lang/Boolean;

    .line 2152
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabled:Z

    .line 2153
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateBackgroundBlurRadius()V

    .line 2154
    return-void
.end method

.method public blacklist notifyCaptionHeightChanged()V
    .registers 3

    .line 3212
    sget-boolean v0, Landroid/view/ViewRootImpl;->CAPTION_ON_SHELL:Z

    if-nez v0, :cond_f

    .line 3213
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getCaptionInsetsHeight()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->setCaptionInsetsHeight(I)V

    .line 3215
    :cond_f
    return-void
.end method

.method public blacklist notifyKeepScreenOnChanged(Z)V
    .registers 4
    .param p1, "keepScreenOn"    # Z

    .line 986
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->DECORCAPTION_HANDLER_AUTO_HIDE:Z

    if-eqz v0, :cond_2d

    .line 987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyKeepScreenOnChanged: keepScreenOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DecorView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    iput-boolean p1, p0, Lcom/android/internal/policy/DecorView;->mKeepScreenOn:Z

    .line 989
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isMultiSplitHandlerValid()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 990
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isHandlerAutoHide()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->setHandlerAutoHide(Z)V

    .line 993
    :cond_2d
    return-void
.end method

.method public blacklist notifyMovingTask(Z)V
    .registers 3
    .param p1, "movingTask"    # Z

    .line 5156
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsMovingTask:Z

    if-eq v0, p1, :cond_21

    .line 5157
    iput-boolean p1, p0, Lcom/android/internal/policy/DecorView;->mIsMovingTask:Z

    .line 5159
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFrameDrawHelper:Lcom/samsung/android/multiwindow/FrameDrawHelper;

    if-eqz v0, :cond_d

    .line 5160
    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/FrameDrawHelper;->updateDecorMovingState(Z)V

    .line 5163
    :cond_d
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsMovingTask:Z

    if-eqz v0, :cond_15

    const-string/jumbo v0, "start movingTask"

    goto :goto_18

    :cond_15
    const-string/jumbo v0, "stop movingTask"

    :goto_18
    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->requestInvalidateRenderNode(Ljava/lang/String;)V

    .line 5164
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->invalidate()V

    .line 5165
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->requestLayout()V

    .line 5167
    :cond_21
    return-void
.end method

.method public blacklist notifyScreenTouched(Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1000
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isHandlerAutoHide()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isMultiSplitHandlerValid()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1001
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->onScreenTouched(I)V

    goto :goto_41

    .line 1002
    :cond_16
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isActivity()Z

    move-result v0

    if-nez v0, :cond_41

    .line 1003
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1004
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_41

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mParentDecorView:Landroid/view/View;

    instance-of v1, v1, Lcom/android/internal/policy/DecorView;

    if-eqz v1, :cond_41

    .line 1005
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mParentDecorView:Landroid/view/View;

    check-cast v1, Lcom/android/internal/policy/DecorView;

    .line 1006
    .local v1, "parentDecor":Lcom/android/internal/policy/DecorView;
    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->isHandlerAutoHide()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-direct {v1}, Lcom/android/internal/policy/DecorView;->isMultiSplitHandlerValid()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 1007
    iget-object v2, v1, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->onScreenTouched(I)V

    .line 1011
    .end local v0    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v1    # "parentDecor":Lcom/android/internal/policy/DecorView;
    :cond_41
    :goto_41
    return-void
.end method

.method public whitelist onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 9
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 1791
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1792
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1793
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_72

    .line 1798
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v2, -0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_4c

    .line 1799
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 1800
    sget-boolean v1, Lcom/samsung/android/rune/ViewRune;->CAPTIONONSHELL:Z

    if-eqz v1, :cond_38

    .line 1801
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v1

    .line 1802
    .local v1, "captionBarInsets":Landroid/graphics/Insets;
    iget v4, v1, Landroid/graphics/Insets;->top:I

    if-lez v4, :cond_38

    .line 1803
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Insets;->top:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1806
    .end local v1    # "captionBarInsets":Landroid/graphics/Insets;
    :cond_38
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 1807
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    .line 1808
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v4

    .line 1807
    invoke-virtual {p1, v3, v1, v3, v4}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    .line 1810
    :cond_4c
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v1, v2, :cond_72

    .line 1811
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 1812
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 1813
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    .line 1814
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    .line 1813
    invoke-virtual {p1, v1, v3, v2, v3}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    .line 1817
    :cond_72
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetsAsRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1818
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    move-result-object p1

    .line 1819
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->updateStatusGuard(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    .line 1820
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_8d

    .line 1821
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    .line 1825
    :cond_8d
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->updateDisplayCutoutBackground(Landroid/view/WindowInsets;)V

    .line 1829
    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mIsInSplitImmersiveMode:Z

    sget-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    if-eq v1, v2, :cond_aa

    .line 1830
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    if-eqz v1, :cond_a6

    .line 1831
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->removeMultiSplitHandler()V

    .line 1832
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isMultiSplitHandlerRequested()Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 1833
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->addMultiSplitHandler()V

    .line 1836
    :cond_a6
    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mIsInSplitImmersiveMode:Z

    .line 1841
    :cond_aa
    return-object p1
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 7

    .line 2756
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2760
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsImmersiveMode:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_12

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isStatusBarHiddenByFlags()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_12

    :cond_10
    move v0, v1

    goto :goto_13

    :cond_12
    :goto_12
    move v0, v2

    :goto_13
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsStatusBarHidden:Z

    .line 2769
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->hasDecorCaptionWindow()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2770
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mCalledOnAttachedToWindow:Z

    .line 2771
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->createDecorCaptionWindowIfNeeded()V

    .line 2776
    :cond_20
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mUserId:I

    .line 2777
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2778
    .local v0, "winContext":Landroid/content/Context;
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 2779
    .local v3, "attrs":Landroid/view/WindowManager$LayoutParams;
    instance-of v4, v0, Landroid/app/Activity;

    if-eqz v4, :cond_40

    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 2780
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsKnoxActivity:Z

    .line 2782
    :cond_40
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7db

    if-ne v4, v5, :cond_48

    move v4, v2

    goto :goto_49

    :cond_48
    move v4, v1

    :goto_49
    iput-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mIsKeyboardShown:Z

    .line 2783
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_58

    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v4

    if-eqz v4, :cond_58

    move v4, v2

    goto :goto_59

    :cond_58
    move v4, v1

    :goto_59
    iput-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mIsFullViewShown:Z

    .line 2786
    :try_start_5b
    iget-boolean v5, p0, Lcom/android/internal/policy/DecorView;->mIsKeyboardShown:Z

    if-nez v5, :cond_65

    if-nez v4, :cond_65

    iget-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mIsKnoxActivity:Z

    if-eqz v4, :cond_81

    :cond_65
    iget v4, p0, Lcom/android/internal/policy/DecorView;->mUserId:I

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_73

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_7b

    :cond_73
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 2787
    :cond_7b
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->setKnoxBadge()V

    .line 2788
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->setKnoxBadgePosition()V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_81} :catch_82

    .line 2792
    :cond_81
    goto :goto_8a

    .line 2790
    :catch_82
    move-exception v1

    .line 2791
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "DecorView_KNOX"

    const-string v5, "failed to set knox badge"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2797
    .end local v0    # "winContext":Landroid/content/Context;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_8a
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isImmersiveFullscreenOnDex()Z

    move-result v0

    if-eqz v0, :cond_93

    .line 2798
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->prepareImmersiveHelper()Z

    .line 2802
    :cond_93
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->MULTISPLIT_FULLSCREEN:Z

    if-eqz v0, :cond_c2

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    if-nez v0, :cond_c2

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 2803
    new-instance v0, Lcom/android/internal/policy/DecorView$9;

    new-instance v1, Landroid/os/Handler;

    .line 2804
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/DecorView$9;-><init>(Lcom/android/internal/policy/DecorView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mMultiWindowMenuInFullScreenObserver:Landroid/database/ContentObserver;

    .line 2822
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2823
    const-string v1, "multi_window_menu_in_full_screen"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mMultiWindowMenuInFullScreenObserver:Landroid/database/ContentObserver;

    .line 2822
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2829
    :cond_c2
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->refreshGestureNavBarSettings()V

    .line 2832
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2833
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_dc

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_dc

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v1, :cond_dc

    .line 2834
    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    .line 2837
    :cond_dc
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_e6

    .line 2845
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->openPanelsAfterRestore()V

    .line 2848
    :cond_e6
    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    if-nez v1, :cond_f4

    .line 2851
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewRootImpl;->addWindowCallbacks(Landroid/view/WindowCallbacks;)V

    .line 2852
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    goto :goto_fb

    .line 2853
    :cond_f4
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-eqz v1, :cond_fb

    .line 2856
    invoke-virtual {v1}, Lcom/android/internal/policy/BackdropFrameRenderer;->onConfigurationChange()V

    .line 2859
    :cond_fb
    :goto_fb
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateBackgroundBlurRadius()V

    .line 2861
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/PhoneWindow;->onViewRootImplSet(Landroid/view/ViewRootImpl;)V

    .line 2864
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_116

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v1, :cond_116

    .line 2865
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->removeDecorCaptionView()V

    .line 2868
    :cond_116
    return-void
.end method

.method public blacklist onCloseSystemDialogs(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 2951
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-ltz v0, :cond_9

    .line 2952
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->closeAllPanels()V

    .line 2954
    :cond_9
    return-void
.end method

.method protected whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 11
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 3244
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3248
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    if-eqz v0, :cond_10

    .line 3249
    new-instance v0, Lcom/samsung/android/util/DecorCaptionResources;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/util/DecorCaptionResources;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    .line 3254
    :cond_10
    const/4 v0, 0x0

    .line 3256
    .local v0, "updateWindowFormat":Z
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mLastDisplayDeviceType:I

    .line 3257
    .local v1, "oldDisplayDeviceType":I
    iget v2, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    iput v2, p0, Lcom/android/internal/policy/DecorView;->mLastDisplayDeviceType:I

    .line 3258
    if-eq v2, v1, :cond_1a

    .line 3259
    const/4 v0, 0x1

    .line 3262
    :cond_1a
    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 3263
    .local v2, "winConfig":Landroid/app/WindowConfiguration;
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v3

    .line 3264
    .local v3, "isPopPover":Z
    iget-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    if-eq v4, v3, :cond_27

    .line 3265
    iput-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    .line 3266
    const/4 v0, 0x1

    .line 3270
    :cond_27
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->isPopOverWithoutOutlineEffect()Z

    move-result v4

    .line 3271
    .local v4, "isPopOverForMultiPaneLayout":Z
    iget-boolean v5, p0, Lcom/android/internal/policy/DecorView;->mIsPopOverForMultiPaneLayout:Z

    if-eq v5, v4, :cond_32

    .line 3272
    iput-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mIsPopOverForMultiPaneLayout:Z

    .line 3273
    const/4 v0, 0x1

    .line 3277
    :cond_32
    if-eqz v0, :cond_37

    .line 3278
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    .line 3281
    :cond_37
    iget-boolean v5, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    const-string v6, "DecorView"

    if-eqz v5, :cond_99

    iget-boolean v5, p0, Lcom/android/internal/policy/DecorView;->mIsPopOverForMultiPaneLayout:Z

    if-nez v5, :cond_99

    .line 3282
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 3283
    .local v5, "res":Landroid/content/res/Resources;
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v7

    instance-of v7, v7, Lcom/android/internal/app/ChooserActivity;

    if-eqz v7, :cond_59

    .line 3284
    const v7, 0x1060351

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundColor:I

    goto :goto_74

    .line 3285
    :cond_59
    iget v7, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundColor:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_74

    .line 3286
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/util/SemViewUtils;->isLightTheme(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_6a

    .line 3287
    const v7, 0x10602ba

    goto :goto_6d

    .line 3288
    :cond_6a
    const v7, 0x10602bb

    :goto_6d
    const/4 v8, 0x0

    .line 3286
    invoke-virtual {v5, v7, v8}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundColor:I

    .line 3290
    :cond_74
    :goto_74
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mPopOverBackgroundColor="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundColor:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3291
    const v7, 0x10503ac

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/DecorView;->mPopOverRadius:I

    .line 3295
    .end local v0    # "updateWindowFormat":Z
    .end local v1    # "oldDisplayDeviceType":I
    .end local v2    # "winConfig":Landroid/app/WindowConfiguration;
    .end local v3    # "isPopPover":Z
    .end local v4    # "isPopOverForMultiPaneLayout":Z
    .end local v5    # "res":Landroid/content/res/Resources;
    :cond_99
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateOutlineProvider()V

    .line 3297
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    if-nez v0, :cond_bc

    .line 3298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mContentRoot is null, Callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3299
    return-void

    .line 3303
    :cond_bc
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 3306
    .local v0, "focusedView":Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->removeDecorCaptionIfNeeded(Landroid/content/res/Configuration;)Z

    move-result v1

    .line 3308
    .local v1, "captionRemoved":Z
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    if-eqz v2, :cond_cb

    .line 3309
    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiSplitActions;->update()V

    .line 3313
    :cond_cb
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->updateCaptionType(Landroid/content/res/Configuration;)V

    .line 3316
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFreeformMode()Z

    move-result v2

    .line 3317
    .local v2, "isFreeform":Z
    if-nez v2, :cond_d6

    if-eqz v1, :cond_d9

    .line 3318
    :cond_d6
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->updateDecorCaptionStatus(Landroid/content/res/Configuration;)V

    .line 3322
    :cond_d9
    if-eqz v0, :cond_de

    .line 3323
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 3326
    :cond_de
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v3, :cond_f4

    .line 3327
    if-eqz v1, :cond_e8

    .line 3328
    invoke-direct {p0, v3}, Lcom/android/internal/policy/DecorView;->setDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V

    goto :goto_f4

    .line 3332
    :cond_e8
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->getNeedsShowingCaption()Z

    move-result v3

    .line 3333
    .local v3, "showCaption":Z
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/DecorCaptionView;->onConfigurationChanged(Z)V

    .line 3334
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/DecorView;->enableCaption(Z)V

    .line 3338
    .end local v3    # "showCaption":Z
    :cond_f4
    :goto_f4
    const/4 v3, 0x0

    if-eqz v2, :cond_103

    .line 3339
    iget-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mIsMovingTask:Z

    if-eqz v4, :cond_ff

    .line 3340
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/DecorView;->notifyMovingTask(Z)V

    .line 3341
    const/4 v1, 0x0

    .line 3343
    :cond_ff
    const/4 v1, 0x1

    .line 3344
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    .line 3347
    :cond_103
    if-eqz v1, :cond_118

    .line 3349
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mFrameDrawHelper:Lcom/samsung/android/multiwindow/FrameDrawHelper;

    if-eqz v4, :cond_10c

    .line 3350
    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/FrameDrawHelper;->updateResources()V

    .line 3355
    :cond_10c
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mImmersiveHelper:Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;

    if-eqz v4, :cond_113

    .line 3356
    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->onConfigurationChanged()V

    .line 3358
    :cond_113
    const-string v4, "config_changed"

    invoke-direct {p0, v4}, Lcom/android/internal/policy/DecorView;->requestInvalidateRenderNode(Ljava/lang/String;)V

    .line 3363
    :cond_118
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isMultiSplitHandlerRequested()Z

    move-result v4

    if-eqz v4, :cond_12a

    .line 3364
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    if-eqz v4, :cond_126

    .line 3365
    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->updateConfiguration()V

    goto :goto_12d

    .line 3367
    :cond_126
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->addMultiSplitHandler()V

    goto :goto_12d

    .line 3370
    :cond_12a
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->removeMultiSplitHandler()V

    .line 3377
    .end local v0    # "focusedView":Landroid/view/View;
    .end local v1    # "captionRemoved":Z
    .end local v2    # "isFreeform":Z
    :goto_12d
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->initializeElevation()V

    .line 3380
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 3381
    .local v0, "theme":Landroid/content/res/Resources$Theme;
    const v1, 0x1010357

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3382
    const v1, 0x1010356

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3386
    .end local v0    # "theme":Landroid/content/res/Resources$Theme;
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->refreshGestureNavBarSettings()V

    .line 3392
    :try_start_150
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsKeyboardShown:Z

    if-nez v0, :cond_15c

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsFullViewShown:Z

    if-nez v0, :cond_15c

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsKnoxActivity:Z

    if-eqz v0, :cond_17f

    :cond_15c
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_16a

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_172

    :cond_16a
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_17f

    .line 3393
    :cond_172
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mDensityForKnoxBadge:I

    if-eq v0, v1, :cond_17f

    .line 3394
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->setBadgeResource()V

    .line 3395
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mDensityForKnoxBadge:I
    :try_end_17f
    .catch Ljava/lang/Exception; {:try_start_150 .. :try_end_17f} :catch_180

    .line 3400
    :cond_17f
    goto :goto_188

    .line 3398
    :catch_180
    move-exception v0

    .line 3399
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    const-string v2, "failed to remove knox badge"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3406
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_188
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundResource:I

    const v1, 0x1080bde

    if-ne v0, v1, :cond_1bb

    .line 3407
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3408
    .local v0, "currWindowBackground":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_1c6

    .line 3409
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .line 3410
    .local v1, "statefulWindowBackground":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v2

    .line 3411
    .local v2, "states":[I
    if-eqz v2, :cond_1c6

    array-length v4, v2

    if-lez v4, :cond_1c6

    .line 3412
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v3, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_1c6

    .line 3413
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundResource:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 3414
    .local v3, "newBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1c6

    .line 3415
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1c6

    .line 3419
    .end local v0    # "currWindowBackground":Landroid/graphics/drawable/Drawable;
    .end local v1    # "statefulWindowBackground":Landroid/graphics/drawable/StateListDrawable;
    .end local v2    # "states":[I
    .end local v3    # "newBackground":Landroid/graphics/drawable/Drawable;
    :cond_1bb
    const v1, 0x1080bdb

    if-eq v0, v1, :cond_1c7

    const v1, 0x1080bdc

    if-ne v0, v1, :cond_1c6

    goto :goto_1c7

    :cond_1c6
    :goto_1c6
    goto :goto_20a

    .line 3421
    :cond_1c7
    :goto_1c7
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3422
    .restart local v0    # "currWindowBackground":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 3423
    .local v1, "newBackground":Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1df

    .line 3424
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundResource:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_205

    .line 3425
    :cond_1df
    instance-of v2, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v2, :cond_205

    .line 3426
    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/StateListDrawable;

    .line 3427
    .local v2, "statefulWindowBackground":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v4

    .line 3428
    .local v4, "states":[I
    if-eqz v4, :cond_205

    array-length v5, v4

    if-lez v5, :cond_205

    .line 3429
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v3, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_205

    .line 3430
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v5, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundResource:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3433
    .end local v2    # "statefulWindowBackground":Landroid/graphics/drawable/StateListDrawable;
    .end local v4    # "states":[I
    :cond_205
    :goto_205
    if-eqz v1, :cond_20a

    .line 3434
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3443
    .end local v0    # "currWindowBackground":Landroid/graphics/drawable/Drawable;
    .end local v1    # "newBackground":Landroid/graphics/drawable/Drawable;
    :cond_20a
    :goto_20a
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->updateDeviceDefaultNavigationBarColor()V

    .line 3444
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mLegacyNavigationBarBackgroundPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 3445
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getDeviceDefaultNavigationBarColor()I

    move-result v1

    .line 3444
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3446
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->updateDefaultNavigationBarColor()V

    .line 3451
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->MULTISPLIT_FULLSCREEN:Z

    if-eqz v0, :cond_237

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getMultiSplitActions()Lcom/samsung/android/multiwindow/MultiSplitActions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isEmbeddedMode()Z

    move-result v0

    if-eqz v0, :cond_237

    .line 3452
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getMultiSplitActions()Lcom/samsung/android/multiwindow/MultiSplitActions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->getActivityEmbeddingState()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mLastEmbeddingState:I

    .line 3455
    :cond_237
    return-void
.end method

.method public blacklist onContentDrawn(IIII)Z
    .registers 6
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I
    .param p3, "sizeX"    # I
    .param p4, "sizeY"    # I

    .line 3916
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-nez v0, :cond_6

    .line 3917
    const/4 v0, 0x0

    return v0

    .line 3919
    :cond_6
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/policy/BackdropFrameRenderer;->onContentDrawn(IIII)Z

    move-result v0

    return v0
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 6

    .line 2872
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2875
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->MULTISPLIT_FULLSCREEN:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMultiWindowMenuInFullScreenObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_19

    .line 2876
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mMultiWindowMenuInFullScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2878
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mMultiWindowMenuInFullScreenObserver:Landroid/database/ContentObserver;

    .line 2882
    :cond_19
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->removeMultiSplitHandler()V

    .line 2886
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 2887
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->removeDecorCaptionWindow()V

    .line 2892
    :cond_2b
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2893
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_3a

    iget v2, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v2, :cond_3a

    .line 2894
    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    .line 2897
    :cond_3a
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v2, :cond_47

    .line 2898
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v2}, Lcom/android/internal/widget/DecorContentParent;->dismissPopups()V

    .line 2901
    :cond_47
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_5f

    .line 2902
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2903
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 2904
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2906
    :cond_5d
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    .line 2908
    :cond_5f
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    if-eqz v2, :cond_68

    .line 2909
    invoke-virtual {v2}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->dismiss()V

    .line 2910
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    .line 2913
    :cond_68
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->removeBackgroundBlurDrawable()V

    .line 2915
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 2916
    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_81

    iget-object v4, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v4, :cond_81

    iget v4, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v4, :cond_81

    .line 2917
    iget-object v4, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuBuilder;->close()V

    .line 2920
    :cond_81
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->releaseThreadedRenderer()V

    .line 2922
    iget-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    if-eqz v4, :cond_91

    .line 2923
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/ViewRootImpl;->removeWindowCallbacks(Landroid/view/WindowCallbacks;)V

    .line 2924
    iput-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    .line 2927
    :cond_91
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mPendingInsetsController:Landroid/view/PendingInsetsController;

    invoke-virtual {v3}, Landroid/view/PendingInsetsController;->detach()V

    .line 2931
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    if-eqz v3, :cond_a2

    .line 2932
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeDisplayRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2933
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->removeKnoxBadge()V

    .line 2940
    :cond_a2
    iget v3, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundResource:I

    const v4, 0x1080bde

    if-eq v3, v4, :cond_b3

    const v4, 0x1080bdb

    if-eq v3, v4, :cond_b3

    const v4, 0x1080bdc

    if-ne v3, v4, :cond_b6

    .line 2943
    :cond_b3
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2947
    :cond_b6
    return-void
.end method

.method public blacklist onDexStarShowingDelayTimeChanged(I)V
    .registers 3
    .param p1, "time"    # I

    .line 6223
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mImmersiveHelper:Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;

    if-eqz v0, :cond_7

    .line 6224
    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->updateDexStarShowingDelayTime(I)V

    .line 6226
    :cond_7
    return-void
.end method

.method public blacklist onDexTaskDockingChanged(I)V
    .registers 4
    .param p1, "state"    # I

    .line 6284
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mLastFreeformStashType:I

    if-eq v0, p1, :cond_22

    .line 6285
    iput p1, p0, Lcom/android/internal/policy/DecorView;->mLastFreeformStashType:I

    .line 6286
    if-nez p1, :cond_c

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsMovingTask:Z

    if-eqz v0, :cond_12

    :cond_c
    const/4 v0, 0x1

    if-eq p1, v0, :cond_12

    const/4 v0, 0x2

    if-ne p1, v0, :cond_22

    .line 6289
    :cond_12
    const-string v0, "Dex docking state Changed"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->requestInvalidateRenderNode(Ljava/lang/String;)V

    .line 6290
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_22

    .line 6291
    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->isCaptionShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DecorCaptionView;->onConfigurationChanged(Z)V

    .line 6295
    :cond_22
    return-void
.end method

.method public whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 9
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 886
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 888
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v4, v1, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v5, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v6, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/BackgroundFallback;->draw(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/graphics/Canvas;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 892
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsStartingWindow:Z

    if-eqz v0, :cond_25

    .line 893
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->drawFrameIfNeeded(Landroid/graphics/Canvas;)V

    .line 895
    :cond_25
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_2c

    .line 896
    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->forceLayoutIfNeeded()V

    .line 899
    :cond_2c
    return-void
.end method

.method public blacklist onFinishMovingTask()V
    .registers 2

    .line 3957
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->notifyMovingTask(Z)V

    .line 3959
    return-void
.end method

.method public blacklist onFlexPanelModeChanged(Z)V
    .registers 3
    .param p1, "flexPanelMode"    # Z

    .line 4493
    iput-boolean p1, p0, Lcom/android/internal/policy/DecorView;->mIsFlexPanelMode:Z

    .line 4495
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isMultiSplitHandlerRequested()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4496
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->addMultiSplitHandler()V

    goto :goto_f

    .line 4498
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->removeMultiSplitHandler()V

    .line 4503
    :goto_f
    const-string v0, "onFlexPanelModeChanged"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->requestInvalidateRenderNode(Ljava/lang/String;)V

    .line 4506
    return-void
.end method

.method public blacklist onFreeformHeaderTypeChanged(I)V
    .registers 4
    .param p1, "type"    # I

    .line 6206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Freeform header type changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6207
    const/4 v1, 0x1

    if-ne p1, v1, :cond_11

    const-string v1, "bar"

    goto :goto_13

    :cond_11
    const-string v1, "handler"

    :goto_13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6206
    const-string v1, "DecorView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6208
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    if-eqz v0, :cond_27

    .line 6209
    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiSplitActions;->dispatchHeaderTypeChanged(I)V

    .line 6212
    :cond_27
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isMultiSplitHandlerRequested()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 6213
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->addMultiSplitHandler()V

    goto :goto_34

    .line 6215
    :cond_31
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->removeMultiSplitHandler()V

    .line 6218
    :goto_34
    return-void
.end method

.method public blacklist onFreeformResizeGuideViewChanged(Z)V
    .registers 6
    .param p1, "showing"    # Z

    .line 6316
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    if-eqz v0, :cond_7

    .line 6317
    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->onFreeformResizeGuideViewChanged(Z)V

    .line 6320
    :cond_7
    if-nez p1, :cond_36

    .line 6321
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mShadowAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_10

    .line 6322
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 6325
    :cond_10
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getElevation()F

    move-result v0

    .line 6326
    .local v0, "windowElevation":F
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    const-string v2, "elevation"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mShadowAnimator:Landroid/animation/ObjectAnimator;

    .line 6327
    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 6328
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mShadowAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 6330
    .end local v0    # "windowElevation":F
    :cond_36
    return-void
.end method

.method public blacklist onFreeformStashingChanged(I)V
    .registers 3
    .param p1, "state"    # I

    .line 6276
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    if-eqz v0, :cond_7

    .line 6277
    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->onFreeformStashingChanged(I)V

    .line 6279
    :cond_7
    return-void
.end method

.method public blacklist onFreeformTaskPinningChanged(I)V
    .registers 4
    .param p1, "state"    # I

    .line 6190
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    if-nez v0, :cond_5

    .line 6191
    return-void

    .line 6194
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFreeformTaskPinningChanged: state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DecorView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6195
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCompatWindow:Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->getDecorView()Lcom/android/internal/policy/DecorView;

    move-result-object v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCompatWindow:Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;

    .line 6196
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->getDecorView()Lcom/android/internal/policy/DecorView;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    if-eqz v0, :cond_3d

    .line 6197
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCompatWindow:Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->getDecorView()Lcom/android/internal/policy/DecorView;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiSplitActions;->dispatchWindowPinStateChanged(I)V

    goto :goto_44

    .line 6198
    :cond_3d
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    if-eqz v0, :cond_44

    .line 6199
    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiSplitActions;->dispatchWindowPinStateChanged(I)V

    .line 6201
    :cond_44
    :goto_44
    return-void
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1143
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1144
    .local v0, "action":I
    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mHasCaption:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_28

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isShowingCaption()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1146
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFullSize()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1156
    if-nez v0, :cond_28

    .line 1157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 1158
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 1159
    .local v3, "y":I
    invoke-direct {p0, v1, v3}, Lcom/android/internal/policy/DecorView;->isOutOfInnerBounds(II)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 1160
    return v2

    .line 1165
    .end local v1    # "x":I
    .end local v3    # "y":I
    :cond_28
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-ltz v1, :cond_46

    .line 1166
    if-nez v0, :cond_46

    .line 1167
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 1168
    .restart local v1    # "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 1169
    .restart local v3    # "y":I
    invoke-direct {p0, v1, v3}, Lcom/android/internal/policy/DecorView;->isOutOfBounds(II)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 1170
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v5, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/PhoneWindow;->closePanel(I)V

    .line 1171
    return v2

    .line 1177
    .end local v1    # "x":I
    .end local v3    # "y":I
    :cond_46
    const/4 v1, 0x0

    return v1
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 1431
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1433
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mApplyFloatingVerticalInsets:Z

    if-eqz v0, :cond_e

    .line 1434
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->offsetTopAndBottom(I)V

    .line 1436
    :cond_e
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mApplyFloatingHorizontalInsets:Z

    if-eqz v0, :cond_19

    .line 1437
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->offsetLeftAndRight(I)V

    .line 1442
    :cond_19
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    .line 1443
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mAllowUpdateElevation:Z

    .line 1445
    if-eqz p1, :cond_30

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mResizeMode:I

    if-eq v1, v0, :cond_29

    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackground:Z

    if-eqz v1, :cond_30

    .line 1448
    :cond_29
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    .line 1452
    :cond_30
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWindowingMode()I

    move-result v1

    .line 1453
    .local v1, "windowingMode":I
    if-nez p1, :cond_52

    iget v2, p0, Lcom/android/internal/policy/DecorView;->mLastWindowingMode:I

    if-ne v2, v1, :cond_52

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mLastLayoutBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-ne v2, p2, :cond_52

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mLastLayoutBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-ne v2, p3, :cond_52

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mLastLayoutBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-ne v2, p4, :cond_52

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mLastLayoutBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-eq v2, p5, :cond_57

    .line 1456
    :cond_52
    const-string v2, "layout_changed"

    invoke-direct {p0, v2}, Lcom/android/internal/policy/DecorView;->requestInvalidateRenderNode(Ljava/lang/String;)V

    .line 1458
    :cond_57
    iput v1, p0, Lcom/android/internal/policy/DecorView;->mLastWindowingMode:I

    .line 1459
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mLastLayoutBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1461
    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    if-eqz v2, :cond_7f

    .line 1462
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_6f

    goto :goto_70

    :cond_6f
    const/4 v0, 0x0

    .line 1463
    .local v0, "showPopOver":Z
    :goto_70
    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mShowPopOver:Z

    if-eq v2, v0, :cond_7f

    .line 1464
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mShowPopOver:Z

    .line 1465
    if-eqz v0, :cond_7c

    .line 1466
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->showPopOver()V

    goto :goto_7f

    .line 1468
    :cond_7c
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->hidePopOver()V

    .line 1476
    .end local v0    # "showPopOver":Z
    .end local v1    # "windowingMode":I
    :cond_7f
    :goto_7f
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    if-eqz v0, :cond_8e

    .line 1477
    iput p2, p0, Lcom/android/internal/policy/DecorView;->mKnoxLayoutLeft:I

    .line 1478
    iput p4, p0, Lcom/android/internal/policy/DecorView;->mKnoxLayoutRight:I

    .line 1479
    iput p5, p0, Lcom/android/internal/policy/DecorView;->mKnoxLayoutBottom:I

    .line 1480
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeDisplayRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->post(Ljava/lang/Runnable;)Z

    .line 1484
    :cond_8e
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 19
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1317
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1318
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 1319
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    nop

    .line 1320
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1f

    move v3, v5

    goto :goto_20

    :cond_1f
    move v3, v4

    .line 1322
    .local v3, "isPortrait":Z
    :goto_20
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 1323
    .local v6, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 1325
    .local v7, "heightMode":I
    const/4 v8, 0x0

    .line 1326
    .local v8, "fixedWidth":Z
    iput-boolean v4, v0, Lcom/android/internal/policy/DecorView;->mApplyFloatingHorizontalInsets:Z

    .line 1327
    const/4 v9, 0x6

    const/4 v10, 0x5

    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v12, -0x80000000

    if-ne v6, v12, :cond_80

    .line 1328
    iget-object v13, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v3, :cond_3a

    iget-object v13, v13, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    goto :goto_3c

    :cond_3a
    iget-object v13, v13, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 1329
    .local v13, "tvw":Landroid/util/TypedValue;
    :goto_3c
    if-eqz v13, :cond_80

    iget v14, v13, Landroid/util/TypedValue;->type:I

    if-eqz v14, :cond_80

    .line 1331
    iget v14, v13, Landroid/util/TypedValue;->type:I

    if-ne v14, v10, :cond_4c

    .line 1332
    invoke-virtual {v13, v2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v14

    float-to-int v14, v14

    .local v14, "w":I
    goto :goto_5d

    .line 1333
    .end local v14    # "w":I
    :cond_4c
    iget v14, v13, Landroid/util/TypedValue;->type:I

    if-ne v14, v9, :cond_5c

    .line 1334
    iget v14, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v14, v14

    iget v15, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v15, v15

    invoke-virtual {v13, v14, v15}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v14

    float-to-int v14, v14

    .restart local v14    # "w":I
    goto :goto_5d

    .line 1336
    .end local v14    # "w":I
    :cond_5c
    const/4 v14, 0x0

    .line 1339
    .restart local v14    # "w":I
    :goto_5d
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .line 1340
    .local v15, "widthSize":I
    if-lez v14, :cond_6e

    .line 1341
    nop

    .line 1342
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1341
    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 1343
    .end local p1    # "widthMeasureSpec":I
    .local v9, "widthMeasureSpec":I
    const/4 v8, 0x1

    goto :goto_82

    .line 1345
    .end local v9    # "widthMeasureSpec":I
    .restart local p1    # "widthMeasureSpec":I
    :cond_6e
    iget-object v9, v0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    sub-int v9, v15, v9

    iget-object v11, v0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v11

    invoke-static {v9, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 1348
    .end local p1    # "widthMeasureSpec":I
    .restart local v9    # "widthMeasureSpec":I
    iput-boolean v5, v0, Lcom/android/internal/policy/DecorView;->mApplyFloatingHorizontalInsets:Z

    goto :goto_82

    .line 1353
    .end local v9    # "widthMeasureSpec":I
    .end local v13    # "tvw":Landroid/util/TypedValue;
    .end local v14    # "w":I
    .end local v15    # "widthSize":I
    .restart local p1    # "widthMeasureSpec":I
    :cond_80
    move/from16 v9, p1

    .end local p1    # "widthMeasureSpec":I
    .restart local v9    # "widthMeasureSpec":I
    :goto_82
    iput-boolean v4, v0, Lcom/android/internal/policy/DecorView;->mApplyFloatingVerticalInsets:Z

    .line 1354
    if-ne v7, v12, :cond_e4

    .line 1355
    if-eqz v3, :cond_8d

    iget-object v4, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v4, v4, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    goto :goto_91

    .line 1356
    :cond_8d
    iget-object v4, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v4, v4, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    :goto_91
    nop

    .line 1357
    .local v4, "tvh":Landroid/util/TypedValue;
    if-eqz v4, :cond_e4

    iget v11, v4, Landroid/util/TypedValue;->type:I

    if-eqz v11, :cond_e4

    .line 1359
    iget v11, v4, Landroid/util/TypedValue;->type:I

    if-ne v11, v10, :cond_a2

    .line 1360
    invoke-virtual {v4, v2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v11, v11

    .local v11, "h":I
    goto :goto_b4

    .line 1361
    .end local v11    # "h":I
    :cond_a2
    iget v11, v4, Landroid/util/TypedValue;->type:I

    const/4 v13, 0x6

    if-ne v11, v13, :cond_b3

    .line 1362
    iget v11, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v11, v11

    iget v13, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v13, v13

    invoke-virtual {v4, v11, v13}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v11

    float-to-int v11, v11

    .restart local v11    # "h":I
    goto :goto_b4

    .line 1364
    .end local v11    # "h":I
    :cond_b3
    const/4 v11, 0x0

    .line 1367
    .restart local v11    # "h":I
    :goto_b4
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 1368
    .local v13, "heightSize":I
    if-lez v11, :cond_c6

    .line 1369
    nop

    .line 1370
    invoke-static {v11, v13}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1369
    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .end local p2    # "heightMeasureSpec":I
    .local v14, "heightMeasureSpec":I
    goto :goto_e6

    .line 1371
    .end local v14    # "heightMeasureSpec":I
    .restart local p2    # "heightMeasureSpec":I
    :cond_c6
    iget-object v14, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v14}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v14

    iget v14, v14, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v14, v14, 0x100

    if-nez v14, :cond_e4

    .line 1372
    iget-object v14, v0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    sub-int v14, v13, v14

    iget-object v15, v0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v15

    invoke-static {v14, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 1374
    .end local p2    # "heightMeasureSpec":I
    .restart local v14    # "heightMeasureSpec":I
    iput-boolean v5, v0, Lcom/android/internal/policy/DecorView;->mApplyFloatingVerticalInsets:Z

    goto :goto_e6

    .line 1379
    .end local v4    # "tvh":Landroid/util/TypedValue;
    .end local v11    # "h":I
    .end local v13    # "heightSize":I
    .end local v14    # "heightMeasureSpec":I
    .restart local p2    # "heightMeasureSpec":I
    :cond_e4
    move/from16 v14, p2

    .end local p2    # "heightMeasureSpec":I
    .restart local v14    # "heightMeasureSpec":I
    :goto_e6
    invoke-super {v0, v9, v14}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1381
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getMeasuredWidth()I

    move-result v4

    .line 1382
    .local v4, "width":I
    const/4 v11, 0x0

    .line 1384
    .local v11, "measure":Z
    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v4, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 1386
    if-nez v8, :cond_15d

    if-ne v6, v12, :cond_15d

    .line 1388
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->orientation:I

    .line 1389
    .local v12, "currOrientation":I
    iget v13, v0, Lcom/android/internal/policy/DecorView;->mLastOrientation:I

    if-eq v13, v12, :cond_124

    .line 1390
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v13

    .line 1391
    .local v13, "theme":Landroid/content/res/Resources$Theme;
    const v15, 0x1010357

    iget-object v10, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v10, v10, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    invoke-virtual {v13, v15, v10, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1392
    const v10, 0x1010356

    iget-object v15, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v15, v15, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    invoke-virtual {v13, v10, v15, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1393
    iput v12, v0, Lcom/android/internal/policy/DecorView;->mLastOrientation:I

    .line 1397
    .end local v12    # "currOrientation":I
    .end local v13    # "theme":Landroid/content/res/Resources$Theme;
    :cond_124
    iget-object v10, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v3, :cond_12b

    iget-object v10, v10, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    goto :goto_12d

    :cond_12b
    iget-object v10, v10, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    .line 1398
    .local v10, "tv":Landroid/util/TypedValue;
    :goto_12d
    nop

    .line 1399
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v12, v12

    .line 1398
    invoke-static {v5, v12, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    .line 1400
    .local v5, "availableWidth":F
    iget v12, v10, Landroid/util/TypedValue;->type:I

    if-eqz v12, :cond_15d

    .line 1402
    iget v12, v10, Landroid/util/TypedValue;->type:I

    const/4 v13, 0x5

    if-ne v12, v13, :cond_148

    .line 1403
    invoke-virtual {v10, v2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v12

    float-to-int v12, v12

    .local v12, "min":I
    goto :goto_154

    .line 1404
    .end local v12    # "min":I
    :cond_148
    iget v12, v10, Landroid/util/TypedValue;->type:I

    const/4 v13, 0x6

    if-ne v12, v13, :cond_153

    .line 1405
    invoke-virtual {v10, v5, v5}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v12

    float-to-int v12, v12

    .restart local v12    # "min":I
    goto :goto_154

    .line 1407
    .end local v12    # "min":I
    :cond_153
    const/4 v12, 0x0

    .line 1412
    .restart local v12    # "min":I
    :goto_154
    if-ge v4, v12, :cond_15d

    .line 1413
    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 1414
    const/4 v11, 0x1

    .line 1421
    .end local v5    # "availableWidth":F
    .end local v10    # "tv":Landroid/util/TypedValue;
    .end local v12    # "min":I
    :cond_15d
    if-eqz v11, :cond_162

    .line 1422
    invoke-super {v0, v9, v14}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1425
    :cond_162
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->notifyCaptionHeightChanged()V

    .line 1427
    return-void
.end method

.method public blacklist onMovedToDisplay(ILandroid/content/res/Configuration;)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "config"    # Landroid/content/res/Configuration;

    .line 3505
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMovedToDisplay(ILandroid/content/res/Configuration;)V

    .line 3507
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->updateDisplay(I)V

    .line 3508
    return-void
.end method

.method public blacklist onPostDraw(Landroid/graphics/RecordingCanvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/RecordingCanvas;

    .line 3936
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->drawResizingShadowIfNeeded(Landroid/graphics/RecordingCanvas;)V

    .line 3937
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->drawLegacyNavigationBarBackground(Landroid/graphics/RecordingCanvas;)V

    .line 3943
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->drawFrameIfNeeded(Landroid/graphics/Canvas;)V

    .line 3945
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isImmersiveFullscreenOnDex()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_25

    .line 3946
    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->getLastMeasuredWithCaptionHeight()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mHasCaption:Z

    if-eq v0, v1, :cond_25

    .line 3947
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->requestLayout()V

    .line 3948
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->invalidate()V

    .line 3952
    :cond_25
    return-void
.end method

.method public blacklist onRequestDraw(Z)V
    .registers 3
    .param p1, "reportNextDraw"    # Z

    .line 3924
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-eqz v0, :cond_8

    .line 3925
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/BackdropFrameRenderer;->onRequestDraw(Z)V

    goto :goto_17

    .line 3926
    :cond_8
    if-eqz p1, :cond_17

    .line 3928
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3929
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->reportDrawFinish()V

    .line 3932
    :cond_17
    :goto_17
    return-void
.end method

.method blacklist onResourcesLoaded(Landroid/view/LayoutInflater;I)V
    .registers 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "layoutResource"    # I

    .line 3570
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mLastOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 3571
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateOutlineProvider()V

    .line 3573
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mActivityCurrentConfig:Landroid/content/res/Configuration;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->updateCaptionType(Landroid/content/res/Configuration;)V

    .line 3575
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFreeformMode()Z

    move-result v0

    const-string v1, "resources_loaded"

    if-eqz v0, :cond_21

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->hasWindowDecorCaption()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3576
    invoke-direct {p0, v1}, Lcom/android/internal/policy/DecorView;->requestInvalidateRenderNode(Ljava/lang/String;)V

    .line 3580
    :cond_21
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-eqz v0, :cond_40

    .line 3581
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->loadBackgroundDrawablesIfNeeded()V

    .line 3582
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 3584
    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I

    move-result v7

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 3585
    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I

    move-result v8

    .line 3582
    move-object v3, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/policy/BackdropFrameRenderer;->onResourcesLoaded(Lcom/android/internal/policy/DecorView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 3588
    :cond_40
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->createDecorCaptionView(Landroid/view/LayoutInflater;)Lcom/android/internal/widget/DecorCaptionView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    .line 3589
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3590
    .local v0, "root":Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    const/4 v3, -0x1

    if-eqz v2, :cond_7c

    .line 3592
    iget-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mHasWindowFocus:Z

    .line 3595
    .local v4, "hasWindowFocus":Z
    iget-boolean v5, p0, Lcom/android/internal/policy/DecorView;->mHasWindowFocusInTask:Z

    or-int/2addr v4, v5

    .line 3599
    invoke-virtual {v2, v4}, Lcom/android/internal/widget/DecorCaptionView;->updateWindowFocus(Z)V

    .line 3602
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    if-eqz v2, :cond_5f

    .line 3603
    invoke-virtual {v2, v4}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->onWindowFocusChanged(Z)V

    .line 3607
    .end local v4    # "hasWindowFocus":Z
    :cond_5f
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v2}, Lcom/android/internal/widget/DecorCaptionView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_71

    .line 3608
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v4}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3611
    :cond_71
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    new-instance v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v4}, Lcom/android/internal/widget/DecorCaptionView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_85

    .line 3616
    :cond_7c
    const/4 v2, 0x0

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2, v4}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3618
    :goto_85
    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    .line 3619
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->initializeElevation()V

    .line 3623
    new-instance v2, Lcom/android/internal/policy/DecorView$13;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/DecorView$13;-><init>(Lcom/android/internal/policy/DecorView;)V

    iput-object v2, v0, Landroid/view/View;->mOnAddRemoveListener:Landroid/view/View$OnAddRemoveListener;

    .line 3635
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3636
    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_a2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_c6

    :cond_a2
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    move-result v3

    if-nez v3, :cond_c6

    .line 3637
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 3638
    .local v3, "appContext":Landroid/content/Context;
    if-eqz v3, :cond_c0

    .line 3639
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/android/internal/policy/DecorView;->mLastOrientation:I

    .line 3641
    :cond_c0
    invoke-direct {p0, v1}, Lcom/android/internal/policy/DecorView;->getCurrentDensityDpi(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/DecorView;->mDensityDpi:I

    .line 3644
    .end local v2    # "type":I
    .end local v3    # "appContext":Landroid/content/Context;
    :cond_c6
    return-void
.end method

.method public blacklist onRootViewScrollYChanged(I)V
    .registers 3
    .param p1, "rootScrollY"    # I

    .line 2979
    iput p1, p0, Lcom/android/internal/policy/DecorView;->mRootScrollY:I

    .line 2980
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_9

    .line 2981
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/DecorCaptionView;->onRootViewScrollYChanged(I)V

    .line 2983
    :cond_9
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateColorViewTranslations()V

    .line 2984
    return-void
.end method

.method public blacklist onSystemBarAppearanceChanged(I)V
    .registers 4
    .param p1, "appearance"    # I

    .line 1783
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 1784
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v0, :cond_c

    .line 1785
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->dispatchOnSystemBarAppearanceChanged(I)V

    .line 1787
    :cond_c
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1129
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onViewRemoved(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .line 4397
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewRemoved(Landroid/view/View;)V

    .line 4400
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    if-eqz v0, :cond_2e

    if-ne v0, p1, :cond_2e

    .line 4401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DecorView.onViewRemoved: msh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " decor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 4402
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->removeMultiSplitHandler()V

    .line 4405
    :cond_2e
    return-void
.end method

.method blacklist onWindowAttributesChanged()V
    .registers 4

    .line 4671
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_3c

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->hasWindowDecorCaption()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 4673
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFullscreenMode()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFullSize()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 4674
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mImmersiveHelper:Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->isTransient()Z

    move-result v0

    if-eqz v0, :cond_23

    move v1, v2

    :cond_23
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsImmersiveMode:Z

    xor-int/2addr v0, v2

    or-int/2addr v0, v1

    .local v0, "showCaption":Z
    goto :goto_34

    .line 4676
    .end local v0    # "showCaption":Z
    :cond_28
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFullSize()Z

    move-result v0

    if-nez v0, :cond_32

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    if-eqz v0, :cond_33

    :cond_32
    move v1, v2

    :cond_33
    move v0, v1

    .line 4678
    .restart local v0    # "showCaption":Z
    :goto_34
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/DecorCaptionView;->onConfigurationChanged(Z)V

    .line 4679
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->enableCaption(Z)V

    .line 4681
    .end local v0    # "showCaption":Z
    :cond_3c
    return-void
.end method

.method public blacklist onWindowDragResizeEnd()V
    .registers 3

    .line 3908
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->releaseThreadedRenderer()V

    .line 3909
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 3910
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mResizeMode:I

    .line 3911
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    .line 3912
    return-void
.end method

.method public blacklist onWindowDragResizeStart(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .registers 21
    .param p1, "initialBounds"    # Landroid/graphics/Rect;
    .param p2, "fullscreen"    # Z
    .param p3, "systemInsets"    # Landroid/graphics/Rect;
    .param p4, "stableInsets"    # Landroid/graphics/Rect;
    .param p5, "resizeMode"    # I

    .line 3877
    move-object v11, p0

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3879
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->releaseThreadedRenderer()V

    .line 3880
    return-void

    .line 3882
    :cond_d
    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-eqz v0, :cond_12

    .line 3883
    return-void

    .line 3885
    :cond_12
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getThreadedRenderer()Landroid/view/ThreadedRenderer;

    move-result-object v12

    .line 3886
    .local v12, "renderer":Landroid/view/ThreadedRenderer;
    if-eqz v12, :cond_4f

    .line 3887
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->loadBackgroundDrawablesIfNeeded()V

    .line 3888
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v13

    .line 3889
    .local v13, "rootInsets":Landroid/view/WindowInsets;
    new-instance v14, Lcom/android/internal/policy/BackdropFrameRenderer;

    iget-object v4, v11, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, v11, Lcom/android/internal/policy/DecorView;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, v11, Lcom/android/internal/policy/DecorView;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 3891
    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I

    move-result v7

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 3892
    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I

    move-result v8

    .line 3893
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    invoke-virtual {v13, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v10

    move-object v0, v14

    move-object v1, p0

    move-object v2, v12

    move-object/from16 v3, p1

    move/from16 v9, p2

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/policy/BackdropFrameRenderer;-><init>(Lcom/android/internal/policy/DecorView;Landroid/view/ThreadedRenderer;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZLandroid/graphics/Insets;)V

    iput-object v14, v11, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    .line 3898
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    .line 3900
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 3902
    .end local v13    # "rootInsets":Landroid/view/WindowInsets;
    :cond_4f
    move/from16 v0, p5

    iput v0, v11, Lcom/android/internal/policy/DecorView;->mResizeMode:I

    .line 3903
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    .line 3904
    return-void
.end method

.method public whitelist onWindowFocusChanged(Z)V
    .registers 6
    .param p1, "hasWindowFocus"    # Z

    .line 2680
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 2684
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_19

    if-nez p1, :cond_19

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    if-eqz v0, :cond_19

    .line 2686
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->closePanel(I)V

    .line 2689
    :cond_19
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2690
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_75

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_75

    iget v2, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v2, :cond_75

    .line 2692
    sget-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_STAY_FOCUS_ACTIVITY_DYNAMIC_ENABLED:Z

    if-eqz v2, :cond_70

    instance-of v2, v0, Landroid/app/Activity;

    if-nez v2, :cond_3f

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 2694
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_70

    .line 2695
    :cond_3f
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isActivityHomeOrRecent()Z

    move-result v2

    if-nez v2, :cond_70

    .line 2696
    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mStayFocus:Z

    if-nez v2, :cond_52

    if-eqz p1, :cond_52

    .line 2697
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    .line 2698
    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mStayFocus:Z

    goto :goto_75

    .line 2700
    :cond_52
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    .line 2701
    .local v2, "thread":Landroid/app/ActivityThread;
    iget-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mStayFocus:Z

    if-eqz v3, :cond_6f

    if-eqz v2, :cond_6f

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 2702
    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 2701
    invoke-virtual {v2, v3}, Landroid/app/ActivityThread;->mayStayActivityFocus(Landroid/os/IBinder;)Z

    move-result v3

    if-nez v3, :cond_6f

    .line 2703
    invoke-interface {v0, v1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    .line 2704
    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mStayFocus:Z

    .line 2706
    .end local v2    # "thread":Landroid/app/ActivityThread;
    :cond_6f
    goto :goto_75

    .line 2708
    :cond_70
    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mStayFocus:Z

    .line 2710
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    .line 2714
    :cond_75
    :goto_75
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_7c

    .line 2715
    invoke-virtual {v1, p1}, Landroid/view/ActionMode;->onWindowFocusChanged(Z)V

    .line 2717
    :cond_7c
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_83

    .line 2718
    invoke-virtual {v1, p1}, Landroid/view/ActionMode;->onWindowFocusChanged(Z)V

    .line 2721
    :cond_83
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    .line 2724
    iput-boolean p1, p0, Lcom/android/internal/policy/DecorView;->mHasWindowFocus:Z

    .line 2726
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mCaptionType:I

    packed-switch v1, :pswitch_data_c4

    goto :goto_be

    .line 2739
    :pswitch_8e
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mCompatWindow:Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;

    if-eqz v1, :cond_be

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->getDecorView()Lcom/android/internal/policy/DecorView;

    move-result-object v1

    if-eqz v1, :cond_be

    .line 2740
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mCompatWindow:Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->getDecorView()Lcom/android/internal/policy/DecorView;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mHasWindowFocus:Z

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/DecorView;->onWindowFocusChanged(Z)V

    .line 2742
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mRestartNotiHelpToken:Landroid/os/IBinder;

    if-eqz v1, :cond_be

    .line 2743
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mCompatWindow:Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;

    invoke-virtual {v2, v1}, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->showRestartNotificationTipPopup(Landroid/os/IBinder;)V

    .line 2744
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mRestartNotiHelpToken:Landroid/os/IBinder;

    goto :goto_be

    .line 2729
    :pswitch_b0
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v1, :cond_b7

    .line 2730
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/DecorCaptionView;->updateWindowFocus(Z)V

    .line 2733
    :cond_b7
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    if-eqz v1, :cond_be

    .line 2734
    invoke-virtual {v1, p1}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->onWindowFocusChanged(Z)V

    .line 2750
    :cond_be
    :goto_be
    const-string v1, "focus_changed"

    invoke-direct {p0, v1}, Lcom/android/internal/policy/DecorView;->requestInvalidateRenderNode(Ljava/lang/String;)V

    .line 2752
    return-void

    :pswitch_data_c4
    .packed-switch 0x1
        :pswitch_b0
        :pswitch_8e
        :pswitch_b0
    .end packed-switch
.end method

.method public blacklist onWindowFocusInTaskChanged(Z)V
    .registers 4
    .param p1, "hasWindowFocusInTask"    # Z

    .line 2655
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mHasWindowFocusInTask:Z

    if-eq v0, p1, :cond_20

    .line 2656
    iput-boolean p1, p0, Lcom/android/internal/policy/DecorView;->mHasWindowFocusInTask:Z

    .line 2658
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->hasWindowFocus()Z

    move-result v0

    .line 2661
    .local v0, "hasWindowFocus":Z
    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mHasWindowFocusInTask:Z

    or-int/2addr v0, v1

    .line 2665
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v1, :cond_19

    .line 2666
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/DecorCaptionView;->dispatchWindowFocusChanged(Z)V

    .line 2667
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/DecorCaptionView;->updateWindowFocus(Z)V

    .line 2670
    :cond_19
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    if-eqz v1, :cond_20

    .line 2671
    invoke-virtual {v1, v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->onWindowFocusChanged(Z)V

    .line 2675
    .end local v0    # "hasWindowFocus":Z
    :cond_20
    return-void
.end method

.method public blacklist onWindowSizeIsChanging(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "newBounds"    # Landroid/graphics/Rect;
    .param p2, "fullscreen"    # Z
    .param p3, "systemInsets"    # Landroid/graphics/Rect;
    .param p4, "stableInsets"    # Landroid/graphics/Rect;

    .line 3869
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-eqz v0, :cond_7

    .line 3870
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/BackdropFrameRenderer;->setTargetRect(Landroid/graphics/Rect;ZLandroid/graphics/Rect;)V

    .line 3872
    :cond_7
    return-void
.end method

.method public whitelist onWindowSystemUiVisibilityChanged(I)V
    .registers 5
    .param p1, "visible"    # I

    .line 1757
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 1758
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->updateDecorCaptionStatus(Landroid/content/res/Configuration;)V

    .line 1760
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1d

    .line 1761
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateStatusGuardColor()V

    .line 1767
    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    if-eqz v0, :cond_35

    .line 1768
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getSystemUiVisibility()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWindowSystemUiVisibility()I

    move-result v1

    or-int/2addr v0, v1

    .line 1769
    .local v0, "sysuiVis":I
    and-int/lit16 v1, v0, 0x1800

    if-eqz v1, :cond_35

    and-int/lit8 v1, v0, 0x6

    if-eqz v1, :cond_35

    .line 1771
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->hideKnoxBadge()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_35} :catch_36

    .line 1776
    .end local v0    # "sysuiVis":I
    :cond_35
    goto :goto_3e

    .line 1774
    :catch_36
    move-exception v0

    .line 1775
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DecorView_KNOX"

    const-string v2, "failed to remove knox badge"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3e
    return-void
.end method

.method public blacklist onWindowingModeChanged(IZ)V
    .registers 9
    .param p1, "windowingMode"    # I
    .param p2, "split"    # Z

    .line 4427
    iput p1, p0, Lcom/android/internal/policy/DecorView;->mWindowingMode:I

    .line 4431
    const/4 v0, 0x0

    .line 4433
    .local v0, "updateWindowFormat":Z
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mLastDisplayDeviceType:I

    .line 4434
    .local v1, "oldDisplayDeviceType":I
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    iput v2, p0, Lcom/android/internal/policy/DecorView;->mLastDisplayDeviceType:I

    .line 4435
    if-eq v2, v1, :cond_14

    .line 4436
    const/4 v0, 0x1

    .line 4439
    :cond_14
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 4440
    .local v2, "winConfig":Landroid/app/WindowConfiguration;
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v3

    .line 4441
    .local v3, "isPopPover":Z
    iget-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    if-eq v4, v3, :cond_29

    .line 4442
    iput-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    .line 4443
    const/4 v0, 0x1

    .line 4447
    :cond_29
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->isPopOverWithoutOutlineEffect()Z

    move-result v4

    .line 4448
    .local v4, "isPopOverWithoutElevation":Z
    iget-boolean v5, p0, Lcom/android/internal/policy/DecorView;->mIsPopOverForMultiPaneLayout:Z

    if-eq v5, v4, :cond_34

    .line 4449
    iput-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mIsPopOverForMultiPaneLayout:Z

    .line 4450
    const/4 v0, 0x1

    .line 4454
    :cond_34
    if-eqz v0, :cond_39

    .line 4455
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    .line 4464
    .end local v0    # "updateWindowFormat":Z
    .end local v1    # "oldDisplayDeviceType":I
    .end local v2    # "winConfig":Landroid/app/WindowConfiguration;
    .end local v3    # "isPopPover":Z
    .end local v4    # "isPopOverWithoutElevation":Z
    :cond_39
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isMultiSplitHandlerRequested()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 4465
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    if-eqz v0, :cond_47

    .line 4466
    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->onWindowingModeChanged(I)V

    goto :goto_4e

    .line 4468
    :cond_47
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->addMultiSplitHandler()V

    goto :goto_4e

    .line 4471
    :cond_4b
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->removeMultiSplitHandler()V

    .line 4476
    :goto_4e
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->hasDecorCaptionView()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 4477
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->getNeedsShowingCaption()Z

    move-result v0

    .line 4478
    .local v0, "showCaption":Z
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isShowingCaption()Z

    move-result v1

    if-eq v1, v0, :cond_66

    .line 4479
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/DecorCaptionView;->onConfigurationChanged(Z)V

    .line 4480
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->enableCaption(Z)V

    .line 4486
    .end local v0    # "showCaption":Z
    :cond_66
    const-string/jumbo v0, "window_mode_changed"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->requestInvalidateRenderNode(Ljava/lang/String;)V

    .line 4489
    return-void
.end method

.method public blacklist preventElevationUpdate()V
    .registers 2

    .line 4045
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mPreventElevationUpdate:Z

    .line 4046
    return-void
.end method

.method public blacklist preventPopOverElevation()V
    .registers 2

    .line 4051
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mPreventPopOverElevation:Z

    .line 4052
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->setElevation(F)V

    .line 4053
    return-void
.end method

.method public blacklist providePendingInsetsController()Landroid/view/PendingInsetsController;
    .registers 2

    .line 2988
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPendingInsetsController:Landroid/view/PendingInsetsController;

    return-object v0
.end method

.method public blacklist registerMultiSplitHandler(Lcom/samsung/android/multiwindow/MultiSplitHandler;)V
    .registers 5
    .param p1, "multiSplitHandler"    # Lcom/samsung/android/multiwindow/MultiSplitHandler;

    .line 5421
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    const-string v1, " decor="

    if-eqz v0, :cond_31

    .line 5422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerMultiSplitHandler: already exist. old msh="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " new msh="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 5424
    return-void

    .line 5427
    :cond_31
    if-nez p1, :cond_4a

    .line 5428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerMultiSplitHandler: no exist. decor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 5429
    return-void

    .line 5432
    :cond_4a
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    .line 5434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerMultiSplitHandler: done. msh="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 5435
    return-void
.end method

.method public blacklist releaseActivityFocusIfNeeded()V
    .registers 4

    .line 6306
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 6307
    .local v0, "cb":Landroid/view/Window$Callback;
    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mStayFocus:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    if-eqz v0, :cond_1c

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1c

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v1, :cond_1c

    .line 6308
    invoke-interface {v0, v2}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    .line 6310
    :cond_1c
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mStayFocus:Z

    .line 6311
    return-void
.end method

.method blacklist removeBackgroundBlurDrawable()V
    .registers 4

    .line 2168
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 2169
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;

    .line 2170
    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeCrossWindowBlurEnabledListener(Ljava/util/function/Consumer;)V

    .line 2171
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;

    .line 2173
    :cond_18
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2174
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    .line 2175
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateBackgroundDrawable()V

    .line 2176
    return-void
.end method

.method public blacklist removeMultiSplitHandler()V
    .registers 4

    .line 5401
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    if-nez v0, :cond_1b

    .line 5402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeMultiSplitHandler: no exist. decor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 5403
    return-void

    .line 5406
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeMultiSplitHandler: on request. msh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " decor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 5408
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->removeOverlayHandlerWindow()V

    .line 5409
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 5410
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->removeView(Landroid/view/View;)V

    .line 5412
    :cond_4f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    .line 5414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeMultiSplitHandler: done. msh="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 5417
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    .line 5418
    return-void
.end method

.method public blacklist reportRestartNotificationHelpResult(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 6258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2) post run, window = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", token = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DecorView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6259
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->reportDexHelpShown(Landroid/os/IBinder;I)V

    .line 6260
    return-void
.end method

.method public blacklist requestKeyboardShortcuts(Ljava/util/List;I)V
    .registers 6
    .param p2, "deviceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;I)V"
        }
    .end annotation

    .line 4268
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/KeyboardShortcutGroup;>;"
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    .line 4269
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_c

    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    .line 4270
    .local v1, "menu":Landroid/view/Menu;
    :goto_d
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_26

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 4271
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    invoke-interface {v2, p1, v1, p2}, Landroid/view/Window$Callback;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    .line 4273
    :cond_26
    return-void
.end method

.method blacklist requestToggleFreeformWindowingMode()V
    .registers 1

    .line 4761
    return-void
.end method

.method public blacklist resetDecorViewStateIfNeeded()V
    .registers 3

    .line 4700
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mCaptionType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_13

    .line 4701
    const-string v1, "reset"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DecorCaptionView;->clearMaximizeRequested(Ljava/lang/String;)V

    .line 4702
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->updateButtonVisibility()V

    .line 4704
    :cond_13
    return-void
.end method

.method public blacklist resetMultiSplitHelpMode()V
    .registers 2

    .line 5594
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHelpMode:I

    .line 5595
    return-void
.end method

.method public blacklist resolveLayoutDirection()Z
    .registers 4

    .line 841
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getLayoutDirection()I

    move-result v0

    .line 842
    .local v0, "oldLayoutDirection":I
    invoke-super {p0}, Landroid/widget/FrameLayout;->resolveLayoutDirection()Z

    move-result v1

    .line 843
    .local v1, "rt":Z
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getMultiSplitActions()Lcom/samsung/android/multiwindow/MultiSplitActions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isEmbeddedMode()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getLayoutDirection()I

    move-result v2

    if-eq v0, v2, :cond_1c

    .line 844
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/internal/policy/DecorView;->updateElevation(Z)V

    .line 846
    :cond_1c
    return v1
.end method

.method public blacklist semGetWindowContext()Landroid/content/Context;
    .registers 2

    .line 6183
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return-object v0
.end method

.method public whitelist semSetRoundedCorners(I)V
    .registers 3
    .param p1, "corners"    # I

    .line 5342
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mForceRoundedCorner:Z

    .line 5343
    iput p1, p0, Lcom/android/internal/policy/DecorView;->mRoundedCornerMode:I

    .line 5344
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->semSetRoundedCorners(I)V

    .line 5345
    return-void
.end method

.method public whitelist sendAccessibilityEvent(I)V
    .registers 4
    .param p1, "eventType"    # I

    .line 1241
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1242
    return-void

    .line 1248
    :cond_d
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-eqz v0, :cond_1a

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2a

    .line 1252
    :cond_1a
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2a

    .line 1253
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_2d

    .line 1255
    :cond_2a
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    .line 1257
    :goto_2d
    return-void
.end method

.method blacklist setBackgroundBlurRadius(I)V
    .registers 4
    .param p1, "blurRadius"    # I

    .line 2148
    iput p1, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundBlurRadius:I

    .line 2149
    if-lez p1, :cond_2e

    .line 2150
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;

    if-nez v0, :cond_2a

    .line 2151
    new-instance v0, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/policy/DecorView;)V

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;

    .line 2155
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;

    .line 2156
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->addCrossWindowBlurEnabledListener(Ljava/util/function/Consumer;)V

    .line 2157
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_38

    .line 2159
    :cond_2a
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateBackgroundBlurRadius()V

    goto :goto_38

    .line 2161
    :cond_2e
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;

    if-eqz v0, :cond_38

    .line 2162
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateBackgroundBlurRadius()V

    .line 2163
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->removeBackgroundBlurDrawable()V

    .line 2165
    :cond_38
    :goto_38
    return-void
.end method

.method public whitelist setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 1740
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1741
    return-void
.end method

.method blacklist setBackgroundFallback(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "fallbackDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 822
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/BackgroundFallback;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 823
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    invoke-virtual {v0}, Lcom/android/internal/widget/BackgroundFallback;->hasFallback()Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->setWillNotDraw(Z)V

    .line 824
    return-void
.end method

.method public blacklist setCaptionType(I)V
    .registers 4
    .param p1, "captionType"    # I

    .line 4600
    iput p1, p0, Lcom/android/internal/policy/DecorView;->mCaptionType:I

    .line 4601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCaptionType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mCaptionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DecorView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4602
    return-void
.end method

.method public blacklist setDexNonResizeableAppRestartHelpMode(Landroid/os/IBinder;I)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "mode"    # I

    .line 6248
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    const-string v1, "DecorView"

    if-eqz v0, :cond_2b

    .line 6249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDexNonResizeableAppRestartHelpMode : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", at : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6251
    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1) setDexNonResizeableAppRestartHelpMode, mWindow = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", token = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6252
    const/4 v0, 0x1

    if-ne p2, v0, :cond_52

    .line 6253
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mRestartNotiHelpToken:Landroid/os/IBinder;

    .line 6255
    :cond_52
    return-void
.end method

.method public blacklist setDisplayCutoutBackgroundColor(I)V
    .registers 3
    .param p1, "color"    # I

    .line 5802
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mCalledDisplayCutoutBackgroundColor:Z

    .line 5803
    iput p1, p0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundColor:I

    .line 5804
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->requestApplyInsets()V

    .line 5805
    return-void
.end method

.method protected blacklist setFrame(IIII)Z
    .registers 13
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .line 1272
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setFrame(IIII)Z

    move-result v0

    .line 1273
    .local v0, "changed":Z
    if-eqz v0, :cond_65

    .line 1274
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDrawingBounds:Landroid/graphics/Rect;

    .line 1275
    .local v1, "drawingBounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1277
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1278
    .local v2, "fg":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_5c

    .line 1279
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    .line 1280
    .local v3, "frameOffsets":Landroid/graphics/Rect;
    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 1281
    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 1282
    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 1283
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 1284
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1285
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    .line 1286
    .local v4, "framePadding":Landroid/graphics/Rect;
    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 1287
    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    iget v7, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 1288
    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v6, v4, Landroid/graphics/Rect;->right:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    sub-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 1289
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    sub-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 1293
    .end local v3    # "frameOffsets":Landroid/graphics/Rect;
    .end local v4    # "framePadding":Landroid/graphics/Rect;
    :cond_5c
    invoke-super {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1294
    .local v3, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_65

    .line 1295
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1312
    .end local v1    # "drawingBounds":Landroid/graphics/Rect;
    .end local v2    # "fg":Landroid/graphics/drawable/Drawable;
    .end local v3    # "bg":Landroid/graphics/drawable/Drawable;
    :cond_65
    return v0
.end method

.method public blacklist setLastBackgroundResource(I)V
    .registers 2
    .param p1, "redId"    # I

    .line 5973
    iput p1, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundResource:I

    .line 5974
    return-void
.end method

.method public blacklist setMultiSplitHelpMode(I)V
    .registers 4
    .param p1, "helpMode"    # I

    .line 5583
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1c

    .line 5584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMultiSplitHelpMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DecorView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5586
    :cond_1c
    iput p1, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHelpMode:I

    .line 5587
    return-void
.end method

.method public whitelist setOutlineProvider(Landroid/view/ViewOutlineProvider;)V
    .registers 2
    .param p1, "provider"    # Landroid/view/ViewOutlineProvider;

    .line 2561
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 2564
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mLastOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 2565
    return-void
.end method

.method public blacklist setOverrideRoundedCornerBounds(Landroid/graphics/Rect;)Z
    .registers 3
    .param p1, "outRoundedCornerBounds"    # Landroid/graphics/Rect;

    .line 5349
    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mOverrideRoundedCornerBounds:Landroid/graphics/Rect;

    .line 5351
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 5352
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mOverrideRoundedCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5353
    const/4 v0, 0x1

    return v0

    .line 5355
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setParentWindow(Landroid/view/Window;)V
    .registers 2
    .param p1, "window"    # Landroid/view/Window;

    .line 4811
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mParentWindow:Landroid/view/Window;

    .line 4812
    return-void
.end method

.method public blacklist setSurfaceFormat(I)V
    .registers 3
    .param p1, "format"    # I

    .line 2969
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->setFormat(I)V

    .line 2970
    return-void
.end method

.method public blacklist setSurfaceKeepScreenOn(Z)V
    .registers 4
    .param p1, "keepOn"    # Z

    .line 2973
    const/16 v0, 0x80

    if-eqz p1, :cond_a

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/PhoneWindow;->addFlags(I)V

    goto :goto_f

    .line 2974
    :cond_a
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/PhoneWindow;->clearFlags(I)V

    .line 2975
    :goto_f
    return-void
.end method

.method public blacklist setSurfaceType(I)V
    .registers 3
    .param p1, "type"    # I

    .line 2965
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->setType(I)V

    .line 2966
    return-void
.end method

.method public whitelist setSystemUiVisibility(I)V
    .registers 4
    .param p1, "visibility"    # I

    .line 4889
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 4891
    nop

    .line 4892
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getSystemUiVisibility()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWindowSystemUiVisibility()I

    move-result v1

    or-int/2addr v0, v1

    .line 4891
    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->checkImmersiveModeBySystemUiVisibility(I)Z

    move-result v0

    .line 4893
    .local v0, "isImmersiveMode":Z
    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->setKnoxBadgeStateForImmersive(Z)V

    .line 4895
    return-void
.end method

.method blacklist setUserCaptionBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 4241
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 4242
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-eqz v0, :cond_9

    .line 4243
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/BackdropFrameRenderer;->setUserCaptionBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4245
    :cond_9
    return-void
.end method

.method public whitelist setVisibility(I)V
    .registers 4
    .param p1, "visibility"    # I

    .line 4409
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4412
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isMultiSplitHandlerRequested()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 4413
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    if-eqz v0, :cond_15

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mVisibility:I

    if-eq v1, p1, :cond_15

    .line 4414
    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->setVisibility(I)V

    goto :goto_1c

    .line 4416
    :cond_15
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->addMultiSplitHandler()V

    goto :goto_1c

    .line 4419
    :cond_19
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->removeMultiSplitHandler()V

    .line 4422
    :goto_1c
    iput p1, p0, Lcom/android/internal/policy/DecorView;->mVisibility:I

    .line 4424
    return-void
.end method

.method blacklist setWindow(Lcom/android/internal/policy/PhoneWindow;)V
    .registers 5
    .param p1, "phoneWindow"    # Lcom/android/internal/policy/PhoneWindow;

    .line 3218
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 3219
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3220
    .local v0, "context":Landroid/content/Context;
    instance-of v1, v0, Lcom/android/internal/policy/DecorContext;

    if-eqz v1, :cond_12

    .line 3221
    move-object v1, v0

    check-cast v1, Lcom/android/internal/policy/DecorContext;

    .line 3222
    .local v1, "decorContext":Lcom/android/internal/policy/DecorContext;
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/DecorContext;->setPhoneWindow(Lcom/android/internal/policy/PhoneWindow;)V

    .line 3224
    .end local v1    # "decorContext":Lcom/android/internal/policy/DecorContext;
    :cond_12
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPendingWindowBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1e

    .line 3225
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPendingWindowBackground:Landroid/graphics/drawable/Drawable;

    .line 3226
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mPendingWindowBackground:Landroid/graphics/drawable/Drawable;

    .line 3227
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3230
    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    :cond_1e
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    if-eqz v1, :cond_2b

    .line 3231
    new-instance v1, Lcom/samsung/android/multiwindow/MultiSplitActions;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v1, v2}, Lcom/samsung/android/multiwindow/MultiSplitActions;-><init>(Landroid/view/Window;)V

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    .line 3233
    :cond_2b
    return-void
.end method

.method public blacklist setWindowBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 7
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1701
    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_e

    .line 1702
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundColor:I

    goto :goto_43

    .line 1703
    :cond_e
    instance-of v0, p1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_29

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 1704
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundColor:I

    goto :goto_43

    .line 1706
    :cond_29
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/util/SemViewUtils;->isLightTheme(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1707
    const v1, 0x10602ba

    goto :goto_3c

    .line 1708
    :cond_39
    const v1, 0x10602bb

    :goto_3c
    const/4 v2, 0x0

    .line 1706
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundColor:I

    .line 1710
    :goto_43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setWindowBackground: isPopOver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundColor:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DecorView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    if-nez v0, :cond_7f

    .line 1713
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mPendingWindowBackground:Landroid/graphics/drawable/Drawable;

    .line 1714
    return-void

    .line 1716
    :cond_7f
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_d9

    .line 1717
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1718
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateBackgroundDrawable()V

    .line 1719
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_a4

    .line 1720
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 1721
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isTranslucent()Z

    move-result v2

    if-nez v2, :cond_9c

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isShowingWallpaper()Z

    move-result v2

    if-eqz v2, :cond_9d

    :cond_9c
    move v0, v1

    .line 1720
    :cond_9d
    invoke-static {p1, v0}, Lcom/android/internal/policy/DecorView;->enforceNonTranslucentBackground(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_c3

    .line 1723
    :cond_a4
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 1725
    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->isTranslucent()Z

    move-result v4

    if-nez v4, :cond_bc

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->isShowingWallpaper()Z

    move-result v4

    if-eqz v4, :cond_bd

    :cond_bc
    move v0, v1

    .line 1723
    :cond_bd
    invoke-static {v2, v3, v0}, Lcom/android/internal/policy/DecorView;->getResizingBackgroundDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1727
    :goto_c3
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_cd

    .line 1728
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_d2

    .line 1730
    :cond_cd
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1732
    :goto_d2
    sget-boolean v0, Landroid/view/View;->sBrokenWindowBackground:Z

    if-nez v0, :cond_d9

    .line 1733
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    .line 1736
    :cond_d9
    return-void
.end method

.method public blacklist setWindowFrame(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1744
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_19

    .line 1745
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 1746
    if-eqz p1, :cond_11

    .line 1747
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_16

    .line 1749
    :cond_11
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1751
    :goto_16
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    .line 1753
    :cond_19
    return-void
.end method

.method blacklist shouldAnimatePrimaryActionModeView()Z
    .registers 2

    .line 3146
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isLaidOut()Z

    move-result v0

    return v0
.end method

.method public whitelist showContextMenuForChild(Landroid/view/View;)Z
    .registers 3
    .param p1, "originalView"    # Landroid/view/View;

    .line 1550
    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-direct {p0, p1, v0, v0}, Lcom/android/internal/policy/DecorView;->showContextMenuForChildInternal(Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public whitelist showContextMenuForChild(Landroid/view/View;FF)Z
    .registers 5
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 1555
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/DecorView;->showContextMenuForChildInternal(Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public whitelist startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .line 1609
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/DecorView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public whitelist startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 4
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .line 1614
    invoke-direct {p0, p0, p1, p2}, Lcom/android/internal/policy/DecorView;->startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public whitelist startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 4
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .line 1598
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/policy/DecorView;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public whitelist startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "type"    # I

    .line 1604
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/DecorView;->startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method blacklist startChanging()V
    .registers 2

    .line 1691
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mChanging:Z

    .line 1692
    return-void
.end method

.method public blacklist superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1124
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public blacklist superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1093
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_16

    .line 1094
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 1096
    .local v0, "action":I
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_16

    .line 1097
    if-ne v0, v1, :cond_15

    .line 1098
    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    .line 1100
    :cond_15
    return v1

    .line 1104
    .end local v0    # "action":I
    :cond_16
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1105
    return v1

    .line 1108
    :cond_1d
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchUnhandledKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2e

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x0

    :goto_2f
    return v1
.end method

.method public blacklist superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1112
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public blacklist superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1116
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public blacklist superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1120
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 4299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DecorView@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 4300
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/DecorView;->getTitleSuffix(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4299
    return-object v0
.end method

.method public blacklist unregisterMultiSplitHandler(Lcom/samsung/android/multiwindow/MultiSplitHandler;)V
    .registers 5
    .param p1, "multiSplitHandler"    # Lcom/samsung/android/multiwindow/MultiSplitHandler;

    .line 5438
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    const-string v1, " decor="

    if-eq v0, p1, :cond_31

    .line 5439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterMultiSplitHandler: An unreleased handler exists. old msh="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " new msh="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 5443
    :cond_31
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    if-nez v0, :cond_4d

    .line 5444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterMultiSplitHandler: no exist. decor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 5445
    return-void

    .line 5448
    :cond_4d
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    .line 5450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterMultiSplitHandler: done. msh="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 5451
    return-void
.end method

.method public blacklist updateCaptionState(IZ)V
    .registers 4
    .param p1, "captionState"    # I
    .param p2, "overlay"    # Z

    .line 4948
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mCaptionType:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_1d

    .line 4956
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCompatWindow:Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;

    if-eqz v0, :cond_1d

    .line 4957
    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->updateCaptionState(I)V

    goto :goto_1d

    .line 4950
    :pswitch_e
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_1d

    .line 4951
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/DecorCaptionView;->updateCaptionState(IZ)V

    .line 4952
    if-eqz p1, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->enableCaption(Z)V

    .line 4961
    :cond_1d
    :goto_1d
    return-void

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_e
        :pswitch_6
    .end packed-switch
.end method

.method blacklist updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;
    .registers 32
    .param p1, "insets"    # Landroid/view/WindowInsets;
    .param p2, "animate"    # Z

    .line 1883
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    .line 1884
    .local v13, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v0, v13, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getWindowSystemUiVisibility()I

    move-result v1

    or-int v14, v0, v1

    .line 1886
    .local v14, "sysUiVisibility":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v15

    .line 1889
    .local v15, "controller":Landroid/view/WindowInsetsController;
    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 1890
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v10, 0x1

    const/16 v1, 0x7db

    if-ne v0, v1, :cond_25

    move v0, v10

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    move/from16 v16, v0

    .line 1891
    .local v16, "isImeWindow":Z
    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    const/high16 v17, -0x80000000

    if-eqz v0, :cond_37

    if-eqz v16, :cond_33

    goto :goto_37

    :cond_33
    move-object/from16 v18, v13

    goto/16 :goto_200

    .line 1892
    :cond_37
    :goto_37
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->isLaidOut()Z

    move-result v0

    xor-int/2addr v0, v10

    .line 1893
    .local v0, "disallowAnimate":Z
    iget v1, v11, Lcom/android/internal/policy/DecorView;->mLastWindowFlags:I

    iget v2, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int/2addr v1, v2

    and-int v1, v1, v17

    if-eqz v1, :cond_47

    move v1, v10

    goto :goto_48

    :cond_47
    const/4 v1, 0x0

    :goto_48
    or-int/2addr v0, v1

    .line 1895
    iget v1, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v1, v11, Lcom/android/internal/policy/DecorView;->mLastWindowFlags:I

    .line 1897
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v8

    .line 1898
    .local v8, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v8, :cond_5a

    .line 1899
    iget-object v1, v8, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v1, v1, Landroid/view/InsetsFlags;->appearance:I

    goto :goto_5e

    .line 1900
    :cond_5a
    invoke-interface {v15}, Landroid/view/WindowInsetsController;->getSystemBarsAppearance()I

    move-result v1

    :goto_5e
    move v7, v1

    .line 1902
    .local v7, "appearance":I
    if-eqz v12, :cond_103

    .line 1903
    iget v1, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v2, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1904
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v3

    .line 1903
    invoke-static {v1, v2, v3}, Landroid/view/InsetsState;->clearsCompatInsets(III)Z

    move-result v1

    .line 1905
    .local v1, "clearsCompatInsets":Z
    nop

    .line 1906
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v2

    .line 1905
    invoke-virtual {v12, v2}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v2

    .line 1907
    .local v2, "stableBarInsets":Landroid/graphics/Insets;
    if-eqz v1, :cond_85

    .line 1908
    sget-object v3, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    goto :goto_96

    .line 1909
    :cond_85
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v3

    .line 1910
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v4

    or-int/2addr v3, v4

    .line 1909
    invoke-virtual {v12, v3}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/graphics/Insets;->min(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v3

    :goto_96
    nop

    .line 1911
    .local v3, "systemInsets":Landroid/graphics/Insets;
    iget v4, v3, Landroid/graphics/Insets;->top:I

    iput v4, v11, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    .line 1912
    iget v4, v3, Landroid/graphics/Insets;->bottom:I

    iput v4, v11, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    .line 1913
    iget v4, v3, Landroid/graphics/Insets;->right:I

    iput v4, v11, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    .line 1914
    iget v4, v3, Landroid/graphics/Insets;->left:I

    iput v4, v11, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    .line 1916
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v4

    .line 1917
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v5

    or-int/2addr v4, v5

    .line 1916
    invoke-virtual {v12, v4}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v4

    iput-object v4, v11, Lcom/android/internal/policy/DecorView;->mKnoxBadgeInsets:Landroid/graphics/Insets;

    .line 1922
    iget v4, v2, Landroid/graphics/Insets;->top:I

    if-eqz v4, :cond_bc

    move v4, v10

    goto :goto_bd

    :cond_bc
    const/4 v4, 0x0

    .line 1923
    .local v4, "hasTopStableInset":Z
    :goto_bd
    iget-boolean v5, v11, Lcom/android/internal/policy/DecorView;->mLastHasTopStableInset:Z

    if-eq v4, v5, :cond_c3

    move v5, v10

    goto :goto_c4

    :cond_c3
    const/4 v5, 0x0

    :goto_c4
    or-int/2addr v0, v5

    .line 1924
    iput-boolean v4, v11, Lcom/android/internal/policy/DecorView;->mLastHasTopStableInset:Z

    .line 1926
    iget v5, v2, Landroid/graphics/Insets;->bottom:I

    if-eqz v5, :cond_cd

    move v5, v10

    goto :goto_ce

    :cond_cd
    const/4 v5, 0x0

    .line 1927
    .local v5, "hasBottomStableInset":Z
    :goto_ce
    iget-boolean v6, v11, Lcom/android/internal/policy/DecorView;->mLastHasBottomStableInset:Z

    if-eq v5, v6, :cond_d4

    move v6, v10

    goto :goto_d5

    :cond_d4
    const/4 v6, 0x0

    :goto_d5
    or-int/2addr v0, v6

    .line 1928
    iput-boolean v5, v11, Lcom/android/internal/policy/DecorView;->mLastHasBottomStableInset:Z

    .line 1930
    iget v6, v2, Landroid/graphics/Insets;->right:I

    if-eqz v6, :cond_de

    move v6, v10

    goto :goto_df

    :cond_de
    const/4 v6, 0x0

    .line 1931
    .local v6, "hasRightStableInset":Z
    :goto_df
    iget-boolean v9, v11, Lcom/android/internal/policy/DecorView;->mLastHasRightStableInset:Z

    if-eq v6, v9, :cond_e5

    move v9, v10

    goto :goto_e6

    :cond_e5
    const/4 v9, 0x0

    :goto_e6
    or-int/2addr v0, v9

    .line 1932
    iput-boolean v6, v11, Lcom/android/internal/policy/DecorView;->mLastHasRightStableInset:Z

    .line 1934
    iget v9, v2, Landroid/graphics/Insets;->left:I

    if-eqz v9, :cond_ef

    move v9, v10

    goto :goto_f0

    :cond_ef
    const/4 v9, 0x0

    .line 1935
    .local v9, "hasLeftStableInset":Z
    :goto_f0
    iget-boolean v10, v11, Lcom/android/internal/policy/DecorView;->mLastHasLeftStableInset:Z

    if-eq v9, v10, :cond_f6

    const/4 v10, 0x1

    goto :goto_f7

    :cond_f6
    const/4 v10, 0x0

    :goto_f7
    or-int/2addr v0, v10

    .line 1936
    iput-boolean v9, v11, Lcom/android/internal/policy/DecorView;->mLastHasLeftStableInset:Z

    .line 1938
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->shouldAlwaysConsumeSystemBars()Z

    move-result v10

    iput-boolean v10, v11, Lcom/android/internal/policy/DecorView;->mLastShouldAlwaysConsumeSystemBars:Z

    .line 1939
    .end local v1    # "clearsCompatInsets":Z
    .end local v2    # "stableBarInsets":Landroid/graphics/Insets;
    .end local v3    # "systemInsets":Landroid/graphics/Insets;
    .end local v4    # "hasTopStableInset":Z
    .end local v5    # "hasBottomStableInset":Z
    .end local v6    # "hasRightStableInset":Z
    .end local v9    # "hasLeftStableInset":Z
    move/from16 v20, v0

    goto :goto_109

    .line 1941
    :cond_103
    const/4 v1, 0x0

    invoke-direct {v11, v1}, Lcom/android/internal/policy/DecorView;->updateDisplayCutoutBackground(Landroid/view/WindowInsets;)V

    move/from16 v20, v0

    .line 1945
    .end local v0    # "disallowAnimate":Z
    .local v20, "disallowAnimate":Z
    :goto_109
    iget v0, v11, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    iget v1, v11, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    invoke-static {v0, v1}, Lcom/android/internal/policy/DecorView;->isNavBarToRightEdge(II)Z

    move-result v21

    .line 1946
    .local v21, "navBarToRightEdge":Z
    iget v0, v11, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    iget v1, v11, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    invoke-static {v0, v1}, Lcom/android/internal/policy/DecorView;->isNavBarToLeftEdge(II)Z

    move-result v22

    .line 1947
    .local v22, "navBarToLeftEdge":Z
    iget v0, v11, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    iget v1, v11, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    iget v2, v11, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/DecorView;->getNavBarSize(III)I

    move-result v10

    .line 1948
    .local v10, "navBarSize":I
    iget-object v1, v11, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    invoke-direct {v11, v7}, Lcom/android/internal/policy/DecorView;->calculateNavigationBarColor(I)I

    move-result v2

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v3, v0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarDividerColor:I

    if-nez v21, :cond_134

    if-eqz v22, :cond_132

    goto :goto_134

    :cond_132
    const/4 v5, 0x0

    goto :goto_135

    :cond_134
    :goto_134
    const/4 v5, 0x1

    :goto_135
    const/4 v9, 0x0

    if-eqz p2, :cond_13d

    if-nez v20, :cond_13d

    const/16 v23, 0x1

    goto :goto_13f

    :cond_13d
    const/16 v23, 0x0

    :goto_13f
    iget-boolean v6, v11, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsBarBackgrounds:Z

    move-object/from16 v0, p0

    move v4, v10

    move/from16 v24, v6

    move/from16 v6, v22

    move v12, v7

    .end local v7    # "appearance":I
    .local v12, "appearance":I
    move v7, v9

    move-object/from16 v25, v8

    .end local v8    # "viewRoot":Landroid/view/ViewRootImpl;
    .local v25, "viewRoot":Landroid/view/ViewRootImpl;
    move/from16 v8, v23

    move/from16 v9, v24

    move-object/from16 v18, v13

    move v13, v10

    .end local v10    # "navBarSize":I
    .local v13, "navBarSize":I
    .local v18, "attrs":Landroid/view/WindowManager$LayoutParams;
    move-object v10, v15

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/policy/DecorView;->updateColorViewInt(Lcom/android/internal/policy/DecorView$ColorViewState;IIIZZIZZLandroid/view/WindowInsetsController;)V

    .line 1953
    iget-boolean v10, v11, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackground:Z

    .line 1954
    .local v10, "oldDrawLegacy":Z
    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-boolean v0, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    if-eqz v0, :cond_16d

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 1955
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v0, v0, v17

    if-nez v0, :cond_16d

    const/4 v0, 0x1

    goto :goto_16e

    :cond_16d
    const/4 v0, 0x0

    :goto_16e
    iput-boolean v0, v11, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackground:Z

    .line 1957
    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v9, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    .line 1959
    .local v9, "navigationView":Landroid/view/View;
    iget-boolean v0, v11, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackground:Z

    if-ne v10, v0, :cond_193

    if-eqz v9, :cond_1a2

    .line 1962
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_182

    const/4 v0, 0x1

    goto :goto_183

    :cond_182
    const/4 v0, 0x0

    :goto_183
    iget-object v1, v11, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-boolean v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    if-ne v0, v1, :cond_193

    iget-boolean v0, v11, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackground:Z

    if-eqz v0, :cond_1a2

    .line 1963
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eq v0, v13, :cond_1a2

    .line 1965
    :cond_193
    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v1, v11, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackground:Z

    .line 1966
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->onDrawLegacyNavigationBarBackgroundChanged(Z)Z

    move-result v0

    iput-boolean v0, v11, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackgroundHandled:Z

    .line 1968
    if-eqz v25, :cond_1a2

    .line 1969
    invoke-virtual/range {v25 .. v25}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    .line 1973
    :cond_1a2
    if-eqz v21, :cond_1ac

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-boolean v0, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->present:Z

    if-eqz v0, :cond_1ac

    const/4 v0, 0x1

    goto :goto_1ad

    :cond_1ac
    const/4 v0, 0x0

    :goto_1ad
    move/from16 v23, v0

    .line 1975
    .local v23, "statusBarNeedsRightInset":Z
    if-eqz v22, :cond_1b9

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-boolean v0, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->present:Z

    if-eqz v0, :cond_1b9

    const/4 v0, 0x1

    goto :goto_1ba

    :cond_1b9
    const/4 v0, 0x0

    :goto_1ba
    move/from16 v24, v0

    .line 1977
    .local v24, "statusBarNeedsLeftInset":Z
    if-eqz v23, :cond_1c2

    iget v0, v11, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    move v7, v0

    goto :goto_1c9

    .line 1978
    :cond_1c2
    if-eqz v24, :cond_1c8

    iget v0, v11, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    move v7, v0

    goto :goto_1c9

    :cond_1c8
    const/4 v7, 0x0

    :goto_1c9
    nop

    .line 1979
    .local v7, "statusBarSideInset":I
    invoke-direct {v11, v12}, Lcom/android/internal/policy/DecorView;->calculateStatusBarColor(I)I

    move-result v26

    .line 1980
    .local v26, "statusBarColor":I
    iget-object v1, v11, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    const/4 v3, 0x0

    iget v4, v11, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    const/4 v5, 0x0

    if-eqz p2, :cond_1da

    if-nez v20, :cond_1da

    const/4 v8, 0x1

    goto :goto_1db

    :cond_1da
    const/4 v8, 0x0

    :goto_1db
    iget-boolean v6, v11, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsBarBackgrounds:Z

    move-object/from16 v0, p0

    move/from16 v2, v26

    move/from16 v27, v6

    move/from16 v6, v24

    move-object/from16 v28, v9

    .end local v9    # "navigationView":Landroid/view/View;
    .local v28, "navigationView":Landroid/view/View;
    move/from16 v9, v27

    move/from16 v27, v10

    .end local v10    # "oldDrawLegacy":Z
    .local v27, "oldDrawLegacy":Z
    move-object v10, v15

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/policy/DecorView;->updateColorViewInt(Lcom/android/internal/policy/DecorView$ColorViewState;IIIZZIZZLandroid/view/WindowInsetsController;)V

    .line 1985
    iget-boolean v0, v11, Lcom/android/internal/policy/DecorView;->mHasCaption:Z

    if-eqz v0, :cond_200

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_200

    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->getCaption()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_200

    .line 1989
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->updateDecorCaptionShade()V

    .line 2003
    .end local v7    # "statusBarSideInset":I
    .end local v12    # "appearance":I
    .end local v13    # "navBarSize":I
    .end local v20    # "disallowAnimate":Z
    .end local v21    # "navBarToRightEdge":Z
    .end local v22    # "navBarToLeftEdge":Z
    .end local v23    # "statusBarNeedsRightInset":Z
    .end local v24    # "statusBarNeedsLeftInset":Z
    .end local v25    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v26    # "statusBarColor":I
    .end local v27    # "oldDrawLegacy":Z
    .end local v28    # "navigationView":Landroid/view/View;
    :cond_200
    :goto_200
    and-int/lit8 v0, v14, 0x2

    if-nez v0, :cond_211

    if-eqz v15, :cond_20e

    .line 2004
    const/4 v0, 0x1

    invoke-interface {v15, v0}, Landroid/view/WindowInsetsController;->isRequestedVisible(I)Z

    move-result v1

    if-nez v1, :cond_20f

    goto :goto_212

    .line 2003
    :cond_20e
    const/4 v0, 0x1

    .line 2004
    :cond_20f
    const/4 v10, 0x0

    goto :goto_213

    .line 2003
    :cond_211
    const/4 v0, 0x1

    .line 2004
    :goto_212
    move v10, v0

    :goto_213
    move v1, v10

    .line 2005
    .local v1, "hideNavigation":Z
    iget-object v2, v11, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v2, v2, Lcom/android/internal/policy/PhoneWindow;->mDecorFitsSystemWindows:Z

    .line 2006
    .local v2, "decorFitsSystemWindows":Z
    iget-boolean v3, v11, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsBarBackgrounds:Z

    if-eqz v3, :cond_22d

    move-object/from16 v3, v18

    .end local v18    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v3, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v4, v4, v17

    if-nez v4, :cond_22f

    and-int/lit16 v4, v14, 0x200

    if-nez v4, :cond_22f

    if-eqz v2, :cond_22f

    if-eqz v1, :cond_235

    goto :goto_22f

    .end local v3    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v18    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_22d
    move-object/from16 v3, v18

    .end local v18    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v3    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_22f
    :goto_22f
    iget-boolean v4, v11, Lcom/android/internal/policy/DecorView;->mLastShouldAlwaysConsumeSystemBars:Z

    if-eqz v4, :cond_237

    if-eqz v1, :cond_237

    :cond_235
    move v10, v0

    goto :goto_238

    :cond_237
    const/4 v10, 0x0

    :goto_238
    move v4, v10

    .line 2013
    .local v4, "forceConsumingNavBar":Z
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v5, v5, v17

    if-eqz v5, :cond_247

    and-int/lit16 v5, v14, 0x200

    if-nez v5, :cond_247

    if-eqz v2, :cond_247

    if-eqz v1, :cond_249

    :cond_247
    if-eqz v4, :cond_24b

    :cond_249
    move v10, v0

    goto :goto_24c

    :cond_24b
    const/4 v10, 0x0

    :goto_24c
    move v5, v10

    .line 2024
    .local v5, "consumingNavBar":Z
    and-int/lit8 v6, v14, 0x4

    if-nez v6, :cond_264

    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v6, v6, 0x400

    if-nez v6, :cond_264

    if-eqz v15, :cond_261

    .line 2026
    const/4 v6, 0x0

    invoke-interface {v15, v6}, Landroid/view/WindowInsetsController;->isRequestedVisible(I)Z

    move-result v7

    if-nez v7, :cond_262

    goto :goto_265

    .line 2024
    :cond_261
    const/4 v6, 0x0

    .line 2026
    :cond_262
    move v10, v6

    goto :goto_266

    .line 2024
    :cond_264
    const/4 v6, 0x0

    .line 2026
    :goto_265
    move v10, v0

    :goto_266
    move v7, v10

    .line 2027
    .local v7, "fullscreen":Z
    and-int/lit16 v8, v14, 0x400

    if-nez v8, :cond_282

    if-eqz v2, :cond_282

    iget v8, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v8, v8, 0x100

    if-nez v8, :cond_282

    iget v8, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v9, 0x10000

    and-int/2addr v8, v9

    if-nez v8, :cond_282

    iget-boolean v8, v11, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsBarBackgrounds:Z

    if-eqz v8, :cond_282

    iget v8, v11, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    if-nez v8, :cond_288

    :cond_282
    iget-boolean v8, v11, Lcom/android/internal/policy/DecorView;->mLastShouldAlwaysConsumeSystemBars:Z

    if-eqz v8, :cond_28a

    if-eqz v7, :cond_28a

    :cond_288
    move v10, v0

    goto :goto_28b

    :cond_28a
    move v10, v6

    :goto_28b
    move v0, v10

    .line 2035
    .local v0, "consumingStatusBar":Z
    if-eqz v0, :cond_291

    iget v9, v11, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    goto :goto_292

    :cond_291
    move v9, v6

    :goto_292
    move v8, v9

    .line 2036
    .local v8, "consumedTop":I
    if-eqz v5, :cond_298

    iget v9, v11, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    goto :goto_299

    :cond_298
    move v9, v6

    .line 2037
    .local v9, "consumedRight":I
    :goto_299
    if-eqz v5, :cond_29e

    iget v10, v11, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    goto :goto_29f

    :cond_29e
    move v10, v6

    .line 2038
    .local v10, "consumedBottom":I
    :goto_29f
    if-eqz v5, :cond_2a4

    iget v12, v11, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    goto :goto_2a5

    :cond_2a4
    move v12, v6

    .line 2040
    .local v12, "consumedLeft":I
    :goto_2a5
    iget-object v13, v11, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    if-eqz v13, :cond_2eb

    .line 2041
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    instance-of v13, v13, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v13, :cond_2e8

    .line 2042
    iget-object v13, v11, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2043
    .local v13, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v6, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v6, v8, :cond_2cd

    iget v6, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-ne v6, v9, :cond_2cd

    iget v6, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-ne v6, v10, :cond_2cd

    iget v6, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-eq v6, v12, :cond_2ca

    goto :goto_2cd

    :cond_2ca
    move-object/from16 v6, p1

    goto :goto_2e1

    .line 2045
    :cond_2cd
    :goto_2cd
    iput v8, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2046
    iput v9, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 2047
    iput v10, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 2048
    iput v12, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2049
    iget-object v6, v11, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v6, v13}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2051
    move-object/from16 v6, p1

    if-nez v6, :cond_2e1

    .line 2054
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->requestApplyInsets()V

    .line 2057
    :cond_2e1
    :goto_2e1
    if-eqz v6, :cond_2ed

    .line 2058
    invoke-virtual {v6, v12, v8, v9, v10}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object v6

    .end local p1    # "insets":Landroid/view/WindowInsets;
    .local v6, "insets":Landroid/view/WindowInsets;
    goto :goto_2ed

    .line 2041
    .end local v6    # "insets":Landroid/view/WindowInsets;
    .end local v13    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local p1    # "insets":Landroid/view/WindowInsets;
    :cond_2e8
    move-object/from16 v6, p1

    goto :goto_2ed

    .line 2040
    :cond_2eb
    move-object/from16 v6, p1

    .line 2062
    .end local p1    # "insets":Landroid/view/WindowInsets;
    .restart local v6    # "insets":Landroid/view/WindowInsets;
    :cond_2ed
    :goto_2ed
    if-eqz v4, :cond_309

    if-nez v1, :cond_309

    iget-boolean v13, v11, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackgroundHandled:Z

    if-nez v13, :cond_309

    .line 2063
    iget v13, v11, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    move/from16 v17, v0

    .end local v0    # "consumingStatusBar":Z
    .local v17, "consumingStatusBar":Z
    iget v0, v11, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    move/from16 v18, v1

    .end local v1    # "hideNavigation":Z
    .local v18, "hideNavigation":Z
    iget v1, v11, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    move/from16 v19, v2

    const/4 v2, 0x0

    .end local v2    # "decorFitsSystemWindows":Z
    .local v19, "decorFitsSystemWindows":Z
    invoke-static {v13, v2, v0, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, v11, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    goto :goto_313

    .line 2062
    .end local v17    # "consumingStatusBar":Z
    .end local v18    # "hideNavigation":Z
    .end local v19    # "decorFitsSystemWindows":Z
    .restart local v0    # "consumingStatusBar":Z
    .restart local v1    # "hideNavigation":Z
    .restart local v2    # "decorFitsSystemWindows":Z
    :cond_309
    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    .line 2065
    .end local v0    # "consumingStatusBar":Z
    .end local v1    # "hideNavigation":Z
    .end local v2    # "decorFitsSystemWindows":Z
    .restart local v17    # "consumingStatusBar":Z
    .restart local v18    # "hideNavigation":Z
    .restart local v19    # "decorFitsSystemWindows":Z
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, v11, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    .line 2067
    :goto_313
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->updateBackgroundDrawable()V

    .line 2069
    return-object v6
.end method

.method blacklist updateDecorCaptionShade()V
    .registers 2

    .line 3790
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_7

    .line 3791
    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->setDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V

    .line 3793
    :cond_7
    return-void
.end method

.method blacklist updateLogTag(Landroid/view/WindowManager$LayoutParams;)V
    .registers 4
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 4260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DecorView["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/policy/DecorView;->getTitleSuffix(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    .line 4261
    return-void
.end method

.method public blacklist updatePictureInPictureOutlineProvider(Z)V
    .registers 4
    .param p1, "isInPictureInPictureMode"    # Z

    .line 2538
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsInPictureInPictureMode:Z

    if-ne v0, p1, :cond_5

    .line 2539
    return-void

    .line 2542
    :cond_5
    if-eqz p1, :cond_1b

    .line 2543
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 2544
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v0

    .line 2545
    .local v0, "callback":Landroid/view/Window$WindowControllerCallback;
    if-eqz v0, :cond_1a

    invoke-interface {v0}, Landroid/view/Window$WindowControllerCallback;->isTaskRoot()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2548
    sget-object v1, Lcom/android/internal/policy/DecorView;->PIP_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 2550
    .end local v0    # "callback":Landroid/view/Window$WindowControllerCallback;
    :cond_1a
    goto :goto_26

    .line 2552
    :cond_1b
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mLastOutlineProvider:Landroid/view/ViewOutlineProvider;

    if-eq v0, v1, :cond_26

    .line 2553
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 2556
    :cond_26
    :goto_26
    iput-boolean p1, p0, Lcom/android/internal/policy/DecorView;->mIsInPictureInPictureMode:Z

    .line 2557
    return-void
.end method

.method public blacklist willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;
    .registers 2

    .line 2961
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public blacklist willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;
    .registers 2

    .line 2957
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method
