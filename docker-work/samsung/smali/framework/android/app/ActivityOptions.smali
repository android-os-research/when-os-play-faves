.class public Landroid/app/ActivityOptions;
.super Landroid/app/ComponentOptions;
.source "ActivityOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityOptions$SourceInfo;,
        Landroid/app/ActivityOptions$OnAnimationFinishedListener;,
        Landroid/app/ActivityOptions$OnAnimationStartedListener;
    }
.end annotation


# static fields
.field public static final greylist-max-o ANIM_CLIP_REVEAL:I = 0xb

.field public static final greylist-max-o ANIM_CUSTOM:I = 0x1

.field public static final blacklist ANIM_CUSTOM_DISPLAY_CHANGE:I = 0xf

.field public static final greylist-max-o ANIM_CUSTOM_IN_PLACE:I = 0xa

.field public static final greylist-max-o ANIM_DEFAULT:I = 0x6

.field public static final blacklist ANIM_FROM_STYLE:I = 0xe

.field public static final greylist-max-o ANIM_LAUNCH_TASK_BEHIND:I = 0x7

.field public static final greylist-max-o ANIM_NONE:I = 0x0

.field public static final greylist-max-o ANIM_OPEN_CROSS_PROFILE_APPS:I = 0xc

.field public static final greylist-max-o ANIM_REMOTE_ANIMATION:I = 0xd

.field public static final greylist-max-o ANIM_SCALE_UP:I = 0x2

.field public static final greylist-max-o ANIM_SCENE_TRANSITION:I = 0x5

.field public static final greylist-max-o ANIM_THUMBNAIL_ASPECT_SCALE_DOWN:I = 0x9

.field public static final greylist-max-o ANIM_THUMBNAIL_ASPECT_SCALE_UP:I = 0x8

.field public static final greylist-max-o ANIM_THUMBNAIL_SCALE_DOWN:I = 0x4

.field public static final greylist-max-o ANIM_THUMBNAIL_SCALE_UP:I = 0x3

.field public static final blacklist ANIM_UNDEFINED:I = -0x1

.field private static final blacklist END:I = 0x2

.field public static final whitelist EXTRA_USAGE_TIME_REPORT:Ljava/lang/String; = "android.activity.usage_time"

.field public static final whitelist EXTRA_USAGE_TIME_REPORT_PACKAGES:Ljava/lang/String; = "android.usage_time_packages"

.field public static final blacklist INVALID_ML_TYPE:I = -0x1

.field private static final blacklist KEY_ACTIVE_LAUNCH_HINT:Ljava/lang/String; = "android:activity.isActiveLaunch"

.field private static final blacklist KEY_ACTIVITY_EMBEDDED_PLACEHOLDER:Ljava/lang/String; = "android:activity.activityEmbeddedPlaceholder"

.field private static final greylist-max-o KEY_ANIMATION_FINISHED_LISTENER:Ljava/lang/String; = "android:activity.animationFinishedListener"

.field public static final blacklist KEY_ANIM_BACKGROUND_COLOR:Ljava/lang/String; = "android:activity.backgroundColor"

.field public static final greylist-max-o KEY_ANIM_ENTER_RES_ID:Ljava/lang/String; = "android:activity.animEnterRes"

.field public static final greylist-max-o KEY_ANIM_EXIT_RES_ID:Ljava/lang/String; = "android:activity.animExitRes"

.field public static final greylist-max-o KEY_ANIM_HEIGHT:Ljava/lang/String; = "android:activity.animHeight"

.field public static final greylist-max-o KEY_ANIM_IN_PLACE_RES_ID:Ljava/lang/String; = "android:activity.animInPlaceRes"

.field private static final greylist-max-o KEY_ANIM_SPECS:Ljava/lang/String; = "android:activity.animSpecs"

.field public static final greylist-max-o KEY_ANIM_START_LISTENER:Ljava/lang/String; = "android:activity.animStartListener"

.field public static final greylist-max-o KEY_ANIM_START_X:Ljava/lang/String; = "android:activity.animStartX"

.field public static final greylist-max-o KEY_ANIM_START_Y:Ljava/lang/String; = "android:activity.animStartY"

.field public static final greylist-max-o KEY_ANIM_THUMBNAIL:Ljava/lang/String; = "android:activity.animThumbnail"

.field public static final greylist-max-o KEY_ANIM_TYPE:Ljava/lang/String; = "android:activity.animType"

.field public static final greylist-max-o KEY_ANIM_WIDTH:Ljava/lang/String; = "android:activity.animWidth"

.field private static final blacklist KEY_APPLY_ACTIVITY_FLAGS_FOR_BUBBLES:Ljava/lang/String; = "android:activity.applyActivityFlagsForBubbles"

.field private static final blacklist KEY_APPLY_BIG_FREEFORM_SIZE:Ljava/lang/String; = "android:activity.applyBigFreeformSize"

.field private static final greylist-max-o KEY_AVOID_MOVE_TO_FRONT:Ljava/lang/String; = "android.activity.avoidMoveToFront"

.field private static final blacklist KEY_CALLER_DISPLAY_ID:Ljava/lang/String; = "android.activity.callerDisplayId"

.field private static final greylist-max-o KEY_DISALLOW_ENTER_PICTURE_IN_PICTURE_WHILE_LAUNCHING:Ljava/lang/String; = "android:activity.disallowEnterPictureInPictureWhileLaunching"

.field private static final blacklist KEY_DISMISS_KEYGUARD_IF_INSECURE:Ljava/lang/String; = "android.activity.dismissKeyguardIfInsecure"

.field private static final blacklist KEY_DISMISS_SPLIT_BEFORE_LAUNCH:Ljava/lang/String; = "android:activity.dismissSplitBeforeLaunch"

.field private static final blacklist KEY_ENTER_SPLIT_SIDE_WITH_ADJACENT_FLAG:Ljava/lang/String; = "android:activity.enterSplitSideWithAdjacentFlag"

.field private static final greylist-max-o KEY_EXIT_COORDINATOR_INDEX:Ljava/lang/String; = "android:activity.exitCoordinatorIndex"

.field private static final blacklist KEY_FORCE_LAUNCH_WINDOWING_MODE:Ljava/lang/String; = "android.activity.forceWindowingMode"

.field private static final blacklist KEY_FREEZE_RECENT_TASKS_REORDERING:Ljava/lang/String; = "android.activity.freezeRecentTasksReordering"

.field private static final blacklist KEY_IGNORE_PENDING_INTENT_CREATOR_FOREGROUND_STATE:Ljava/lang/String; = "android.activity.ignorePendingIntentCreatorForegroundState"

.field private static final greylist-max-o KEY_INSTANT_APP_VERIFICATION_BUNDLE:Ljava/lang/String; = "android:instantapps.installerbundle"

.field private static final blacklist KEY_LAUNCHED_FROM_BUBBLE:Ljava/lang/String; = "android.activity.launchTypeBubble"

.field private static final blacklist KEY_LAUNCHED_FROM_DND:Ljava/lang/String; = "android.activity.launchTypeDnD"

.field private static final greylist-max-o KEY_LAUNCH_ACTIVITY_TYPE:Ljava/lang/String; = "android.activity.activityType"

.field public static final greylist-max-o KEY_LAUNCH_BOUNDS:Ljava/lang/String; = "android:activity.launchBounds"

.field public static final blacklist KEY_LAUNCH_COOKIE:Ljava/lang/String; = "android.activity.launchCookie"

.field private static final greylist-max-o KEY_LAUNCH_DISPLAY_ID:Ljava/lang/String; = "android.activity.launchDisplayId"

.field private static final blacklist KEY_LAUNCH_INTO_PIP_PARAMS:Ljava/lang/String; = "android.activity.launchIntoPipParams"

.field public static final blacklist KEY_LAUNCH_ROOT_TASK_TOKEN:Ljava/lang/String; = "android.activity.launchRootTaskToken"

.field private static final blacklist KEY_LAUNCH_TASK_DISPLAY_AREA_TOKEN:Ljava/lang/String; = "android.activity.launchTaskDisplayAreaToken"

.field public static final blacklist KEY_LAUNCH_TASK_FRAGMENT_TOKEN:Ljava/lang/String; = "android.activity.launchTaskFragmentToken"

.field private static final greylist-max-o KEY_LAUNCH_TASK_ID:Ljava/lang/String; = "android.activity.launchTaskId"

.field private static final greylist-max-o KEY_LAUNCH_WINDOWING_MODE:Ljava/lang/String; = "android.activity.windowingMode"

.field public static final blacklist KEY_LEGACY_PERMISSION_PROMPT_ELIGIBLE:Ljava/lang/String; = "android:activity.legacyPermissionPromptEligible"

.field private static final greylist-max-o KEY_LOCK_TASK_MODE:Ljava/lang/String; = "android:activity.lockTaskMode"

.field private static final blacklist KEY_ML_LAUNCH_HINT:Ljava/lang/String; = "android:activity.isMlLaunch"

.field private static final blacklist KEY_OVERRIDE_TASK_TRANSITION:Ljava/lang/String; = "android:activity.overrideTaskTransition"

.field public static final greylist-max-o KEY_PACKAGE_NAME:Ljava/lang/String; = "android:activity.packageName"

.field private static final blacklist KEY_PENDING_INTENT_LAUNCH_FLAGS:Ljava/lang/String; = "android.activity.pendingIntentLaunchFlags"

.field private static final blacklist KEY_POP_OVER:Ljava/lang/String; = "android:activity.popOver"

.field private static final blacklist KEY_POP_OVER_ALLOW_OUTSIDE_TOUCH:Ljava/lang/String; = "android:activity.popOverAllowOutsideTouch"

.field private static final blacklist KEY_POP_OVER_ANCHOR:Ljava/lang/String; = "android:activity.popOverAnchor"

.field private static final blacklist KEY_POP_OVER_ANCHOR_POSITION:Ljava/lang/String; = "android:activity.popOverAnchorPosition"

.field private static final blacklist KEY_POP_OVER_ANIMATION_PACKAGE_NAME:Ljava/lang/String; = "android:activity.popOverAnimationPackageName"

.field private static final blacklist KEY_POP_OVER_ENTER_RES_ID:Ljava/lang/String; = "android:activity.popOverEnterResId"

.field private static final blacklist KEY_POP_OVER_EXIT_RES_ID:Ljava/lang/String; = "android:activity.popOverExitResId"

.field private static final blacklist KEY_POP_OVER_HEIGHT:Ljava/lang/String; = "android:activity.popOverHeight"

.field private static final blacklist KEY_POP_OVER_HEIGHT_WEIGHT:Ljava/lang/String; = "android:activity.popOverHeightWeight"

.field private static final blacklist KEY_POP_OVER_INHERIT_CLOSE_ENTER_RES_ID:Ljava/lang/String; = "android:activity.popOverInheritCloseEnterResId"

.field private static final blacklist KEY_POP_OVER_INHERIT_CLOSE_EXIT_RES_ID:Ljava/lang/String; = "android:activity.popOverInheritCloseExitResId"

.field private static final blacklist KEY_POP_OVER_INHERIT_OPEN_ENTER_RES_ID:Ljava/lang/String; = "android:activity.popOverInheritOpenEnterResId"

.field private static final blacklist KEY_POP_OVER_INHERIT_OPEN_EXIT_RES_ID:Ljava/lang/String; = "android:activity.popOverInheritOpenExitResId"

.field private static final blacklist KEY_POP_OVER_INHERIT_OPTIONS:Ljava/lang/String; = "android:activity.popOverInheritOptions"

.field private static final blacklist KEY_POP_OVER_REMOVE_DEFAULT_MARGIN:Ljava/lang/String; = "android:activity.popOverRemoveDefaultMargin"

.field private static final blacklist KEY_POP_OVER_REMOVE_OUTLINE_EFFECT:Ljava/lang/String; = "android:activity.popOverRemoveOutlineEffect"

.field private static final blacklist KEY_POP_OVER_WIDTH:Ljava/lang/String; = "android:activity.popOverWidth"

.field private static final blacklist KEY_POP_OVER_WIDTH_WEIGHT:Ljava/lang/String; = "android:activity.popOverWidthWeight"

.field private static final blacklist KEY_PRESERVE_TASK_WINDOWING_MODE:Ljava/lang/String; = "android.activity.preserveTaskWindowingMode"

.field private static final greylist-max-o KEY_REMOTE_ANIMATION_ADAPTER:Ljava/lang/String; = "android:activity.remoteAnimationAdapter"

.field private static final blacklist KEY_REMOTE_TRANSITION:Ljava/lang/String; = "android:activity.remoteTransition"

.field private static final blacklist KEY_REMOVE_WITH_TASK_ORGANIZER:Ljava/lang/String; = "android.activity.removeWithTaskOrganizer"

.field private static final blacklist KEY_REPARENT_CELL:Ljava/lang/String; = "android:activity.reparentCell"

.field private static final greylist-max-o KEY_RESULT_CODE:Ljava/lang/String; = "android:activity.resultCode"

.field private static final greylist-max-o KEY_RESULT_DATA:Ljava/lang/String; = "android:activity.resultData"

.field private static final blacklist KEY_RESUMED_AFFORDANCE_ANIMATION_REQUESTED:Ljava/lang/String; = "android:activity.resumedAffordanceAnimationRequested"

.field private static final greylist-max-o KEY_ROTATION_ANIMATION_HINT:Ljava/lang/String; = "android:activity.rotationAnimationHint"

.field private static final blacklist KEY_SOURCE_INFO:Ljava/lang/String; = "android.activity.sourceInfo"

.field private static final greylist-max-o KEY_SPECS_FUTURE:Ljava/lang/String; = "android:activity.specsFuture"

.field private static final blacklist KEY_SPLASH_SCREEN_STYLE:Ljava/lang/String; = "android.activity.splashScreenStyle"

.field public static final blacklist KEY_SPLASH_SCREEN_THEME:Ljava/lang/String; = "android.activity.splashScreenTheme"

.field private static final blacklist KEY_SPLIT_POSITION:Ljava/lang/String; = "android.activity.splitPosition"

.field private static final greylist-max-o KEY_SPLIT_SCREEN_CREATE_MODE:Ljava/lang/String; = "android:activity.splitScreenCreateMode"

.field public static final blacklist KEY_STARTED_BY_MDM_ADMIN:Ljava/lang/String; = "edm:activity.startedByMDMAdmin"

.field public static final blacklist KEY_STARTED_FROM_WINDOW_TYPE_LAUNCHER:Ljava/lang/String; = "android:activity.startedFromWindowTypeLauncher"

.field private static final blacklist KEY_TASK_ALWAYS_ON_TOP:Ljava/lang/String; = "android.activity.alwaysOnTop"

.field private static final greylist-max-o KEY_TASK_OVERLAY:Ljava/lang/String; = "android.activity.taskOverlay"

.field private static final greylist-max-o KEY_TASK_OVERLAY_CAN_RESUME:Ljava/lang/String; = "android.activity.taskOverlayCanResume"

.field private static final blacklist KEY_TRANSIENT_LAUNCH:Ljava/lang/String; = "android.activity.transientLaunch"

.field private static final greylist-max-o KEY_TRANSITION_COMPLETE_LISTENER:Ljava/lang/String; = "android:activity.transitionCompleteListener"

.field private static final greylist-max-o KEY_TRANSITION_IS_RETURNING:Ljava/lang/String; = "android:activity.transitionIsReturning"

.field private static final greylist-max-o KEY_TRANSITION_SHARED_ELEMENTS:Ljava/lang/String; = "android:activity.sharedElementNames"

.field private static final greylist-max-o KEY_USAGE_TIME_REPORT:Ljava/lang/String; = "android:activity.usageTimeReport"

.field private static final blacklist LAND:I = 0x0

.field public static final blacklist ML_TYPE_EMPTY_PROCESS:I = 0x1

.field public static final blacklist ML_TYPE_NAP_PROCESS:I = 0x0

.field public static final blacklist ML_TYPE_SEEDBED_PROCESS:I = 0x2

.field public static final blacklist POP_OVER_ANCHOR_HORIZONTAL_MASK:I = 0x370

.field public static final blacklist POP_OVER_ANCHOR_POSITION_HORIZONTAL_END:I = 0x200

.field public static final blacklist POP_OVER_ANCHOR_POSITION_HORIZONTAL_START:I = 0x100

.field public static final blacklist POP_OVER_ANCHOR_VERTICAL_MASK:I = 0x7

.field private static final blacklist POP_OVER_CHOOSER_BOTTOM_MARGIN_DP:I = 0x2c

.field private static final blacklist POP_OVER_CHOOSER_HEIGHT_DP:I = 0x168

.field private static final blacklist POP_OVER_CHOOSER_WIDTH_DP:I = 0x168

.field public static final blacklist POP_OVER_HORIZONTAL_MASK:I = 0x70

.field public static final blacklist POP_OVER_VERTICAL_MASK:I = 0x7

.field private static final blacklist PORT:I = 0x1

.field public static final whitelist SEM_POP_OVER_ANCHOR_POSITION_HORIZONTAL_CENTER:I = 0x40

.field public static final whitelist SEM_POP_OVER_ANCHOR_POSITION_HORIZONTAL_LEFT:I = 0x10

.field public static final whitelist SEM_POP_OVER_ANCHOR_POSITION_HORIZONTAL_RIGHT:I = 0x20

.field public static final whitelist SEM_POP_OVER_ANCHOR_POSITION_VERTICAL_BOTTOM:I = 0x2

.field public static final whitelist SEM_POP_OVER_ANCHOR_POSITION_VERTICAL_CENTER:I = 0x4

.field public static final whitelist SEM_POP_OVER_ANCHOR_POSITION_VERTICAL_TOP:I = 0x1

.field public static final whitelist SEM_POP_OVER_POSITION_HORIZONTAL_CENTER:I = 0x40

.field public static final whitelist SEM_POP_OVER_POSITION_HORIZONTAL_LEFT:I = 0x10

.field public static final whitelist SEM_POP_OVER_POSITION_HORIZONTAL_RIGHT:I = 0x20

.field public static final whitelist SEM_POP_OVER_POSITION_VERTICAL_BOTTOM:I = 0x2

.field public static final whitelist SEM_POP_OVER_POSITION_VERTICAL_CENTER:I = 0x4

.field public static final whitelist SEM_POP_OVER_POSITION_VERTICAL_TOP:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ActivityOptions"


# instance fields
.field private greylist-max-o mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

.field private greylist-max-o mAnimationFinishedListener:Landroid/os/IRemoteCallback;

.field private greylist-max-o mAnimationStartedListener:Landroid/os/IRemoteCallback;

.field private greylist-max-o mAnimationType:I

.field private greylist-max-o mAppVerificationBundle:Landroid/os/Bundle;

.field private blacklist mApplyActivityFlagsForBubbles:Z

.field private blacklist mApplyBigFreeformSize:Z

.field private greylist-max-o mAvoidMoveToFront:Z

.field private blacklist mCallerDisplayId:I

.field private blacklist mCustomBackgroundColor:I

.field private greylist-max-o mCustomEnterResId:I

.field private greylist-max-o mCustomExitResId:I

.field private greylist-max-o mCustomInPlaceResId:I

.field private greylist-max-o mDisallowEnterPictureInPictureWhileLaunching:Z

.field private blacklist mDismissKeyguardIfInsecure:Z

.field private blacklist mDismissSplitBeforeLaunch:Z

.field private blacklist mEnterSplitSideWithAdjacentFlag:I

.field private greylist-max-o mExitCoordinatorIndex:I

.field private blacklist mForceLaunchWindowingMode:I

.field private blacklist mFreezeRecentTasksReordering:Z

.field private greylist-max-o mHeight:I

.field private blacklist mIgnorePendingIntentCreatorForegroundState:Z

.field private blacklist mIsActiveApplaunch:Z

.field private blacklist mIsActivityEmbeddedPlaceholder:Z

.field private blacklist mIsEligibleForLegacyPermissionPrompt:Z

.field private blacklist mIsMlLaunch:I

.field private blacklist mIsPopOver:Z

.field private greylist-max-o mIsReturning:Z

.field private blacklist mIsStartedFromWindowTypeLauncher:Z

.field private greylist-max-o mLaunchActivityType:I

.field private greylist-max-o mLaunchBounds:Landroid/graphics/Rect;

.field private blacklist mLaunchCookie:Landroid/os/IBinder;

.field private greylist-max-o mLaunchDisplayId:I

.field private blacklist mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

.field private blacklist mLaunchRootTask:Landroid/window/WindowContainerToken;

.field private blacklist mLaunchTaskDisplayArea:Landroid/window/WindowContainerToken;

.field private blacklist mLaunchTaskFragmentToken:Landroid/os/IBinder;

.field private greylist-max-o mLaunchTaskId:I

.field private greylist-max-o mLaunchWindowingMode:I

.field private blacklist mLaunchedFromBubble:Z

.field private blacklist mLaunchedFromDnD:Z

.field private greylist-max-o mLockTaskMode:Z

.field private blacklist mNeedToReparentCell:Z

.field private blacklist mOverrideTaskTransition:Z

.field private greylist-max-o mPackageName:Ljava/lang/String;

.field private blacklist mPendingIntentLaunchFlags:I

.field public blacklist mPopOverAllowOutsideTouch:Z

.field public blacklist mPopOverAnchorMarginDp:[Landroid/graphics/Point;

.field public blacklist mPopOverAnchorPosition:[I

.field public blacklist mPopOverAnimationPackageName:Ljava/lang/String;

.field public blacklist mPopOverEnterResId:I

.field public blacklist mPopOverExitResId:I

.field public blacklist mPopOverHeightDp:[I

.field public blacklist mPopOverHeightWeight:[F

.field public blacklist mPopOverInheritCloseEnterResId:I

.field public blacklist mPopOverInheritCloseExitResId:I

.field public blacklist mPopOverInheritOpenEnterResId:I

.field public blacklist mPopOverInheritOpenExitResId:I

.field public blacklist mPopOverInheritOptions:Z

.field public blacklist mPopOverRemoveDefaultMargin:Z

.field public blacklist mPopOverRemoveOutlineEffect:Z

.field public blacklist mPopOverWidthDp:[I

.field public blacklist mPopOverWidthWeight:[F

.field private blacklist mPreserveTaskWindowingMode:Z

.field private greylist-max-o mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

.field private blacklist mRemoteTransition:Landroid/window/RemoteTransition;

.field private blacklist mRemoveWithTaskOrganizer:Z

.field private greylist-max-o mResultCode:I

.field private greylist-max-o mResultData:Landroid/content/Intent;

.field private blacklist mResumedAffordanceAnimationRequested:Z

.field private greylist-max-o mRotationAnimationHint:I

.field private greylist-max-o mSharedElementNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSourceInfo:Landroid/app/ActivityOptions$SourceInfo;

.field private greylist-max-o mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

.field private blacklist mSplashScreenStyle:I

.field private blacklist mSplashScreenThemeResName:Ljava/lang/String;

.field private blacklist mSplitPosition:I

.field private greylist-max-o mSplitScreenCreateMode:I

.field private greylist-max-o mStartX:I

.field private greylist-max-o mStartY:I

.field private blacklist mStartedByMDMAdmin:Z

.field private blacklist mTaskAlwaysOnTop:Z

.field private greylist-max-o mTaskOverlay:Z

.field private greylist-max-o mTaskOverlayCanResume:Z

.field private greylist-max-o mThumbnail:Landroid/graphics/Bitmap;

.field private blacklist mTransientLaunch:Z

.field private greylist-max-o mTransitionReceiver:Landroid/os/ResultReceiver;

.field private greylist-max-o mUsageTimeReport:Landroid/app/PendingIntent;

.field private greylist-max-o mWidth:I


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 3

    .line 1320
    invoke-direct {p0}, Landroid/app/ComponentOptions;-><init>()V

    .line 513
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 529
    iput v0, p0, Landroid/app/ActivityOptions;->mIsMlLaunch:I

    .line 536
    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    .line 537
    iput v0, p0, Landroid/app/ActivityOptions;->mCallerDisplayId:I

    .line 541
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/ActivityOptions;->mLaunchWindowingMode:I

    .line 543
    iput v1, p0, Landroid/app/ActivityOptions;->mLaunchActivityType:I

    .line 545
    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    .line 547
    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    .line 557
    iput v0, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    .line 565
    iput v0, p0, Landroid/app/ActivityOptions;->mSplashScreenStyle:I

    .line 580
    iput v1, p0, Landroid/app/ActivityOptions;->mForceLaunchWindowingMode:I

    .line 597
    iput v1, p0, Landroid/app/ActivityOptions;->mSplitPosition:I

    .line 598
    iput v0, p0, Landroid/app/ActivityOptions;->mSplitScreenCreateMode:I

    .line 599
    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mNeedToReparentCell:Z

    .line 603
    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mLaunchedFromDnD:Z

    .line 607
    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mIsActivityEmbeddedPlaceholder:Z

    .line 3061
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/app/ActivityOptions;->mPopOverWidthDp:[I

    .line 3063
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/app/ActivityOptions;->mPopOverHeightDp:[I

    .line 3065
    new-array v1, v0, [Landroid/graphics/Point;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mPopOverAnchorMarginDp:[Landroid/graphics/Point;

    .line 3067
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/app/ActivityOptions;->mPopOverAnchorPosition:[I

    .line 3069
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mPopOverInheritOptions:Z

    .line 1321
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Bundle;)V
    .registers 12
    .param p1, "opts"    # Landroid/os/Bundle;

    .line 1325
    invoke-direct {p0, p1}, Landroid/app/ComponentOptions;-><init>(Landroid/os/Bundle;)V

    .line 513
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 529
    iput v0, p0, Landroid/app/ActivityOptions;->mIsMlLaunch:I

    .line 536
    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    .line 537
    iput v0, p0, Landroid/app/ActivityOptions;->mCallerDisplayId:I

    .line 541
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/ActivityOptions;->mLaunchWindowingMode:I

    .line 543
    iput v1, p0, Landroid/app/ActivityOptions;->mLaunchActivityType:I

    .line 545
    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    .line 547
    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    .line 557
    iput v0, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    .line 565
    iput v0, p0, Landroid/app/ActivityOptions;->mSplashScreenStyle:I

    .line 580
    iput v1, p0, Landroid/app/ActivityOptions;->mForceLaunchWindowingMode:I

    .line 597
    iput v1, p0, Landroid/app/ActivityOptions;->mSplitPosition:I

    .line 598
    iput v0, p0, Landroid/app/ActivityOptions;->mSplitScreenCreateMode:I

    .line 599
    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mNeedToReparentCell:Z

    .line 603
    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mLaunchedFromDnD:Z

    .line 607
    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mIsActivityEmbeddedPlaceholder:Z

    .line 3061
    const/4 v2, 0x2

    new-array v3, v2, [I

    iput-object v3, p0, Landroid/app/ActivityOptions;->mPopOverWidthDp:[I

    .line 3063
    new-array v3, v2, [I

    iput-object v3, p0, Landroid/app/ActivityOptions;->mPopOverHeightDp:[I

    .line 3065
    new-array v3, v2, [Landroid/graphics/Point;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mPopOverAnchorMarginDp:[Landroid/graphics/Point;

    .line 3067
    new-array v2, v2, [I

    iput-object v2, p0, Landroid/app/ActivityOptions;->mPopOverAnchorPosition:[I

    .line 3069
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/ActivityOptions;->mPopOverInheritOptions:Z

    .line 1327
    const-string v3, "android:activity.packageName"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 1329
    :try_start_41
    const-string v3, "android:activity.usageTimeReport"

    const-class v4, Landroid/app/PendingIntent;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;
    :try_end_4d
    .catch Ljava/lang/RuntimeException; {:try_start_41 .. :try_end_4d} :catch_4e

    .line 1332
    goto :goto_54

    .line 1330
    :catch_4e
    move-exception v3

    .line 1331
    .local v3, "e":Ljava/lang/RuntimeException;
    const-string v4, "ActivityOptions"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1333
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :goto_54
    const-string v3, "android:activity.launchBounds"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    .line 1334
    const-string v3, "android:activity.animType"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1335
    const-string v4, "android:activity.animHeight"

    const-string v5, "android:activity.animWidth"

    const-string v6, "android:activity.animStartY"

    const-string v7, "android:activity.animStartX"

    const-string v8, "android:activity.animStartListener"

    packed-switch v3, :pswitch_data_40c

    :pswitch_73
    goto/16 :goto_126

    .line 1345
    :pswitch_75
    const-string v3, "android:activity.animInPlaceRes"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    .line 1346
    goto/16 :goto_126

    .line 1374
    :pswitch_7f
    const-string v3, "android:activity.transitionCompleteListener"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    .line 1375
    const-string v3, "android:activity.transitionIsReturning"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    .line 1376
    const-string v3, "android:activity.sharedElementNames"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    .line 1377
    const-string v3, "android:activity.resultData"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    .line 1378
    const-string v3, "android:activity.resultCode"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mResultCode:I

    .line 1379
    const-string v3, "android:activity.exitCoordinatorIndex"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    goto :goto_126

    .line 1361
    :pswitch_b4
    const-string v3, "android:activity.animThumbnail"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/hardware/HardwareBuffer;

    .line 1362
    .local v3, "buffer":Landroid/hardware/HardwareBuffer;
    if-eqz v3, :cond_c5

    .line 1363
    const/4 v9, 0x0

    invoke-static {v3, v9}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 1365
    :cond_c5
    invoke-virtual {p1, v7, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Landroid/app/ActivityOptions;->mStartX:I

    .line 1366
    invoke-virtual {p1, v6, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Landroid/app/ActivityOptions;->mStartY:I

    .line 1367
    invoke-virtual {p1, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Landroid/app/ActivityOptions;->mWidth:I

    .line 1368
    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/app/ActivityOptions;->mHeight:I

    .line 1369
    nop

    .line 1370
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 1369
    invoke-static {v4}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v4

    iput-object v4, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 1371
    goto :goto_126

    .line 1350
    .end local v3    # "buffer":Landroid/hardware/HardwareBuffer;
    :pswitch_e9
    invoke-virtual {p1, v7, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mStartX:I

    .line 1351
    invoke-virtual {p1, v6, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mStartY:I

    .line 1352
    invoke-virtual {p1, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mWidth:I

    .line 1353
    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mHeight:I

    .line 1354
    goto :goto_126

    .line 1337
    :pswitch_102
    const-string v3, "android:activity.animEnterRes"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    .line 1338
    const-string v3, "android:activity.animExitRes"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    .line 1339
    const-string v3, "android:activity.backgroundColor"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mCustomBackgroundColor:I

    .line 1340
    nop

    .line 1341
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 1340
    invoke-static {v3}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 1342
    nop

    .line 1382
    :goto_126
    const-string v3, "android:activity.lockTaskMode"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    .line 1383
    const-string v3, "android.activity.launchDisplayId"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    .line 1384
    const-string v3, "android.activity.callerDisplayId"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mCallerDisplayId:I

    .line 1385
    const-string v3, "android.activity.launchTaskDisplayAreaToken"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/window/WindowContainerToken;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayArea:Landroid/window/WindowContainerToken;

    .line 1386
    const-string v3, "android.activity.launchRootTaskToken"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/window/WindowContainerToken;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    .line 1387
    const-string v3, "android.activity.launchTaskFragmentToken"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityOptions;->mLaunchTaskFragmentToken:Landroid/os/IBinder;

    .line 1388
    const-string v3, "android.activity.windowingMode"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mLaunchWindowingMode:I

    .line 1389
    const-string v3, "android.activity.activityType"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mLaunchActivityType:I

    .line 1390
    const-string v3, "android.activity.launchTaskId"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    .line 1391
    const-string v3, "android.activity.pendingIntentLaunchFlags"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mPendingIntentLaunchFlags:I

    .line 1392
    const-string v3, "android.activity.alwaysOnTop"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mTaskAlwaysOnTop:Z

    .line 1393
    const-string v3, "android.activity.taskOverlay"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    .line 1394
    const-string v3, "android.activity.taskOverlayCanResume"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mTaskOverlayCanResume:Z

    .line 1395
    const-string v3, "android.activity.avoidMoveToFront"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mAvoidMoveToFront:Z

    .line 1396
    const-string v3, "android.activity.freezeRecentTasksReordering"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mFreezeRecentTasksReordering:Z

    .line 1397
    const-string v3, "android:activity.disallowEnterPictureInPictureWhileLaunching"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mDisallowEnterPictureInPictureWhileLaunching:Z

    .line 1399
    const-string v3, "android:activity.applyActivityFlagsForBubbles"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mApplyActivityFlagsForBubbles:Z

    .line 1401
    const-string v3, "android:activity.animSpecs"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d2

    .line 1402
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 1403
    .local v3, "specs":[Landroid/os/Parcelable;
    array-length v4, v3

    new-array v4, v4, [Landroid/view/AppTransitionAnimationSpec;

    iput-object v4, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    .line 1404
    array-length v4, v3

    sub-int/2addr v4, v2

    .local v4, "i":I
    :goto_1c5
    if-ltz v4, :cond_1d2

    .line 1405
    iget-object v5, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    aget-object v6, v3, v4

    check-cast v6, Landroid/view/AppTransitionAnimationSpec;

    aput-object v6, v5, v4

    .line 1404
    add-int/lit8 v4, v4, -0x1

    goto :goto_1c5

    .line 1408
    .end local v3    # "specs":[Landroid/os/Parcelable;
    .end local v4    # "i":I
    :cond_1d2
    const-string v3, "android:activity.animationFinishedListener"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e5

    .line 1409
    nop

    .line 1410
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 1409
    invoke-static {v3}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    .line 1412
    :cond_1e5
    const-string v3, "android.activity.sourceInfo"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityOptions$SourceInfo;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mSourceInfo:Landroid/app/ActivityOptions$SourceInfo;

    .line 1413
    const-string v3, "android:activity.rotationAnimationHint"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    .line 1414
    const-string v3, "android:instantapps.installerbundle"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityOptions;->mAppVerificationBundle:Landroid/os/Bundle;

    .line 1415
    const-string v3, "android:activity.specsFuture"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_211

    .line 1416
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IAppTransitionAnimationSpecsFuture$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IAppTransitionAnimationSpecsFuture;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 1422
    :cond_211
    const-string v3, "android:activity.isActiveLaunch"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mIsActiveApplaunch:Z

    .line 1423
    const-string v3, "android:activity.isMlLaunch"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mIsMlLaunch:I

    .line 1429
    const-string v3, "edm:activity.startedByMDMAdmin"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mStartedByMDMAdmin:Z

    .line 1432
    const-string v3, "android:activity.remoteAnimationAdapter"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/view/RemoteAnimationAdapter;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 1433
    const-string v3, "android.activity.launchCookie"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityOptions;->mLaunchCookie:Landroid/os/IBinder;

    .line 1434
    const-string v3, "android:activity.remoteTransition"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/window/RemoteTransition;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    .line 1435
    const-string v3, "android:activity.overrideTaskTransition"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mOverrideTaskTransition:Z

    .line 1436
    const-string v3, "android.activity.splashScreenTheme"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityOptions;->mSplashScreenThemeResName:Ljava/lang/String;

    .line 1437
    const-string v3, "android.activity.removeWithTaskOrganizer"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mRemoveWithTaskOrganizer:Z

    .line 1438
    const-string v3, "android.activity.launchTypeBubble"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mLaunchedFromBubble:Z

    .line 1439
    const-string v3, "android.activity.transientLaunch"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mTransientLaunch:Z

    .line 1440
    const-string v3, "android.activity.splashScreenStyle"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mSplashScreenStyle:I

    .line 1441
    const-string v3, "android.activity.launchIntoPipParams"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/PictureInPictureParams;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    .line 1442
    nop

    .line 1443
    const-string v3, "android:activity.legacyPermissionPromptEligible"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mIsEligibleForLegacyPermissionPrompt:Z

    .line 1444
    const-string v3, "android.activity.dismissKeyguardIfInsecure"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mDismissKeyguardIfInsecure:Z

    .line 1445
    const-string v3, "android.activity.ignorePendingIntentCreatorForegroundState"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mIgnorePendingIntentCreatorForegroundState:Z

    .line 1449
    const-string v3, "android:activity.popOverWidth"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "android:activity.popOverInheritOptions"

    if-eqz v4, :cond_316

    .line 1450
    const-string v4, "android:activity.popOverHeight"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_316

    .line 1451
    const-string v6, "android:activity.popOverAnchor"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_316

    .line 1452
    const-string v7, "android:activity.popOverAnchorPosition"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_316

    .line 1453
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityOptions;->mPopOverWidthDp:[I

    .line 1454
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityOptions;->mPopOverHeightDp:[I

    .line 1455
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 1456
    .local v3, "parcelables":[Landroid/os/Parcelable;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2cb
    array-length v6, v3

    if-ge v4, v6, :cond_2d9

    .line 1457
    iget-object v6, p0, Landroid/app/ActivityOptions;->mPopOverAnchorMarginDp:[Landroid/graphics/Point;

    aget-object v8, v3, v4

    check-cast v8, Landroid/graphics/Point;

    aput-object v8, v6, v4

    .line 1456
    add-int/lit8 v4, v4, 0x1

    goto :goto_2cb

    .line 1459
    .end local v4    # "i":I
    :cond_2d9
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    iput-object v4, p0, Landroid/app/ActivityOptions;->mPopOverAnchorPosition:[I

    .line 1460
    const-string v4, "android:activity.popOver"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Landroid/app/ActivityOptions;->mIsPopOver:Z

    .line 1463
    const-string v4, "android:activity.popOverWidthWeight"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v4

    iput-object v4, p0, Landroid/app/ActivityOptions;->mPopOverWidthWeight:[F

    .line 1464
    const-string v4, "android:activity.popOverHeightWeight"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v4

    iput-object v4, p0, Landroid/app/ActivityOptions;->mPopOverHeightWeight:[F

    .line 1465
    const-string v4, "android:activity.popOverAllowOutsideTouch"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Landroid/app/ActivityOptions;->mPopOverAllowOutsideTouch:Z

    .line 1466
    const-string v4, "android:activity.popOverRemoveDefaultMargin"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Landroid/app/ActivityOptions;->mPopOverRemoveDefaultMargin:Z

    .line 1467
    const-string v4, "android:activity.popOverRemoveOutlineEffect"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Landroid/app/ActivityOptions;->mPopOverRemoveOutlineEffect:Z

    .line 1468
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Landroid/app/ActivityOptions;->mPopOverInheritOptions:Z

    .end local v3    # "parcelables":[Landroid/os/Parcelable;
    goto :goto_323

    .line 1470
    :cond_316
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_323

    .line 1471
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mPopOverInheritOptions:Z

    goto :goto_324

    .line 1470
    :cond_323
    :goto_323
    nop

    .line 1474
    :goto_324
    nop

    .line 1475
    const-string v3, "android:activity.popOverAnimationPackageName"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_363

    .line 1476
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityOptions;->mPopOverAnimationPackageName:Ljava/lang/String;

    .line 1477
    const-string v3, "android:activity.popOverEnterResId"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mPopOverEnterResId:I

    .line 1478
    const-string v3, "android:activity.popOverExitResId"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mPopOverExitResId:I

    .line 1479
    const-string v3, "android:activity.popOverInheritOpenEnterResId"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mPopOverInheritOpenEnterResId:I

    .line 1480
    const-string v3, "android:activity.popOverInheritOpenExitResId"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mPopOverInheritOpenExitResId:I

    .line 1481
    const-string v3, "android:activity.popOverInheritCloseEnterResId"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mPopOverInheritCloseEnterResId:I

    .line 1482
    const-string v3, "android:activity.popOverInheritCloseExitResId"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mPopOverInheritCloseExitResId:I

    .line 1485
    :cond_363
    const-string v3, "android:activity.startedFromWindowTypeLauncher"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_372

    .line 1486
    nop

    .line 1487
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mIsStartedFromWindowTypeLauncher:Z

    .line 1490
    :cond_372
    const-string v3, "android:activity.resumedAffordanceAnimationRequested"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_380

    .line 1492
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/ActivityOptions;->mResumedAffordanceAnimationRequested:Z

    .line 1496
    :cond_380
    nop

    .line 1497
    const-string v3, "android.activity.forceWindowingMode"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_390

    .line 1498
    nop

    .line 1499
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mForceLaunchWindowingMode:I

    .line 1502
    :cond_390
    const-string v3, "android:activity.applyBigFreeformSize"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_39f

    .line 1503
    nop

    .line 1504
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/ActivityOptions;->mApplyBigFreeformSize:Z

    .line 1508
    :cond_39f
    const-string v2, "android:activity.dismissSplitBeforeLaunch"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/ActivityOptions;->mDismissSplitBeforeLaunch:Z

    .line 1511
    const-string v2, "android.activity.preserveTaskWindowingMode"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b7

    .line 1513
    const-string v2, "android.activity.preserveTaskWindowingMode"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/ActivityOptions;->mPreserveTaskWindowingMode:Z

    .line 1517
    :cond_3b7
    const-string v2, "android.activity.splitPosition"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c7

    .line 1518
    const-string v2, "android.activity.splitPosition"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mSplitPosition:I

    .line 1520
    :cond_3c7
    const-string v2, "android:activity.splitScreenCreateMode"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d7

    .line 1521
    const-string v2, "android:activity.splitScreenCreateMode"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mSplitScreenCreateMode:I

    .line 1524
    :cond_3d7
    const-string v0, "android:activity.reparentCell"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e7

    .line 1525
    const-string v0, "android:activity.reparentCell"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mNeedToReparentCell:Z

    .line 1529
    :cond_3e7
    const-string v0, "android.activity.launchTypeDnD"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f7

    .line 1530
    const-string v0, "android.activity.launchTypeDnD"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mLaunchedFromDnD:Z

    .line 1533
    :cond_3f7
    const-string v0, "android:activity.enterSplitSideWithAdjacentFlag"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mEnterSplitSideWithAdjacentFlag:I

    .line 1536
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v0, :cond_40b

    .line 1537
    const-string v0, "android:activity.activityEmbeddedPlaceholder"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mIsActivityEmbeddedPlaceholder:Z

    .line 1541
    :cond_40b
    return-void

    :pswitch_data_40c
    .packed-switch 0x1
        :pswitch_102
        :pswitch_e9
        :pswitch_b4
        :pswitch_b4
        :pswitch_7f
        :pswitch_73
        :pswitch_73
        :pswitch_b4
        :pswitch_b4
        :pswitch_75
        :pswitch_e9
    .end packed-switch
.end method

.method public static greylist-max-o abort(Landroid/app/ActivityOptions;)V
    .registers 1
    .param p0, "options"    # Landroid/app/ActivityOptions;

    .line 1743
    if-eqz p0, :cond_5

    .line 1744
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->abort()V

    .line 1746
    :cond_5
    return-void
.end method

.method public static greylist-max-o fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;
    .registers 2
    .param p0, "bOptions"    # Landroid/os/Bundle;

    .line 1738
    if-eqz p0, :cond_8

    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0, p0}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method

.method private static greylist-max-o makeAspectScaledThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;
    .registers 12
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "targetWidth"    # I
    .param p5, "targetHeight"    # I
    .param p6, "handler"    # Landroid/os/Handler;
    .param p7, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .param p8, "scaleUp"    # Z

    .line 1012
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1013
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 1014
    if-eqz p8, :cond_14

    const/16 v1, 0x8

    goto :goto_16

    .line 1015
    :cond_14
    const/16 v1, 0x9

    :goto_16
    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1016
    iput-object p1, v0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 1017
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1018
    .local v1, "pts":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1019
    const/4 v2, 0x0

    aget v2, v1, v2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    .line 1020
    const/4 v2, 0x1

    aget v2, v1, v2

    add-int/2addr v2, p3

    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    .line 1021
    iput p4, v0, Landroid/app/ActivityOptions;->mWidth:I

    .line 1022
    iput p5, v0, Landroid/app/ActivityOptions;->mHeight:I

    .line 1023
    invoke-direct {v0, p6, p7}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 1024
    return-object v0
.end method

.method public static whitelist makeBasic()Landroid/app/ActivityOptions;
    .registers 1

    .line 1238
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1239
    .local v0, "opts":Landroid/app/ActivityOptions;
    return-object v0
.end method

.method public static whitelist makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;
    .registers 8
    .param p0, "source"    # Landroid/view/View;
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 879
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 880
    .local v0, "opts":Landroid/app/ActivityOptions;
    const/16 v1, 0xb

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 881
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 882
    .local v1, "pts":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 883
    const/4 v2, 0x0

    aget v2, v1, v2

    add-int/2addr v2, p1

    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    .line 884
    const/4 v2, 0x1

    aget v2, v1, v2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    .line 885
    iput p3, v0, Landroid/app/ActivityOptions;->mWidth:I

    .line 886
    iput p4, v0, Landroid/app/ActivityOptions;->mHeight:I

    .line 887
    return-object v0
.end method

.method public static whitelist makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enterResId"    # I
    .param p2, "exitResId"    # I

    .line 625
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist makeCustomAnimation(Landroid/content/Context;III)Landroid/app/ActivityOptions;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enterResId"    # I
    .param p2, "exitResId"    # I
    .param p3, "backgroundColor"    # I

    .line 645
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static greylist makeCustomAnimation(Landroid/content/Context;IIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enterResId"    # I
    .param p2, "exitResId"    # I
    .param p3, "backgroundColor"    # I
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .line 671
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 672
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 673
    const/4 v1, 0x1

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 674
    iput p1, v0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    .line 675
    iput p2, v0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    .line 676
    iput p3, v0, Landroid/app/ActivityOptions;->mCustomBackgroundColor:I

    .line 677
    invoke-direct {v0, p4, p5}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 678
    return-object v0
.end method

.method public static blacklist makeCustomAnimation(Landroid/content/Context;IIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enterResId"    # I
    .param p2, "exitResId"    # I
    .param p3, "backgroundColor"    # I
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "startedListener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .param p6, "finishedListener"    # Landroid/app/ActivityOptions$OnAnimationFinishedListener;

    .line 707
    invoke-static/range {p0 .. p5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 709
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-direct {v0, p4, p6}, Landroid/app/ActivityOptions;->setOnAnimationFinishedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)V

    .line 710
    return-object v0
.end method

.method public static greylist-max-o makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "animId"    # I

    .line 760
    if-eqz p1, :cond_14

    .line 764
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 765
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 766
    const/16 v1, 0xa

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 767
    iput p1, v0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    .line 768
    return-object v0

    .line 761
    .end local v0    # "opts":Landroid/app/ActivityOptions;
    :cond_14
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must specify a valid animation."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist makeCustomTaskAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enterResId"    # I
    .param p2, "exitResId"    # I
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "startedListener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .param p5, "finishedListener"    # Landroid/app/ActivityOptions$OnAnimationFinishedListener;

    .line 741
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 743
    .local v0, "opts":Landroid/app/ActivityOptions;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/app/ActivityOptions;->mOverrideTaskTransition:Z

    .line 744
    return-object v0
.end method

.method public static whitelist makeLaunchIntoPip(Landroid/app/PictureInPictureParams;)Landroid/app/ActivityOptions;
    .registers 4
    .param p0, "pictureInPictureParams"    # Landroid/app/PictureInPictureParams;

    .line 1306
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1307
    .local v0, "opts":Landroid/app/ActivityOptions;
    new-instance v1, Landroid/app/PictureInPictureParams$Builder;

    invoke-direct {v1, p0}, Landroid/app/PictureInPictureParams$Builder;-><init>(Landroid/app/PictureInPictureParams;)V

    .line 1308
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/PictureInPictureParams$Builder;->setIsLaunchIntoPip(Z)Landroid/app/PictureInPictureParams$Builder;

    move-result-object v1

    .line 1309
    invoke-virtual {v1}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    .line 1310
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->getSourceRectHint()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, v0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    .line 1311
    return-object v0
.end method

.method public static greylist makeMultiThumbFutureAspectScaleAnimation(Landroid/content/Context;Landroid/os/Handler;Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "specsFuture"    # Landroid/view/IAppTransitionAnimationSpecsFuture;
    .param p3, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .param p4, "scaleUp"    # Z

    .line 973
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 974
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 975
    if-eqz p4, :cond_10

    .line 976
    const/16 v1, 0x8

    goto :goto_12

    .line 977
    :cond_10
    const/16 v1, 0x9

    :goto_12
    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 978
    iput-object p2, v0, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 979
    invoke-direct {v0, p1, p3}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 980
    return-object v0
.end method

.method public static greylist-max-o makeOpenCrossProfileAppsAnimation()Landroid/app/ActivityOptions;
    .registers 2

    .line 898
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 899
    .local v0, "options":Landroid/app/ActivityOptions;
    const/16 v1, 0xc

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 900
    return-object v0
.end method

.method public static greylist makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;
    .registers 4
    .param p0, "remoteAnimationAdapter"    # Landroid/view/RemoteAnimationAdapter;

    .line 1251
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1252
    .local v0, "opts":Landroid/app/ActivityOptions;
    iput-object p0, v0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 1253
    const/16 v1, 0xd

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "makeRemoteAnimation, adapter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1257
    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1256
    const-string v2, "ActivityOptions"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    return-object v0
.end method

.method public static blacklist makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;Landroid/window/RemoteTransition;)Landroid/app/ActivityOptions;
    .registers 5
    .param p0, "remoteAnimationAdapter"    # Landroid/view/RemoteAnimationAdapter;
    .param p1, "remoteTransition"    # Landroid/window/RemoteTransition;

    .line 1271
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1272
    .local v0, "opts":Landroid/app/ActivityOptions;
    iput-object p0, v0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 1273
    const/16 v1, 0xd

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1274
    iput-object p1, v0, Landroid/app/ActivityOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    .line 1277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "makeRemoteAnimation, adapter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1278
    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1277
    const-string v2, "ActivityOptions"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    return-object v0
.end method

.method public static blacklist makeRemoteTransition(Landroid/window/RemoteTransition;)Landroid/app/ActivityOptions;
    .registers 2
    .param p0, "remoteTransition"    # Landroid/window/RemoteTransition;

    .line 1291
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1292
    .local v0, "opts":Landroid/app/ActivityOptions;
    iput-object p0, v0, Landroid/app/ActivityOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    .line 1293
    return-object v0
.end method

.method public static whitelist makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;
    .registers 8
    .param p0, "source"    # Landroid/view/View;
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 851
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 852
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 853
    const/4 v1, 0x2

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 854
    new-array v1, v1, [I

    .line 855
    .local v1, "pts":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 856
    const/4 v2, 0x0

    aget v2, v1, v2

    add-int/2addr v2, p1

    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    .line 857
    const/4 v2, 0x1

    aget v2, v1, v2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    .line 858
    iput p3, v0, Landroid/app/ActivityOptions;->mWidth:I

    .line 859
    iput p4, v0, Landroid/app/ActivityOptions;->mHeight:I

    .line 860
    return-object v0
.end method

.method static greylist-max-o makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/app/ExitTransitionCoordinator;Ljava/util/ArrayList;ILandroid/content/Intent;)Landroid/app/ActivityOptions;
    .registers 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "exitCoordinator"    # Landroid/app/ExitTransitionCoordinator;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/app/ExitTransitionCoordinator;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/content/Intent;",
            ")",
            "Landroid/app/ActivityOptions;"
        }
    .end annotation

    .line 1194
    .local p2, "sharedElementNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1195
    .local v0, "opts":Landroid/app/ActivityOptions;
    const/4 v1, 0x5

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1196
    iput-object p2, v0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    .line 1197
    iput-object p1, v0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    .line 1198
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/app/ActivityOptions;->mIsReturning:Z

    .line 1199
    iput p3, v0, Landroid/app/ActivityOptions;->mResultCode:I

    .line 1200
    iput-object p4, v0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    .line 1201
    if-nez p0, :cond_19

    .line 1202
    const/4 v1, -0x1

    iput v1, v0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    goto :goto_21

    .line 1204
    :cond_19
    iget-object v1, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    .line 1205
    invoke-virtual {v1, p1}, Landroid/app/ActivityTransitionState;->addExitTransitionCoordinator(Landroid/app/ExitTransitionCoordinator;)I

    move-result v1

    iput v1, v0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    .line 1209
    :goto_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "makeSceneTransitionAnimation is called, activity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    .line 1210
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1209
    const-string v2, "ActivityOptions"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 1214
    return-object v0
.end method

.method public static whitelist makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "sharedElement"    # Landroid/view/View;
    .param p2, "sharedElementName"    # Ljava/lang/String;

    .line 1062
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/util/Pair;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static varargs whitelist makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/ActivityOptions;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1087
    .local p1, "sharedElements":[Landroid/util/Pair;, "[Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1088
    .local v0, "opts":Landroid/app/ActivityOptions;
    new-instance v1, Landroid/app/ExitTransitionCoordinator$ActivityExitTransitionCallbacks;

    invoke-direct {v1, p0}, Landroid/app/ExitTransitionCoordinator$ActivityExitTransitionCallbacks;-><init>(Landroid/app/Activity;)V

    iget-object v2, p0, Landroid/app/Activity;->mExitTransitionListener:Landroid/app/SharedElementCallback;

    .line 1090
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 1088
    invoke-static {v1, v2, v3, v0, p1}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;Landroid/app/SharedElementCallback;Landroid/view/Window;Landroid/app/ActivityOptions;[Landroid/util/Pair;)Landroid/app/ExitTransitionCoordinator;

    move-result-object v1

    .line 1091
    .local v1, "exit":Landroid/app/ExitTransitionCoordinator;
    iget-object v2, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    .line 1092
    invoke-virtual {v2, v1}, Landroid/app/ActivityTransitionState;->addExitTransitionCoordinator(Landroid/app/ExitTransitionCoordinator;)I

    move-result v2

    iput v2, v0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    .line 1093
    return-object v0
.end method

.method static blacklist makeSceneTransitionAnimation(Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;Landroid/app/SharedElementCallback;Landroid/view/Window;Landroid/app/ActivityOptions;[Landroid/util/Pair;)Landroid/app/ExitTransitionCoordinator;
    .registers 16
    .param p0, "exitCallbacks"    # Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;
    .param p1, "callback"    # Landroid/app/SharedElementCallback;
    .param p2, "window"    # Landroid/view/Window;
    .param p3, "opts"    # Landroid/app/ActivityOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;",
            "Landroid/app/SharedElementCallback;",
            "Landroid/view/Window;",
            "Landroid/app/ActivityOptions;",
            "[",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/ExitTransitionCoordinator;"
        }
    .end annotation

    .line 1146
    .local p4, "sharedElements":[Landroid/util/Pair;, "[Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    const/16 v0, 0xd

    invoke-virtual {p2, v0}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1147
    const/4 v0, 0x6

    iput v0, p3, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1148
    const/4 v0, 0x0

    return-object v0

    .line 1150
    :cond_d
    const/4 v0, 0x5

    iput v0, p3, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1153
    .local v0, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v1

    .line 1155
    .local v9, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p4, :cond_4c

    .line 1156
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    array-length v2, p4

    if-ge v1, v2, :cond_4c

    .line 1157
    aget-object v2, p4, v1

    .line 1158
    .local v2, "sharedElement":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 1159
    .local v3, "sharedElementName":Ljava/lang/String;
    if-eqz v3, :cond_44

    .line 1162
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1163
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/view/View;

    .line 1164
    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_3c

    .line 1167
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/view/View;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1156
    .end local v2    # "sharedElement":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    .end local v3    # "sharedElementName":Ljava/lang/String;
    .end local v4    # "view":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 1165
    .restart local v2    # "sharedElement":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    .restart local v3    # "sharedElementName":Ljava/lang/String;
    .restart local v4    # "view":Landroid/view/View;
    :cond_3c
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Shared element must not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1160
    .end local v4    # "view":Landroid/view/View;
    :cond_44
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Shared element name must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1171
    .end local v1    # "i":I
    .end local v2    # "sharedElement":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    .end local v3    # "sharedElementName":Ljava/lang/String;
    :cond_4c
    new-instance v10, Landroid/app/ExitTransitionCoordinator;

    const/4 v8, 0x0

    move-object v1, v10

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, v0

    move-object v6, v0

    move-object v7, v9

    invoke-direct/range {v1 .. v8}, Landroid/app/ExitTransitionCoordinator;-><init>(Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;Landroid/view/Window;Landroid/app/SharedElementCallback;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 1173
    .local v1, "exit":Landroid/app/ExitTransitionCoordinator;
    iput-object v1, p3, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    .line 1174
    iput-object v0, p3, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    .line 1175
    const/4 v2, 0x0

    iput-boolean v2, p3, Landroid/app/ActivityOptions;->mIsReturning:Z

    .line 1176
    return-object v1
.end method

.method public static whitelist makeTaskLaunchBehind()Landroid/app/ActivityOptions;
    .registers 2

    .line 1228
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1229
    .local v0, "opts":Landroid/app/ActivityOptions;
    const/4 v1, 0x7

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1230
    return-object v0
.end method

.method private static greylist-max-o makeThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;
    .registers 9
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .param p5, "scaleUp"    # Z

    .line 952
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 953
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 954
    if-eqz p5, :cond_13

    const/4 v1, 0x3

    goto :goto_14

    :cond_13
    const/4 v1, 0x4

    :goto_14
    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 955
    iput-object p1, v0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 956
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 957
    .local v1, "pts":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 958
    const/4 v2, 0x0

    aget v2, v1, v2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    .line 959
    const/4 v2, 0x1

    aget v2, v1, v2

    add-int/2addr v2, p3

    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    .line 960
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v2, p4}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 961
    return-object v0
.end method

.method public static greylist-max-o makeThumbnailAspectScaleDownAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;
    .registers 17
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "targetWidth"    # I
    .param p5, "targetHeight"    # I
    .param p6, "handler"    # Landroid/os/Handler;
    .param p7, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .line 1005
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v8}, Landroid/app/ActivityOptions;->makeAspectScaledThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o makeThumbnailAspectScaleDownAnimation(Landroid/view/View;[Landroid/view/AppTransitionAnimationSpec;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;
    .registers 7
    .param p0, "source"    # Landroid/view/View;
    .param p1, "specs"    # [Landroid/view/AppTransitionAnimationSpec;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "onAnimationStartedListener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .param p4, "onAnimationFinishedListener"    # Landroid/app/ActivityOptions$OnAnimationFinishedListener;

    .line 1032
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1033
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 1034
    const/16 v1, 0x9

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1035
    iput-object p1, v0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    .line 1036
    invoke-direct {v0, p2, p3}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 1037
    invoke-direct {v0, p2, p4}, Landroid/app/ActivityOptions;->setOnAnimationFinishedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)V

    .line 1038
    return-object v0
.end method

.method public static whitelist makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Landroid/app/ActivityOptions;
    .registers 5
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I

    .line 924
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/ActivityOptions;->makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;
    .registers 11
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .line 946
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityOptions;->makeThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist setExitTransitionTimeout(J)V
    .registers 2
    .param p0, "timeoutMillis"    # J

    .line 1187
    sput-wide p0, Landroid/app/ExitTransitionCoordinator;->sMaxWaitMillis:J

    .line 1188
    return-void
.end method

.method private greylist-max-o setOnAnimationFinishedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)V
    .registers 4
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Landroid/app/ActivityOptions$OnAnimationFinishedListener;

    .line 802
    if-eqz p2, :cond_9

    .line 803
    new-instance v0, Landroid/app/ActivityOptions$2;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/ActivityOptions$2;-><init>(Landroid/app/ActivityOptions;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)V

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    .line 816
    :cond_9
    return-void
.end method

.method private greylist-max-o setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V
    .registers 4
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .line 773
    if-eqz p2, :cond_9

    .line 774
    new-instance v0, Landroid/app/ActivityOptions$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/ActivityOptions$1;-><init>(Landroid/app/ActivityOptions;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 786
    :cond_9
    return-void
.end method

.method public static varargs blacklist startSharedElementAnimation(Landroid/view/Window;Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;Landroid/app/SharedElementCallback;[Landroid/util/Pair;)Landroid/util/Pair;
    .registers 7
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "exitCallbacks"    # Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;
    .param p2, "callback"    # Landroid/app/SharedElementCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Window;",
            "Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;",
            "Landroid/app/SharedElementCallback;",
            "[",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/Pair<",
            "Landroid/app/ActivityOptions;",
            "Landroid/app/ExitTransitionCoordinator;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1111
    .local p3, "sharedElements":[Landroid/util/Pair;, "[Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1112
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-static {p1, p2, p0, v0, p3}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;Landroid/app/SharedElementCallback;Landroid/view/Window;Landroid/app/ActivityOptions;[Landroid/util/Pair;)Landroid/app/ExitTransitionCoordinator;

    move-result-object v1

    .line 1114
    .local v1, "exit":Landroid/app/ExitTransitionCoordinator;
    const/4 v2, -0x1

    iput v2, v0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    .line 1115
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2
.end method

.method public static greylist-max-o stopSharedElementAnimation(Landroid/view/Window;)V
    .registers 5
    .param p0, "window"    # Landroid/view/Window;

    .line 1127
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1128
    .local v0, "decorView":Landroid/view/View;
    if-nez v0, :cond_7

    .line 1129
    return-void

    .line 1131
    :cond_7
    nop

    .line 1132
    const v1, 0x1020295

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ExitTransitionCoordinator;

    .line 1133
    .local v2, "exit":Landroid/app/ExitTransitionCoordinator;
    if-eqz v2, :cond_2a

    .line 1134
    invoke-virtual {v2}, Landroid/app/ExitTransitionCoordinator;->cancelPendingTransitions()Z

    .line 1135
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 1136
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 1137
    invoke-virtual {v2}, Landroid/app/ExitTransitionCoordinator;->resetViews()V

    .line 1138
    invoke-virtual {v2}, Landroid/app/ExitTransitionCoordinator;->clearState()V

    .line 1139
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1141
    :cond_2a
    return-void
.end method


# virtual methods
.method public greylist-max-o abort()V
    .registers 3

    .line 1644
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_a

    .line 1646
    const/4 v1, 0x0

    :try_start_5
    invoke-interface {v0, v1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    .line 1648
    goto :goto_a

    .line 1647
    :catch_9
    move-exception v0

    .line 1650
    :cond_a
    :goto_a
    return-void
.end method

.method public greylist-max-o canTaskOverlayResume()Z
    .registers 2

    .line 2036
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mTaskOverlayCanResume:Z

    return v0
.end method

.method public greylist-max-o disallowEnterPictureInPictureWhileLaunching()Z
    .registers 2

    .line 2117
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mDisallowEnterPictureInPictureWhileLaunching:Z

    return v0
.end method

.method public greylist-max-o forTargetActivity()Landroid/app/ActivityOptions;
    .registers 3

    .line 2693
    iget v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_e

    .line 2694
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 2695
    .local v0, "result":Landroid/app/ActivityOptions;
    invoke-virtual {v0, p0}, Landroid/app/ActivityOptions;->update(Landroid/app/ActivityOptions;)V

    .line 2696
    return-object v0

    .line 2699
    .end local v0    # "result":Landroid/app/ActivityOptions;
    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist freezeRecentTasksReordering()Z
    .registers 2

    .line 2080
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mFreezeRecentTasksReordering:Z

    return v0
.end method

.method public greylist-max-o getAnimSpecs()[Landroid/view/AppTransitionAnimationSpec;
    .registers 2

    .line 1709
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    return-object v0
.end method

.method public greylist-max-o getAnimationFinishedListener()Landroid/os/IRemoteCallback;
    .registers 2

    .line 1636
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    return-object v0
.end method

.method public blacklist getAnimationStartedListener()Landroid/os/IRemoteCallback;
    .registers 2

    .line 1631
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    return-object v0
.end method

.method public greylist-max-o getAnimationType()I
    .registers 2

    .line 1576
    iget v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    return v0
.end method

.method public greylist-max-o getAvoidMoveToFront()Z
    .registers 2

    .line 2062
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mAvoidMoveToFront:Z

    return v0
.end method

.method public blacklist getCallerDisplayId()I
    .registers 2

    .line 1858
    iget v0, p0, Landroid/app/ActivityOptions;->mCallerDisplayId:I

    return v0
.end method

.method public blacklist getCustomBackgroundColor()I
    .registers 2

    .line 1596
    iget v0, p0, Landroid/app/ActivityOptions;->mCustomBackgroundColor:I

    return v0
.end method

.method public greylist-max-o getCustomEnterResId()I
    .registers 2

    .line 1581
    iget v0, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    return v0
.end method

.method public greylist-max-o getCustomExitResId()I
    .registers 2

    .line 1586
    iget v0, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    return v0
.end method

.method public greylist-max-o getCustomInPlaceResId()I
    .registers 2

    .line 1591
    iget v0, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    return v0
.end method

.method public blacklist getDismissKeyguardIfInsecure()Z
    .registers 2

    .line 2229
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mDismissKeyguardIfInsecure:Z

    return v0
.end method

.method public greylist-max-o getExitCoordinatorKey()I
    .registers 2

    .line 1640
    iget v0, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    return v0
.end method

.method public blacklist getForceLaunchWindowingMode()I
    .registers 2

    .line 1935
    iget v0, p0, Landroid/app/ActivityOptions;->mForceLaunchWindowingMode:I

    return v0
.end method

.method public greylist-max-o getHeight()I
    .registers 2

    .line 1626
    iget v0, p0, Landroid/app/ActivityOptions;->mHeight:I

    return v0
.end method

.method public blacklist getIgnorePendingIntentCreatorForegroundState()Z
    .registers 2

    .line 2246
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mIgnorePendingIntentCreatorForegroundState:Z

    return v0
.end method

.method public greylist-max-o getLaunchActivityType()I
    .registers 2

    .line 1952
    iget v0, p0, Landroid/app/ActivityOptions;->mLaunchActivityType:I

    return v0
.end method

.method public whitelist getLaunchBounds()Landroid/graphics/Rect;
    .registers 2

    .line 1571
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getLaunchCookie()Landroid/os/IBinder;
    .registers 2

    .line 2147
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchCookie:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist getLaunchDisplayId()I
    .registers 2

    .line 1837
    iget v0, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    return v0
.end method

.method public blacklist getLaunchIntoPipParams()Landroid/app/PictureInPictureParams;
    .registers 2

    .line 1920
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    return-object v0
.end method

.method public blacklist getLaunchRootTask()Landroid/window/WindowContainerToken;
    .registers 2

    .line 1881
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    return-object v0
.end method

.method public greylist-max-o getLaunchTaskBehind()Z
    .registers 3

    .line 1316
    iget v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist getLaunchTaskDisplayArea()Landroid/window/WindowContainerToken;
    .registers 2

    .line 1869
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayArea:Landroid/window/WindowContainerToken;

    return-object v0
.end method

.method public blacklist getLaunchTaskFragmentToken()Landroid/os/IBinder;
    .registers 2

    .line 1892
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskFragmentToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist getLaunchTaskId()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1976
    iget v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    return v0
.end method

.method public greylist-max-o getLaunchWindowingMode()I
    .registers 2

    .line 1903
    iget v0, p0, Landroid/app/ActivityOptions;->mLaunchWindowingMode:I

    return v0
.end method

.method public blacklist getLaunchedFromBubble()Z
    .registers 2

    .line 2186
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mLaunchedFromBubble:Z

    return v0
.end method

.method public blacklist getLaunchedFromDnD()Z
    .registers 2

    .line 2274
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mLaunchedFromDnD:Z

    return v0
.end method

.method public whitelist getLockTaskMode()Z
    .registers 2

    .line 1755
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    return v0
.end method

.method public blacklist getOverrideTaskTransition()Z
    .registers 2

    .line 2153
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mOverrideTaskTransition:Z

    return v0
.end method

.method public greylist-max-o getPackageName()Ljava/lang/String;
    .registers 2

    .line 1561
    iget-object v0, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPendingIntentLaunchFlags()I
    .registers 3

    .line 1993
    iget v0, p0, Landroid/app/ActivityOptions;->mPendingIntentLaunchFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    return v0
.end method

.method public greylist-max-o getRemoteAnimationAdapter()Landroid/view/RemoteAnimationAdapter;
    .registers 2

    .line 1718
    iget-object v0, p0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    return-object v0
.end method

.method public blacklist getRemoteTransition()Landroid/window/RemoteTransition;
    .registers 2

    .line 1728
    iget-object v0, p0, Landroid/app/ActivityOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    return-object v0
.end method

.method public blacklist getRemoveWithTaskOranizer()Z
    .registers 2

    .line 2169
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mRemoveWithTaskOrganizer:Z

    return v0
.end method

.method public greylist-max-o getResultCode()I
    .registers 2

    .line 1698
    iget v0, p0, Landroid/app/ActivityOptions;->mResultCode:I

    return v0
.end method

.method public greylist-max-o getResultData()Landroid/content/Intent;
    .registers 2

    .line 1701
    iget-object v0, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    return-object v0
.end method

.method public greylist-max-o getResultReceiver()Landroid/os/ResultReceiver;
    .registers 2

    .line 1695
    iget-object v0, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    return-object v0
.end method

.method public greylist-max-o getRotationAnimationHint()I
    .registers 2

    .line 2708
    iget v0, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    return v0
.end method

.method public greylist-max-o getSharedElementNames()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1691
    iget-object v0, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getSourceInfo()Landroid/app/ActivityOptions$SourceInfo;
    .registers 2

    .line 2671
    iget-object v0, p0, Landroid/app/ActivityOptions;->mSourceInfo:Landroid/app/ActivityOptions$SourceInfo;

    return-object v0
.end method

.method public greylist-max-o getSpecsFuture()Landroid/view/IAppTransitionAnimationSpecsFuture;
    .registers 2

    .line 1713
    iget-object v0, p0, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    return-object v0
.end method

.method public whitelist getSplashScreenStyle()I
    .registers 2

    .line 1772
    iget v0, p0, Landroid/app/ActivityOptions;->mSplashScreenStyle:I

    return v0
.end method

.method public blacklist getSplashScreenThemeResName()Ljava/lang/String;
    .registers 2

    .line 1764
    iget-object v0, p0, Landroid/app/ActivityOptions;->mSplashScreenThemeResName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSplitPosition()I
    .registers 2

    .line 2252
    iget v0, p0, Landroid/app/ActivityOptions;->mSplitPosition:I

    return v0
.end method

.method public greylist-max-o getSplitScreenCreateMode()I
    .registers 2

    .line 2086
    iget v0, p0, Landroid/app/ActivityOptions;->mSplitScreenCreateMode:I

    return v0
.end method

.method public greylist-max-o getStartX()I
    .registers 2

    .line 1611
    iget v0, p0, Landroid/app/ActivityOptions;->mStartX:I

    return v0
.end method

.method public greylist-max-o getStartY()I
    .registers 2

    .line 1616
    iget v0, p0, Landroid/app/ActivityOptions;->mStartY:I

    return v0
.end method

.method public blacklist getStartedByMDMAdmin()Z
    .registers 2

    .line 2111
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mStartedByMDMAdmin:Z

    return v0
.end method

.method public blacklist getTaskAlwaysOnTop()Z
    .registers 2

    .line 2010
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mTaskAlwaysOnTop:Z

    return v0
.end method

.method public greylist-max-o getTaskOverlay()Z
    .registers 2

    .line 2029
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    return v0
.end method

.method public blacklist getThumbnail()Landroid/hardware/HardwareBuffer;
    .registers 2

    .line 1606
    iget-object v0, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public blacklist getTransientLaunch()Z
    .registers 2

    .line 2208
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mTransientLaunch:Z

    return v0
.end method

.method public greylist-max-o getUsageTimeReport()Landroid/app/PendingIntent;
    .registers 2

    .line 1705
    iget-object v0, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public greylist-max-o getWidth()I
    .registers 2

    .line 1621
    iget v0, p0, Landroid/app/ActivityOptions;->mWidth:I

    return v0
.end method

.method public blacklist hasValidHorizontalSplitLayoutWithAdjacentFlag()Z
    .registers 4

    .line 3245
    iget v0, p0, Landroid/app/ActivityOptions;->mEnterSplitSideWithAdjacentFlag:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v2, 0x2

    if-ne v0, v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_a
    return v1
.end method

.method public blacklist hasValidLaunchAdjacentExt()Z
    .registers 2

    .line 3239
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->hasValidVerticalSplitLayoutWithAdjacentFlag()Z

    move-result v0

    if-nez v0, :cond_f

    .line 3240
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->hasValidHorizontalSplitLayoutWithAdjacentFlag()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 3239
    :goto_10
    return v0
.end method

.method public blacklist hasValidVerticalSplitLayoutWithAdjacentFlag()Z
    .registers 3

    .line 3251
    iget v0, p0, Landroid/app/ActivityOptions;->mEnterSplitSideWithAdjacentFlag:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

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

.method public blacklist isActiveApplaunch()Z
    .registers 2

    .line 1660
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mIsActiveApplaunch:Z

    return v0
.end method

.method public blacklist isActivityEmbeddedPlaceholder()Z
    .registers 2

    .line 3269
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mIsActivityEmbeddedPlaceholder:Z

    return v0
.end method

.method public blacklist isApplyActivityFlagsForBubbles()Z
    .registers 2

    .line 2127
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mApplyActivityFlagsForBubbles:Z

    return v0
.end method

.method public blacklist isApplyBigFreeformSize()Z
    .registers 2

    .line 2799
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mApplyBigFreeformSize:Z

    return v0
.end method

.method greylist-max-o isCrossTask()Z
    .registers 2

    .line 1686
    iget v0, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    if-gez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist isDismissSplitBeforeLaunch()Z
    .registers 2

    .line 2758
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mDismissSplitBeforeLaunch:Z

    return v0
.end method

.method public blacklist isEligibleForLegacyPermissionPrompt()Z
    .registers 2

    .line 1796
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mIsEligibleForLegacyPermissionPrompt:Z

    return v0
.end method

.method public blacklist isLaunchIntoPip()Z
    .registers 2

    .line 1928
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    if-eqz v0, :cond_c

    .line 1929
    invoke-virtual {v0}, Landroid/app/PictureInPictureParams;->isLaunchIntoPip()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 1928
    :goto_d
    return v0
.end method

.method public blacklist isMlLaunch()I
    .registers 2

    .line 1670
    iget v0, p0, Landroid/app/ActivityOptions;->mIsMlLaunch:I

    return v0
.end method

.method public blacklist isPopOver()Z
    .registers 2

    .line 3075
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mIsPopOver:Z

    return v0
.end method

.method public blacklist isResumedAffordanceAnimationRequested()Z
    .registers 2

    .line 2782
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mResumedAffordanceAnimationRequested:Z

    return v0
.end method

.method public greylist-max-o isReturning()Z
    .registers 2

    .line 1654
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    return v0
.end method

.method public blacklist isStartedFromWindowTypeLauncher()Z
    .registers 2

    .line 2770
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mIsStartedFromWindowTypeLauncher:Z

    return v0
.end method

.method public blacklist launchToRightSideWithAdjacentFlag()Z
    .registers 3

    .line 3262
    iget v0, p0, Landroid/app/ActivityOptions;->mEnterSplitSideWithAdjacentFlag:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist launchToTopSideWithAdjacentFlag()Z
    .registers 3

    .line 3257
    iget v0, p0, Landroid/app/ActivityOptions;->mEnterSplitSideWithAdjacentFlag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public blacklist needToReparentCell()Z
    .registers 2

    .line 2262
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mNeedToReparentCell:Z

    return v0
.end method

.method public greylist-max-o popAppVerificationBundle()Landroid/os/Bundle;
    .registers 3

    .line 2730
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAppVerificationBundle:Landroid/os/Bundle;

    .line 2731
    .local v0, "out":Landroid/os/Bundle;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/ActivityOptions;->mAppVerificationBundle:Landroid/os/Bundle;

    .line 2732
    return-object v0
.end method

.method public blacklist preserveTaskWindowingMode()V
    .registers 2

    .line 2806
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mPreserveTaskWindowingMode:Z

    .line 2807
    return-void
.end method

.method public whitelist requestUsageTimeReport(Landroid/app/PendingIntent;)V
    .registers 2
    .param p1, "receiver"    # Landroid/app/PendingIntent;

    .line 2663
    iput-object p1, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    .line 2664
    return-void
.end method

.method public whitelist semSetChooserPopOverPosition(I)Landroid/app/ActivityOptions;
    .registers 6
    .param p1, "position"    # I

    .line 2997
    and-int/lit8 v0, p1, 0x7

    if-eqz v0, :cond_3f

    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_9

    goto :goto_3f

    .line 3002
    :cond_9
    iget-object v0, p0, Landroid/app/ActivityOptions;->mPopOverWidthDp:[I

    const/4 v1, 0x1

    const/16 v2, 0x168

    aput v2, v0, v1

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 3003
    iget-object v0, p0, Landroid/app/ActivityOptions;->mPopOverHeightDp:[I

    aput v2, v0, v1

    aput v2, v0, v3

    .line 3004
    iget-object v0, p0, Landroid/app/ActivityOptions;->mPopOverAnchorMarginDp:[Landroid/graphics/Point;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    aput-object v2, v0, v3

    .line 3005
    iget-object v0, p0, Landroid/app/ActivityOptions;->mPopOverAnchorPosition:[I

    aput p1, v0, v1

    aput p1, v0, v3

    .line 3007
    and-int/lit8 v0, p1, 0x7

    const/4 v2, 0x2

    if-ne v0, v2, :cond_31

    move v0, v1

    goto :goto_32

    :cond_31
    move v0, v3

    .line 3009
    .local v0, "hasBottom":Z
    :goto_32
    if-eqz v0, :cond_3c

    .line 3010
    iget-object v2, p0, Landroid/app/ActivityOptions;->mPopOverAnchorMarginDp:[Landroid/graphics/Point;

    aget-object v2, v2, v3

    const/16 v3, 0x2c

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 3012
    :cond_3c
    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mIsPopOver:Z

    .line 3013
    return-object p0

    .line 2999
    .end local v0    # "hasBottom":Z
    :cond_3f
    :goto_3f
    return-object p0
.end method

.method public whitelist semSetPopOverOptions([I[I[Landroid/graphics/Point;[I)Landroid/app/ActivityOptions;
    .registers 16
    .param p1, "widthDp"    # [I
    .param p2, "heightDp"    # [I
    .param p3, "marginDp"    # [Landroid/graphics/Point;
    .param p4, "position"    # [I

    .line 2966
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v10}, Landroid/app/ActivityOptions;->setPopOverOptions([I[I[Landroid/graphics/Point;[I[F[FZZZZ)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setActiveApplaunch(Z)V
    .registers 2
    .param p1, "activeApplaunch"    # Z

    .line 1665
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mIsActiveApplaunch:Z

    .line 1666
    return-void
.end method

.method public blacklist setActivityEmbeddedPlaceholder()V
    .registers 2

    .line 3274
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mIsActivityEmbeddedPlaceholder:Z

    .line 3275
    return-void
.end method

.method public whitelist setAppVerificationBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;
    .registers 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 2742
    iput-object p1, p0, Landroid/app/ActivityOptions;->mAppVerificationBundle:Landroid/os/Bundle;

    .line 2743
    return-object p0
.end method

.method public blacklist setApplyActivityFlagsForBubbles(Z)V
    .registers 2
    .param p1, "apply"    # Z

    .line 2122
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mApplyActivityFlagsForBubbles:Z

    .line 2123
    return-void
.end method

.method public blacklist setApplyBigFreeformSize(Z)V
    .registers 2
    .param p1, "applyBigFreeformSize"    # Z

    .line 2794
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mApplyBigFreeformSize:Z

    .line 2795
    return-void
.end method

.method public greylist-max-o setAvoidMoveToFront()V
    .registers 3

    .line 2046
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mAvoidMoveToFront:Z

    .line 2049
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAvoidMoveToFront is called, package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2050
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2051
    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2049
    const-string v1, "ActivityOptions"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2054
    return-void
.end method

.method public blacklist setCallerDisplayId(I)Landroid/app/ActivityOptions;
    .registers 2
    .param p1, "callerDisplayId"    # I

    .line 1863
    iput p1, p0, Landroid/app/ActivityOptions;->mCallerDisplayId:I

    .line 1864
    return-object p0
.end method

.method public greylist-max-o setDisallowEnterPictureInPictureWhileLaunching(Z)V
    .registers 2
    .param p1, "disallow"    # Z

    .line 2104
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mDisallowEnterPictureInPictureWhileLaunching:Z

    .line 2105
    return-void
.end method

.method public blacklist setDismissKeyguardIfInsecure()V
    .registers 2

    .line 2220
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mDismissKeyguardIfInsecure:Z

    .line 2221
    return-void
.end method

.method public blacklist setDismissSplitBeforeLaunch(Z)V
    .registers 2
    .param p1, "dismiss"    # Z

    .line 2753
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mDismissSplitBeforeLaunch:Z

    .line 2754
    return-void
.end method

.method public blacklist setEligibleForLegacyPermissionPrompt(Z)V
    .registers 2
    .param p1, "eligible"    # Z

    .line 1805
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mIsEligibleForLegacyPermissionPrompt:Z

    .line 1806
    return-void
.end method

.method public blacklist setForceLaunchWindowingMode(I)V
    .registers 2
    .param p1, "windowingMode"    # I

    .line 1946
    iput p1, p0, Landroid/app/ActivityOptions;->mForceLaunchWindowingMode:I

    .line 1947
    return-void
.end method

.method public blacklist setFreezeRecentTasksReordering()V
    .registers 2

    .line 2072
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mFreezeRecentTasksReordering:Z

    .line 2073
    return-void
.end method

.method public blacklist setIgnorePendingIntentCreatorForegroundState(Z)V
    .registers 2
    .param p1, "state"    # Z

    .line 2237
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mIgnorePendingIntentCreatorForegroundState:Z

    .line 2238
    return-void
.end method

.method public blacklist setLaunchActivityType(I)V
    .registers 2
    .param p1, "activityType"    # I

    .line 1958
    iput p1, p0, Landroid/app/ActivityOptions;->mLaunchActivityType:I

    .line 1959
    return-void
.end method

.method public whitelist setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;
    .registers 3
    .param p1, "screenSpacePixelRect"    # Landroid/graphics/Rect;

    .line 1555
    if-eqz p1, :cond_8

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iput-object v0, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    .line 1556
    return-object p0
.end method

.method public blacklist setLaunchCookie(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "launchCookie"    # Landroid/os/IBinder;

    .line 2138
    iput-object p1, p0, Landroid/app/ActivityOptions;->mLaunchCookie:Landroid/os/IBinder;

    .line 2139
    return-void
.end method

.method public whitelist setLaunchDisplayId(I)Landroid/app/ActivityOptions;
    .registers 2
    .param p1, "launchDisplayId"    # I

    .line 1852
    iput p1, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    .line 1853
    return-object p0
.end method

.method public blacklist setLaunchRootTask(Landroid/window/WindowContainerToken;)Landroid/app/ActivityOptions;
    .registers 2
    .param p1, "windowContainerToken"    # Landroid/window/WindowContainerToken;

    .line 1886
    iput-object p1, p0, Landroid/app/ActivityOptions;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    .line 1887
    return-object p0
.end method

.method public blacklist setLaunchTaskDisplayArea(Landroid/window/WindowContainerToken;)Landroid/app/ActivityOptions;
    .registers 2
    .param p1, "windowContainerToken"    # Landroid/window/WindowContainerToken;

    .line 1875
    iput-object p1, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayArea:Landroid/window/WindowContainerToken;

    .line 1876
    return-object p0
.end method

.method public blacklist setLaunchTaskFragmentToken(Landroid/os/IBinder;)Landroid/app/ActivityOptions;
    .registers 2
    .param p1, "taskFragmentToken"    # Landroid/os/IBinder;

    .line 1897
    iput-object p1, p0, Landroid/app/ActivityOptions;->mLaunchTaskFragmentToken:Landroid/os/IBinder;

    .line 1898
    return-object p0
.end method

.method public whitelist setLaunchTaskId(I)V
    .registers 2
    .param p1, "taskId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1968
    iput p1, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    .line 1969
    return-void
.end method

.method public blacklist setLaunchWindowingMode(I)V
    .registers 2
    .param p1, "windowingMode"    # I

    .line 1912
    iput p1, p0, Landroid/app/ActivityOptions;->mLaunchWindowingMode:I

    .line 1913
    return-void
.end method

.method public blacklist setLaunchedFromBubble(Z)V
    .registers 2
    .param p1, "fromBubble"    # Z

    .line 2178
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mLaunchedFromBubble:Z

    .line 2179
    return-void
.end method

.method public blacklist setLaunchedFromDnD(Z)V
    .registers 2
    .param p1, "launchedFromDnd"    # Z

    .line 2279
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mLaunchedFromDnD:Z

    .line 2280
    return-void
.end method

.method public whitelist setLockTaskEnabled(Z)Landroid/app/ActivityOptions;
    .registers 2
    .param p1, "lockTaskMode"    # Z

    .line 1826
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    .line 1827
    return-object p0
.end method

.method public blacklist setMlLaunch(I)V
    .registers 2
    .param p1, "mlLaunch"    # I

    .line 1675
    iput p1, p0, Landroid/app/ActivityOptions;->mIsMlLaunch:I

    .line 1676
    return-void
.end method

.method public blacklist setPendingIntentLaunchFlags(I)V
    .registers 2
    .param p1, "flags"    # I

    .line 1985
    iput p1, p0, Landroid/app/ActivityOptions;->mPendingIntentLaunchFlags:I

    .line 1986
    return-void
.end method

.method public blacklist setPopOverAnimation(Landroid/content/Context;IIIIII)Landroid/app/ActivityOptions;
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enterResId"    # I
    .param p3, "exitResId"    # I
    .param p4, "inheritOpenEnterResId"    # I
    .param p5, "inheritOpenExitResId"    # I
    .param p6, "inheritCloseEnterResId"    # I
    .param p7, "inheritCloseExitResId"    # I

    .line 3213
    if-nez p1, :cond_3

    .line 3214
    return-object p0

    .line 3216
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityOptions;->mPopOverAnimationPackageName:Ljava/lang/String;

    .line 3217
    iput p2, p0, Landroid/app/ActivityOptions;->mPopOverEnterResId:I

    .line 3218
    iput p3, p0, Landroid/app/ActivityOptions;->mPopOverExitResId:I

    .line 3219
    iput p4, p0, Landroid/app/ActivityOptions;->mPopOverInheritOpenEnterResId:I

    .line 3220
    iput p5, p0, Landroid/app/ActivityOptions;->mPopOverInheritOpenExitResId:I

    .line 3221
    iput p6, p0, Landroid/app/ActivityOptions;->mPopOverInheritCloseEnterResId:I

    .line 3222
    iput p7, p0, Landroid/app/ActivityOptions;->mPopOverInheritCloseExitResId:I

    .line 3223
    return-object p0
.end method

.method public blacklist setPopOverOptions([I[I[Landroid/graphics/Point;[I[F[FZZZZ)Landroid/app/ActivityOptions;
    .registers 16
    .param p1, "widthDp"    # [I
    .param p2, "heightDp"    # [I
    .param p3, "marginDp"    # [Landroid/graphics/Point;
    .param p4, "position"    # [I
    .param p5, "widthWeight"    # [F
    .param p6, "heightWeight"    # [F
    .param p7, "allowOutsideTouch"    # Z
    .param p8, "removeDefaultMargin"    # Z
    .param p9, "removeOutlineEffect"    # Z
    .param p10, "inheritOptions"    # Z

    .line 3111
    if-nez p1, :cond_e

    if-nez p2, :cond_e

    if-nez p3, :cond_e

    if-nez p4, :cond_e

    .line 3112
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mPopOverInheritOptions:Z

    .line 3113
    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mIsPopOver:Z

    .line 3114
    return-object p0

    .line 3117
    :cond_e
    if-eqz p1, :cond_b6

    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b6

    if-eqz p2, :cond_b6

    array-length v0, p2

    if-ne v0, v1, :cond_b6

    if-eqz p3, :cond_b6

    array-length v0, p3

    if-ne v0, v1, :cond_b6

    if-eqz p4, :cond_b6

    array-length v0, p4

    if-eq v0, v1, :cond_25

    goto/16 :goto_b6

    .line 3125
    :cond_25
    if-eqz p5, :cond_2a

    array-length v0, p5

    if-ne v0, v1, :cond_2f

    :cond_2a
    if-eqz p6, :cond_30

    array-length v0, p6

    if-eq v0, v1, :cond_30

    .line 3127
    :cond_2f
    return-object p0

    .line 3131
    :cond_30
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_31
    if-ge v0, v1, :cond_73

    .line 3132
    aget v2, p4, v0

    and-int/lit8 v2, v2, 0x7

    if-eqz v2, :cond_72

    aget v2, p4, v0

    and-int/lit16 v2, v2, 0x370

    if-nez v2, :cond_40

    goto :goto_72

    .line 3137
    :cond_40
    aget v2, p1, v0

    if-lez v2, :cond_71

    aget v2, p2, v0

    if-lez v2, :cond_71

    aget-object v2, p3, v0

    if-nez v2, :cond_4d

    goto :goto_71

    .line 3142
    :cond_4d
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz p5, :cond_5f

    aget v4, p5, v0

    cmpg-float v4, v4, v3

    if-ltz v4, :cond_5e

    aget v4, p5, v0

    cmpl-float v4, v4, v2

    if-lez v4, :cond_5f

    .line 3143
    :cond_5e
    return-object p0

    .line 3145
    :cond_5f
    if-eqz p6, :cond_6e

    aget v4, p6, v0

    cmpg-float v3, v4, v3

    if-ltz v3, :cond_6d

    aget v3, p6, v0

    cmpl-float v2, v3, v2

    if-lez v2, :cond_6e

    .line 3146
    :cond_6d
    return-object p0

    .line 3131
    :cond_6e
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 3138
    :cond_71
    :goto_71
    return-object p0

    .line 3134
    :cond_72
    :goto_72
    return-object p0

    .line 3151
    .end local v0    # "i":I
    :cond_73
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_74
    if-ge v0, v1, :cond_96

    .line 3152
    iget-object v2, p0, Landroid/app/ActivityOptions;->mPopOverWidthDp:[I

    aget v3, p1, v0

    aput v3, v2, v0

    .line 3153
    iget-object v2, p0, Landroid/app/ActivityOptions;->mPopOverHeightDp:[I

    aget v3, p2, v0

    aput v3, v2, v0

    .line 3154
    iget-object v2, p0, Landroid/app/ActivityOptions;->mPopOverAnchorMarginDp:[Landroid/graphics/Point;

    new-instance v3, Landroid/graphics/Point;

    aget-object v4, p3, v0

    invoke-direct {v3, v4}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    aput-object v3, v2, v0

    .line 3155
    iget-object v2, p0, Landroid/app/ActivityOptions;->mPopOverAnchorPosition:[I

    aget v3, p4, v0

    aput v3, v2, v0

    .line 3151
    add-int/lit8 v0, v0, 0x1

    goto :goto_74

    .line 3157
    .end local v0    # "i":I
    :cond_96
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mIsPopOver:Z

    .line 3160
    if-eqz p5, :cond_a3

    .line 3161
    invoke-virtual {p5}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/app/ActivityOptions;->mPopOverWidthWeight:[F

    .line 3163
    :cond_a3
    if-eqz p6, :cond_ad

    .line 3164
    invoke-virtual {p6}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/app/ActivityOptions;->mPopOverHeightWeight:[F

    .line 3166
    :cond_ad
    iput-boolean p7, p0, Landroid/app/ActivityOptions;->mPopOverAllowOutsideTouch:Z

    .line 3167
    iput-boolean p8, p0, Landroid/app/ActivityOptions;->mPopOverRemoveDefaultMargin:Z

    .line 3168
    iput-boolean p9, p0, Landroid/app/ActivityOptions;->mPopOverRemoveOutlineEffect:Z

    .line 3169
    iput-boolean p10, p0, Landroid/app/ActivityOptions;->mPopOverInheritOptions:Z

    .line 3172
    return-object p0

    .line 3121
    :cond_b6
    :goto_b6
    return-object p0
.end method

.method public greylist-max-o setRemoteAnimationAdapter(Landroid/view/RemoteAnimationAdapter;)V
    .registers 2
    .param p1, "remoteAnimationAdapter"    # Landroid/view/RemoteAnimationAdapter;

    .line 1723
    iput-object p1, p0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 1724
    return-void
.end method

.method public blacklist setRemoteTransition(Landroid/window/RemoteTransition;)V
    .registers 2
    .param p1, "remoteTransition"    # Landroid/window/RemoteTransition;

    .line 1733
    iput-object p1, p0, Landroid/app/ActivityOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    .line 1734
    return-void
.end method

.method public blacklist setRemoveWithTaskOrganizer(Z)V
    .registers 2
    .param p1, "remove"    # Z

    .line 2161
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mRemoveWithTaskOrganizer:Z

    .line 2162
    return-void
.end method

.method public blacklist setReparentCell(Z)V
    .registers 2
    .param p1, "halfCell"    # Z

    .line 2267
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mNeedToReparentCell:Z

    .line 2268
    return-void
.end method

.method public blacklist setResumedAffordanceAnimation()V
    .registers 2

    .line 2787
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mResumedAffordanceAnimationRequested:Z

    .line 2788
    return-void
.end method

.method public greylist-max-o setRotationAnimationHint(I)V
    .registers 2
    .param p1, "hint"    # I

    .line 2720
    iput p1, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    .line 2721
    return-void
.end method

.method public blacklist setSourceInfo(IJ)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "uptimeMillis"    # J

    .line 2685
    new-instance v0, Landroid/app/ActivityOptions$SourceInfo;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/ActivityOptions$SourceInfo;-><init>(IJ)V

    iput-object v0, p0, Landroid/app/ActivityOptions;->mSourceInfo:Landroid/app/ActivityOptions$SourceInfo;

    .line 2686
    return-void
.end method

.method public whitelist setSplashScreenStyle(I)Landroid/app/ActivityOptions;
    .registers 3
    .param p1, "style"    # I

    .line 1783
    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    if-nez p1, :cond_7

    .line 1785
    :cond_5
    iput p1, p0, Landroid/app/ActivityOptions;->mSplashScreenStyle:I

    .line 1787
    :cond_7
    return-object p0
.end method

.method public blacklist setSplitPosition(I)V
    .registers 2
    .param p1, "splitPosition"    # I

    .line 2257
    iput p1, p0, Landroid/app/ActivityOptions;->mSplitPosition:I

    .line 2258
    return-void
.end method

.method public greylist setSplitScreenCreateMode(I)V
    .registers 2
    .param p1, "splitScreenCreateMode"    # I

    .line 2097
    iput p1, p0, Landroid/app/ActivityOptions;->mSplitScreenCreateMode:I

    .line 2100
    return-void
.end method

.method public blacklist setStartedFromWindowTypeLauncher(Z)V
    .registers 2
    .param p1, "isWindowTypeLauncher"    # Z

    .line 2765
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mIsStartedFromWindowTypeLauncher:Z

    .line 2766
    return-void
.end method

.method public blacklist setTaskAlwaysOnTop(Z)V
    .registers 2
    .param p1, "alwaysOnTop"    # Z

    .line 2003
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mTaskAlwaysOnTop:Z

    .line 2004
    return-void
.end method

.method public blacklist setTaskOverlay(ZZ)V
    .registers 3
    .param p1, "taskOverlay"    # Z
    .param p2, "canResume"    # Z

    .line 2021
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    .line 2022
    iput-boolean p2, p0, Landroid/app/ActivityOptions;->mTaskOverlayCanResume:Z

    .line 2023
    return-void
.end method

.method public blacklist setTransientLaunch()Landroid/app/ActivityOptions;
    .registers 2

    .line 2198
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mTransientLaunch:Z

    .line 2199
    return-object p0
.end method

.method public blacklist shouldPreserveTaskWindowingMode()Z
    .registers 2

    .line 2811
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mPreserveTaskWindowingMode:Z

    return v0
.end method

.method public whitelist toBundle()Landroid/os/Bundle;
    .registers 12

    .line 2377
    invoke-super {p0}, Landroid/app/ComponentOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 2378
    .local v0, "b":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 2379
    const-string v2, "android:activity.packageName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2381
    :cond_d
    iget-object v1, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_16

    .line 2382
    const-string v2, "android:activity.launchBounds"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2384
    :cond_16
    iget v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_20

    .line 2385
    const-string v3, "android:activity.animType"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2387
    :cond_20
    iget-object v1, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    if-eqz v1, :cond_29

    .line 2388
    const-string v3, "android:activity.usageTimeReport"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2390
    :cond_29
    iget v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    const/4 v3, 0x0

    const-string v4, "android:activity.animHeight"

    const-string v5, "android:activity.animWidth"

    const-string v6, "android:activity.animStartY"

    const-string v7, "android:activity.animStartX"

    const-string v8, "android:activity.animStartListener"

    packed-switch v1, :pswitch_data_350

    :pswitch_39
    goto/16 :goto_e8

    .line 2399
    :pswitch_3b
    iget v1, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    const-string v3, "android:activity.animInPlaceRes"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2400
    goto/16 :goto_e8

    .line 2430
    :pswitch_44
    iget-object v1, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    if-eqz v1, :cond_4d

    .line 2431
    const-string v3, "android:activity.transitionCompleteListener"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2433
    :cond_4d
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    const-string v3, "android:activity.transitionIsReturning"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2434
    iget-object v1, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    const-string v3, "android:activity.sharedElementNames"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2435
    iget-object v1, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    const-string v3, "android:activity.resultData"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2436
    iget v1, p0, Landroid/app/ActivityOptions;->mResultCode:I

    const-string v3, "android:activity.resultCode"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2437
    iget v1, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    const-string v3, "android:activity.exitCoordinatorIndex"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_e8

    .line 2414
    :pswitch_72
    iget-object v1, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_90

    .line 2415
    sget-object v9, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2416
    .local v1, "hwBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_89

    .line 2417
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v9

    const-string v10, "android:activity.animThumbnail"

    invoke-virtual {v0, v10, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_90

    .line 2419
    :cond_89
    const-string v9, "ActivityOptions"

    const-string v10, "Failed to copy thumbnail"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    .end local v1    # "hwBitmap":Landroid/graphics/Bitmap;
    :cond_90
    :goto_90
    iget v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    invoke-virtual {v0, v7, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2423
    iget v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2424
    iget v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2425
    iget v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2426
    nop

    .line 2427
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_ad

    invoke-interface {v1}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 2426
    :cond_ad
    invoke-virtual {v0, v8, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2428
    goto :goto_e8

    .line 2403
    :pswitch_b1
    iget v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    invoke-virtual {v0, v7, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2404
    iget v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2405
    iget v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2406
    iget v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2407
    goto :goto_e8

    .line 2392
    :pswitch_c6
    iget v1, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    const-string v4, "android:activity.animEnterRes"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2393
    iget v1, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    const-string v4, "android:activity.animExitRes"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2394
    iget v1, p0, Landroid/app/ActivityOptions;->mCustomBackgroundColor:I

    const-string v4, "android:activity.backgroundColor"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2395
    nop

    .line 2396
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_e4

    invoke-interface {v1}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 2395
    :cond_e4
    invoke-virtual {v0, v8, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2397
    nop

    .line 2440
    :goto_e8
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    if-eqz v1, :cond_f1

    .line 2441
    const-string v3, "android:activity.lockTaskMode"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2443
    :cond_f1
    iget v1, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    if-eq v1, v2, :cond_fa

    .line 2444
    const-string v3, "android.activity.launchDisplayId"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2446
    :cond_fa
    iget v1, p0, Landroid/app/ActivityOptions;->mCallerDisplayId:I

    if-eq v1, v2, :cond_103

    .line 2447
    const-string v3, "android.activity.callerDisplayId"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2449
    :cond_103
    iget-object v1, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayArea:Landroid/window/WindowContainerToken;

    if-eqz v1, :cond_10c

    .line 2450
    const-string v3, "android.activity.launchTaskDisplayAreaToken"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2452
    :cond_10c
    iget-object v1, p0, Landroid/app/ActivityOptions;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    if-eqz v1, :cond_115

    .line 2453
    const-string v3, "android.activity.launchRootTaskToken"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2455
    :cond_115
    iget-object v1, p0, Landroid/app/ActivityOptions;->mLaunchTaskFragmentToken:Landroid/os/IBinder;

    if-eqz v1, :cond_11e

    .line 2456
    const-string v3, "android.activity.launchTaskFragmentToken"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2458
    :cond_11e
    iget v1, p0, Landroid/app/ActivityOptions;->mLaunchWindowingMode:I

    if-eqz v1, :cond_127

    .line 2459
    const-string v3, "android.activity.windowingMode"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2461
    :cond_127
    iget v1, p0, Landroid/app/ActivityOptions;->mLaunchActivityType:I

    if-eqz v1, :cond_130

    .line 2462
    const-string v3, "android.activity.activityType"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2464
    :cond_130
    iget v1, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    if-eq v1, v2, :cond_139

    .line 2465
    const-string v3, "android.activity.launchTaskId"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2467
    :cond_139
    iget v1, p0, Landroid/app/ActivityOptions;->mPendingIntentLaunchFlags:I

    if-eqz v1, :cond_142

    .line 2468
    const-string v3, "android.activity.pendingIntentLaunchFlags"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2470
    :cond_142
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mTaskAlwaysOnTop:Z

    if-eqz v1, :cond_14b

    .line 2471
    const-string v3, "android.activity.alwaysOnTop"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2473
    :cond_14b
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    if-eqz v1, :cond_154

    .line 2474
    const-string v3, "android.activity.taskOverlay"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2476
    :cond_154
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mTaskOverlayCanResume:Z

    if-eqz v1, :cond_15d

    .line 2477
    const-string v3, "android.activity.taskOverlayCanResume"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2479
    :cond_15d
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mAvoidMoveToFront:Z

    if-eqz v1, :cond_166

    .line 2480
    const-string v3, "android.activity.avoidMoveToFront"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2482
    :cond_166
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mFreezeRecentTasksReordering:Z

    if-eqz v1, :cond_16f

    .line 2483
    const-string v3, "android.activity.freezeRecentTasksReordering"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2485
    :cond_16f
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mDisallowEnterPictureInPictureWhileLaunching:Z

    if-eqz v1, :cond_178

    .line 2486
    const-string v3, "android:activity.disallowEnterPictureInPictureWhileLaunching"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2489
    :cond_178
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mApplyActivityFlagsForBubbles:Z

    if-eqz v1, :cond_181

    .line 2490
    const-string v3, "android:activity.applyActivityFlagsForBubbles"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2492
    :cond_181
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    if-eqz v1, :cond_18a

    .line 2493
    const-string v3, "android:activity.animSpecs"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 2495
    :cond_18a
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_197

    .line 2496
    invoke-interface {v1}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const-string v3, "android:activity.animationFinishedListener"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2498
    :cond_197
    iget-object v1, p0, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    if-eqz v1, :cond_1a4

    .line 2499
    invoke-interface {v1}, Landroid/view/IAppTransitionAnimationSpecsFuture;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const-string v3, "android:activity.specsFuture"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2501
    :cond_1a4
    iget-object v1, p0, Landroid/app/ActivityOptions;->mSourceInfo:Landroid/app/ActivityOptions$SourceInfo;

    if-eqz v1, :cond_1ad

    .line 2502
    const-string v3, "android.activity.sourceInfo"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2504
    :cond_1ad
    iget v1, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    if-eq v1, v2, :cond_1b6

    .line 2505
    const-string v3, "android:activity.rotationAnimationHint"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2509
    :cond_1b6
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mIsActiveApplaunch:Z

    const-string v3, "android:activity.isActiveLaunch"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2510
    iget v1, p0, Landroid/app/ActivityOptions;->mIsMlLaunch:I

    const-string v3, "android:activity.isMlLaunch"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2513
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAppVerificationBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_1cd

    .line 2514
    const-string v3, "android:instantapps.installerbundle"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2516
    :cond_1cd
    iget-object v1, p0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    if-eqz v1, :cond_1d6

    .line 2517
    const-string v3, "android:activity.remoteAnimationAdapter"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2519
    :cond_1d6
    iget-object v1, p0, Landroid/app/ActivityOptions;->mLaunchCookie:Landroid/os/IBinder;

    if-eqz v1, :cond_1df

    .line 2520
    const-string v3, "android.activity.launchCookie"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2522
    :cond_1df
    iget-object v1, p0, Landroid/app/ActivityOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    if-eqz v1, :cond_1e8

    .line 2523
    const-string v3, "android:activity.remoteTransition"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2525
    :cond_1e8
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mOverrideTaskTransition:Z

    if-eqz v1, :cond_1f1

    .line 2526
    const-string v3, "android:activity.overrideTaskTransition"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2528
    :cond_1f1
    iget-object v1, p0, Landroid/app/ActivityOptions;->mSplashScreenThemeResName:Ljava/lang/String;

    if-eqz v1, :cond_202

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_202

    .line 2529
    iget-object v1, p0, Landroid/app/ActivityOptions;->mSplashScreenThemeResName:Ljava/lang/String;

    const-string v3, "android.activity.splashScreenTheme"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2531
    :cond_202
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mRemoveWithTaskOrganizer:Z

    if-eqz v1, :cond_20b

    .line 2532
    const-string v3, "android.activity.removeWithTaskOrganizer"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2534
    :cond_20b
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mLaunchedFromBubble:Z

    if-eqz v1, :cond_214

    .line 2535
    const-string v3, "android.activity.launchTypeBubble"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2537
    :cond_214
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mTransientLaunch:Z

    if-eqz v1, :cond_21d

    .line 2538
    const-string v3, "android.activity.transientLaunch"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2540
    :cond_21d
    iget v1, p0, Landroid/app/ActivityOptions;->mSplashScreenStyle:I

    if-eqz v1, :cond_226

    .line 2541
    const-string v3, "android.activity.splashScreenStyle"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2543
    :cond_226
    iget-object v1, p0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    if-eqz v1, :cond_22f

    .line 2544
    const-string v3, "android.activity.launchIntoPipParams"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2546
    :cond_22f
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mIsEligibleForLegacyPermissionPrompt:Z

    if-eqz v1, :cond_238

    .line 2547
    const-string v3, "android:activity.legacyPermissionPromptEligible"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2550
    :cond_238
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mDismissKeyguardIfInsecure:Z

    if-eqz v1, :cond_241

    .line 2551
    const-string v3, "android.activity.dismissKeyguardIfInsecure"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2553
    :cond_241
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mIgnorePendingIntentCreatorForegroundState:Z

    if-eqz v1, :cond_24a

    .line 2554
    const-string v3, "android.activity.ignorePendingIntentCreatorForegroundState"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2559
    :cond_24a
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mIsStartedFromWindowTypeLauncher:Z

    const-string v3, "android:activity.startedFromWindowTypeLauncher"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2561
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mResumedAffordanceAnimationRequested:Z

    if-eqz v1, :cond_25b

    .line 2562
    const/4 v1, 0x1

    const-string v3, "android:activity.resumedAffordanceAnimationRequested"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2564
    :cond_25b
    iget v1, p0, Landroid/app/ActivityOptions;->mForceLaunchWindowingMode:I

    if-eqz v1, :cond_264

    .line 2566
    const-string v3, "android.activity.forceWindowingMode"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2569
    :cond_264
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mApplyBigFreeformSize:Z

    const-string v3, "android:activity.applyBigFreeformSize"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2572
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mDismissSplitBeforeLaunch:Z

    const-string v3, "android:activity.dismissSplitBeforeLaunch"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2575
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mPreserveTaskWindowingMode:Z

    const-string v3, "android.activity.preserveTaskWindowingMode"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2578
    iget v1, p0, Landroid/app/ActivityOptions;->mSplitPosition:I

    const-string v3, "android.activity.splitPosition"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2579
    iget v1, p0, Landroid/app/ActivityOptions;->mSplitScreenCreateMode:I

    if-eq v1, v2, :cond_289

    .line 2580
    const-string v2, "android:activity.splitScreenCreateMode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2582
    :cond_289
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mNeedToReparentCell:Z

    const-string v2, "android:activity.reparentCell"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2585
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mIsPopOver:Z

    const-string v2, "android:activity.popOverInheritOptions"

    if-eqz v1, :cond_2e2

    .line 2586
    iget-object v1, p0, Landroid/app/ActivityOptions;->mPopOverWidthDp:[I

    const-string v3, "android:activity.popOverWidth"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 2587
    iget-object v1, p0, Landroid/app/ActivityOptions;->mPopOverHeightDp:[I

    const-string v3, "android:activity.popOverHeight"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 2588
    iget-object v1, p0, Landroid/app/ActivityOptions;->mPopOverAnchorMarginDp:[Landroid/graphics/Point;

    const-string v3, "android:activity.popOverAnchor"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 2589
    iget-object v1, p0, Landroid/app/ActivityOptions;->mPopOverAnchorPosition:[I

    const-string v3, "android:activity.popOverAnchorPosition"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 2590
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mIsPopOver:Z

    const-string v3, "android:activity.popOver"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2593
    iget-object v1, p0, Landroid/app/ActivityOptions;->mPopOverWidthWeight:[F

    const-string v3, "android:activity.popOverWidthWeight"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 2594
    iget-object v1, p0, Landroid/app/ActivityOptions;->mPopOverHeightWeight:[F

    const-string v3, "android:activity.popOverHeightWeight"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 2595
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mPopOverAllowOutsideTouch:Z

    const-string v3, "android:activity.popOverAllowOutsideTouch"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2596
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mPopOverRemoveDefaultMargin:Z

    const-string v3, "android:activity.popOverRemoveDefaultMargin"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2597
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mPopOverRemoveOutlineEffect:Z

    const-string v3, "android:activity.popOverRemoveOutlineEffect"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2598
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mPopOverInheritOptions:Z

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2e9

    .line 2600
    :cond_2e2
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mPopOverInheritOptions:Z

    if-nez v1, :cond_2e9

    .line 2601
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2605
    :cond_2e9
    :goto_2e9
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mIsPopOver:Z

    const-string v2, "android:activity.popOverInheritCloseExitResId"

    const-string v3, "android:activity.popOverInheritCloseEnterResId"

    const-string v4, "android:activity.popOverInheritOpenExitResId"

    const-string v5, "android:activity.popOverInheritOpenEnterResId"

    const-string v6, "android:activity.popOverExitResId"

    const-string v7, "android:activity.popOverEnterResId"

    const-string v8, "android:activity.popOverAnimationPackageName"

    if-eqz v1, :cond_321

    iget-object v1, p0, Landroid/app/ActivityOptions;->mPopOverAnimationPackageName:Ljava/lang/String;

    if-eqz v1, :cond_321

    .line 2606
    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2607
    iget v1, p0, Landroid/app/ActivityOptions;->mPopOverEnterResId:I

    invoke-virtual {v0, v7, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2608
    iget v1, p0, Landroid/app/ActivityOptions;->mPopOverExitResId:I

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2609
    iget v1, p0, Landroid/app/ActivityOptions;->mPopOverInheritOpenEnterResId:I

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2610
    iget v1, p0, Landroid/app/ActivityOptions;->mPopOverInheritOpenExitResId:I

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2611
    iget v1, p0, Landroid/app/ActivityOptions;->mPopOverInheritCloseEnterResId:I

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2612
    iget v1, p0, Landroid/app/ActivityOptions;->mPopOverInheritCloseExitResId:I

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_336

    .line 2614
    :cond_321
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2615
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2616
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2617
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2618
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2619
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2620
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2625
    :goto_336
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mLaunchedFromDnD:Z

    const-string v2, "android.activity.launchTypeDnD"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2628
    iget v1, p0, Landroid/app/ActivityOptions;->mEnterSplitSideWithAdjacentFlag:I

    const-string v2, "android:activity.enterSplitSideWithAdjacentFlag"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2631
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v1, :cond_34f

    .line 2632
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mIsActivityEmbeddedPlaceholder:Z

    const-string v2, "android:activity.activityEmbeddedPlaceholder"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2635
    :cond_34f
    return-object v0

    :pswitch_data_350
    .packed-switch 0x1
        :pswitch_c6
        :pswitch_b1
        :pswitch_72
        :pswitch_72
        :pswitch_44
        :pswitch_39
        :pswitch_39
        :pswitch_72
        :pswitch_72
        :pswitch_3b
        :pswitch_b1
    .end packed-switch
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 2818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityOptions("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), mPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAnimationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStartX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStartY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist update(Landroid/app/ActivityOptions;)V
    .registers 4
    .param p1, "otherOptions"    # Landroid/app/ActivityOptions;

    .line 2289
    iget-object v0, p1, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 2290
    iput-object v0, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 2292
    :cond_6
    iget-object v0, p1, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    .line 2293
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    .line 2294
    iput-object v0, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    .line 2295
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    .line 2296
    iput-object v0, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    .line 2297
    iput v1, p0, Landroid/app/ActivityOptions;->mResultCode:I

    .line 2298
    iput v1, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    .line 2299
    iget v1, p1, Landroid/app/ActivityOptions;->mAnimationType:I

    iput v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 2300
    iget v1, p1, Landroid/app/ActivityOptions;->mAnimationType:I

    packed-switch v1, :pswitch_data_be

    :pswitch_21
    goto/16 :goto_a0

    .line 2315
    :pswitch_23
    iget v0, p1, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    iput v0, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    .line 2316
    goto/16 :goto_a0

    .line 2348
    :pswitch_29
    iget-object v1, p1, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    .line 2349
    iget-object v1, p1, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    .line 2350
    iget-boolean v1, p1, Landroid/app/ActivityOptions;->mIsReturning:Z

    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    .line 2351
    iput-object v0, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 2352
    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 2353
    iget-object v0, p1, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    .line 2354
    iget v0, p1, Landroid/app/ActivityOptions;->mResultCode:I

    iput v0, p0, Landroid/app/ActivityOptions;->mResultCode:I

    .line 2355
    iget v0, p1, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    iput v0, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    goto :goto_a0

    .line 2334
    :pswitch_46
    iget-object v1, p1, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 2335
    iget v1, p1, Landroid/app/ActivityOptions;->mStartX:I

    iput v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    .line 2336
    iget v1, p1, Landroid/app/ActivityOptions;->mStartY:I

    iput v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    .line 2337
    iget v1, p1, Landroid/app/ActivityOptions;->mWidth:I

    iput v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    .line 2338
    iget v1, p1, Landroid/app/ActivityOptions;->mHeight:I

    iput v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    .line 2339
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_63

    .line 2341
    :try_start_5e
    invoke-interface {v1, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_61} :catch_62

    .line 2343
    goto :goto_63

    .line 2342
    :catch_62
    move-exception v0

    .line 2345
    :cond_63
    :goto_63
    iget-object v0, p1, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 2346
    goto :goto_a0

    .line 2318
    :pswitch_68
    iget v1, p1, Landroid/app/ActivityOptions;->mStartX:I

    iput v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    .line 2319
    iget v1, p1, Landroid/app/ActivityOptions;->mStartY:I

    iput v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    .line 2320
    iget v1, p1, Landroid/app/ActivityOptions;->mWidth:I

    iput v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    .line 2321
    iget v1, p1, Landroid/app/ActivityOptions;->mHeight:I

    iput v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    .line 2322
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_81

    .line 2324
    :try_start_7c
    invoke-interface {v1, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_7c .. :try_end_7f} :catch_80

    .line 2326
    goto :goto_81

    .line 2325
    :catch_80
    move-exception v1

    .line 2328
    :cond_81
    :goto_81
    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 2329
    goto :goto_a0

    .line 2302
    :pswitch_84
    iget v1, p1, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    iput v1, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    .line 2303
    iget v1, p1, Landroid/app/ActivityOptions;->mCustomExitResId:I

    iput v1, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    .line 2304
    iget v1, p1, Landroid/app/ActivityOptions;->mCustomBackgroundColor:I

    iput v1, p0, Landroid/app/ActivityOptions;->mCustomBackgroundColor:I

    .line 2305
    iput-object v0, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 2306
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_9b

    .line 2308
    :try_start_96
    invoke-interface {v1, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_99
    .catch Landroid/os/RemoteException; {:try_start_96 .. :try_end_99} :catch_9a

    .line 2310
    goto :goto_9b

    .line 2309
    :catch_9a
    move-exception v0

    .line 2312
    :cond_9b
    :goto_9b
    iget-object v0, p1, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 2313
    nop

    .line 2358
    :goto_a0
    iget-boolean v0, p1, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    .line 2359
    iget-object v0, p1, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    .line 2360
    iget-object v0, p1, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    .line 2361
    iget-object v0, p1, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 2362
    iget-object v0, p1, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 2363
    iget-object v0, p1, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    .line 2364
    iget-boolean v0, p1, Landroid/app/ActivityOptions;->mIsEligibleForLegacyPermissionPrompt:Z

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mIsEligibleForLegacyPermissionPrompt:Z

    .line 2365
    return-void

    nop

    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_84
        :pswitch_68
        :pswitch_46
        :pswitch_46
        :pswitch_29
        :pswitch_21
        :pswitch_21
        :pswitch_46
        :pswitch_46
        :pswitch_23
    .end packed-switch
.end method
