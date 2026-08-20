.class public Lcom/android/server/wm/Task;
.super Lcom/android/server/wm/TaskFragment;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/Task$Builder;,
        Lcom/android/server/wm/Task$TaskActivitiesReport;,
        Lcom/android/server/wm/Task$FindRootHelper;,
        Lcom/android/server/wm/Task$ActivityTaskHandler;,
        Lcom/android/server/wm/Task$ReparentMoveRootTaskMode;
    }
.end annotation


# static fields
.field public static final ATTR_AFFINITY:Ljava/lang/String; = "affinity"

.field public static final ATTR_ASKEDCOMPATMODE:Ljava/lang/String; = "asked_compat_mode"

.field public static final ATTR_AUTOREMOVERECENTS:Ljava/lang/String; = "auto_remove_recents"

.field public static final ATTR_CALLING_FEATURE_ID:Ljava/lang/String; = "calling_feature_id"

.field public static final ATTR_CALLING_PACKAGE:Ljava/lang/String; = "calling_package"

.field public static final ATTR_CALLING_UID:Ljava/lang/String; = "calling_uid"

.field public static final ATTR_DEDICATED_TASK:Ljava/lang/String; = "dedicated_task"

.field public static final ATTR_EFFECTIVE_UID:Ljava/lang/String; = "effective_uid"

.field public static final ATTR_HOST_PROCESS_NAME:Ljava/lang/String; = "host_process_name"

.field public static final ATTR_LASTDESCRIPTION:Ljava/lang/String; = "last_description"

.field public static final ATTR_LASTTIMEMOVED:Ljava/lang/String; = "last_time_moved"

.field public static final ATTR_LAST_SNAPSHOT_BUFFER_SIZE:Ljava/lang/String; = "last_snapshot_buffer_size"

.field public static final ATTR_LAST_SNAPSHOT_CONTENT_INSETS:Ljava/lang/String; = "last_snapshot_content_insets"

.field public static final ATTR_LAST_SNAPSHOT_TASK_SIZE:Ljava/lang/String; = "last_snapshot_task_size"

.field public static final ATTR_MIN_HEIGHT:Ljava/lang/String; = "min_height"

.field public static final ATTR_MIN_WIDTH:Ljava/lang/String; = "min_width"

.field public static final ATTR_NEVERRELINQUISH:Ljava/lang/String; = "never_relinquish_identity"

.field public static final ATTR_NEXT_AFFILIATION:Ljava/lang/String; = "next_affiliation"

.field public static final ATTR_NON_FULLSCREEN_BOUNDS:Ljava/lang/String; = "non_fullscreen_bounds"

.field public static final ATTR_ORIGACTIVITY:Ljava/lang/String; = "orig_activity"

.field public static final ATTR_PERSIST_TASK_VERSION:Ljava/lang/String; = "persist_task_version"

.field public static final ATTR_PREV_AFFILIATION:Ljava/lang/String; = "prev_affiliation"

.field public static final ATTR_REALACTIVITY:Ljava/lang/String; = "real_activity"

.field public static final ATTR_REALACTIVITY_SUSPENDED:Ljava/lang/String; = "real_activity_suspended"

.field public static final ATTR_RESIZE_MODE:Ljava/lang/String; = "resize_mode"

.field public static final ATTR_ROOTHASRESET:Ljava/lang/String; = "root_has_reset"

.field public static final ATTR_ROOT_AFFINITY:Ljava/lang/String; = "root_affinity"

.field public static final ATTR_SUPPORTS_PICTURE_IN_PICTURE:Ljava/lang/String; = "supports_picture_in_picture"

.field public static final ATTR_TASKID:Ljava/lang/String; = "task_id"

.field public static final ATTR_TASKTYPE:Ljava/lang/String; = "task_type"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ATTR_TASK_AFFILIATION:Ljava/lang/String; = "task_affiliation"

.field public static final ATTR_USERID:Ljava/lang/String; = "user_id"

.field public static final ATTR_USER_SETUP_COMPLETE:Ljava/lang/String; = "user_setup_complete"

.field public static final ATTR_WINDOW_LAYOUT_AFFINITY:Ljava/lang/String; = "window_layout_affinity"

.field public static final DEFAULT_MIN_TASK_SIZE_DP:I = 0xdc

.field public static final FLAG_FORCE_HIDDEN_FOR_PINNED_TASK:I = 0x1

.field public static final FLAG_FORCE_HIDDEN_FOR_TASK_ORG:I = 0x2

.field public static final INVALID_MAX_SIZE:I = -0x1

.field public static final LAYER_RANK_INVISIBLE:I = -0x1

.field public static final PERSIST_TASK_VERSION:I = 0x1

.field public static final REPARENT_KEEP_ROOT_TASK_AT_FRONT:I = 0x1

.field public static final REPARENT_LEAVE_ROOT_TASK_IN_PLACE:I = 0x2

.field public static final REPARENT_MOVE_ROOT_TASK_TO_FRONT:I = 0x0

.field public static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field public static final TAG_ACTIVITY:Ljava/lang/String; = "activity"

.field public static final TAG_AFFINITYINTENT:Ljava/lang/String; = "affinity_intent"

.field public static final TAG_CLEANUP:Ljava/lang/String; = "ActivityTaskManager"

.field public static final TAG_INTENT:Ljava/lang/String; = "intent"

.field public static final TAG_RECENTS:Ljava/lang/String; = "ActivityTaskManager"

.field public static final TAG_SCREENSHOTS:Ljava/lang/String; = "ActivityTaskManager"

.field public static final TAG_SPEG:Ljava/lang/String; = "SPEG"

.field public static final TAG_SWITCH:Ljava/lang/String; = "ActivityTaskManager"

.field public static final TAG_TASKS:Ljava/lang/String; = "ActivityTaskManager"

.field public static final TAG_TRANSITION:Ljava/lang/String; = "ActivityTaskManager"

.field public static final TAG_USER_LEAVING:Ljava/lang/String; = "ActivityTaskManager"

.field public static final TAG_VISIBILITY:Ljava/lang/String; = "ActivityTaskManager"

.field public static final TRANSLUCENT_CONVERSION_TIMEOUT:J = 0x7d0L

.field public static final TRANSLUCENT_TIMEOUT_MSG:I = 0x65

.field public static final sResetTargetTaskHelper:Lcom/android/server/wm/ResetTargetTaskHelper;

.field public static final sTmpBounds:Landroid/graphics/Rect;

.field public static sTmpException:Ljava/lang/Exception;


# instance fields
.field public affinity:Ljava/lang/String;

.field public affinityIntent:Landroid/content/Intent;

.field public askedCompatMode:Z

.field public autoRemoveRecents:Z

.field public effectiveUid:I

.field public inRecents:Z

.field public intent:Landroid/content/Intent;

.field public isAvailable:Z

.field public isPersistable:Z

.field public lastActiveTime:J

.field public lastDescription:Ljava/lang/CharSequence;

.field public lastGainFocusTime:J

.field public final mActivityGroups:Lcom/android/server/wm/ActivityRecordGroups;

.field public mAffiliatedTaskId:I

.field public final mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

.field public mAnimatingForChangeTransit:Z

.field public mBackGestureStarted:Z

.field public mCallingFeatureId:Ljava/lang/String;

.field public mCallingPackage:Ljava/lang/String;

.field public mCallingUid:I

.field public mCanAffectSystemUiFlags:Z

.field public mChangingPinnedToSplitScreen:Z

.field public mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

.field public mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

.field public mConfigWillChange:Z

.field public mCurrentUser:I

.field public mCutoutPolicy:I

.field public mDedicatedTask:Z

.field public mDeferTaskAppear:Z

.field public mDexCompatCustomSize:Landroid/graphics/Point;

.field public mDexCompatUiMode:I

.field public mDexLaunchPolicy:I

.field public mDexMetaDataInfo:Lcom/android/server/wm/DexController$DexMetaDataInfo;

.field public mDisplayCompatPolicy:I

.field public mDisplayCompatReason:Ljava/lang/String;

.field public mDragMoving:Z

.field public mDragResizeMode:I

.field public mDragResizing:Z

.field public final mExitingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mFindRootHelper:Lcom/android/server/wm/Task$FindRootHelper;

.field public mForceHiddenFlags:I

.field public mForceShowForAllUsers:Z

.field public mFreeformHeaderType:I
    .annotation build Lcom/samsung/android/multiwindow/MultiWindowManager$FreeformHeaderType;
    .end annotation
.end field

.field public mFreeformStashYFraction:F

.field public final mFreezeSnapshotOffset:Landroid/graphics/Point;

.field public final mHandler:Landroid/os/Handler;

.field public mHasBeenVisible:Z

.field public mHasTopFullscreenWindow:Z

.field public mHasWindowFocus:Z

.field public mHostProcessName:Ljava/lang/String;

.field public mIgnoreDevSettingForNonResizable:Z

.field public mInRemoveTask:Z

.field public mInResumeTopActivity:Z

.field public mIsAliasManaged:Z

.field public mIsAvoidTrimDexPendingActivityTask:Z

.field public mIsDexCompatEnabled:Z

.field public mIsEffectivelySystemApp:Z

.field public mIsMinimized:Z

.field public mIsSplitActivityPackage:Z

.field public mIsWaitingRemoveEmbedActivityTask:Z

.field public mLastDensityDpi:F

.field public mLastDispatchedWindowFocusInTask:Z

.field public mLastMinimizedDisplayType:I

.field public mLastMinimizedRotation:I

.field public mLastNonFullscreenBounds:Landroid/graphics/Rect;

.field public mLastRecentsAnimationOverlay:Landroid/view/SurfaceControl;

.field public mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

.field public mLastReportedRequestedOrientation:I

.field public mLastRotationDisplayId:I

.field public mLastSurfaceShowing:Z

.field public final mLastTaskSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

.field public mLastTimeMoved:J

.field public mLaunchCookie:Landroid/os/IBinder;

.field public mLayerRank:I

.field public mLockTaskAuth:I

.field public mLockTaskUid:I

.field public final mMaxDimensions:Landroid/graphics/Point;

.field public mMaxHeight:I

.field public mMaxWidth:I

.field public mMetaKeyBounds:Landroid/graphics/Rect;

.field public final mMinDimensions:Landroid/graphics/Point;

.field public mMinimizeAnimState:I

.field public mNaturalSwitchingBounds:Landroid/graphics/Rect;

.field public mNeedToSendFreeformLogging:Z

.field public mNeverRelinquishIdentity:Z

.field public mNextAffiliate:Lcom/android/server/wm/Task;

.field public mNextAffiliateTaskId:I

.field public mOldHostProcessName:Ljava/lang/String;

.field public mOrientationControlEnabledAsAspectRatio:Z

.field public mOrientationControlEnabledAsFullScreen:Z

.field public mPendingDexNonResizeableAppRestartHelpMode:I

.field public mPendingEnsureVisibleForPopOver:Z

.field public mPrevAffiliate:Lcom/android/server/wm/Task;

.field public mPrevAffiliateTaskId:I

.field public mPrevDisplayId:I

.field public mRemoveWithTaskOrganizer:Z

.field public mRemoving:Z

.field public mResizeMode:I

.field public final mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

.field public mReuseTask:Z

.field public mRootProcess:Lcom/android/server/wm/WindowProcessController;

.field public mRotation:I

.field public mSetInternalPresentationOnly:Z

.field public mShadowRadius:F

.field public mSizeChangesSupported:I

.field public mSkipChangeTransition:Z

.field public mSkipSavingLaunchingState:Z

.field public final mSnappingGuideBounds:Landroid/graphics/Rect;

.field public mSupportsPictureInPicture:Z

.field public mTakeInitBounds:Z

.field public mTaskAppearedSent:Z

.field public mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

.field public final mTaskId:I

.field public mTaskOrganizer:Landroid/window/ITaskOrganizer;

.field public mTmpConfig:Landroid/content/res/Configuration;

.field public final mTmpDimBoundsRect:Landroid/graphics/Rect;

.field public mTmpRect:Landroid/graphics/Rect;

.field public mTmpRect2:Landroid/graphics/Rect;

.field public mTmpRect3:Landroid/graphics/Rect;

.field public mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

.field public mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mUserId:I

.field public mUserSetupComplete:Z

.field public mWindowLayoutAffinity:Ljava/lang/String;

.field public maxRecents:I

.field public origActivity:Landroid/content/ComponentName;

.field public realActivity:Landroid/content/ComponentName;

.field public realActivitySuspended:Z

.field public rootAffinity:Ljava/lang/String;

.field public rootWasReset:Z

.field public stringName:Ljava/lang/String;

.field public voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field public voiceSession:Landroid/service/voice/IVoiceInteractionSession;


# direct methods
.method public static synthetic $r8$lambda$-SQ_Ya3XHv-KZ5tqRm8Dzr5h-z8(Lcom/android/server/wm/WindowState;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/Task;->lambda$getStartingWindowInfo$19(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$-nHv3hp3munhu4Gy96iX2y0sRuI(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->isTopRunningNonDelayed(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$0HX9mEvTiATn7LYucPH_KwroU4I(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/Task;->lambda$getTopFullscreenActivity$10(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$2fKdEojyq4oRLrzOgUVkh-rjIQU(Lcom/android/server/wm/Task;[I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->lambda$getDescendantTaskCount$7(Lcom/android/server/wm/Task;[I)V

    return-void
.end method

.method public static synthetic $r8$lambda$4uoiBIGNMTDRqeJdiWkAelWVBX8(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->processTaskResizeBounds(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7nTho283cVKQ1bb86OUzh4bK9Cc(Lcom/android/server/wm/Task;Landroid/os/IBinder;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->finishIfVoiceTask(Lcom/android/server/wm/Task;Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7pzCeVcv8LYlohgadb0Z9vaxVV0(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->lambda$finishIfVoiceTask$31(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9DIUOYGEcbU3ctR_iQnKw68NAUA(Lcom/android/server/wm/Task;[ILcom/android/server/wm/Task;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/Task;->lambda$sendFreeformLogging$45([ILcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9lvChwFkA9-_NtAOvLhSWbchcC4(Lcom/android/server/wm/WindowState;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/Task;->lambda$getFreezeSnapshotExcludeLayers$43(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$C79vZmcNLmVC27hgaOnJza99zto(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->lambda$moveTaskToBack$35(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CWQSgZUdetF-fOWd59mP_yKJsRM(ZZLcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Task;->lambda$getTopVisibleActivity$11(ZZLcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$CjYN3ut3_eNan1AWUCfq2whHyXw(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/util/TypedXmlSerializer;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Task;->saveActivityToXml(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/util/TypedXmlSerializer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Eydjumz2u4-U7QhHLWv_7aaOjAc([Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskFragment;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->lambda$findEnterPipOnTaskSwitchCandidate$30([Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskFragment;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$F9iqui4rkeXHuziH1tdibEayB-Q(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/Task;->lambda$startActivityLocked$29(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$GAnQKbdA3I3N9RS5kmheeAJihuE(ZLcom/android/server/wm/WindowState;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->lambda$updateWindowFocusInTask$47(ZLcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HtLwTo6XUS5TyWdw6lnW2QRWqtU(ZLjava/util/ArrayList;Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Task;->lambda$removeActivities$5(ZLjava/util/ArrayList;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$I3V5t7ZX1Ip_YH884BnxvjqYRZw(Lcom/android/server/wm/ActivityRecord;ILandroid/os/IBinder;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Task;->isTopRunning(Lcom/android/server/wm/ActivityRecord;ILandroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$IOkAHw--PQwJ3Vo9393SXFTSSsc(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->finishActivityAbove(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$I_h9QTNDmxrbvHUXlrj2AXshjoA(Lcom/android/server/wm/ActivityRecord;[I[Landroid/content/Intent;[Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/wm/Task;->lambda$navigateUpTo$34(Lcom/android/server/wm/ActivityRecord;[I[Landroid/content/Intent;[Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$J-kELwEdJ4X1ZdNLCAPiIhsPTQ4(Ljava/util/function/Consumer;ZLcom/android/server/wm/Task;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Task;->lambda$forAllLeafTasksAndLeafTaskFragments$14(Ljava/util/function/Consumer;ZLcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L-UhtZvUr6xFnpEmwT08R6R0qY8(Lcom/android/server/wm/WindowState;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/Task;->lambda$hasWallpaper$18(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$PRiyfFwy4dog-mhOrPI0NF2Vdhc(Lcom/android/server/wm/ActivityRecord;Landroid/content/ComponentName;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->matchesActivityInHistory(Lcom/android/server/wm/ActivityRecord;Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$QvmDjp_nw8Vaeg7PrYnJkBAaViM(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/Task;->lambda$isChangeTransitionBlockedByCommonPolicy$41(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$SbkWS66bgd4Xoy1ZCpv2JqB3-TE(Lcom/android/server/wm/WindowState;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/Task;->lambda$getFreezeSnapshotExcludeLayers$42(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$SdFTZX1OSgxZ2OWVFR9WT7q4mTQ(Ljava/util/ArrayList;ILcom/android/server/wm/AnimationAdapter;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Task;->lambda$applyAnimationUnchecked$15(Ljava/util/ArrayList;ILcom/android/server/wm/AnimationAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TwcYFtyP_7sSBwZAOJGxcsSiZJc(Lcom/android/server/wm/ActivityRecord;Landroid/os/IBinder;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->finishIfVoiceActivity(Lcom/android/server/wm/ActivityRecord;Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$UqOZnD1FgFOGmAuBU4uaaelTkDg(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Task;->restartPackage(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VFhuFU1Hc2vousWfGMMQIdxc82U(Lcom/android/server/wm/Task;ZLjava/lang/String;Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/Task;->lambda$removeActivities$4(ZLjava/lang/String;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WQCMPVRcD4nvEJ_k0mH7LYkgVjM(Lcom/android/server/wm/TaskFragment;[ZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ZLcom/android/server/wm/TaskFragment;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/server/wm/Task;->lambda$resumeTopActivityInnerLocked$27(Lcom/android/server/wm/TaskFragment;[ZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ZLcom/android/server/wm/TaskFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X5rCODkQ3pvOaLU2fluto_zEWfM(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/Task;->lambda$isOpeningAboveDismissingSplit$39(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Y3UiD9jF8-SMRYMnTJtnITa8rUw(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->lambda$setMainWindowSizeChangeTransaction$21(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_YAN_EG0Y0WkTCuARoZLSgGq8-A(Lcom/android/server/wm/Task;Ljava/util/ArrayList;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/Task;->lambda$switchUser$24(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bLvpAZxJ8FEo24sOytkxSrlOQb4(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/Task;->lambda$trimIneffectiveInfo$17(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$bhgfn2boEMpOUPR76g0bjVX1TJg(Lcom/android/server/wm/ActivityRecord;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/Task;->lambda$onParentChanged$0(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d7VqW9-QuIG3fa4SE4rZTShpv-s(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/Task;->lambda$getTopRealVisibleActivity$12(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$fffl2Sd197rIs1IthLhcYEPebAQ(Lcom/android/server/wm/Task;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/Task;->lambda$dismissPip$37()V

    return-void
.end method

.method public static synthetic $r8$lambda$gox43VmaWXNZ8xTj24ONn7eRLCc(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/Task;->lambda$getTopWaitSplashScreenActivity$13(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$grn6QGfUPdYuFKkgRVA5YckUMdw(Z[ILcom/android/server/wm/TaskFragment;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Task;->lambda$goToSleepIfPossible$25(Z[ILcom/android/server/wm/TaskFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$htbDIJhKVMPL6ktiHFeWcDgJJGc(Lcom/android/server/wm/ActivityRecord;IZZLcom/android/server/wm/Task;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/wm/Task;->lambda$ensureActivitiesVisible$26(Lcom/android/server/wm/ActivityRecord;IZZLcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i3TCG_PZhzjJAEbZ18r3wrmygxo(Lcom/android/server/wm/ActivityRecord;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/Task;->lambda$onAnimationFinished$38(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ijcmKqCU8ACMeituM1MxrLyI00Y(Lcom/android/server/wm/WindowState;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/Task;->lambda$topActivityContainsStartingWindow$2(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$kofYZIDLGsb7kcT__Jk4-od7tkQ(Lcom/android/server/wm/WindowState;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/Task;->lambda$onAnimationLeashLost$40(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lDNgZgg4NxaNn50IUJEvo41xlQE(Lcom/android/server/wm/WindowState;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/Task;->lambda$setMainWindowSizeChangeTransaction$20(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lociuDY0GrdJhJ3nnaCKsl2AsKs(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/Task;->lambda$topActivityContainsStartingWindow$3(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$m9HWwlXBRq_aY--2sooze_CiMMc(Lcom/android/server/wm/Task;[ZLcom/android/server/wm/Task;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/Task;->lambda$inFrontOfStandardRootTask$32([ZLcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$o0JVps9Vd_ldFln7oXCmtvQnO1M(Lcom/android/server/wm/Task;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/Task;->lambda$setWindowingMode$23(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$o6_JaI6wvbJgPKzrC6167zpkJ6s(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/Task;->lambda$needsWindowFocusInTask$46(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$qhEHRqAphwTOwepTWTdZBmhdwFE(Lcom/android/server/am/ActivityManagerService$ItemMatcher;Ljava/util/ArrayList;Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Task;->lambda$getDumpActivitiesLocked$36(Lcom/android/server/am/ActivityManagerService$ItemMatcher;Ljava/util/ArrayList;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qjBpDLSo_osTHUebmVR0R-BqIrQ(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;[Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Task;->getMaxVisibleBounds(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;[Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$raRg_IY56XOHIXOf-7XWgB7vPp4(Lcom/android/server/wm/ActivityRecord;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/Task;->lambda$clearSizeCompatMode$48(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uOQjSxqAn2WooNaNiTEjHKcrY0g(Landroid/content/ComponentName;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->lambda$navigateUpTo$33(Landroid/content/ComponentName;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$uPzn7AyFC3Orcy8ROEU4TPRxugk(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityManager$TaskDescription;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Task;->setTaskDescriptionFromActivityAboveRoot(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityManager$TaskDescription;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$wKY8HKGWhC4EnnMc_h2Gst58dII(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/Task;->lambda$getOccludingActivityAbove$9(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$yW9T00UlVRz3MVcms7hUk8nlkNY(Landroid/app/TaskInfo;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->lambda$fillTaskInfo$16(Landroid/app/TaskInfo;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zCgHIfH1RMfR4Ml0lXmnlyMvvpw(Lcom/android/server/wm/Task;ZLjava/lang/Object;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/Task;->lambda$getNextFocusableTask$8(ZLjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$zOx-XyyOtUf8k3Ff3exfX9_43OY(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/Task;->lambda$resumeTopActivityInnerLocked$28(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmHasBeenVisible(Lcom/android/server/wm/Task;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mHasBeenVisible:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddChild(Lcom/android/server/wm/Task;Lcom/android/server/wm/WindowContainer;IZ)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;IZ)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 541
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/Task;->sTmpBounds:Landroid/graphics/Rect;

    .line 726
    new-instance v0, Lcom/android/server/wm/ResetTargetTaskHelper;

    invoke-direct {v0}, Lcom/android/server/wm/ResetTargetTaskHelper;-><init>()V

    sput-object v0, Lcom/android/server/wm/Task;->sResetTargetTaskHelper:Lcom/android/server/wm/ResetTargetTaskHelper;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;JZLandroid/app/ActivityManager$TaskDescription;Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;IIIILjava/lang/String;Ljava/lang/String;IZZZIILandroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLandroid/os/IBinder;ZZ)V
    .registers 50

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move/from16 v3, p26

    move-object/from16 v4, p32

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, p1

    move/from16 v8, p35

    .line 859
    invoke-direct {p0, p1, v5, v8, v6}, Lcom/android/server/wm/TaskFragment;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/IBinder;ZZ)V

    const/4 v7, 0x0

    .line 362
    iput v7, v0, Lcom/android/server/wm/Task;->mShadowRadius:F

    .line 374
    iput-boolean v6, v0, Lcom/android/server/wm/Task;->mIsMinimized:Z

    .line 387
    iput v6, v0, Lcom/android/server/wm/Task;->mMinimizeAnimState:I

    .line 396
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    iput-object v8, v0, Lcom/android/server/wm/Task;->mFreezeSnapshotOffset:Landroid/graphics/Point;

    .line 411
    iput-object v5, v0, Lcom/android/server/wm/Task;->mNaturalSwitchingBounds:Landroid/graphics/Rect;

    .line 415
    iput v7, v0, Lcom/android/server/wm/Task;->mFreeformStashYFraction:F

    .line 419
    iput-boolean v6, v0, Lcom/android/server/wm/Task;->mIsWaitingRemoveEmbedActivityTask:Z

    const/4 v8, -0x1

    .line 423
    iput v8, v0, Lcom/android/server/wm/Task;->mLastMinimizedDisplayType:I

    .line 424
    iput v8, v0, Lcom/android/server/wm/Task;->mLastMinimizedRotation:I

    .line 450
    iput-object v5, v0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 451
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 462
    iput-boolean v6, v0, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    const/4 v9, 0x1

    .line 501
    iput v9, v0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    .line 503
    iput v8, v0, Lcom/android/server/wm/Task;->mLockTaskUid:I

    .line 511
    iput-boolean v6, v0, Lcom/android/server/wm/Task;->isPersistable:Z

    .line 519
    iput-boolean v9, v0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    .line 526
    iput-boolean v6, v0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 532
    iput v8, v0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    .line 534
    iput v8, v0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    .line 546
    iput-object v5, v0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 563
    iput v8, v0, Lcom/android/server/wm/Task;->mLayerRank:I

    .line 566
    new-instance v10, Landroid/content/res/Configuration;

    invoke-direct {v10}, Landroid/content/res/Configuration;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mTmpConfig:Landroid/content/res/Configuration;

    .line 569
    new-instance v10, Lcom/android/server/wm/Task$TaskActivitiesReport;

    invoke-direct {v10}, Lcom/android/server/wm/Task$TaskActivitiesReport;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    .line 573
    iput v6, v0, Lcom/android/server/wm/Task;->mSizeChangesSupported:I

    .line 575
    iput v6, v0, Lcom/android/server/wm/Task;->mDisplayCompatPolicy:I

    .line 585
    iput v8, v0, Lcom/android/server/wm/Task;->mPrevDisplayId:I

    .line 588
    iput v8, v0, Lcom/android/server/wm/Task;->mLastRotationDisplayId:I

    .line 603
    iput v8, v0, Lcom/android/server/wm/Task;->mLastReportedRequestedOrientation:I

    .line 606
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    .line 608
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    .line 610
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mTmpRect3:Landroid/graphics/Rect;

    .line 633
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    .line 636
    iput-boolean v9, v0, Lcom/android/server/wm/Task;->mCanAffectSystemUiFlags:Z

    .line 641
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mExitingActivities:Ljava/util/ArrayList;

    .line 648
    iput v6, v0, Lcom/android/server/wm/Task;->mForceHiddenFlags:I

    .line 668
    iput v8, v0, Lcom/android/server/wm/Task;->mMaxWidth:I

    .line 669
    iput v8, v0, Lcom/android/server/wm/Task;->mMaxHeight:I

    .line 674
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10, v8, v8}, Landroid/graphics/Point;-><init>(II)V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mMinDimensions:Landroid/graphics/Point;

    .line 675
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10, v8, v8}, Landroid/graphics/Point;-><init>(II)V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mMaxDimensions:Landroid/graphics/Point;

    .line 677
    iput v7, v0, Lcom/android/server/wm/Task;->mLastDensityDpi:F

    .line 685
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v0, Lcom/android/server/wm/Task;->mSnappingGuideBounds:Landroid/graphics/Rect;

    .line 698
    iput-boolean v6, v0, Lcom/android/server/wm/Task;->mNeedToSendFreeformLogging:Z

    .line 701
    new-instance v7, Lcom/android/server/wm/AnimatingActivityRegistry;

    invoke-direct {v7}, Lcom/android/server/wm/AnimatingActivityRegistry;-><init>()V

    iput-object v7, v0, Lcom/android/server/wm/Task;->mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

    .line 728
    new-instance v7, Lcom/android/server/wm/Task$FindRootHelper;

    invoke-direct {v7, p0, v5}, Lcom/android/server/wm/Task$FindRootHelper;-><init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task$FindRootHelper-IA;)V

    iput-object v7, v0, Lcom/android/server/wm/Task;->mFindRootHelper:Lcom/android/server/wm/Task$FindRootHelper;

    .line 804
    iput-boolean v9, v0, Lcom/android/server/wm/Task;->mLastSurfaceShowing:Z

    .line 810
    iput-boolean v6, v0, Lcom/android/server/wm/Task;->mBackGestureStarted:Z

    .line 813
    iput-object v5, v0, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    .line 814
    iput-object v5, v0, Lcom/android/server/wm/Task;->mOldHostProcessName:Ljava/lang/String;

    .line 815
    iput-boolean v6, v0, Lcom/android/server/wm/Task;->mDedicatedTask:Z

    .line 820
    iput-boolean v6, v0, Lcom/android/server/wm/Task;->mTakeInitBounds:Z

    .line 825
    iput-boolean v9, v0, Lcom/android/server/wm/Task;->mHasTopFullscreenWindow:Z

    .line 834
    iput-object v5, v0, Lcom/android/server/wm/Task;->mMetaKeyBounds:Landroid/graphics/Rect;

    .line 839
    iput v6, v0, Lcom/android/server/wm/Task;->mDexLaunchPolicy:I

    .line 841
    iput-boolean v6, v0, Lcom/android/server/wm/Task;->mIsDexCompatEnabled:Z

    .line 842
    iput v6, v0, Lcom/android/server/wm/Task;->mDexCompatUiMode:I

    .line 861
    iput v1, v0, Lcom/android/server/wm/Task;->mTaskId:I

    move/from16 v6, p12

    .line 862
    iput v6, v0, Lcom/android/server/wm/Task;->mUserId:I

    .line 863
    iput v3, v0, Lcom/android/server/wm/Task;->mResizeMode:I

    move/from16 v6, p27

    .line 864
    iput-boolean v6, v0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    if-eqz p18, :cond_d7

    move-object/from16 v6, p18

    goto :goto_dc

    .line 867
    :cond_d7
    new-instance v6, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v6}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    :goto_dc
    iput-object v6, v0, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz p19, :cond_e3

    move-object/from16 v6, p19

    goto :goto_e8

    .line 870
    :cond_e3
    new-instance v6, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    invoke-direct {v6}, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;-><init>()V

    :goto_e8
    iput-object v6, v0, Lcom/android/server/wm/Task;->mLastTaskSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    .line 877
    iget-object v6, v0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    invoke-virtual {v6}, Lcom/android/server/wm/FreeformController;->getFreeformHeaderType()I

    move-result v6

    iput v6, v0, Lcom/android/server/wm/Task;->mFreeformHeaderType:I

    const/4 v6, -0x2

    .line 881
    invoke-virtual {p0, v6}, Lcom/android/server/wm/WindowContainer;->setOrientation(I)V

    move-object v6, p4

    .line 882
    iput-object v6, v0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    move-object/from16 v6, p5

    .line 883
    iput-object v6, v0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    move-object/from16 v6, p6

    .line 884
    iput-object v6, v0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    move-object/from16 v6, p33

    .line 885
    iput-object v6, v0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    move-object/from16 v6, p34

    .line 886
    iput-object v6, v0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    move-object/from16 v6, p7

    .line 887
    iput-object v6, v0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    move/from16 v6, p28

    .line 888
    iput-boolean v6, v0, Lcom/android/server/wm/Task;->realActivitySuspended:Z

    move-object/from16 v6, p8

    .line 889
    iput-object v6, v0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    move/from16 v6, p9

    .line 890
    iput-boolean v6, v0, Lcom/android/server/wm/Task;->rootWasReset:Z

    .line 891
    iput-boolean v9, v0, Lcom/android/server/wm/Task;->isAvailable:Z

    move/from16 v6, p10

    .line 892
    iput-boolean v6, v0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    move/from16 v6, p11

    .line 893
    iput-boolean v6, v0, Lcom/android/server/wm/Task;->askedCompatMode:Z

    move/from16 v6, p29

    .line 894
    iput-boolean v6, v0, Lcom/android/server/wm/Task;->mUserSetupComplete:Z

    move/from16 v6, p13

    .line 895
    iput v6, v0, Lcom/android/server/wm/Task;->effectiveUid:I

    .line 896
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->touchActiveTime()V

    move-object/from16 v6, p14

    .line 897
    iput-object v6, v0, Lcom/android/server/wm/Task;->lastDescription:Ljava/lang/CharSequence;

    move-wide/from16 v6, p15

    .line 898
    iput-wide v6, v0, Lcom/android/server/wm/Task;->mLastTimeMoved:J

    move/from16 v6, p17

    .line 899
    iput-boolean v6, v0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    move/from16 v6, p20

    .line 900
    iput v6, v0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    move/from16 v6, p21

    .line 901
    iput v6, v0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    move/from16 v6, p22

    .line 902
    iput v6, v0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    move/from16 v6, p23

    .line 903
    iput v6, v0, Lcom/android/server/wm/Task;->mCallingUid:I

    move-object/from16 v6, p24

    .line 904
    iput-object v6, v0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    move-object/from16 v6, p25

    .line 905
    iput-object v6, v0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    .line 906
    iput v3, v0, Lcom/android/server/wm/Task;->mResizeMode:I

    if-eqz v4, :cond_15f

    .line 908
    invoke-virtual {p0, p3, v4}, Lcom/android/server/wm/Task;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 909
    invoke-virtual {p0, v4}, Lcom/android/server/wm/Task;->setMinDimensions(Landroid/content/pm/ActivityInfo;)V

    goto :goto_169

    .line 911
    :cond_15f
    iput-object v2, v0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    move/from16 v2, p30

    .line 912
    iput v2, v0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    move/from16 v2, p31

    .line 913
    iput v2, v0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    .line 918
    :goto_169
    invoke-static {}, Lcom/android/server/wm/PackageSettingsManager;->getInstance()Lcom/android/server/wm/PackageSettingsManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/server/wm/PackageSettingsManager;->updateValuesToTask(Lcom/android/server/wm/Task;)V

    .line 921
    iget-object v2, v0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMwSupportPolicyController:Lcom/android/server/wm/MultiWindowSupportPolicyController;

    invoke-virtual {v2, p0, v4}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->updateSupportPolicyLocked(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo;)V

    .line 923
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_ACTIVITY:Z

    if-eqz v2, :cond_180

    new-instance v5, Lcom/android/server/wm/ActivityRecordGroups;

    invoke-direct {v5, p0}, Lcom/android/server/wm/ActivityRecordGroups;-><init>(Lcom/android/server/wm/Task;)V

    :cond_180
    iput-object v5, v0, Lcom/android/server/wm/Task;->mActivityGroups:Lcom/android/server/wm/ActivityRecordGroups;

    .line 926
    iget-object v2, v0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, p2, v3}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskCreated(ILandroid/content/ComponentName;)V

    .line 927
    new-instance v2, Lcom/android/server/wm/Task$ActivityTaskHandler;

    iget-object v3, v0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mLooper:Landroid/os/Looper;

    invoke-direct {v2, p0, v3}, Lcom/android/server/wm/Task$ActivityTaskHandler;-><init>(Lcom/android/server/wm/Task;Landroid/os/Looper;)V

    iput-object v2, v0, Lcom/android/server/wm/Task;->mHandler:Landroid/os/Handler;

    .line 928
    iget-object v2, v0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v2

    iput v2, v0, Lcom/android/server/wm/Task;->mCurrentUser:I

    move-object/from16 v2, p36

    .line 930
    iput-object v2, v0, Lcom/android/server/wm/Task;->mLaunchCookie:Landroid/os/IBinder;

    move/from16 v2, p37

    .line 931
    iput-boolean v2, v0, Lcom/android/server/wm/Task;->mDeferTaskAppear:Z

    move/from16 v2, p38

    .line 932
    iput-boolean v2, v0, Lcom/android/server/wm/Task;->mRemoveWithTaskOrganizer:Z

    .line 933
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v2

    if-eqz v2, :cond_1b5

    goto :goto_1b9

    :cond_1b5
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v8

    :goto_1b9
    invoke-static {p2, v8}, Lcom/android/server/wm/EventLogTags;->writeWmTaskCreated(II)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;JZLandroid/app/ActivityManager$TaskDescription;Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;IIIILjava/lang/String;Ljava/lang/String;IZZZIILandroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLandroid/os/IBinder;ZZLcom/android/server/wm/Task-IA;)V
    .registers 40

    invoke-direct/range {p0 .. p38}, Lcom/android/server/wm/Task;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;JZLandroid/app/ActivityManager$TaskDescription;Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;IIIILjava/lang/String;Ljava/lang/String;IZZZIILandroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLandroid/os/IBinder;ZZ)V

    return-void
.end method

.method public static enableEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    :cond_3
    if-eqz p3, :cond_c

    .line 6697
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->disallowEnterPictureInPictureWhileLaunching()Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    .line 6701
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_13

    return-void

    :cond_13
    const/4 v0, 0x1

    if-eqz p3, :cond_1e

    .line 6705
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getTransientLaunch()Z

    move-result p3

    if-eqz p3, :cond_1e

    move p3, v0

    goto :goto_1f

    :cond_1e
    const/4 p3, 0x0

    :goto_1f
    if-eqz p1, :cond_26

    .line 6707
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p1

    goto :goto_2a

    :cond_26
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p1

    :goto_2a
    if-eqz p1, :cond_35

    .line 6708
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeAssistant()Z

    move-result p1

    if-nez p1, :cond_34

    if-eqz p3, :cond_35

    :cond_34
    return-void

    :cond_35
    if-eqz p2, :cond_72

    .line 6717
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p3

    if-eq p1, p3, :cond_4e

    .line 6718
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 6719
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result p1

    if-nez p1, :cond_4e

    :cond_4d
    return-void

    .line 6723
    :cond_4e
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_5b

    .line 6724
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_5b

    return-void

    .line 6728
    :cond_5b
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_72

    .line 6729
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_72

    .line 6730
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getStagePosition()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getStagePosition()I

    move-result p2

    if-eq p1, p2, :cond_72

    return-void

    .line 6736
    :cond_72
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    return-void
.end method

.method public static findEnterPipOnTaskSwitchCandidate(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/server/wm/ActivityRecord;

    .line 6672
    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda23;

    invoke-direct {v1, v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda23;-><init>([Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskFragment;->forAllLeafTaskFragments(Ljava/util/function/Predicate;)Z

    const/4 p0, 0x0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static finishActivityAbove(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    .line 2154
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_20

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v0

    if-nez v0, :cond_20

    .line 2155
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getOptions()Landroid/app/ActivityOptions;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 2157
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearOptionsAnimation()V

    .line 2159
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    :cond_1b
    const-string p1, "clear-task-stack"

    .line 2161
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    :cond_20
    return v1
.end method

.method public static finishIfVoiceActivity(Lcom/android/server/wm/ActivityRecord;Landroid/os/IBinder;)Z
    .registers 4

    .line 6842
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_21

    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eq v0, p1, :cond_b

    goto :goto_21

    .line 6844
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearVoiceSessionLocked()V

    .line 6846
    :try_start_e
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/app/IApplicationThread;->scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1a} :catch_1a

    .line 6850
    :catch_1a
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->finishRunningVoiceLocked()V

    const/4 p0, 0x1

    return p0

    :cond_21
    :goto_21
    const/4 p0, 0x0

    return p0
.end method

.method public static finishIfVoiceTask(Lcom/android/server/wm/Task;Landroid/os/IBinder;)V
    .registers 4

    .line 6825
    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_13

    .line 6826
    new-instance p1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda20;

    invoke-direct {p1, p0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/wm/Task;)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    goto :goto_28

    .line 6833
    :cond_13
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda21;-><init>()V

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 6834
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 6833
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object p1

    .line 6836
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;)Z

    .line 6837
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    :goto_28
    return-void
.end method

.method public static fitWithinBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .registers 8

    if-eqz p1, :cond_52

    .line 2843
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_52

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_52

    .line 2851
    :cond_f
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2852
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    add-int v2, v1, p2

    const/4 v3, 0x0

    if-ge v0, v2, :cond_23

    sub-int/2addr v0, v1

    sub-int/2addr p2, v0

    goto :goto_30

    .line 2854
    :cond_23
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int v2, v1, p2

    if-le v0, v2, :cond_2f

    sub-int/2addr v1, v0

    sub-int/2addr p2, v1

    neg-int p2, p2

    goto :goto_30

    :cond_2f
    move p2, v3

    .line 2858
    :goto_30
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 2859
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int v2, v1, p3

    if-ge v0, v2, :cond_44

    sub-int/2addr v0, v1

    sub-int v3, p3, v0

    goto :goto_4f

    .line 2861
    :cond_44
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p1, p3

    if-le v0, v1, :cond_4f

    sub-int/2addr p1, v0

    sub-int/2addr p3, p1

    neg-int v3, p3

    .line 2864
    :cond_4f
    :goto_4f
    invoke-virtual {p0, p2, v3}, Landroid/graphics/Rect;->offset(II)V

    :cond_52
    :goto_52
    return-void
.end method

.method public static fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 938
    :cond_4
    invoke-virtual {p0}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public static getMaxVisibleBounds(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;[Z)V
    .registers 11

    .line 3583
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mIsExiting:Z

    if-nez v0, :cond_45

    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->isClientVisible()Z

    move-result v0

    if-eqz v0, :cond_45

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v0, :cond_f

    goto :goto_45

    .line 3589
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMaxVisibleAppWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-nez p0, :cond_16

    return-void

    :cond_16
    const/4 v0, 0x0

    .line 3598
    aget-boolean v1, p2, v0

    if-nez v1, :cond_21

    const/4 v1, 0x1

    .line 3599
    aput-boolean v1, p2, v0

    .line 3600
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 3603
    :cond_21
    sget-object p2, Lcom/android/server/wm/Task;->sTmpBounds:Landroid/graphics/Rect;

    .line 3604
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 3605
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3606
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    move-result-object v2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3607
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v5

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object v3, p2

    .line 3606
    invoke-virtual/range {v2 .. v7}, Landroid/view/InsetsState;->calculateVisibleInsets(Landroid/graphics/Rect;IIII)Landroid/graphics/Insets;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 3609
    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :cond_45
    :goto_45
    return-void
.end method

.method public static isTopRunning(Lcom/android/server/wm/ActivityRecord;ILandroid/os/IBinder;)Z
    .registers 4

    .line 3977
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    if-eq v0, p1, :cond_14

    iget-object p1, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    if-eq p1, p2, :cond_14

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public static isTopRunningNonDelayed(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 3956
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->delayedResume:Z

    if-nez v0, :cond_e

    if-eq p0, p1, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static synthetic lambda$applyAnimationUnchecked$15(Ljava/util/ArrayList;ILcom/android/server/wm/AnimationAdapter;)V
    .registers 5

    const/4 v0, 0x0

    .line 4287
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_13

    .line 4288
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowContainer;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_13
    return-void
.end method

.method public static synthetic lambda$clearSizeCompatMode$48(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 9553
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getCompatDisplayInsets()Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    move-result-object v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 9554
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->clearSizeCompatMode(ZZ)V

    :cond_b
    return-void
.end method

.method private synthetic lambda$dismissPip$37()V
    .registers 5

    .line 7638
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getBottomMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x0

    .line 7639
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 7643
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 7644
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    const v3, 0x7fffffff

    invoke-virtual {v2, v3, p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 7647
    :cond_18
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1, v0, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic lambda$ensureActivitiesVisible$26(Lcom/android/server/wm/ActivityRecord;IZZLcom/android/server/wm/Task;)V
    .registers 5

    .line 6241
    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/android/server/wm/TaskFragment;->updateActivityVisibilities(Lcom/android/server/wm/ActivityRecord;IZZ)V

    return-void
.end method

.method public static synthetic lambda$fillTaskInfo$16(Landroid/app/TaskInfo;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 4443
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Landroid/app/TaskInfo;->addLaunchCookie(Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic lambda$findEnterPipOnTaskSwitchCandidate$30([Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskFragment;)Z
    .registers 5

    .line 6674
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    .line 6675
    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 6676
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->supportsPictureInPicture()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 6677
    aput-object p1, p0, v0

    const/4 p0, 0x1

    return p0

    :cond_1b
    return v0
.end method

.method public static synthetic lambda$finishIfVoiceTask$31(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 6827
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    const-string v1, "finish-voice"

    .line 6828
    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 6829
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateOomAdj()V

    return-void
.end method

.method public static synthetic lambda$forAllLeafTasksAndLeafTaskFragments$14(Ljava/util/function/Consumer;ZLcom/android/server/wm/Task;)V
    .registers 8

    .line 4129
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->isLeafTaskFragment()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4130
    invoke-interface {p0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_a
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_38

    .line 4137
    iget-object v2, p2, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_15
    if-ltz v2, :cond_62

    .line 4138
    iget-object v3, p2, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 4139
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    if-eqz v4, :cond_29

    .line 4140
    invoke-virtual {v3, p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllLeafTaskFragments(Ljava/util/function/Consumer;Z)V

    goto :goto_35

    .line 4141
    :cond_29
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_35

    if-nez v0, :cond_35

    .line 4142
    invoke-interface {p0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    move v0, v1

    :cond_35
    :goto_35
    add-int/lit8 v2, v2, -0x1

    goto :goto_15

    :cond_38
    move v2, v0

    .line 4147
    :goto_39
    iget-object v3, p2, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_62

    .line 4148
    iget-object v3, p2, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 4149
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    if-eqz v4, :cond_53

    .line 4150
    invoke-virtual {v3, p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllLeafTaskFragments(Ljava/util/function/Consumer;Z)V

    goto :goto_5f

    .line 4151
    :cond_53
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_5f

    if-nez v2, :cond_5f

    .line 4152
    invoke-interface {p0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    move v2, v1

    :cond_5f
    :goto_5f
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    :cond_62
    return-void
.end method

.method public static synthetic lambda$getDescendantTaskCount$7(Lcom/android/server/wm/Task;[I)V
    .registers 3

    const/4 p0, 0x0

    .line 3137
    aget v0, p1, p0

    add-int/lit8 v0, v0, 0x1

    aput v0, p1, p0

    return-void
.end method

.method public static synthetic lambda$getDumpActivitiesLocked$36(Lcom/android/server/am/ActivityManagerService$ItemMatcher;Ljava/util/ArrayList;Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 7480
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 7481
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    return-void
.end method

.method public static synthetic lambda$getFreezeSnapshotExcludeLayers$42(Lcom/android/server/wm/WindowState;)Z
    .registers 2

    .line 8793
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isMultiWindowMenuPopup()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 8794
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDisplayed()Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public static synthetic lambda$getFreezeSnapshotExcludeLayers$43(Lcom/android/server/wm/WindowState;)Z
    .registers 2

    .line 8801
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isMultiWindowHandler()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 8802
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDisplayed()Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method private synthetic lambda$getNextFocusableTask$8(ZLjava/lang/Object;)Z
    .registers 3

    if-nez p1, :cond_4

    if-eq p2, p0, :cond_1b

    .line 3160
    :cond_4
    check-cast p2, Lcom/android/server/wm/Task;

    .line 3161
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->isFocusableAndVisible()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 3165
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTopFreeform()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 3166
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p0

    const/4 p1, 0x5

    if-ne p0, p1, :cond_1b

    :cond_19
    const/4 p0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    return p0
.end method

.method private synthetic lambda$getOccludingActivityAbove$9(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p2, p1, :cond_4

    return v0

    .line 3857
    :cond_4
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return v2

    .line 3861
    :cond_c
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p2

    .line 3862
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p1

    if-ne p2, p1, :cond_17

    return v0

    .line 3866
    :cond_17
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->isSelfOrNonEmbeddedTask(Lcom/android/server/wm/Task;)Z

    move-result p1

    if-eqz p1, :cond_22

    return v0

    .line 3873
    :cond_22
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p1

    :goto_2a
    move-object v3, p2

    move-object p2, p1

    move-object p1, v3

    if-eqz p2, :cond_52

    .line 3875
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3e

    goto :goto_52

    .line 3879
    :cond_3e
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->isSelfOrNonEmbeddedTask(Lcom/android/server/wm/Task;)Z

    move-result p1

    if-eqz p1, :cond_49

    return v0

    .line 3885
    :cond_49
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p1

    goto :goto_2a

    :cond_52
    :goto_52
    return v2
.end method

.method public static synthetic lambda$getStartingWindowInfo$19(Lcom/android/server/wm/WindowState;)Z
    .registers 2

    .line 4602
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static synthetic lambda$getTopFullscreenActivity$10(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    .line 3982
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 3983
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public static synthetic lambda$getTopRealVisibleActivity$12(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 4012
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mIsExiting:Z

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->isClientVisible()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public static synthetic lambda$getTopVisibleActivity$11(ZZLcom/android/server/wm/ActivityRecord;)Z
    .registers 4

    .line 3999
    iget-boolean v0, p2, Lcom/android/server/wm/ActivityRecord;->mIsExiting:Z

    if-nez v0, :cond_22

    invoke-virtual {p2}, Lcom/android/server/wm/WindowToken;->isClientVisible()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-boolean v0, p2, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v0, :cond_16

    if-eqz p0, :cond_22

    .line 4001
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_22

    :cond_16
    if-nez p1, :cond_20

    iget-object p0, p2, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 4002
    invoke-virtual {p0}, Lcom/android/server/wm/PopOverState;->isActivated()Z

    move-result p0

    if-nez p0, :cond_22

    :cond_20
    const/4 p0, 0x1

    goto :goto_23

    :cond_22
    const/4 p0, 0x0

    :goto_23
    return p0
.end method

.method public static synthetic lambda$getTopWaitSplashScreenActivity$13(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 4017
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mHandleExitSplashScreen:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    iget p0, p0, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    if-ne p0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method public static synthetic lambda$goToSleepIfPossible$25(Z[ILcom/android/server/wm/TaskFragment;)V
    .registers 3

    .line 6181
    invoke-virtual {p2, p0}, Lcom/android/server/wm/TaskFragment;->sleepIfPossible(Z)Z

    move-result p0

    if-nez p0, :cond_d

    const/4 p0, 0x0

    .line 6182
    aget p2, p1, p0

    add-int/lit8 p2, p2, 0x1

    aput p2, p1, p0

    :cond_d
    return-void
.end method

.method public static synthetic lambda$hasWallpaper$18(Lcom/android/server/wm/WindowState;)Z
    .registers 2

    .line 4539
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->hasWallpaper()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private synthetic lambda$inFrontOfStandardRootTask$32([ZLcom/android/server/wm/Task;)Z
    .registers 6

    const/4 v0, 0x0

    .line 6864
    aget-boolean v1, p1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    return v2

    :cond_7
    if-ne p2, p0, :cond_b

    .line 6869
    aput-boolean v2, p1, v0

    :cond_b
    return v0
.end method

.method public static synthetic lambda$isChangeTransitionBlockedByCommonPolicy$41(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    .line 8779
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isHiddenWhileEnteringPinnedMode()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$isOpeningAboveDismissingSplit$39(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 8667
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$moveTaskToBack$35(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V
    .registers 4

    .line 7336
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isLeafTaskFragment()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 7337
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    const-string v1, "freeform_minimize"

    .line 7339
    invoke-virtual {p1, v0, p0, v1}, Lcom/android/server/wm/TaskFragment;->startPausing(ZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    :cond_12
    return-void
.end method

.method public static synthetic lambda$navigateUpTo$33(Landroid/content/ComponentName;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4

    .line 6929
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 6930
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method

.method public static synthetic lambda$navigateUpTo$34(Lcom/android/server/wm/ActivityRecord;[I[Landroid/content/Intent;[Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 11

    if-ne p4, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    .line 6970
    aget v1, p1, p0

    aget-object v2, p2, p0

    aget-object v3, p3, p0

    const/4 v5, 0x1

    const-string v4, "navigate-up"

    move-object v0, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;Z)I

    .line 6973
    aput p0, p1, p0

    const/4 p1, 0x0

    .line 6974
    aput-object p1, p2, p0

    return p0
.end method

.method public static synthetic lambda$needsWindowFocusInTask$46(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 9531
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    invoke-virtual {v0}, Lcom/android/server/wm/PopOverState;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static synthetic lambda$onAnimationFinished$38(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 8646
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8647
    new-instance p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda10;

    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda10;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic lambda$onAnimationLeashLost$40(Lcom/android/server/wm/WindowState;)V
    .registers 2

    .line 8706
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRedrawForChangeTransition:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    .line 8707
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRedrawForChangeTransition:Z

    :cond_7
    return-void
.end method

.method public static synthetic lambda$onParentChanged$0(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    const-string/jumbo v0, "parent_changed"

    .line 1487
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->clearWaitForEnteringPinnedMode(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$onParentChanged$1(Lcom/android/server/wm/WindowState;)V
    .registers 1

    .line 1515
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    return-void
.end method

.method private synthetic lambda$removeActivities$4(ZLjava/lang/String;Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    .line 2034
    iget-boolean v0, p3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_13

    if-eqz p1, :cond_d

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_13

    .line 2038
    :cond_d
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->takeFromHistory()V

    .line 2039
    invoke-virtual {p0, p3, p2}, Lcom/android/server/wm/Task;->removeChild(Lcom/android/server/wm/WindowContainer;Ljava/lang/String;)V

    :cond_13
    :goto_13
    return-void
.end method

.method public static synthetic lambda$removeActivities$5(ZLjava/util/ArrayList;Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 2045
    iget-boolean v0, p2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_10

    if-eqz p0, :cond_d

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_10

    .line 2048
    :cond_d
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    :goto_10
    return-void
.end method

.method private synthetic lambda$removeActivities$6(ZLjava/lang/String;Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    .line 2072
    iget-boolean v0, p3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_2f

    if-eqz p1, :cond_d

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_2f

    .line 2078
    :cond_d
    sget-object p1, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p3, p1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result p1

    if-nez p1, :cond_2b

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_27

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const/4 p1, 0x2

    .line 2079
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppTransition;->containsTransitRequest(I)Z

    move-result p0

    if-nez p0, :cond_27

    goto :goto_2b

    .line 2082
    :cond_27
    invoke-virtual {p3, p2}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    goto :goto_2f

    :cond_2b
    :goto_2b
    const/4 p0, 0x0

    .line 2080
    invoke-virtual {p3, p2, p0}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    :cond_2f
    :goto_2f
    return-void
.end method

.method public static synthetic lambda$resumeTopActivityInnerLocked$27(Lcom/android/server/wm/TaskFragment;[ZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ZLcom/android/server/wm/TaskFragment;)V
    .registers 7

    if-ne p0, p5, :cond_3

    return-void

    :cond_3
    const/4 p0, 0x0

    .line 6456
    invoke-virtual {p5, p0}, Lcom/android/server/wm/TaskFragment;->canBeResumed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-nez p0, :cond_b

    return-void

    :cond_b
    const/4 p0, 0x0

    .line 6459
    aget-boolean v0, p1, p0

    invoke-virtual {p5, p2, p3, p4}, Lcom/android/server/wm/TaskFragment;->resumeTopActivity(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    move-result p2

    or-int/2addr p2, v0

    aput-boolean p2, p1, p0

    return-void
.end method

.method public static synthetic lambda$resumeTopActivityInnerLocked$28(Ljava/lang/String;)V
    .registers 1

    .line 6467
    invoke-static {p0}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationFocusGain(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$sendFreeformLogging$44(Ljava/util/ArrayList;[ILcom/android/server/wm/Task;)V
    .registers 4

    if-eq p3, p0, :cond_24

    .line 9459
    invoke-virtual {p3}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p0

    if-eqz p0, :cond_24

    invoke-virtual {p3}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result p0

    if-nez p0, :cond_24

    .line 9460
    invoke-virtual {p3}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_24

    .line 9461
    iget-object p0, p3, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    .line 9462
    aget p1, p2, p0

    add-int/lit8 p1, p1, 0x1

    aput p1, p2, p0

    :cond_24
    return-void
.end method

.method private synthetic lambda$sendFreeformLogging$45([ILcom/android/server/wm/Task;)V
    .registers 3

    if-eq p2, p0, :cond_1b

    .line 9474
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p0

    if-eqz p0, :cond_1b

    invoke-virtual {p2}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result p0

    if-nez p0, :cond_1b

    .line 9475
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x0

    .line 9476
    aget p2, p1, p0

    add-int/lit8 p2, p2, 0x1

    aput p2, p1, p0

    :cond_1b
    return-void
.end method

.method public static synthetic lambda$setMainWindowSizeChangeTransaction$20(Lcom/android/server/wm/WindowState;)V
    .registers 2

    const/4 v0, 0x1

    .line 5615
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->forceExecuteDrawHandlers(I)V

    return-void
.end method

.method public static synthetic lambda$setMainWindowSizeChangeTransaction$21(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    .line 5639
    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public static synthetic lambda$setMainWindowSizeChangeTransaction$22(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    .line 5644
    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method private synthetic lambda$setWindowingMode$23(IZ)V
    .registers 3

    .line 5737
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/Task;->setWindowingModeInSurfaceTransaction(IZ)V

    return-void
.end method

.method public static synthetic lambda$startActivityLocked$29(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 6645
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->showToCurrentUser()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private synthetic lambda$switchUser$24(Ljava/util/ArrayList;)V
    .registers 6

    .line 6131
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6132
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_f
    if-ltz v0, :cond_25

    .line 6133
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 6134
    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v3, :cond_22

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->showToCurrentUser()Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_26

    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    :cond_25
    const/4 v1, 0x0

    .line 6141
    :goto_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_32

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v1, :cond_31

    .line 6143
    iget-object p0, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationFocusGain(Ljava/lang/String;)V

    :cond_31
    return-void

    :catchall_32
    move-exception p1

    .line 6141
    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public static synthetic lambda$topActivityContainsStartingWindow$2(Lcom/android/server/wm/WindowState;)Z
    .registers 2

    .line 1816
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getBaseType()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static synthetic lambda$topActivityContainsStartingWindow$3(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 1815
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;-><init>()V

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

.method public static synthetic lambda$trimIneffectiveInfo$17(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    .line 4490
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic lambda$updateWindowFocusInTask$47(ZLcom/android/server/wm/WindowState;)V
    .registers 2

    .line 9540
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowState;->notifyWindowFocusInTaskChanged(Z)V

    return-void
.end method

.method public static matchesActivityInHistory(Lcom/android/server/wm/ActivityRecord;Landroid/content/ComponentName;)Z
    .registers 3

    .line 2296
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_e

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static processTaskResizeBounds(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V
    .registers 3

    .line 7386
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 7388
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    return-void
.end method

.method public static replaceWindowsOnTaskMove(II)Z
    .registers 3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_8

    if-ne p1, v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 p0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 p0, 0x1

    :goto_9
    return p0
.end method

.method public static restartPackage(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .registers 4

    .line 7510
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1a

    const/4 p2, 0x1

    .line 7511
    iput-boolean p2, p0, Lcom/android/server/wm/ActivityRecord;->forceNewConfig:Z

    if-eqz p1, :cond_1a

    if-ne p0, p1, :cond_1a

    .line 7512
    iget-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz p1, :cond_1a

    const/16 p1, 0x100

    .line 7513
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->startFreezingScreenLocked(I)V

    :cond_1a
    return-void
.end method

.method public static restoreFromXml(Landroid/util/TypedXmlPullParser;Lcom/android/server/wm/ActivityTaskSupervisor;)Lcom/android/server/wm/Task;
    .registers 49
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 5016
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5035
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v3

    .line 5036
    new-instance v4, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v4}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    .line 5037
    new-instance v5, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    invoke-direct {v5}, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;-><init>()V

    .line 5055
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getAttributeCount()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    const-wide/16 v12, 0x0

    const-string v14, ""

    move/from16 v27, v7

    move/from16 v29, v27

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v30, -0x1

    const/16 v31, -0x1

    const/16 v32, -0x1

    const/16 v33, -0x1

    const/16 v34, 0x0

    const/16 v35, 0x4

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, -0x1

    const/16 v39, -0x1

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    :goto_59
    const-string v7, "ActivityTaskManager"

    if-ltz v6, :cond_3bf

    .line 5056
    invoke-interface {v0, v6}, Landroid/util/TypedXmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v9

    .line 5057
    invoke-interface {v0, v6}, Landroid/util/TypedXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v43

    .line 5062
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v44

    sparse-switch v44, :sswitch_data_5a2

    move-object/from16 v44, v14

    :goto_71
    const/4 v14, -0x1

    goto/16 :goto_28d

    :sswitch_74
    move-object/from16 v44, v14

    const-string/jumbo v14, "root_has_reset"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_81

    goto/16 :goto_28a

    :cond_81
    const/16 v14, 0x21

    goto/16 :goto_28d

    :sswitch_85
    move-object/from16 v44, v14

    const-string/jumbo v14, "window_layout_affinity"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_92

    goto/16 :goto_28a

    :cond_92
    const/16 v14, 0x20

    goto/16 :goto_28d

    :sswitch_96
    move-object/from16 v44, v14

    const-string/jumbo v14, "real_activity"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a3

    goto/16 :goto_28a

    :cond_a3
    const/16 v14, 0x1f

    goto/16 :goto_28d

    :sswitch_a7
    move-object/from16 v44, v14

    const-string v14, "never_relinquish_identity"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b3

    goto/16 :goto_28a

    :cond_b3
    const/16 v14, 0x1e

    goto/16 :goto_28d

    :sswitch_b7
    move-object/from16 v44, v14

    const-string v14, "host_process_name"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_c3

    goto/16 :goto_28a

    :cond_c3
    const/16 v14, 0x1d

    goto/16 :goto_28d

    :sswitch_c7
    move-object/from16 v44, v14

    const-string v14, "calling_package"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_d3

    goto/16 :goto_28a

    :cond_d3
    const/16 v14, 0x1c

    goto/16 :goto_28d

    :sswitch_d7
    move-object/from16 v44, v14

    const-string/jumbo v14, "persist_task_version"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_e4

    goto/16 :goto_28a

    :cond_e4
    const/16 v14, 0x1b

    goto/16 :goto_28d

    :sswitch_e8
    move-object/from16 v44, v14

    const-string v14, "last_description"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_f4

    goto/16 :goto_28a

    :cond_f4
    const/16 v14, 0x1a

    goto/16 :goto_28d

    :sswitch_f8
    move-object/from16 v44, v14

    const-string v14, "affinity"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_104

    goto/16 :goto_28a

    :cond_104
    const/16 v14, 0x19

    goto/16 :goto_28d

    :sswitch_108
    move-object/from16 v44, v14

    const-string v14, "min_width"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_114

    goto/16 :goto_28a

    :cond_114
    const/16 v14, 0x18

    goto/16 :goto_28d

    :sswitch_118
    move-object/from16 v44, v14

    const-string v14, "calling_feature_id"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_124

    goto/16 :goto_28a

    :cond_124
    const/16 v14, 0x17

    goto/16 :goto_28d

    :sswitch_128
    move-object/from16 v44, v14

    const-string/jumbo v14, "prev_affiliation"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_135

    goto/16 :goto_28a

    :cond_135
    const/16 v14, 0x16

    goto/16 :goto_28d

    :sswitch_139
    move-object/from16 v44, v14

    const-string/jumbo v14, "task_type"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_146

    goto/16 :goto_28a

    :cond_146
    const/16 v14, 0x15

    goto/16 :goto_28d

    :sswitch_14a
    move-object/from16 v44, v14

    const-string v14, "calling_uid"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_156

    goto/16 :goto_28a

    :cond_156
    const/16 v14, 0x14

    goto/16 :goto_28d

    :sswitch_15a
    move-object/from16 v44, v14

    const-string/jumbo v14, "user_id"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_167

    goto/16 :goto_28a

    :cond_167
    const/16 v14, 0x13

    goto/16 :goto_28d

    :sswitch_16b
    move-object/from16 v44, v14

    const-string/jumbo v14, "root_affinity"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_178

    goto/16 :goto_28a

    :cond_178
    const/16 v14, 0x12

    goto/16 :goto_28d

    :sswitch_17c
    move-object/from16 v44, v14

    const-string/jumbo v14, "supports_picture_in_picture"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_189

    goto/16 :goto_28a

    :cond_189
    const/16 v14, 0x11

    goto/16 :goto_28d

    :sswitch_18d
    move-object/from16 v44, v14

    const-string v14, "auto_remove_recents"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_199

    goto/16 :goto_28a

    :cond_199
    const/16 v14, 0x10

    goto/16 :goto_28d

    :sswitch_19d
    move-object/from16 v44, v14

    const-string v14, "last_snapshot_buffer_size"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1a9

    goto/16 :goto_28a

    :cond_1a9
    const/16 v14, 0xf

    goto/16 :goto_28d

    :sswitch_1ad
    move-object/from16 v44, v14

    const-string/jumbo v14, "orig_activity"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1ba

    goto/16 :goto_28a

    :cond_1ba
    const/16 v14, 0xe

    goto/16 :goto_28d

    :sswitch_1be
    move-object/from16 v44, v14

    const-string v14, "non_fullscreen_bounds"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1ca

    goto/16 :goto_28a

    :cond_1ca
    const/16 v14, 0xd

    goto/16 :goto_28d

    :sswitch_1ce
    move-object/from16 v44, v14

    const-string v14, "last_snapshot_task_size"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1da

    goto/16 :goto_28a

    :cond_1da
    const/16 v14, 0xc

    goto/16 :goto_28d

    :sswitch_1de
    move-object/from16 v44, v14

    const-string v14, "min_height"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1ea

    goto/16 :goto_28a

    :cond_1ea
    const/16 v14, 0xb

    goto/16 :goto_28d

    :sswitch_1ee
    move-object/from16 v44, v14

    const-string/jumbo v14, "resize_mode"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1fb

    goto/16 :goto_28a

    :cond_1fb
    const/16 v14, 0xa

    goto/16 :goto_28d

    :sswitch_1ff
    move-object/from16 v44, v14

    const-string v14, "effective_uid"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_20b

    goto/16 :goto_28a

    :cond_20b
    const/16 v14, 0x9

    goto/16 :goto_28d

    :sswitch_20f
    move-object/from16 v44, v14

    const-string/jumbo v14, "user_setup_complete"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_21c

    goto/16 :goto_28a

    :cond_21c
    const/16 v14, 0x8

    goto/16 :goto_28d

    :sswitch_220
    move-object/from16 v44, v14

    const-string/jumbo v14, "task_affiliation"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_22d

    goto/16 :goto_28a

    :cond_22d
    const/4 v14, 0x7

    goto/16 :goto_28d

    :sswitch_230
    move-object/from16 v44, v14

    const-string/jumbo v14, "real_activity_suspended"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_23c

    goto :goto_28a

    :cond_23c
    const/4 v14, 0x6

    goto :goto_28d

    :sswitch_23e
    move-object/from16 v44, v14

    const-string v14, "dedicated_task"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_249

    goto :goto_28a

    :cond_249
    const/4 v14, 0x5

    goto :goto_28d

    :sswitch_24b
    move-object/from16 v44, v14

    const-string v14, "next_affiliation"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_256

    goto :goto_28a

    :cond_256
    const/4 v14, 0x4

    goto :goto_28d

    :sswitch_258
    move-object/from16 v44, v14

    const-string/jumbo v14, "task_id"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_264

    goto :goto_28a

    :cond_264
    const/4 v14, 0x3

    goto :goto_28d

    :sswitch_266
    move-object/from16 v44, v14

    const-string v14, "last_time_moved"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_271

    goto :goto_28a

    :cond_271
    const/4 v14, 0x2

    goto :goto_28d

    :sswitch_273
    move-object/from16 v44, v14

    const-string v14, "last_snapshot_content_insets"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_27e

    goto :goto_28a

    :cond_27e
    const/4 v14, 0x1

    goto :goto_28d

    :sswitch_280
    move-object/from16 v44, v14

    const-string v14, "asked_compat_mode"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_28c

    :goto_28a
    goto/16 :goto_71

    :cond_28c
    const/4 v14, 0x0

    :goto_28d
    packed-switch v14, :pswitch_data_62c

    const-string/jumbo v14, "task_description_"

    .line 5169
    invoke-virtual {v9, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2b1

    .line 5170
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v45, v12

    const-string v12, "Task: Unknown attribute="

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_34e

    :cond_2b1
    move-wide/from16 v45, v12

    goto/16 :goto_34e

    :pswitch_2b5
    move-wide/from16 v45, v12

    .line 5086
    invoke-static/range {v43 .. v43}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v22

    goto :goto_2c7

    :pswitch_2bc
    move-wide/from16 v45, v12

    move-object/from16 v21, v43

    goto :goto_2c7

    :pswitch_2c1
    move-wide/from16 v45, v12

    .line 5067
    invoke-static/range {v43 .. v43}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v11

    :goto_2c7
    move-object/from16 v14, v44

    :goto_2c9
    const/4 v9, -0x1

    goto/16 :goto_3bb

    :pswitch_2cc
    move-wide/from16 v45, v12

    .line 5113
    invoke-static/range {v43 .. v43}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v29

    goto :goto_2c7

    :pswitch_2d3
    move-wide/from16 v45, v12

    move-object/from16 v41, v43

    goto :goto_2c7

    :pswitch_2d8
    move-wide/from16 v45, v12

    move-object/from16 v14, v43

    goto :goto_2c9

    :pswitch_2dd
    move-wide/from16 v45, v12

    .line 5149
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v40

    goto :goto_2c7

    :pswitch_2e4
    move-wide/from16 v45, v12

    move-object/from16 v28, v43

    goto :goto_2c7

    :pswitch_2e9
    move-wide/from16 v45, v12

    move-object/from16 v8, v43

    goto :goto_2c7

    :pswitch_2ee
    move-wide/from16 v45, v12

    .line 5143
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v38

    goto :goto_2c7

    :pswitch_2f5
    move-wide/from16 v45, v12

    move-object/from16 v34, v43

    goto :goto_2c7

    :pswitch_2fa
    move-wide/from16 v45, v12

    .line 5119
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    goto :goto_2c7

    :pswitch_301
    move-wide/from16 v45, v12

    .line 5104
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    goto :goto_2c7

    :pswitch_308
    move-wide/from16 v45, v12

    .line 5125
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    goto :goto_2c7

    :pswitch_30f
    move-wide/from16 v45, v12

    .line 5095
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    goto :goto_2c7

    :pswitch_316
    move-wide/from16 v45, v12

    move-object/from16 v10, v43

    move-object/from16 v14, v44

    const/4 v9, -0x1

    const/16 v18, 0x1

    goto/16 :goto_3bb

    :pswitch_321
    move-wide/from16 v45, v12

    .line 5137
    invoke-static/range {v43 .. v43}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v36

    goto :goto_2c7

    :pswitch_328
    move-wide/from16 v45, v12

    .line 5089
    invoke-static/range {v43 .. v43}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v23

    goto :goto_2c7

    :pswitch_32f
    move-wide/from16 v45, v12

    .line 5158
    invoke-static/range {v43 .. v43}, Landroid/graphics/Point;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v7

    iput-object v7, v5, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->bufferSize:Landroid/graphics/Point;

    goto :goto_34e

    :pswitch_338
    move-wide/from16 v45, v12

    .line 5073
    invoke-static/range {v43 .. v43}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v20

    goto :goto_2c7

    :pswitch_33f
    move-wide/from16 v45, v12

    .line 5140
    invoke-static/range {v43 .. v43}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v37

    goto :goto_2c7

    :pswitch_346
    move-wide/from16 v45, v12

    .line 5152
    invoke-static/range {v43 .. v43}, Landroid/graphics/Point;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v7

    iput-object v7, v5, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->taskSize:Landroid/graphics/Point;

    :goto_34e
    const/4 v9, -0x1

    goto :goto_3ad

    :pswitch_350
    move-wide/from16 v45, v12

    .line 5146
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v39

    goto/16 :goto_2c7

    :pswitch_358
    move-wide/from16 v45, v12

    .line 5134
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    goto/16 :goto_2c7

    :pswitch_360
    move-wide/from16 v45, v12

    .line 5101
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    goto/16 :goto_2c7

    :pswitch_368
    move-wide/from16 v45, v12

    .line 5098
    invoke-static/range {v43 .. v43}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v27

    goto/16 :goto_2c7

    :pswitch_370
    move-wide/from16 v45, v12

    .line 5116
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    goto/16 :goto_2c7

    :pswitch_378
    move-wide/from16 v45, v12

    .line 5070
    invoke-static/range {v43 .. v43}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    goto/16 :goto_2c7

    :pswitch_384
    move-wide/from16 v45, v12

    .line 5165
    invoke-static/range {v43 .. v43}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v42

    goto/16 :goto_2c7

    :pswitch_38c
    move-wide/from16 v45, v12

    .line 5122
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    goto/16 :goto_2c7

    :pswitch_394
    move-wide/from16 v45, v12

    const/4 v9, -0x1

    if-ne v15, v9, :cond_3ad

    .line 5064
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    goto :goto_3ad

    :pswitch_39e
    const/4 v9, -0x1

    .line 5110
    invoke-static/range {v43 .. v43}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    goto :goto_3b9

    :pswitch_3a4
    move-wide/from16 v45, v12

    const/4 v9, -0x1

    .line 5155
    invoke-static/range {v43 .. v43}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v7

    iput-object v7, v5, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->contentInsets:Landroid/graphics/Rect;

    :cond_3ad
    :goto_3ad
    move-object/from16 v14, v44

    move-wide/from16 v12, v45

    goto :goto_3bb

    :pswitch_3b2
    move-wide/from16 v45, v12

    const/4 v9, -0x1

    .line 5092
    invoke-static/range {v43 .. v43}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v24

    :goto_3b9
    move-object/from16 v14, v44

    :goto_3bb
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_59

    :cond_3bf
    move-wide/from16 v45, v12

    move-object/from16 v44, v14

    .line 5174
    invoke-virtual {v4, v0}, Landroid/app/ActivityManager$TaskDescription;->restoreFromXml(Landroid/util/TypedXmlPullParser;)V

    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 5177
    :cond_3c8
    :goto_3c8
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_424

    const/4 v13, 0x3

    if-ne v12, v13, :cond_3d8

    .line 5178
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v13

    if-lt v13, v3, :cond_424

    :cond_3d8
    const/4 v13, 0x2

    if-ne v12, v13, :cond_3c8

    .line 5180
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "affinity_intent"

    .line 5182
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3ec

    .line 5183
    invoke-static/range {p0 .. p0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v9

    goto :goto_3c8

    :cond_3ec
    const-string v13, "intent"

    .line 5184
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3f9

    .line 5185
    invoke-static/range {p0 .. p0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v6

    goto :goto_3c8

    :cond_3f9
    const-string v13, "activity"

    .line 5186
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_40b

    .line 5188
    invoke-static/range {p0 .. p1}, Lcom/android/server/wm/ActivityRecord;->restoreFromXml(Landroid/util/TypedXmlPullParser;Lcom/android/server/wm/ActivityTaskSupervisor;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v12

    if-eqz v12, :cond_3c8

    .line 5193
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3c8

    .line 5196
    :cond_40b
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "restoreTask: Unexpected name="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5197
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_3c8

    :cond_424
    if-nez v18, :cond_428

    move-object v10, v8

    goto :goto_431

    :cond_428
    const-string v0, "@"

    .line 5203
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_431

    const/4 v10, 0x0

    :cond_431
    :goto_431
    if-gtz v16, :cond_47f

    if-eqz v6, :cond_437

    move-object v0, v6

    goto :goto_438

    :cond_437
    move-object v0, v9

    :goto_438
    if-eqz v0, :cond_455

    .line 5210
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 5213
    :try_start_43e
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12
    :try_end_446
    .catch Landroid/os/RemoteException; {:try_start_43e .. :try_end_446} :catch_455

    const-wide/16 v13, 0x2200

    move-object/from16 v17, v2

    move/from16 v2, v26

    .line 5212
    :try_start_44c
    invoke-interface {v3, v12, v13, v14, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_459

    .line 5217
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_454
    .catch Landroid/os/RemoteException; {:try_start_44c .. :try_end_454} :catch_459

    goto :goto_45a

    :catch_455
    :cond_455
    move-object/from16 v17, v2

    move/from16 v2, v26

    :catch_459
    :cond_459
    const/4 v3, 0x0

    .line 5222
    :goto_45a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Updating task #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": effectiveUid="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_485

    :cond_47f
    move-object/from16 v17, v2

    move/from16 v2, v26

    move/from16 v3, v16

    :goto_485
    move/from16 v0, v40

    const/4 v12, 0x1

    if-ge v0, v12, :cond_49a

    move/from16 v0, v25

    if-ne v0, v12, :cond_497

    move/from16 v0, v35

    const/4 v12, 0x2

    if-ne v0, v12, :cond_4a3

    move/from16 v12, v36

    const/4 v0, 0x1

    goto :goto_4a5

    :cond_497
    move/from16 v0, v35

    goto :goto_4a3

    :cond_49a
    move/from16 v0, v35

    const/4 v12, 0x2

    const/4 v13, 0x3

    if-ne v0, v13, :cond_4a3

    move v0, v12

    const/4 v12, 0x1

    goto :goto_4a5

    :cond_4a3
    :goto_4a3
    move/from16 v12, v36

    .line 5245
    :goto_4a5
    new-instance v13, Lcom/android/server/wm/Task$Builder;

    iget-object v14, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v13, v14}, Lcom/android/server/wm/Task$Builder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 5246
    invoke-virtual {v13, v15}, Lcom/android/server/wm/Task$Builder;->setTaskId(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v13

    .line 5247
    invoke-virtual {v13, v6}, Lcom/android/server/wm/Task$Builder;->setIntent(Landroid/content/Intent;)Lcom/android/server/wm/Task$Builder;

    move-result-object v6

    .line 5248
    invoke-static {v6, v9}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetAffinityIntent(Lcom/android/server/wm/Task$Builder;Landroid/content/Intent;)Lcom/android/server/wm/Task$Builder;

    move-result-object v6

    .line 5249
    invoke-static {v6, v8}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetAffinity(Lcom/android/server/wm/Task$Builder;Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;

    move-result-object v6

    .line 5250
    invoke-static {v6, v10}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetRootAffinity(Lcom/android/server/wm/Task$Builder;Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;

    move-result-object v6

    .line 5251
    invoke-virtual {v6, v11}, Lcom/android/server/wm/Task$Builder;->setRealActivity(Landroid/content/ComponentName;)Lcom/android/server/wm/Task$Builder;

    move-result-object v6

    move-object/from16 v10, v20

    .line 5252
    invoke-static {v6, v10}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetOrigActivity(Lcom/android/server/wm/Task$Builder;Landroid/content/ComponentName;)Lcom/android/server/wm/Task$Builder;

    move-result-object v6

    move/from16 v11, v22

    .line 5253
    invoke-static {v6, v11}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetRootWasReset(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v6

    move/from16 v11, v23

    .line 5254
    invoke-static {v6, v11}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetAutoRemoveRecents(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v6

    move/from16 v11, v24

    .line 5255
    invoke-static {v6, v11}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetAskedCompatMode(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v6

    .line 5256
    invoke-static {v6, v2}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetUserId(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;

    move-result-object v2

    .line 5257
    invoke-virtual {v2, v3}, Lcom/android/server/wm/Task$Builder;->setEffectiveUid(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v2

    move-object/from16 v10, v28

    .line 5258
    invoke-static {v2, v10}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetLastDescription(Lcom/android/server/wm/Task$Builder;Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;

    move-result-object v2

    move-wide/from16 v8, v45

    .line 5259
    invoke-static {v2, v8, v9}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetLastTimeMoved(Lcom/android/server/wm/Task$Builder;J)Lcom/android/server/wm/Task$Builder;

    move-result-object v2

    move/from16 v3, v29

    .line 5260
    invoke-static {v2, v3}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetNeverRelinquishIdentity(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v2

    .line 5261
    invoke-static {v2, v4}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetLastTaskDescription(Lcom/android/server/wm/Task$Builder;Landroid/app/ActivityManager$TaskDescription;)Lcom/android/server/wm/Task$Builder;

    move-result-object v2

    .line 5262
    invoke-static {v2, v5}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetLastSnapshotData(Lcom/android/server/wm/Task$Builder;Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;)Lcom/android/server/wm/Task$Builder;

    move-result-object v2

    move/from16 v9, v30

    .line 5263
    invoke-static {v2, v9}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetTaskAffiliation(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;

    move-result-object v2

    move/from16 v9, v31

    .line 5264
    invoke-static {v2, v9}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetPrevAffiliateTaskId(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;

    move-result-object v2

    move/from16 v9, v32

    .line 5265
    invoke-static {v2, v9}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetNextAffiliateTaskId(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;

    move-result-object v2

    move/from16 v9, v33

    .line 5266
    invoke-static {v2, v9}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetCallingUid(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;

    move-result-object v2

    move-object/from16 v14, v44

    .line 5267
    invoke-static {v2, v14}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetCallingPackage(Lcom/android/server/wm/Task$Builder;Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;

    move-result-object v2

    move-object/from16 v10, v34

    .line 5268
    invoke-static {v2, v10}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetCallingFeatureId(Lcom/android/server/wm/Task$Builder;Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;

    move-result-object v2

    .line 5269
    invoke-static {v2, v0}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetResizeMode(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    .line 5270
    invoke-static {v0, v12}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetSupportsPictureInPicture(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    move/from16 v11, v19

    .line 5271
    invoke-static {v0, v11}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetRealActivitySuspended(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    move/from16 v2, v27

    .line 5272
    invoke-static {v0, v2}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetUserSetupComplete(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    move/from16 v9, v38

    .line 5273
    invoke-virtual {v0, v9}, Lcom/android/server/wm/Task$Builder;->setMinWidth(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    move/from16 v9, v39

    .line 5274
    invoke-virtual {v0, v9}, Lcom/android/server/wm/Task$Builder;->setMinHeight(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    .line 5275
    invoke-virtual {v0}, Lcom/android/server/wm/Task$Builder;->buildInner()Lcom/android/server/wm/Task;

    move-result-object v0

    move-object/from16 v10, v37

    .line 5276
    iput-object v10, v0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 5277
    invoke-virtual {v0, v10}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    move-object/from16 v10, v21

    .line 5278
    iput-object v10, v0, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    .line 5280
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_DEDICATED_MEMORY:Z

    if-eqz v2, :cond_55d

    move-object/from16 v10, v41

    .line 5281
    iput-object v10, v0, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    move/from16 v11, v42

    .line 5282
    iput-boolean v11, v0, Lcom/android/server/wm/Task;->mDedicatedTask:Z

    .line 5285
    :cond_55d
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_589

    .line 5287
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v2, 0x0

    .line 5288
    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 5289
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    const/high16 v2, -0x80000000

    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/TaskDisplayArea;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 5291
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_579
    if-ltz v1, :cond_589

    move-object/from16 v2, v17

    .line 5292
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/TaskFragment;->addChild(Lcom/android/server/wm/ActivityRecord;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_579

    .line 5296
    :cond_589
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v1, :cond_5a1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restored task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5a1
    return-object v0

    :sswitch_data_5a2
    .sparse-switch
        -0x7f3eb8a7 -> :sswitch_280
        -0x5eb23152 -> :sswitch_273
        -0x5ccdaff6 -> :sswitch_266
        -0x5ba06deb -> :sswitch_258
        -0x591a685c -> :sswitch_24b
        -0x5131b22b -> :sswitch_23e
        -0x43dc2f14 -> :sswitch_230
        -0x430d08ca -> :sswitch_220
        -0x3a0f4851 -> :sswitch_20f
        -0x37680e48 -> :sswitch_1ff
        -0x3395d9b2 -> :sswitch_1ee
        -0x313f784c -> :sswitch_1de
        -0x2fcb75f7 -> :sswitch_1ce
        -0x2a27c539 -> :sswitch_1be
        -0x2a0990b3 -> :sswitch_1ad
        -0x20dc8352 -> :sswitch_19d
        -0x1df202b3 -> :sswitch_18d
        -0x158140a0 -> :sswitch_17c
        -0x9b3481b -> :sswitch_16b
        -0x8c511f1 -> :sswitch_15a
        -0x7e175ab -> :sswitch_14a
        0xac8bdb4 -> :sswitch_139
        0x13bdcee4 -> :sswitch_128
        0x1782e55f -> :sswitch_118
        0x2046b199 -> :sswitch_108
        0x24172928 -> :sswitch_f8
        0x33cf43d3 -> :sswitch_e8
        0x3c12eca9 -> :sswitch_d7
        0x40756fcb -> :sswitch_c7
        0x42bea792 -> :sswitch_b7
        0x56e1584e -> :sswitch_a7
        0x5bc3bc90 -> :sswitch_96
        0x772fa04e -> :sswitch_85
        0x789a804d -> :sswitch_74
    .end sparse-switch

    :pswitch_data_62c
    .packed-switch 0x0
        :pswitch_3b2
        :pswitch_3a4
        :pswitch_39e
        :pswitch_394
        :pswitch_38c
        :pswitch_384
        :pswitch_378
        :pswitch_370
        :pswitch_368
        :pswitch_360
        :pswitch_358
        :pswitch_350
        :pswitch_346
        :pswitch_33f
        :pswitch_338
        :pswitch_32f
        :pswitch_328
        :pswitch_321
        :pswitch_316
        :pswitch_30f
        :pswitch_308
        :pswitch_301
        :pswitch_2fa
        :pswitch_2f5
        :pswitch_2ee
        :pswitch_2e9
        :pswitch_2e4
        :pswitch_2dd
        :pswitch_2d8
        :pswitch_2d3
        :pswitch_2cc
        :pswitch_2c1
        :pswitch_2bc
        :pswitch_2b5
    .end packed-switch
.end method

.method public static saveActivityToXml(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/util/TypedXmlSerializer;)Z
    .registers 7

    const-string v0, "activity"

    .line 4994
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->persistableMode:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2e

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isPersistable()Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 4995
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v3, 0x80000

    and-int/2addr v1, v3

    or-int/lit16 v1, v1, 0x2000

    if-ne v1, v3, :cond_1f

    if-eq p0, p1, :cond_1f

    goto :goto_2e

    :cond_1f
    const/4 p1, 0x0

    .line 5002
    :try_start_20
    invoke-interface {p2, p1, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5003
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityRecord;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    .line 5004
    invoke-interface {p2, p1, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_29} :catch_2b

    const/4 p0, 0x0

    return p0

    :catch_2b
    move-exception p0

    .line 5007
    sput-object p0, Lcom/android/server/wm/Task;->sTmpException:Ljava/lang/Exception;

    :cond_2e
    :goto_2e
    return v2
.end method

.method public static setTaskDescriptionFromActivityAboveRoot(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityManager$TaskDescription;)Z
    .registers 5

    .line 2330
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v0

    if-nez v0, :cond_80

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v0, :cond_80

    .line 2332
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_17

    .line 2333
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setLabel(Ljava/lang/String;)V

    .line 2335
    :cond_17
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getRawIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-nez v1, :cond_24

    .line 2336
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getRawIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setIcon(Landroid/graphics/drawable/Icon;)V

    .line 2338
    :cond_24
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_31

    .line 2339
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setIconFilename(Ljava/lang/String;)V

    .line 2341
    :cond_31
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v1

    if-nez v1, :cond_3e

    .line 2342
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setPrimaryColor(I)V

    .line 2344
    :cond_3e
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v1

    if-nez v1, :cond_4b

    .line 2345
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColor(I)V

    .line 2347
    :cond_4b
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v1

    if-nez v1, :cond_5f

    .line 2348
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setStatusBarColor(I)V

    .line 2350
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getEnsureStatusBarContrastWhenTransparent()Z

    move-result v1

    .line 2349
    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setEnsureStatusBarContrastWhenTransparent(Z)V

    .line 2352
    :cond_5f
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v1

    if-nez v1, :cond_73

    .line 2353
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setNavigationBarColor(I)V

    .line 2355
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getEnsureNavigationBarContrastWhenTransparent()Z

    move-result v1

    .line 2354
    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setEnsureNavigationBarContrastWhenTransparent(Z)V

    .line 2357
    :cond_73
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColorFloating()I

    move-result v1

    if-nez v1, :cond_80

    .line 2358
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColorFloating()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColorFloating(I)V

    :cond_80
    if-ne p0, p1, :cond_84

    const/4 p0, 0x1

    goto :goto_85

    :cond_84
    const/4 p0, 0x0

    :goto_85
    return p0
.end method

.method public static trimIneffectiveInfo(Lcom/android/server/wm/Task;Landroid/app/TaskInfo;)V
    .registers 7

    .line 4490
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda14;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 4493
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v0

    goto :goto_13

    :cond_11
    iget v0, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    .line 4495
    :goto_13
    iget-object v1, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    const-string v2, ""

    if-eqz v1, :cond_6c

    iget v3, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v3, v1, :cond_6c

    .line 4498
    new-instance v1, Landroid/content/pm/ActivityInfo;

    iget-object v3, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {v1, v3}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    iput-object v1, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 4499
    new-instance v3, Landroid/content/pm/ApplicationInfo;

    iget-object v4, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v3, v4}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    iput-object v3, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 4503
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v2, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p1, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 4504
    iget-object v1, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 4505
    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 4506
    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 4507
    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 4508
    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 4509
    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 4510
    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    .line 4511
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 4512
    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 4513
    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 4514
    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 4515
    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    .line 4516
    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 4517
    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootDir:Ljava/lang/String;

    .line 4518
    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 4519
    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 4520
    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->scanPublicSourceDir:Ljava/lang/String;

    .line 4521
    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->scanSourceDir:Ljava/lang/String;

    .line 4522
    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 4523
    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    .line 4524
    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    .line 4525
    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4528
    :cond_6c
    iget p0, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    if-eq p0, v0, :cond_77

    .line 4529
    new-instance p0, Landroid/content/ComponentName;

    invoke-direct {p0, v2, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p0, p1, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    :cond_77
    return-void
.end method


# virtual methods
.method public addChild(Lcom/android/server/wm/WindowContainer;I)V
    .registers 8

    .line 1841
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/Task;->getAdjustedChildPosition(Lcom/android/server/wm/WindowContainer;I)I

    move-result p2

    .line 1842
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/TaskFragment;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 1844
    sget-boolean p2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    if-eqz p2, :cond_1e

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, 0x4f52761a

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v0, v1, v4, v2, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1848
    :cond_1e
    iget-object p2, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz p2, :cond_36

    iget-boolean p2, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz p2, :cond_36

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p2

    if-eqz p2, :cond_36

    .line 1849
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p2

    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/Task;

    invoke-virtual {p2, v0}, Lcom/android/server/wm/TaskDisplayArea;->addRootTaskReferenceIfNeeded(Lcom/android/server/wm/Task;)V

    .line 1854
    :cond_36
    iget-object p2, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p2}, Lcom/android/server/wm/RootWindowContainer;->updateUIDsPresentOnDisplay()V

    .line 1858
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p1

    if-eqz p1, :cond_4e

    .line 1859
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p2

    if-nez p2, :cond_4e

    .line 1860
    iget p2, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    iget p0, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    invoke-virtual {p1, p2, p0}, Lcom/android/server/wm/TaskFragment;->setMinDimensions(II)V

    :cond_4e
    return-void
.end method

.method public final addChild(Lcom/android/server/wm/WindowContainer;IZ)V
    .registers 5

    const/4 v0, 0x0

    .line 7692
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 7695
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    return-void
.end method

.method public addChild(Lcom/android/server/wm/WindowContainer;ZZ)V
    .registers 6

    .line 7593
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 7596
    :try_start_7
    invoke-virtual {v0, p3}, Lcom/android/server/wm/Task;->setForceShowForAllUsers(Z)V

    goto :goto_d

    :catchall_b
    move-exception p0

    goto :goto_1d

    :cond_d
    :goto_d
    if-eqz p2, :cond_13

    const p3, 0x7fffffff

    goto :goto_14

    :cond_13
    move p3, v1

    .line 7600
    :goto_14
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;IZ)V
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_b

    if-eqz v0, :cond_1c

    .line 7603
    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setForceShowForAllUsers(Z)V

    :cond_1c
    return-void

    :goto_1d
    if-eqz v0, :cond_22

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setForceShowForAllUsers(Z)V

    .line 7605
    :cond_22
    throw p0
.end method

.method public adjustAnimationBoundsForTransition(Landroid/graphics/Rect;)V
    .registers 5

    .line 3677
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskTransitionSpec:Landroid/view/TaskTransitionSpec;

    if-eqz v0, :cond_34

    .line 3679
    iget-object v0, v0, Landroid/view/TaskTransitionSpec;->animationBoundInsets:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3680
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 3681
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v2

    .line 3682
    invoke-virtual {v2, v1}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    move-result-object v1

    .line 3684
    invoke-virtual {v1}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/InsetsSource;->calculateVisibleInsets(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object v1

    .line 3686
    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    goto :goto_c

    :cond_34
    return-void
.end method

.method public final adjustAspectRatioIfNeeded(Landroid/graphics/Rect;)V
    .registers 12

    .line 8952
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d8

    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 8953
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isPreserveOrientationMode(I)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_d8

    .line 8962
    :cond_10
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v0, v1, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 8963
    :goto_1d
    iget v1, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    const/4 v2, 0x5

    const/4 v3, 0x4

    const-string v4, " caller="

    const-string v5, " bounds="

    const-string v6, " resizeMode="

    const-string v7, "adjustAspectRatioIfNeeded: task="

    const-string v8, "ActivityTaskManager"

    const v9, 0x3f99999a    # 1.2f

    if-ne v1, v2, :cond_83

    if-nez v0, :cond_83

    .line 8964
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    cmpg-float v0, v0, v9

    if-gez v0, :cond_d8

    .line 8966
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v9

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 8967
    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    .line 8968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " adjusted(bottom)="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8970
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 8968
    invoke-static {v8, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8971
    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_d8

    :cond_83
    const/4 v2, 0x6

    if-ne v1, v2, :cond_d8

    if-eqz v0, :cond_d8

    .line 8974
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    cmpg-float v0, v0, v9

    if-gez v0, :cond_d8

    .line 8976
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v9

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 8977
    iget v1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    .line 8978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " adjusted(right)="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8980
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 8978
    invoke-static {v8, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8981
    iput v1, p1, Landroid/graphics/Rect;->right:I

    :cond_d8
    :goto_d8
    return-void
.end method

.method public adjustBoundsForDisplayChangeIfNeeded(Lcom/android/server/wm/DisplayContent;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 3717
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 3720
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    .line 3721
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    .line 3722
    iget v2, p0, Lcom/android/server/wm/Task;->mLastRotationDisplayId:I

    if-eq v0, v2, :cond_21

    .line 3726
    iput v0, p0, Lcom/android/server/wm/Task;->mLastRotationDisplayId:I

    .line 3727
    iput v1, p0, Lcom/android/server/wm/Task;->mRotation:I

    return-void

    .line 3731
    :cond_21
    iget v0, p0, Lcom/android/server/wm/Task;->mRotation:I

    if-ne v0, v1, :cond_26

    return-void

    .line 3756
    :cond_26
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3758
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->canResizeTask()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 3759
    iget-object p1, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    return-void

    .line 3763
    :cond_3f
    iget v0, p0, Lcom/android/server/wm/Task;->mRotation:I

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->rotateBounds(IILandroid/graphics/Rect;)V

    .line 3765
    iget p1, p0, Lcom/android/server/wm/Task;->mRotation:I

    .line 3766
    invoke-static {p1, v1}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_54

    .line 3780
    iget-object p1, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->adjustBoundsToAvoidConflictSystemBarIfPossible(Landroid/graphics/Rect;)V

    .line 3783
    :cond_54
    iget-object p1, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    move-result p1

    if-eqz p1, :cond_68

    .line 3784
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->resizeTask(ILandroid/graphics/Rect;I)Z

    :cond_68
    return-void
.end method

.method public final adjustBoundsToAvoidConflictSystemBar(Landroid/graphics/Rect;)V
    .registers 7

    .line 3797
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_61

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_61

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_61

    .line 3801
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3802
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 3803
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 3804
    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v0, v2

    .line 3806
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v2, :cond_4b

    .line 3807
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 3808
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    .line 3809
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p0

    iget v4, v3, Landroid/view/DisplayInfo;->rotation:I

    iget-object v3, v3, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {p0, v4, v3, v2}, Lcom/android/server/wm/DisplayPolicy;->getStableInsetsLw(ILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 3811
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    :cond_4b
    const/high16 p0, 0x42680000    # 58.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    const/high16 v2, 0x42000000    # 32.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 3813
    invoke-static {p1, v1, p0, v0}, Lcom/android/server/wm/Task;->fitWithinBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 3818
    iget p0, v1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, v0

    if-lez p0, :cond_61

    const/4 v0, 0x0

    .line 3820
    invoke-virtual {p1, v0, p0}, Landroid/graphics/Rect;->offset(II)V

    :cond_61
    :goto_61
    return-void
.end method

.method public final adjustBoundsToAvoidConflictSystemBarIfPossible(Landroid/graphics/Rect;)V
    .registers 2

    .line 3793
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->adjustBoundsToAvoidConflictSystemBar(Landroid/graphics/Rect;)V

    return-void
.end method

.method public adjustFocusToNextFocusableTask(Ljava/lang/String;)Lcom/android/server/wm/Task;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3149
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/Task;->adjustFocusToNextFocusableTask(Ljava/lang/String;ZZ)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public adjustFocusToNextFocusableTask(Ljava/lang/String;ZZ)Lcom/android/server/wm/Task;
    .registers 9

    .line 3184
    invoke-virtual {p0, p2}, Lcom/android/server/wm/Task;->getNextFocusableTask(Z)Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_e

    .line 3186
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/RootWindowContainer;->getNextFocusableRootTask(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;

    move-result-object v0

    :cond_e
    if-nez v0, :cond_1b

    .line 3189
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 3192
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->clearPreferredTopFocusableRootTask()V

    :cond_19
    const/4 p0, 0x0

    return-object p0

    .line 3208
    :cond_1b
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-nez p3, :cond_3c

    .line 3213
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    :cond_25
    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    const p1, 0x7fffffff

    const/4 p2, 0x0

    .line 3216
    invoke-virtual {v0, p1, p0, p2}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 3218
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    .line 3219
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_3b

    if-nez p0, :cond_25

    :cond_3b
    return-object v1

    .line 3223
    :cond_3c
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " adjustFocusToNextFocusableTask"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 3224
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 3225
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_65

    if-eqz v2, :cond_5d

    iget-boolean v2, v2, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v2, :cond_65

    .line 3228
    :cond_5d
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeActivityToTop(Ljava/lang/String;)V

    return-object v1

    .line 3233
    :cond_65
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_85

    .line 3234
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v2

    if-nez p2, :cond_85

    if-eqz v2, :cond_85

    .line 3235
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result p2

    if-eqz p2, :cond_85

    .line 3236
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    if-nez p2, :cond_85

    if-eq v0, p0, :cond_85

    const/4 p2, 0x1

    .line 3237
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowContainer;->setBoostRootTaskLayerForAppTransition(Z)V

    .line 3244
    :cond_85
    invoke-virtual {v0, p3}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    .line 3246
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    if-eqz p2, :cond_9c

    .line 3247
    iget-object p2, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskSupervisor;->updateTopResumedActivityIfNeeded()V

    .line 3251
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    :cond_9c
    return-object v1
.end method

.method public adjustForMaximumTaskDimensions(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 8

    if-eqz p1, :cond_62

    .line 8920
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_62

    .line 8926
    :cond_f
    iget v0, p0, Lcom/android/server/wm/Task;->mMaxWidth:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1e

    .line 8927
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ge v0, v4, :cond_1e

    move v0, v1

    goto :goto_1f

    :cond_1e
    move v0, v3

    .line 8929
    :goto_1f
    iget v4, p0, Lcom/android/server/wm/Task;->mMaxHeight:I

    if-eq v4, v2, :cond_2c

    .line 8930
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ge v4, v2, :cond_2a

    goto :goto_2b

    :cond_2a
    move v1, v3

    :goto_2b
    move v3, v1

    :cond_2c
    if-eqz v0, :cond_47

    .line 8933
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_40

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-ne v0, v1, :cond_40

    .line 8934
    iget v1, p0, Lcom/android/server/wm/Task;->mMaxWidth:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_47

    .line 8936
    :cond_40
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/server/wm/Task;->mMaxWidth:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    :cond_47
    :goto_47
    if-eqz v3, :cond_62

    .line 8940
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5b

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    if-ne v0, p2, :cond_5b

    .line 8941
    iget p0, p0, Lcom/android/server/wm/Task;->mMaxHeight:I

    sub-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_62

    .line 8943
    :cond_5b
    iget p2, p1, Landroid/graphics/Rect;->top:I

    iget p0, p0, Lcom/android/server/wm/Task;->mMaxHeight:I

    add-int/2addr p2, p0

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_62
    :goto_62
    return-void
.end method

.method public adjustForMinimalTaskDimensions(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)V
    .registers 8

    .line 2730
    iget v0, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    .line 2731
    iget v1, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    .line 2735
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v2

    if-nez v2, :cond_23

    .line 2737
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez p0, :cond_11

    const/16 p0, 0xdc

    goto :goto_13

    .line 2738
    :cond_11
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mMinSizeOfResizeableTaskDp:I

    .line 2739
    :goto_13
    iget v2, p3, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v2, v2

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v2, v3

    int-to-float p0, p0

    mul-float/2addr p0, v2

    float-to-int p0, p0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_20

    move v0, p0

    :cond_20
    if-ne v1, v2, :cond_23

    move v1, p0

    .line 2749
    :cond_23
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3f

    .line 2752
    iget-object p0, p3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 2753
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p3

    if-lt p3, v0, :cond_3c

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p3

    if-lt p3, v1, :cond_3c

    return-void

    .line 2756
    :cond_3c
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2758
    :cond_3f
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    const/4 p3, 0x1

    const/4 v2, 0x0

    if-le v0, p0, :cond_49

    move p0, p3

    goto :goto_4a

    :cond_49
    move p0, v2

    .line 2759
    :goto_4a
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-le v1, v3, :cond_51

    goto :goto_52

    :cond_51
    move p3, v2

    :goto_52
    if-nez p0, :cond_57

    if-nez p3, :cond_57

    return-void

    :cond_57
    if-eqz p0, :cond_6e

    .line 2765
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_69

    iget p0, p1, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    if-ne p0, v2, :cond_69

    sub-int/2addr p0, v0

    .line 2766
    iput p0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_6e

    .line 2770
    :cond_69
    iget p0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, v0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    :cond_6e
    :goto_6e
    if-eqz p3, :cond_85

    .line 2774
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_80

    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    if-ne p0, p2, :cond_80

    sub-int/2addr p0, v1

    .line 2775
    iput p0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_85

    .line 2779
    :cond_80
    iget p0, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, v1

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_85
    :goto_85
    return-void
.end method

.method public applyAnimationUnchecked(Landroid/view/WindowManager$LayoutParams;ZIZLjava/util/ArrayList;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowManager$LayoutParams;",
            "ZIZ",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)V"
        }
    .end annotation

    .line 4277
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4d

    .line 4279
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->canUseRemoteAnimation()Z

    move-result v3

    if-eqz v3, :cond_4d

    if-eqz p2, :cond_71

    .line 4282
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result p1

    if-nez p1, :cond_71

    .line 4283
    sget-boolean p1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz p1, :cond_44

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->asTask()Lcom/android/server/wm/Task;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    sget-object p4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0xc8fcb49

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    const/4 p1, 0x2

    aput-object p3, v4, p1

    const-string p1, "applyAnimationUnchecked, control: %s, task: %s, transit: %s"

    invoke-static {p4, v3, v2, p1, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 4286
    :cond_44
    new-instance p1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda26;

    invoke-direct {p1, p5}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda26;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/RecentsAnimationController;->addTaskToTargets(Lcom/android/server/wm/Task;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    goto :goto_71

    .line 4292
    :cond_4d
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mBackGestureStarted:Z

    if-eqz v0, :cond_6e

    .line 4297
    iput-boolean v2, p0, Lcom/android/server/wm/Task;->mBackGestureStarted:Z

    .line 4298
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-boolean v1, p1, Lcom/android/server/wm/DisplayContent;->mSkipAppTransitionAnimation:Z

    .line 4299
    sget-boolean p1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_BACK_PREVIEW_enabled:Z

    if-eqz p1, :cond_71

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/ProtoLogGroup;

    const p2, 0x5c13dcaf

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p0, p3, v2

    const-string p0, "Skipping app transition animation. task=%s"

    invoke-static {p1, p2, v2, p0, p3}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_71

    .line 4301
    :cond_6e
    invoke-super/range {p0 .. p5}, Lcom/android/server/wm/WindowContainer;->applyAnimationUnchecked(Landroid/view/WindowManager$LayoutParams;ZIZLjava/util/ArrayList;)V

    :cond_71
    :goto_71
    return-void
.end method

.method public asTask()Lcom/android/server/wm/Task;
    .registers 1

    return-object p0
.end method

.method public final autoRemoveFromRecents(Lcom/android/server/wm/TaskFragment;)Z
    .registers 3

    .line 2017
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getHasBeenVisible()Z

    move-result p0

    if-eqz p0, :cond_1b

    :cond_10
    if-eqz p1, :cond_19

    .line 2018
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method

.method public canAffectSystemUiFlags()Z
    .registers 1

    .line 4197
    iget-boolean p0, p0, Lcom/android/server/wm/Task;->mCanAffectSystemUiFlags:Z

    return p0
.end method

.method public canBeLaunchedOnDisplay(I)Z
    .registers 4

    .line 2250
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1, v1, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->canPlaceEntityOnDisplay(IIILcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public final canBeOrganized()Z
    .registers 3

    .line 5307
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_c

    goto :goto_1c

    .line 5312
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_1b

    .line 5313
    iget-boolean p0, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz p0, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :cond_1c
    :goto_1c
    return v1
.end method

.method public canMinimize()Z
    .registers 2

    .line 8428
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mIsMinimized:Z

    if-nez v0, :cond_28

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->supportsMinimizeState()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 8429
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 8430
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskDisplayArea;->isUnderHomeTask(Lcom/android/server/wm/Task;)Z

    move-result p0

    if-nez p0, :cond_28

    const/4 p0, 0x1

    goto :goto_29

    :cond_28
    const/4 p0, 0x0

    :goto_29
    return p0
.end method

.method public final canResizeToBounds(Landroid/graphics/Rect;)Z
    .registers 6

    const/4 v0, 0x1

    if-eqz p1, :cond_45

    .line 2261
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_45

    .line 2265
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    const/4 v2, 0x0

    if-le v1, p1, :cond_17

    move p1, v0

    goto :goto_18

    :cond_17
    move p1, v2

    .line 2266
    :goto_18
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 2267
    iget p0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    const/4 v3, 0x7

    if-ne p0, v3, :cond_39

    .line 2268
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_38

    .line 2269
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le p0, v1, :cond_33

    move p0, v0

    goto :goto_34

    :cond_33
    move p0, v2

    :goto_34
    if-ne p1, p0, :cond_37

    goto :goto_38

    :cond_37
    move v0, v2

    :cond_38
    :goto_38
    return v0

    :cond_39
    const/4 v1, 0x6

    if-ne p0, v1, :cond_3e

    if-nez p1, :cond_44

    :cond_3e
    const/4 v1, 0x5

    if-ne p0, v1, :cond_45

    if-eqz p1, :cond_44

    goto :goto_45

    :cond_44
    move v0, v2

    :cond_45
    :goto_45
    return v0
.end method

.method public final canReuseAsLeafTask()Z
    .registers 3

    .line 7580
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_1e

    .line 7586
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    .line 7587
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result p0

    .line 7588
    invoke-static {v0, p0}, Lcom/android/server/wm/DisplayContent;->alwaysCreateRootTask(II)Z

    move-result v0

    if-nez v0, :cond_1d

    const/4 v0, 0x5

    if-ne p0, v0, :cond_1e

    :cond_1d
    const/4 v1, 0x1

    :cond_1e
    :goto_1e
    return v1
.end method

.method public final canSpecifyOrientation()Z
    .registers 3

    .line 4056
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    .line 4057
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result p0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    const/4 v0, 0x2

    if-eq p0, v0, :cond_16

    const/4 v0, 0x3

    if-eq p0, v0, :cond_16

    const/4 v0, 0x4

    if-ne p0, v0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :cond_16
    :goto_16
    return v1
.end method

.method public cancelTaskWindowTransition()V
    .registers 3

    .line 3827
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 3828
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public checkReadyForSleep()V
    .registers 2

    .line 6160
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->shouldSleepActivities()Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->goToSleepIfPossible(Z)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 6162
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isOnTop()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 6163
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->checkReadyForSleepLocked(Z)V

    :cond_23
    return-void
.end method

.method public checkTranslucentActivityWaiting(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 6265
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-eq v0, p1, :cond_1a

    .line 6266
    iget-object p1, p0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 6267
    iget-object p1, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_13

    const/4 p1, 0x0

    .line 6269
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 6270
    iput-object p1, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 6272
    :cond_13
    iget-object p0, p0, Lcom/android/server/wm/Task;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x65

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1a
    return-void
.end method

.method public final cleanUpResourcesForDestroy(Lcom/android/server/wm/WindowContainer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;)V"
        }
    .end annotation

    .line 959
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 964
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->saveLaunchingStateIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    .line 967
    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    if-eqz v1, :cond_1e

    .line 970
    :try_start_17
    iget-object v2, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v0, v2, v3}, Landroid/service/voice/IVoiceInteractionSession;->taskFinished(Landroid/content/Intent;I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1e} :catch_1e

    .line 974
    :catch_1e
    :cond_1e
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->autoRemoveFromRecents(Lcom/android/server/wm/TaskFragment;)Z

    move-result p1

    if-eqz p1, :cond_36

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_DEDICATED_MEMORY:Z

    if-eqz p1, :cond_38

    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 976
    invoke-virtual {p1, p0}, Lcom/android/server/wm/RecentTasks;->okToRemove(Lcom/android/server/wm/Task;)Z

    move-result p1

    if-nez p1, :cond_38

    :cond_36
    if-eqz v1, :cond_3f

    .line 981
    :cond_38
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/Task;)V

    :cond_3f
    const-string p1, "cleanUpResourcesForDestroy"

    .line 984
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    return-void
.end method

.method public clearDexCompatInfo()V
    .registers 2

    const/4 v0, 0x0

    .line 9281
    iput v0, p0, Lcom/android/server/wm/Task;->mDexLaunchPolicy:I

    .line 9282
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mIsDexCompatEnabled:Z

    .line 9283
    iput v0, p0, Lcom/android/server/wm/Task;->mDexCompatUiMode:I

    const/4 v0, 0x0

    .line 9284
    iput-object v0, p0, Lcom/android/server/wm/Task;->mDexCompatCustomSize:Landroid/graphics/Point;

    return-void
.end method

.method public clearLastRecentsAnimationTransaction(Z)V
    .registers 6

    if-eqz p1, :cond_f

    .line 7800
    iget-object p1, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationOverlay:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_f

    .line 7801
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationOverlay:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_f
    const/4 p1, 0x0

    .line 7803
    iput-object p1, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    .line 7804
    iput-object p1, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationOverlay:Landroid/view/SurfaceControl;

    .line 7806
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    sget-object v2, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    const/16 v3, 0x9

    new-array v3, v3, [F

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 7807
    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v0, 0x0

    .line 7808
    invoke-virtual {p1, p0, v0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public final clearPinnedTaskIfNeed()V
    .registers 2

    .line 2023
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 2024
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p0, p0, Lcom/android/server/wm/Task;->mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeRootTask(Lcom/android/server/wm/Task;)V

    :cond_15
    return-void
.end method

.method public clearRootProcess()V
    .registers 2

    .line 3063
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_a

    .line 3064
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowProcessController;->removeRecentTask(Lcom/android/server/wm/Task;)V

    const/4 v0, 0x0

    .line 3065
    iput-object v0, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    :cond_a
    return-void
.end method

.method public final clearSizeCompatMode()V
    .registers 2

    .line 9552
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final clearTopActivities(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityRecord;
    .registers 5

    .line 2129
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->findActivityInHistory(Landroid/content/ComponentName;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 2132
    :cond_a
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda10;-><init>()V

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 2133
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 2132
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    .line 2134
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;)Z

    .line 2135
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 2139
    iget p0, p1, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    if-nez p0, :cond_38

    const/high16 p0, 0x20000000

    and-int/2addr p0, p2

    if-nez p0, :cond_38

    .line 2141
    invoke-static {p2}, Lcom/android/server/wm/ActivityStarter;->isDocumentLaunchesIntoExisting(I)Z

    move-result p0

    if-nez p0, :cond_38

    .line 2142
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez p0, :cond_38

    const/4 p0, 0x0

    const-string p2, "clear-task-top"

    .line 2143
    invoke-virtual {p1, p2, p0}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    :cond_38
    return-object p1
.end method

.method public final closeRecentsChain()V
    .registers 3

    .line 1718
    iget-object v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_9

    .line 1719
    iget-object v1, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    .line 1721
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_12

    .line 1722
    iget-object v1, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    :cond_12
    const/4 v0, 0x0

    .line 1724
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    .line 1725
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public final computeFreeformBounds(Landroid/graphics/Rect;Landroid/content/res/Configuration;)V
    .registers 8

    .line 2788
    iget v0, p2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    .line 2790
    new-instance v1, Landroid/graphics/Rect;

    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2791
    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-direct {v1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2792
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p2

    if-eqz p2, :cond_28

    .line 2799
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 2800
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/android/server/wm/WindowManagerService;->getStableInsetsLocked(ILandroid/graphics/Rect;)V

    .line 2801
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    :cond_28
    const/high16 v2, 0x42680000    # 58.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    const/high16 v3, 0x42000000    # 32.0f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 2810
    invoke-static {p1, v1, v2, v0}, Lcom/android/server/wm/Task;->fitWithinBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 2816
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_43

    if-eqz p2, :cond_43

    .line 2817
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p0

    iget p0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFreeFormFrameThickness:I

    goto :goto_44

    :cond_43
    move p0, v0

    .line 2821
    :goto_44
    iget p2, v1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v1

    if-lez p2, :cond_4f

    add-int/2addr p2, p0

    .line 2823
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Rect;->offset(II)V

    :cond_4f
    return-void
.end method

.method public final computeMaxUserPosition(I)I
    .registers 3

    :goto_0
    if-lez p1, :cond_14

    .line 3294
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    .line 3295
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->showToCurrentUser()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_14

    :cond_11
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_14
    :goto_14
    return p1
.end method

.method public final computeMinUserPosition(II)I
    .registers 4

    :goto_0
    if-ge p1, p2, :cond_14

    .line 3276
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    .line 3277
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->showToCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_14

    :cond_11
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_14
    :goto_14
    return p1
.end method

.method public convertActivityToTranslucent(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 6277
    iput-object p1, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 6278
    iget-object p1, p0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 6279
    iget-object p0, p0, Lcom/android/server/wm/Task;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x65

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public cropWindowsToRootTaskBounds()Z
    .registers 3

    .line 3543
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3546
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3548
    iget-boolean v1, v0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    :cond_12
    if-eq p0, v0, :cond_1a

    .line 3549
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 p0, 0x0

    return p0

    .line 3553
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result p0

    return p0
.end method

.method public dismissPip()V
    .registers 3

    .line 7628
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 7632
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    .line 7637
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda33;

    invoke-direct {v1, p0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda33;-><init>(Lcom/android/server/wm/Task;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    return-void

    .line 7633
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t exit pinned mode if it\'s not pinned already."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7629
    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "You can\'t move tasks from non-standard root tasks."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dispatchTaskInfoChangedIfNeeded(Z)V
    .registers 3

    .line 7900
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 7901
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/TaskOrganizerController;->onTaskInfoChanged(Lcom/android/server/wm/Task;Z)V

    :cond_d
    return-void
.end method

.method public dontAnimateDimExit()V
    .registers 1

    .line 4201
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {p0}, Lcom/android/server/wm/Dimmer;->dontAnimateExit()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 12

    .line 4645
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "userId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " effectiveUid="

    .line 4646
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v0, " mCallingUid="

    .line 4647
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mCallingUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v0, " mUserSetupComplete="

    .line 4648
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mUserSetupComplete:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mCallingPackage="

    .line 4649
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mCallingFeatureId="

    .line 4650
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4651
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_70

    .line 4652
    :cond_48
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "affinity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4653
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    if-eqz v0, :cond_66

    iget-object v1, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    goto :goto_66

    .line 4656
    :cond_62
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_70

    :cond_66
    :goto_66
    const-string v0, " root="

    .line 4654
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4659
    :cond_70
    :goto_70
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    if-eqz v0, :cond_82

    .line 4660
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "windowLayoutAffinity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4662
    :cond_82
    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v0, :cond_8a

    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    if-eqz v0, :cond_b1

    .line 4663
    :cond_8a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "VOICE: session=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4664
    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " interactor=0x"

    .line 4665
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4666
    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4668
    :cond_b1
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    const/16 v1, 0x7d

    const/16 v2, 0x80

    if-eqz v0, :cond_da

    .line 4669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4670
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "intent={"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4671
    iget-object v3, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 4672
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4673
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4675
    :cond_da
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_ff

    .line 4676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4677
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "affinityIntent={"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4678
    iget-object v3, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 4679
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4680
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4682
    :cond_ff
    iget-object v0, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_115

    .line 4683
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "origActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4684
    iget-object v0, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4686
    :cond_115
    iget-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_12a

    .line 4687
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mActivityComponent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4688
    iget-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4690
    :cond_12a
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    if-nez v0, :cond_138

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->isPersistable:Z

    if-nez v0, :cond_138

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandard()Z

    move-result v0

    if-nez v0, :cond_15b

    .line 4691
    :cond_138
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "autoRemoveRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " isPersistable="

    .line 4692
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->isPersistable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " activityType="

    .line 4693
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4695
    :cond_15b
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->rootWasReset:Z

    const/4 v1, 0x1

    if-nez v0, :cond_16c

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    if-nez v0, :cond_16c

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    if-nez v0, :cond_16c

    iget v0, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    if-eq v0, v1, :cond_19a

    .line 4697
    :cond_16c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "rootWasReset="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->rootWasReset:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mNeverRelinquishIdentity="

    .line 4698
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mReuseTask="

    .line 4699
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mLockTaskAuth="

    .line 4700
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->lockTaskAuthToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4702
    :cond_19a
    iget v0, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v0, v2, :cond_1b1

    iget v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1b1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    if-nez v0, :cond_1b1

    iget v0, p0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    if-ne v0, v2, :cond_1b1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_207

    .line 4705
    :cond_1b1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "affiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " prevAffiliation="

    .line 4706
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " ("

    .line 4707
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4708
    iget-object v2, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    const-string v3, "null"

    if-nez v2, :cond_1d7

    .line 4709
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1e2

    .line 4711
    :cond_1d7
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_1e2
    const-string v2, ") nextAffiliation="

    .line 4713
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 4714
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4715
    iget-object v0, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-nez v0, :cond_1f7

    .line 4716
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_202

    .line 4718
    :cond_1f7
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_202
    const-string v0, ")"

    .line 4720
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4722
    :cond_207
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Activities="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4723
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->askedCompatMode:Z

    if-eqz v0, :cond_220

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v0, :cond_220

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->isAvailable:Z

    if-nez v0, :cond_241

    .line 4724
    :cond_220
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "askedCompatMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->askedCompatMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " inRecents="

    .line 4725
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->inRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " isAvailable="

    .line 4726
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->isAvailable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4728
    :cond_241
    iget-object v0, p0, Lcom/android/server/wm/Task;->lastDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_252

    .line 4729
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "lastDescription="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->lastDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4731
    :cond_252
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_263

    .line 4732
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRootProcess="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4734
    :cond_263
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "taskId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " rootTaskId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4736
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasChildPipActivity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_2a7

    goto :goto_2a8

    :cond_2a7
    const/4 v1, 0x0

    :goto_2a8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4737
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHasBeenVisible="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getHasBeenVisible()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4738
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mResizeMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4739
    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->resizeModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mSupportsPictureInPicture="

    .line 4740
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " isResizeable="

    .line 4741
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4742
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "lastActiveTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/Task;->lastActiveTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 4743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " (inactive for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getInactiveDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4746
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lastGainFocusTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/Task;->lastGainFocusTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4749
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_ACTIVITY:Z

    if-eqz v0, :cond_346

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->supportSplitActivityMode()Z

    move-result v0

    if-eqz v0, :cond_346

    .line 4750
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "ActivityRecordGroups:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4751
    iget-object v0, p0, Lcom/android/server/wm/Task;->mActivityGroups:Lcom/android/server/wm/ActivityRecordGroups;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivityRecordGroups;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4772
    :cond_346
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DEDICATED_MEMORY:Z

    if-eqz v0, :cond_37c

    .line 4773
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDedicatedTask:Z

    if-eqz v0, :cond_356

    .line 4774
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "dedicated=true"

    .line 4775
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4777
    :cond_356
    iget-object v0, p0, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    if-eqz v0, :cond_371

    .line 4778
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDedicatedTask:Z

    if-nez v0, :cond_362

    .line 4779
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_367

    :cond_362
    const-string p2, " "

    .line 4781
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_367
    const-string p2, "hostProcess="

    .line 4783
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4784
    iget-object p2, p0, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4786
    :cond_371
    iget-boolean p2, p0, Lcom/android/server/wm/Task;->mDedicatedTask:Z

    if-nez p2, :cond_379

    iget-object p0, p0, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    if-eqz p0, :cond_37c

    .line 4787
    :cond_379
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_37c
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 4

    .line 4307
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/TaskFragment;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 4308
    iget-object p0, p0, Lcom/android/server/wm/Task;->mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

    const-string p3, "AnimatingApps:"

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/wm/AnimatingActivityRegistry;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;Z)Z
    .registers 16

    const-string v1, "  "

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    .line 7415
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/TaskFragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;ZLjava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 8

    const/4 v0, 0x2

    if-ne p4, v0, :cond_a

    .line 7931
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 7935
    :cond_a
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10500000002L

    .line 7937
    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000010L

    .line 7938
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7940
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 7941
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    const-wide v1, 0x10b0000000cL

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 7943
    :cond_36
    iget-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_46

    const-wide v1, 0x1090000000dL

    .line 7944
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 7946
    :cond_46
    iget-object v0, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_56

    const-wide v1, 0x1090000000eL

    .line 7947
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_56
    const-wide v0, 0x10500000012L

    .line 7949
    iget v2, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10800000004L

    .line 7950
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->matchParentBounds()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 7951
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v0

    const-wide v1, 0x10b00000005L

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 7953
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_84

    const-wide v1, 0x10b00000016L

    .line 7954
    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 7957
    :cond_84
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_a2

    const-wide v1, 0x10500000008L

    .line 7958
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v0

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000009L

    .line 7959
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->getHeight()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_a2
    const-wide v0, 0x1080000001cL

    .line 7962
    iget-boolean v2, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x1090000001dL

    .line 7963
    iget-object v2, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v0, 0x1080000001eL

    .line 7964
    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_c1

    const/4 v2, 0x1

    goto :goto_c2

    :cond_c1
    const/4 v2, 0x0

    :goto_c2
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10b0000001fL

    .line 7966
    invoke-super {p0, p1, v0, v1, p4}, Lcom/android/server/wm/TaskFragment;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 7968
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public dumpInner(Ljava/lang/String;Ljava/io/PrintWriter;ZLjava/lang/String;)V
    .registers 13

    .line 7420
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/wm/TaskFragment;->dumpInner(Ljava/lang/String;Ljava/io/PrintWriter;ZLjava/lang/String;)V

    .line 7421
    iget-boolean v2, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v2, :cond_1b

    .line 7422
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  mCreatedByOrganizer=true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7425
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTopFreeform()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 7426
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  isAlwaysOnTopFreeform="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTopFreeform()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7428
    :cond_3c
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->supportsMinimizeState()Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 7429
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  isMinimized="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7431
    :cond_5d
    iget-boolean v2, p0, Lcom/android/server/wm/Task;->mSetInternalPresentationOnly:Z

    if-eqz v2, :cond_75

    .line 7432
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  mSetInternalPresentationOnly=true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7435
    :cond_75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  mResizeMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-static {v3}, Landroid/content/pm/ActivityInfo;->resizeModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7438
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  mHasBeenVisible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/Task;->mHasBeenVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7440
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MD_DEX_TASK_DOCKING:Z

    if-eqz v2, :cond_ce

    .line 7441
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  mDexDocking="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7442
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDexTaskDockingState()I

    move-result v3

    .line 7441
    invoke-static {v3}, Landroid/app/WindowConfiguration;->dexTaskDockingStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7445
    :cond_ce
    invoke-static {}, Lcom/android/server/wm/PackageSettingsManager;->getInstance()Lcom/android/server/wm/PackageSettingsManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3, p0}, Lcom/android/server/wm/PackageSettingsManager;->onDumpInTask(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 7448
    iget-object v2, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_f7

    .line 7449
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  mLastNonFullscreenBounds="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7450
    iget-object v2, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7452
    :cond_f7
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v2

    if-eqz v2, :cond_16e

    .line 7453
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  isSleeping="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->shouldSleepActivities()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7454
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    const/4 v5, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  topPausingActivity="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, p2

    move-object v4, p4

    invoke-static/range {v2 .. v7}, Lcom/android/server/wm/ActivityTaskSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;)Z

    .line 7456
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  topResumedActivity="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v2, p2

    move-object v4, p4

    invoke-static/range {v2 .. v7}, Lcom/android/server/wm/ActivityTaskSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;)Z

    .line 7458
    iget v2, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_157

    iget v2, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    if-eq v2, v3, :cond_16e

    .line 7459
    :cond_157
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  mMinWidth="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " mMinHeight="

    .line 7460
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_16e
    return-void
.end method

.method public endDragMoving()V
    .registers 2

    const/4 v0, 0x0

    .line 9355
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mDragMoving:Z

    return-void
.end method

.method public ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V
    .registers 5

    const/4 v0, 0x1

    .line 6216
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V

    return-void
.end method

.method public ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V
    .registers 7

    .line 6237
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 6238
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 6237
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginActivityVisibilityUpdate(Lcom/android/server/wm/DisplayContent;)V

    .line 6240
    :try_start_9
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda29;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda29;-><init>(Lcom/android/server/wm/ActivityRecord;IZZ)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 6245
    iget-object p1, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_22

    iget-object p1, p0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 6246
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_22

    const/4 p1, 0x0

    .line 6249
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_28

    .line 6252
    :cond_22
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endActivityVisibilityUpdate()V

    return-void

    :catchall_28
    move-exception p1

    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endActivityVisibilityUpdate()V

    .line 6253
    throw p1
.end method

.method public enterSplitActivityMode(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 8860
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->initializeChangeTransition(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 8861
    invoke-virtual {p1, v0, v1, v1}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZZ)Z

    .line 8862
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    return-void
.end method

.method public executeAppTransition(Landroid/app/ActivityOptions;)V
    .registers 2

    .line 7870
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 7871
    invoke-static {p1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    return-void
.end method

.method public exitSplitActivityMode()V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 8866
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    return-void
.end method

.method public fillTaskInfo(Landroid/app/TaskInfo;)V
    .registers 3

    const/4 v0, 0x1

    .line 4317
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;Z)V

    return-void
.end method

.method public fillTaskInfo(Landroid/app/TaskInfo;Z)V
    .registers 4

    .line 4321
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;ZLcom/android/server/wm/TaskDisplayArea;)V

    return-void
.end method

.method public fillTaskInfo(Landroid/app/TaskInfo;ZLcom/android/server/wm/TaskDisplayArea;)V
    .registers 10

    .line 4331
    iget-object v0, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getNumRunningActivities(Lcom/android/server/wm/Task$TaskActivitiesReport;)V

    .line 4332
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/server/wm/Task;->mUserId:I

    goto :goto_10

    :cond_e
    iget v0, p0, Lcom/android/server/wm/Task;->mCurrentUser:I

    :goto_10
    iput v0, p1, Landroid/app/TaskInfo;->userId:I

    .line 4333
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    iput v0, p1, Landroid/app/TaskInfo;->taskId:I

    .line 4334
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v0

    iput v0, p1, Landroid/app/TaskInfo;->displayId:I

    if-eqz p3, :cond_22

    .line 4336
    iget v0, p3, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    iput v0, p1, Landroid/app/TaskInfo;->displayAreaFeatureId:I

    .line 4338
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2c

    move v0, v1

    goto :goto_2d

    :cond_2c
    move v0, v2

    :goto_2d
    iput-boolean v0, p1, Landroid/app/TaskInfo;->isRunning:Z

    .line 4339
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_37

    move v3, v2

    goto :goto_3b

    .line 4342
    :cond_37
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v3

    :goto_3b
    if-nez v0, :cond_43

    .line 4344
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    goto :goto_4f

    :cond_43
    if-eqz p2, :cond_4a

    .line 4345
    invoke-virtual {v0}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object p2

    goto :goto_4f

    :cond_4a
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    :goto_4f
    iput-object p2, p1, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    .line 4346
    invoke-virtual {p2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4347
    iget-object p2, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object p2, p2, Lcom/android/server/wm/Task$TaskActivitiesReport;->base:Lcom/android/server/wm/ActivityRecord;

    const/4 v0, 0x0

    if-eqz p2, :cond_62

    .line 4348
    iget-object p2, p2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    goto :goto_63

    :cond_62
    move-object p2, v0

    .line 4349
    :goto_63
    iput-object p2, p1, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 4350
    iget-object p2, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v3, p2, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_6e

    .line 4351
    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    goto :goto_6f

    :cond_6e
    move-object v3, v0

    .line 4352
    :goto_6f
    iput-object v3, p1, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 4353
    iget-object v3, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    iput-object v3, p1, Landroid/app/TaskInfo;->origActivity:Landroid/content/ComponentName;

    .line 4354
    iget-object v3, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    iput-object v3, p1, Landroid/app/TaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 4355
    iget p2, p2, Lcom/android/server/wm/Task$TaskActivitiesReport;->numActivities:I

    iput p2, p1, Landroid/app/TaskInfo;->numActivities:I

    .line 4356
    iget-wide v3, p0, Lcom/android/server/wm/Task;->lastActiveTime:J

    iput-wide v3, p1, Landroid/app/TaskInfo;->lastActiveTime:J

    .line 4357
    new-instance p2, Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v3

    invoke-direct {p2, v3}, Landroid/app/ActivityManager$TaskDescription;-><init>(Landroid/app/ActivityManager$TaskDescription;)V

    iput-object p2, p1, Landroid/app/TaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 4358
    invoke-virtual {p0, p3}, Lcom/android/server/wm/Task;->supportsSplitScreenWindowingModeInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result p2

    iput-boolean p2, p1, Landroid/app/TaskInfo;->supportsSplitScreenMultiWindow:Z

    .line 4361
    invoke-virtual {p0, p3, v1}, Lcom/android/server/wm/Task;->supportsSplitScreenWindowingModeInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result p2

    iput-boolean p2, p1, Landroid/app/TaskInfo;->originallySupportedSplitScreen:Z

    .line 4365
    invoke-virtual {p0, p3}, Lcom/android/server/wm/TaskFragment;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result p2

    iput-boolean p2, p1, Landroid/app/TaskInfo;->supportsMultiWindow:Z

    .line 4366
    iget-object p2, p1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 4369
    iget-object p2, p1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    .line 4370
    iget-object p2, p1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 4371
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object p2

    iput-object p2, p1, Landroid/app/TaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 4375
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object p2

    if-eqz p2, :cond_ce

    .line 4376
    iget p3, p2, Lcom/android/server/wm/Task;->mResizeMode:I

    goto :goto_d0

    :cond_ce
    iget p3, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    :goto_d0
    iput p3, p1, Landroid/app/TaskInfo;->resizeMode:I

    .line 4377
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result p3

    iput p3, p1, Landroid/app/TaskInfo;->topActivityType:I

    .line 4378
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result p3

    iput-boolean p3, p1, Landroid/app/TaskInfo;->isResizeable:Z

    .line 4379
    iget p3, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    iput p3, p1, Landroid/app/TaskInfo;->minWidth:I

    .line 4380
    iget p3, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    iput p3, p1, Landroid/app/TaskInfo;->minHeight:I

    .line 4381
    iget-object p3, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez p3, :cond_ed

    const/16 p3, 0xdc

    goto :goto_ef

    .line 4382
    :cond_ed
    iget p3, p3, Lcom/android/server/wm/DisplayContent;->mMinSizeOfResizeableTaskDp:I

    :goto_ef
    iput p3, p1, Landroid/app/TaskInfo;->defaultMinSize:I

    .line 4384
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRelativePosition()Landroid/graphics/Point;

    move-result-object p3

    iput-object p3, p1, Landroid/app/TaskInfo;->positionInParent:Landroid/graphics/Point;

    .line 4386
    invoke-virtual {p0, p2}, Lcom/android/server/wm/Task;->getPictureInPictureParams(Lcom/android/server/wm/Task;)Landroid/app/PictureInPictureParams;

    move-result-object p3

    iput-object p3, p1, Landroid/app/TaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 4387
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->shouldDockBigOverlays()Z

    move-result p3

    iput-boolean p3, p1, Landroid/app/TaskInfo;->shouldDockBigOverlays:Z

    .line 4388
    iget-object p3, p1, Landroid/app/TaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    if-eqz p3, :cond_123

    .line 4389
    invoke-virtual {p3}, Landroid/app/PictureInPictureParams;->isLaunchIntoPip()Z

    move-result p3

    if-eqz p3, :cond_123

    .line 4390
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getLastParentBeforePip()Lcom/android/server/wm/Task;

    move-result-object p3

    if-eqz p3, :cond_123

    .line 4392
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getLastParentBeforePip()Lcom/android/server/wm/Task;

    move-result-object p3

    iget p3, p3, Lcom/android/server/wm/Task;->mTaskId:I

    iput p3, p1, Landroid/app/TaskInfo;->launchIntoPipHostTaskId:I

    .line 4394
    :cond_123
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getDisplayCutoutInsets()Landroid/graphics/Rect;

    move-result-object p3

    iput-object p3, p1, Landroid/app/TaskInfo;->displayCutoutInsets:Landroid/graphics/Rect;

    .line 4395
    iget-object p3, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object p3, p3, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    if-eqz p3, :cond_132

    .line 4396
    iget-object v3, p3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    goto :goto_133

    :cond_132
    move-object v3, v0

    .line 4397
    :goto_133
    iput-object v3, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p3, :cond_14b

    .line 4400
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getOrganizedTask()Lcom/android/server/wm/Task;

    move-result-object p3

    if-ne p3, p0, :cond_14b

    iget-object p3, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object p3, p3, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    .line 4401
    invoke-virtual {p3, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result p3

    if-eqz p3, :cond_14b

    move p3, v1

    goto :goto_14c

    :cond_14b
    move p3, v2

    :goto_14c
    if-eqz p3, :cond_15a

    .line 4403
    iget-object v3, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v3, v3, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    .line 4404
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->inSizeCompatMode()Z

    move-result v3

    if-eqz v3, :cond_15a

    move v3, v1

    goto :goto_15b

    :cond_15a
    move v3, v2

    :goto_15b
    iput-boolean v3, p1, Landroid/app/TaskInfo;->topActivityInSizeCompat:Z

    if-eqz p3, :cond_167

    .line 4406
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAnimatingByRecents()Z

    move-result v3

    if-nez v3, :cond_167

    move v3, v1

    goto :goto_168

    :cond_167
    move v3, v2

    .line 4407
    :goto_168
    iget-object v4, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v4, v4, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_182

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    .line 4408
    invoke-virtual {v4}, Lcom/android/server/wm/BoundsCompatRecord;->getController()Lcom/android/server/wm/BoundsCompatController;

    move-result-object v4

    .line 4409
    invoke-interface {v4}, Lcom/android/server/wm/BoundsCompatController;->isCustomLetterboxEnabled()Z

    move-result v4

    if-eqz v4, :cond_182

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAnimatingByRecents()Z

    move-result v4

    if-nez v4, :cond_182

    move v4, v1

    goto :goto_183

    :cond_182
    move v4, v2

    .line 4411
    :goto_183
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_FIXED_ASPECT_RATIO_MODE:Z

    if-eqz v5, :cond_19e

    if-eqz v3, :cond_19b

    .line 4412
    iget-object v3, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v3, v3, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    .line 4413
    invoke-virtual {v3}, Lcom/android/server/wm/BoundsCompatRecord;->getController()Lcom/android/server/wm/BoundsCompatController;

    move-result-object v3

    .line 4414
    invoke-interface {v3}, Lcom/android/server/wm/BoundsCompatController;->isFixedAspectRatioModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_19b

    move v3, v1

    goto :goto_19c

    :cond_19b
    move v3, v2

    :goto_19c
    iput-boolean v3, p1, Landroid/app/TaskInfo;->topActivityInFixedAspectRatio:Z

    .line 4420
    :cond_19e
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL_WITH_ROTATION_COMPAT:Z

    if-eqz v3, :cond_1be

    iget-boolean v3, p1, Landroid/app/TaskInfo;->topActivityInSizeCompat:Z

    if-eqz v3, :cond_1be

    iget-object v3, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v3, v3, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    .line 4422
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getCompatDisplayInsets()Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    move-result-object v3

    if-eqz v3, :cond_1be

    iget-object v3, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v3, v3, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    .line 4423
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getCompatDisplayInsets()Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mCanRotationCompatMode:Z

    if-eqz v3, :cond_1be

    .line 4424
    iput-boolean v2, p1, Landroid/app/TaskInfo;->topActivityInSizeCompat:Z

    .line 4426
    :cond_1be
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_BOUNDS_COMPAT_UI_SUPPORT_ALIGNMENT:Z

    if-eqz v3, :cond_1d7

    if-eqz v4, :cond_1cd

    .line 4428
    iget-object v3, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v3, v3, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    goto :goto_1ce

    :cond_1cd
    move-object v3, v0

    :goto_1ce
    iput-object v3, p1, Landroid/app/TaskInfo;->topActivityBounds:Landroid/graphics/Rect;

    if-eqz v3, :cond_1d4

    move v3, v1

    goto :goto_1d5

    :cond_1d4
    move v3, v2

    .line 4429
    :goto_1d5
    iput-boolean v3, p1, Landroid/app/TaskInfo;->topActivityInBoundsCompat:Z

    :cond_1d7
    if-eqz p3, :cond_1e5

    .line 4433
    iget-object v3, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v3, v3, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    .line 4434
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isEligibleForLetterboxEducation()Z

    move-result v3

    if-eqz v3, :cond_1e5

    move v3, v1

    goto :goto_1e6

    :cond_1e5
    move v3, v2

    :goto_1e6
    iput-boolean v3, p1, Landroid/app/TaskInfo;->topActivityEligibleForLetterboxEducation:Z

    if-eqz p3, :cond_1f3

    .line 4437
    iget-object p3, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object p3, p3, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getCameraCompatControlState()I

    move-result p3

    goto :goto_1f4

    :cond_1f3
    move p3, v2

    .line 4438
    :goto_1f4
    iput p3, p1, Landroid/app/TaskInfo;->cameraCompatControlState:I

    .line 4440
    iget-object p3, p1, Landroid/app/TaskInfo;->launchCookies:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 4441
    iget-object p3, p0, Lcom/android/server/wm/Task;->mLaunchCookie:Landroid/os/IBinder;

    invoke-virtual {p1, p3}, Landroid/app/TaskInfo;->addLaunchCookie(Landroid/os/IBinder;)V

    .line 4442
    new-instance p3, Lcom/android/server/wm/Task$$ExternalSyntheticLambda31;

    invoke-direct {p3, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda31;-><init>(Landroid/app/TaskInfo;)V

    invoke-virtual {p0, p3}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 4445
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p3

    if-eqz p3, :cond_217

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p3

    goto :goto_218

    :cond_217
    move-object p3, v0

    :goto_218
    const/4 v3, -0x1

    if-eqz p3, :cond_222

    .line 4446
    iget-boolean v4, p3, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v4, :cond_222

    .line 4447
    iget p3, p3, Lcom/android/server/wm/Task;->mTaskId:I

    goto :goto_223

    :cond_222
    move p3, v3

    .line 4448
    :goto_223
    iput p3, p1, Landroid/app/TaskInfo;->parentTaskId:I

    .line 4449
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFocused()Z

    move-result p3

    iput-boolean p3, p1, Landroid/app/TaskInfo;->isFocused:Z

    .line 4450
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasVisibleChildren()Z

    move-result p3

    iput-boolean p3, p1, Landroid/app/TaskInfo;->isVisible:Z

    .line 4451
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->shouldSleepActivities()Z

    move-result p3

    iput-boolean p3, p1, Landroid/app/TaskInfo;->isSleeping:Z

    .line 4452
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p3

    if-eqz p3, :cond_242

    .line 4453
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getLocusId()Landroid/content/LocusId;

    move-result-object p3

    goto :goto_243

    :cond_242
    move-object p3, v0

    :goto_243
    iput-object p3, p1, Landroid/app/TaskInfo;->mTopActivityLocusId:Landroid/content/LocusId;

    .line 4456
    iget-wide v4, p0, Lcom/android/server/wm/Task;->lastGainFocusTime:J

    iput-wide v4, p1, Landroid/app/TaskInfo;->lastGainFocusTime:J

    .line 4459
    iget-boolean p3, p0, Lcom/android/server/wm/Task;->mAnimatingForChangeTransit:Z

    iput-boolean p3, p1, Landroid/app/TaskInfo;->isAnimatingForChangeTransit:Z

    .line 4462
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    if-eqz p2, :cond_267

    .line 4464
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isHiddenWhileEnteringPinnedMode()Z

    move-result p3

    iput-boolean p3, p1, Landroid/app/TaskInfo;->isHiddenWhileEnteringPip:Z

    .line 4465
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getLastParentBeforePip()Lcom/android/server/wm/Task;

    move-result-object p3

    if-eqz p3, :cond_265

    .line 4466
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getLastParentBeforePip()Lcom/android/server/wm/Task;

    move-result-object p2

    iget v3, p2, Lcom/android/server/wm/Task;->mTaskId:I

    .line 4467
    :cond_265
    iput v3, p1, Landroid/app/TaskInfo;->lastParentTaskIdBeforePip:I

    .line 4471
    :cond_267
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasWallpaper()Z

    move-result p2

    iput-boolean p2, p1, Landroid/app/TaskInfo;->hasWallpaper:Z

    .line 4474
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_277

    .line 4476
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    :cond_277
    if-eqz v0, :cond_291

    .line 4478
    iget-object p0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {p0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result p0

    if-nez p0, :cond_28f

    iget-object p0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p0, p0, p2

    if-gez p0, :cond_28e

    goto :goto_28f

    :cond_28e
    move v1, v2

    :cond_28f
    :goto_28f
    iput-boolean v1, p1, Landroid/app/TaskInfo;->isTopTransparentActivity:Z

    :cond_291
    return-void
.end method

.method public findActivityInHistory(Landroid/content/ComponentName;)Lcom/android/server/wm/ActivityRecord;
    .registers 4

    .line 2287
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda27;-><init>()V

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 2288
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 2287
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object p1

    .line 2289
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    .line 2290
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    return-object p0
.end method

.method public final finishTopCrashedActivityLocked(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)Lcom/android/server/wm/Task;
    .registers 11

    .line 6783
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_aa

    .line 6784
    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eq v2, p1, :cond_d

    goto/16 :goto_aa

    .line 6787
    :cond_d
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v2

    const-string v3, "ActivityTaskManager"

    if-eqz v2, :cond_3a

    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-ne v2, p1, :cond_3a

    .line 6790
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "  Not force finishing home activity "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 6791
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6790
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 6794
    :cond_3a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Force finishing activity "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 6795
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6794
    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6796
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    .line 6797
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v4, 0x2

    const/16 v5, 0x10

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/DisplayContent;->requestTransitionAndLegacyPrepare(II)V

    const/4 v2, 0x0

    .line 6798
    invoke-virtual {v0, p2, v2}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 6802
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_a9

    .line 6804
    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->STARTED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v5, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v6, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v7, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v4

    if-eqz v4, :cond_a9

    .line 6805
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v4

    if-eqz v4, :cond_8a

    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eq p0, v4, :cond_a9

    .line 6807
    :cond_8a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 6808
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6807
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6809
    invoke-virtual {v0, p2, v2}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    :cond_a9
    return-object p1

    :cond_aa
    :goto_aa
    return-object v1
.end method

.method public finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .registers 4

    .line 6818
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda37;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda37;-><init>()V

    const-class v1, Lcom/android/server/wm/Task;

    .line 6819
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 6818
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object p1

    const/4 v0, 0x1

    .line 6820
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 6821
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    return-void
.end method

.method public forAllLeafTasks(Ljava/util/function/Consumer;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/Task;",
            ">;Z)V"
        }
    .end annotation

    .line 4066
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_22

    sub-int/2addr v0, v2

    :goto_b
    if-ltz v0, :cond_3a

    .line 4070
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 4073
    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    move v2, v1

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_22
    move v3, v1

    :goto_23
    if-ge v3, v0, :cond_3a

    .line 4078
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_37

    .line 4081
    invoke-virtual {v4, p1, p2}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    move v2, v1

    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_3a
    if-eqz v2, :cond_3f

    .line 4085
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_3f
    return-void
.end method

.method public forAllLeafTasks(Ljava/util/function/Predicate;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/Task;",
            ">;)Z"
        }
    .end annotation

    .line 4110
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v2, v1

    :goto_9
    const/4 v3, 0x0

    if-ltz v0, :cond_25

    .line 4111
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_22

    .line 4114
    invoke-virtual {v4, p1}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_21

    return v1

    :cond_21
    move v2, v3

    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_25
    if-eqz v2, :cond_2c

    .line 4120
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2c
    return v3
.end method

.method public forAllLeafTasksAndLeafTaskFragments(Ljava/util/function/Consumer;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/TaskFragment;",
            ">;Z)V"
        }
    .end annotation

    .line 4128
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda39;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda39;-><init>(Ljava/util/function/Consumer;Z)V

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public forAllRootTasks(Ljava/util/function/Consumer;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/Task;",
            ">;Z)V"
        }
    .end annotation

    .line 4096
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 4097
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public forAllRootTasks(Ljava/util/function/Predicate;Z)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/Task;",
            ">;Z)Z"
        }
    .end annotation

    .line 4162
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public forAllTasks(Ljava/util/function/Consumer;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/Task;",
            ">;Z)V"
        }
    .end annotation

    .line 4090
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;Z)V

    .line 4091
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public forAllTasks(Ljava/util/function/Predicate;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/Task;",
            ">;)Z"
        }
    .end annotation

    .line 4103
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 4104
    :cond_8
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getActivityGroups()Lcom/android/server/wm/ActivityRecordGroups;
    .registers 1

    .line 8836
    iget-object p0, p0, Lcom/android/server/wm/Task;->mActivityGroups:Lcom/android/server/wm/ActivityRecordGroups;

    return-object p0
.end method

.method public getAdjacentTask()Lcom/android/server/wm/Task;
    .registers 2

    .line 3259
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getCreatedByOrganizerTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 3260
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getCreatedByOrganizerTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getAdjacentTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 3261
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getCreatedByOrganizerTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getAdjacentTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getAdjustedChildPosition(Lcom/android/server/wm/WindowContainer;I)I
    .registers 8

    .line 3305
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->showToCurrentUser()Z

    move-result v0

    .line 3307
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    .line 3310
    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/Task;->computeMinUserPosition(II)I

    move-result v2

    :cond_11
    if-lez v1, :cond_1f

    if-eqz v0, :cond_18

    add-int/lit8 v0, v1, -0x1

    goto :goto_20

    :cond_18
    add-int/lit8 v0, v1, -0x1

    .line 3313
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->computeMaxUserPosition(I)I

    move-result v0

    goto :goto_20

    :cond_1f
    move v0, v2

    .line 3319
    :goto_20
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 3318
    invoke-static {v3, v4}, Lcom/android/server/wm/FreeformController;->useAlwaysOnTopFreeform(ILcom/android/server/wm/DisplayContent;)Z

    move-result v3

    .line 3323
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTop()Z

    move-result v4

    if-nez v4, :cond_48

    if-nez v3, :cond_48

    :goto_34
    if-le v0, v2, :cond_48

    .line 3329
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTop()Z

    move-result v3

    if-nez v3, :cond_45

    goto :goto_48

    :cond_45
    add-int/lit8 v0, v0, -0x1

    goto :goto_34

    :cond_48
    :goto_48
    const/high16 v3, -0x80000000

    if-ne p2, v3, :cond_4f

    if-nez v2, :cond_4f

    return v3

    :cond_4f
    const v3, 0x7fffffff

    if-ne p2, v3, :cond_59

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_59

    return v3

    .line 3342
    :cond_59
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result p0

    if-nez p0, :cond_61

    add-int/lit8 v0, v0, 0x1

    .line 3347
    :cond_61
    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public getAnimatingActivityRegistry()Lcom/android/server/wm/AnimatingActivityRegistry;
    .registers 1

    .line 7865
    iget-object p0, p0, Lcom/android/server/wm/Task;->mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

    return-object p0
.end method

.method public getAnimationBounds(I)Landroid/graphics/Rect;
    .registers 3

    .line 9489
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 9490
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isInChangeTransition()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    .line 9491
    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceFreezer;->isFreeformHeaderTypeChangeTransition()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 9492
    iget-object p1, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    .line 9493
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    return-object p1

    .line 9496
    :cond_1a
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->getAnimationBounds(I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getAnimationFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 6

    .line 3561
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    .line 3559
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 3564
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowState;->getAnimationFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_11

    .line 3566
    :cond_e
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowContainer;->getAnimationFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_11
    return-void
.end method

.method public getAnimationLeashParent()Landroid/view/SurfaceControl;
    .registers 3

    .line 8717
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 8724
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isInFreeformToSplitTransition()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_2e

    .line 8727
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isChangingAppTransition()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 8728
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->needsZBoost()Z

    move-result p0

    if-eqz p0, :cond_22

    iget-object p0, v0, Lcom/android/server/wm/TaskDisplayArea;->mChangeAnimationBoostedLayer:Landroid/view/SurfaceControl;

    goto :goto_24

    :cond_22
    iget-object p0, v0, Lcom/android/server/wm/TaskDisplayArea;->mChangeAnimationLayer:Landroid/view/SurfaceControl;

    :goto_24
    return-object p0

    .line 8730
    :cond_25
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOpeningAboveDismissingSplit()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 8731
    iget-object p0, v0, Lcom/android/server/wm/TaskDisplayArea;->mChangeAnimationBoostedLayer:Landroid/view/SurfaceControl;

    return-object p0

    .line 8725
    :cond_2e
    :goto_2e
    iget-object p0, v0, Lcom/android/server/wm/TaskDisplayArea;->mFreeformAppAnimationLayer:Landroid/view/SurfaceControl;

    return-object p0

    .line 8734
    :cond_31
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public getBaseIntent()Landroid/content/Intent;
    .registers 2

    .line 1772
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_5

    return-object v0

    .line 1773
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_a

    return-object v0

    .line 1775
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eq v0, p0, :cond_17

    if-eqz v0, :cond_17

    .line 1776
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object p0

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return-object p0
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .registers 2

    .line 7680
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getCreatedByOrganizerTask()Lcom/android/server/wm/Task;
    .registers 2

    .line 3100
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_5

    return-object p0

    .line 3103
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_d

    return-object v0

    .line 3107
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-nez p0, :cond_14

    goto :goto_18

    .line 3108
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getCreatedByOrganizerTask()Lcom/android/server/wm/Task;

    move-result-object v0

    :goto_18
    return-object v0
.end method

.method public getDescendantTaskCount()I
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 3137
    new-instance v2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda1;-><init>()V

    const-class v3, Lcom/android/server/wm/Task;

    .line 3138
    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    .line 3137
    invoke-static {v2, v3, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v2

    .line 3139
    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 3140
    invoke-interface {v2}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    aget p0, v0, v1

    return p0
.end method

.method public getDexMetadataLaunchSize()Landroid/graphics/Point;
    .registers 5

    .line 9156
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    iget-object v1, p0, Lcom/android/server/wm/Task;->mDexMetaDataInfo:Lcom/android/server/wm/DexController$DexMetaDataInfo;

    .line 9157
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v2

    iget-boolean v3, p0, Lcom/android/server/wm/Task;->mIsDexCompatEnabled:Z

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p0

    .line 9156
    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/server/wm/DexController;->getDexMetadataLaunchSizeLocked(Lcom/android/server/wm/DexController$DexMetaDataInfo;IZI)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method public getDexTaskDockingState()I
    .registers 1
    .annotation build Landroid/app/WindowConfiguration$DexTaskDocking;
    .end annotation

    .line 8560
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getDexTaskDockingState()I

    move-result p0

    return p0
.end method

.method public getDimBounds(Landroid/graphics/Rect;)V
    .registers 8

    .line 3615
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_11

    .line 3618
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3619
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    return-void

    .line 3623
    :cond_11
    :goto_11
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3624
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_27

    .line 3627
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedTaskDividerController;

    .line 3628
    invoke-virtual {v1}, Lcom/android/server/wm/DockedTaskDividerController;->isResizing()Z

    move-result v1

    if-eqz v1, :cond_27

    move v1, v2

    goto :goto_28

    :cond_27
    move v1, v3

    .line 3629
    :goto_28
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_4c

    new-array v2, v2, [Z

    aput-boolean v3, v2, v3

    .line 3631
    new-instance v4, Lcom/android/server/wm/Task$$ExternalSyntheticLambda13;

    invoke-direct {v4}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda13;-><init>()V

    const-class v5, Lcom/android/server/wm/ActivityRecord;

    .line 3632
    invoke-static {v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v5

    .line 3631
    invoke-static {v4, v5, p1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v4

    .line 3633
    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 3634
    invoke-interface {v4}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_4c

    return-void

    .line 3640
    :cond_4c
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->matchParentBounds()Z

    move-result v2

    if-nez v2, :cond_82

    if-eqz v1, :cond_58

    .line 3648
    invoke-virtual {v0, p1}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    goto :goto_89

    .line 3651
    :cond_58
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 3652
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eqz v1, :cond_6e

    .line 3653
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    goto :goto_73

    .line 3656
    :cond_6e
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 3658
    :goto_73
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 3659
    iget-object p0, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_89

    .line 3662
    :cond_82
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_89
    return-void
.end method

.method public getDimmer()Lcom/android/server/wm/Dimmer;
    .registers 2

    .line 4212
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4213
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mDimmer:Lcom/android/server/wm/Dimmer;

    return-object p0

    .line 4221
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_1a

    .line 4225
    :cond_17
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mDimmer:Lcom/android/server/wm/Dimmer;

    return-object p0

    .line 4222
    :cond_1a
    :goto_1a
    invoke-super {p0}, Lcom/android/server/wm/TaskFragment;->getDimmer()Lcom/android/server/wm/Dimmer;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayCutoutInsets()Landroid/graphics/Rect;
    .registers 4

    .line 4560
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-nez v0, :cond_e

    goto :goto_2d

    .line 4561
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-nez v0, :cond_16

    const/4 v0, 0x0

    goto :goto_1c

    .line 4564
    :cond_16
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :goto_1c
    const/4 v2, 0x3

    if-eq v0, v2, :cond_2d

    const/4 v2, 0x1

    if-ne v0, v2, :cond_23

    goto :goto_2d

    .line 4567
    :cond_23
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object v1

    :cond_2d
    :goto_2d
    return-object v1
.end method

.method public getDisplayInfo()Landroid/view/DisplayInfo;
    .registers 1

    .line 7861
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDragResizeMode()I
    .registers 1

    .line 3710
    iget p0, p0, Lcom/android/server/wm/Task;->mDragResizeMode:I

    return p0
.end method

.method public getDumpActivitiesLocked(Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation

    .line 7466
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "all"

    .line 7468
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 7469
    new-instance p1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda57;

    invoke-direct {p1, v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda57;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    goto :goto_39

    :cond_16
    const-string/jumbo v1, "top"

    .line 7470
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 7471
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_39

    .line 7473
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 7476
    :cond_29
    new-instance v1, Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    invoke-direct {v1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;-><init>()V

    .line 7477
    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build(Ljava/lang/String;)V

    .line 7479
    new-instance p1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda58;

    invoke-direct {p1, v1, v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda58;-><init>(Lcom/android/server/am/ActivityManagerService$ItemMatcher;Ljava/util/ArrayList;)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    :cond_39
    :goto_39
    const/4 p0, -0x1

    if-eq p2, p0, :cond_54

    .line 7486
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_42
    if-ltz p0, :cond_54

    .line 7487
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-eq p1, p2, :cond_51

    .line 7488
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_51
    add-int/lit8 p0, p0, -0x1

    goto :goto_42

    :cond_54
    return-object v0
.end method

.method public getFreeformHeaderType()I
    .registers 1
    .annotation build Lcom/samsung/android/multiwindow/MultiWindowManager$FreeformHeaderType;
    .end annotation

    .line 9170
    iget p0, p0, Lcom/android/server/wm/Task;->mFreeformHeaderType:I

    return p0
.end method

.method public getFreeformStashState()I
    .registers 1
    .annotation build Landroid/app/WindowConfiguration$FreeformStashType;
    .end annotation

    .line 9396
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getFreeformStashState()I

    move-result p0

    return p0
.end method

.method public getFreeformStashYFraction()F
    .registers 1

    .line 9410
    iget p0, p0, Lcom/android/server/wm/Task;->mFreeformStashYFraction:F

    return p0
.end method

.method public getFreezeSnapshotExcludeLayers()[Landroid/view/SurfaceControl;
    .registers 3

    .line 8793
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda34;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 8795
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_17

    .line 8797
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8799
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    .line 8800
    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceFreezer;->isFreeformHeaderTypeChangeTransition()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 8801
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda35;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_31

    .line 8804
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8808
    :cond_31
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_41

    const/4 p0, 0x0

    new-array p0, p0, [Landroid/view/SurfaceControl;

    .line 8809
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/view/SurfaceControl;

    return-object p0

    :cond_41
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFreezeSnapshotOffset()Landroid/graphics/Point;
    .registers 1

    .line 8817
    iget-object p0, p0, Lcom/android/server/wm/Task;->mFreezeSnapshotOffset:Landroid/graphics/Point;

    return-object p0
.end method

.method public getFreezeSnapshotTarget()Landroid/view/SurfaceControl;
    .registers 5

    .line 2927
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->containsTransitRequest(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return-object v1

    .line 2932
    :cond_d
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 2933
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2934
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mAppTransitionController:Lcom/android/server/wm/AppTransitionController;

    const/16 v3, 0x1b

    .line 2935
    invoke-virtual {v2, p0, v3, v0}, Lcom/android/server/wm/AppTransitionController;->getRemoteAnimationOverride(Lcom/android/server/wm/WindowContainer;ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 2937
    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getChangeNeedsSnapshot()Z

    move-result v0

    if-nez v0, :cond_30

    return-object v1

    .line 2940
    :cond_30
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public getHasBeenVisible()Z
    .registers 1

    .line 5357
    iget-boolean p0, p0, Lcom/android/server/wm/Task;->mHasBeenVisible:Z

    return p0
.end method

.method public getInactiveDuration()J
    .registers 5

    .line 1243
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wm/Task;->lastActiveTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getLastDispatchedWindowFocusInTask()Z
    .registers 1

    .line 9526
    iget-boolean p0, p0, Lcom/android/server/wm/Task;->mLastDispatchedWindowFocusInTask:Z

    return p0
.end method

.method public getLastMinimizedDisplayType()I
    .registers 1

    .line 9587
    iget p0, p0, Lcom/android/server/wm/Task;->mLastMinimizedDisplayType:I

    return p0
.end method

.method public getLastMinimizedRotation()I
    .registers 1

    .line 9595
    iget p0, p0, Lcom/android/server/wm/Task;->mLastMinimizedRotation:I

    return p0
.end method

.method public getLastSurfaceSize()Landroid/graphics/Point;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2917
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mLastSurfaceSize:Landroid/graphics/Point;

    return-object p0
.end method

.method public getLaunchBounds()Landroid/graphics/Rect;
    .registers 5

    .line 3017
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 3022
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v2

    .line 3023
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v3, 0x1

    if-ne v2, v3, :cond_16

    goto :goto_28

    .line 3026
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v1

    if-nez v1, :cond_25

    .line 3027
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 3042
    :cond_25
    iget-object p0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    return-object p0

    .line 3025
    :cond_28
    :goto_28
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result p0

    if-eqz p0, :cond_32

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    :cond_32
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 4205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getNextFocusableTask(Z)Lcom/android/server/wm/Task;
    .registers 4

    .line 3155
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 3160
    :cond_8
    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda62;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda62;-><init>(Lcom/android/server/wm/Task;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object p0

    if-nez p0, :cond_21

    .line 3168
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 3169
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->getNextFocusableTask(Z)Lcom/android/server/wm/Task;

    move-result-object p0

    :cond_21
    return-object p0
.end method

.method public final getNumRunningActivities(Lcom/android/server/wm/Task$TaskActivitiesReport;)V
    .registers 2

    .line 1824
    invoke-virtual {p1}, Lcom/android/server/wm/Task$TaskActivitiesReport;->reset()V

    .line 1825
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public getOccludingActivityAbove(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .registers 3

    .line 3851
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda60;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda60;-><init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eq p0, p1, :cond_c

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return-object p0
.end method

.method public getOrganizedTask()Lcom/android/server/wm/Task;
    .registers 2

    .line 3086
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 3089
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_f

    return-object v0

    .line 3093
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-nez p0, :cond_16

    goto :goto_1a

    .line 3094
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getOrganizedTask()Lcom/android/server/wm/Task;

    move-result-object v0

    :goto_1a
    return-object v0
.end method

.method public getOrientation(I)I
    .registers 3

    .line 4052
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->canSpecifyOrientation()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->getOrientation(I)I

    move-result p0

    goto :goto_c

    :cond_b
    const/4 p0, -0x2

    :goto_c
    return p0
.end method

.method public getPendingDexNonResizeableAppRestartHelpMode()I
    .registers 1

    .line 9440
    iget p0, p0, Lcom/android/server/wm/Task;->mPendingDexNonResizeableAppRestartHelpMode:I

    return p0
.end method

.method public getPictureInPictureParams()Landroid/app/PictureInPictureParams;
    .registers 2

    .line 4544
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getPictureInPictureParams(Lcom/android/server/wm/Task;)Landroid/app/PictureInPictureParams;

    move-result-object p0

    return-object p0
.end method

.method public final getPictureInPictureParams(Lcom/android/server/wm/Task;)Landroid/app/PictureInPictureParams;
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return-object p0

    .line 4549
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 4550
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v0}, Landroid/app/PictureInPictureParams;->empty()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_1a

    .line 4551
    :cond_13
    new-instance p0, Landroid/app/PictureInPictureParams;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-direct {p0, p1}, Landroid/app/PictureInPictureParams;-><init>(Landroid/app/PictureInPictureParams;)V

    :cond_1a
    :goto_1a
    return-object p0
.end method

.method public getProtoFieldId()J
    .registers 3

    const-wide v0, 0x10b00000005L

    return-wide v0
.end method

.method public final getRawBounds()Landroid/graphics/Rect;
    .registers 1

    .line 7896
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public final getRelativePosition()Landroid/graphics/Point;
    .registers 2

    .line 7834
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 7835
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getRelativePosition(Landroid/graphics/Point;)V

    return-object v0
.end method

.method public final getResizeMode()I
    .registers 1

    .line 9197
    iget p0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    return p0
.end method

.method public getRootActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1782
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public getRootActivity(Z)Lcom/android/server/wm/ActivityRecord;
    .registers 3

    const/4 v0, 0x0

    .line 1786
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;
    .registers 3

    .line 1790
    iget-object p0, p0, Lcom/android/server/wm/Task;->mFindRootHelper:Lcom/android/server/wm/Task$FindRootHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/Task$FindRootHelper;->findRoot(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public getRootProcess()Lcom/android/server/wm/WindowProcessController;
    .registers 1

    .line 9345
    iget-object p0, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    return-object p0
.end method

.method public getRootProcessName()Ljava/lang/String;
    .registers 2

    .line 3071
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_8

    .line 3072
    iget-object v0, v0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    .line 3074
    :cond_8
    iget-object p0, p0, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    return-object p0
.end method

.method public getRootTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/Task;",
            ">;Z)",
            "Lcom/android/server/wm/Task;"
        }
    .end annotation

    .line 4175
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return-object p0
.end method

.method public getRootTaskId()I
    .registers 1

    .line 3080
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    return p0
.end method

.method public getRotation()I
    .registers 1

    .line 9150
    iget p0, p0, Lcom/android/server/wm/Task;->mRotation:I

    return p0
.end method

.method public final getShadowRadius(Z)F
    .registers 4

    .line 5528
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1e

    const/16 p1, 0x20

    .line 5537
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasVisibleChildren()Z

    move-result v1

    if-nez v1, :cond_10

    return v0

    .line 5541
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result p0

    int-to-float p0, p0

    return p0

    :cond_1e
    return v0
.end method

.method public getSnappingGuideBounds(Landroid/graphics/Rect;)V
    .registers 3

    .line 9365
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_8

    .line 9366
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_d

    .line 9368
    :cond_8
    iget-object p0, p0, Lcom/android/server/wm/Task;->mSnappingGuideBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_d
    return-void
.end method

.method public getSnapshotAsBitmapForRecentsLocked()Landroid/graphics/Bitmap;
    .registers 6

    .line 8566
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SCREENSHOTS:Z

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_1a

    .line 8567
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSnapshotAsBitmapForRecentsLocked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8570
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_22

    return-object v3

    .line 8575
    :cond_22
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v4

    if-eqz v4, :cond_39

    if-eqz v0, :cond_38

    .line 8579
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result p0

    if-eqz p0, :cond_33

    const-string p0, "\tHome"

    goto :goto_35

    :cond_33
    const-string p0, "\tRecents"

    :goto_35
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    return-object v3

    .line 8584
    :cond_39
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isFocusable()Z

    move-result v4

    if-nez v4, :cond_4d

    if-eqz v0, :cond_4c

    const-string p0, "\tIn minimized docked stack"

    .line 8589
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    return-object v3

    .line 8594
    :cond_4d
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_6b

    .line 8595
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eq v4, p0, :cond_5a

    goto :goto_6b

    .line 8599
    :cond_5a
    iget-boolean v2, v2, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-eqz v2, :cond_66

    if-eqz v0, :cond_65

    const-string p0, "\tNo display"

    .line 8601
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_65
    return-object v3

    .line 8606
    :cond_66
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSnapshotAsBitmapLocked()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_6b
    :goto_6b
    return-object v3
.end method

.method public final getSnapshotAsBitmapLocked()Landroid/graphics/Bitmap;
    .registers 5

    .line 8610
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SCREENSHOTS:Z

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_b

    const-string v2, "\tgetSnapshotAsBitmapLocked"

    .line 8611
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8614
    :cond_b
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTask(Lcom/android/server/wm/Task;)Landroid/window/TaskSnapshot;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_2e

    .line 8616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "snapshotTask() returns null! task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WindowManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 8620
    :cond_2e
    invoke-virtual {v2}, Landroid/window/TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object p0

    if-nez p0, :cond_3c

    if-eqz v0, :cond_3b

    const-string p0, "\tgetSnapshot() returns null!"

    .line 8623
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    return-object v3

    .line 8629
    :cond_3c
    invoke-static {p0}, Landroid/hardware/HardwareBuffer;->createFromGraphicBuffer(Landroid/graphics/GraphicBuffer;)Landroid/hardware/HardwareBuffer;

    move-result-object p0

    .line 8628
    invoke-static {p0, v3}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getStartingWindowInfo(Lcom/android/server/wm/ActivityRecord;)Landroid/window/StartingWindowInfo;
    .registers 5

    .line 4584
    new-instance v0, Landroid/window/StartingWindowInfo;

    invoke-direct {v0}, Landroid/window/StartingWindowInfo;-><init>()V

    .line 4585
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 4587
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_14

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eq v2, v1, :cond_14

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    .line 4588
    :goto_15
    iput-object v2, v0, Landroid/window/StartingWindowInfo;->targetActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 4595
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    const/4 v2, 0x0

    .line 4596
    invoke-virtual {v1, v2}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result v1

    iput-boolean v1, v0, Landroid/window/StartingWindowInfo;->isKeyguardOccluded:Z

    .line 4599
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iget v1, v1, Lcom/android/server/wm/StartingData;->mTypeParams:I

    iput v1, v0, Landroid/window/StartingWindowInfo;->startingWindowTypeParameter:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_46

    .line 4602
    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_46

    .line 4604
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput-object v2, v0, Landroid/window/StartingWindowInfo;->mainWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 4605
    iget-object v2, v0, Landroid/window/StartingWindowInfo;->requestedVisibilities:Landroid/view/InsetsVisibilities;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getRequestedVisibilities()Landroid/view/InsetsVisibilities;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/InsetsVisibilities;->set(Landroid/view/InsetsVisibilities;)V

    .line 4610
    :cond_46
    iget-object v1, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 4611
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopFullscreenActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_69

    .line 4614
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_69

    .line 4617
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    move-result-object p1

    iput-object p1, v0, Landroid/window/StartingWindowInfo;->topOpaqueWindowInsetsState:Landroid/view/InsetsState;

    .line 4618
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iput-object p0, v0, Landroid/window/StartingWindowInfo;->topOpaqueWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    :cond_69
    return-object v0
.end method

.method public getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/Task;",
            ">;Z)",
            "Lcom/android/server/wm/Task;"
        }
    .end annotation

    .line 4167
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object p2

    if-eqz p2, :cond_7

    return-object p2

    .line 4169
    :cond_7
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return-object p0
.end method

.method public getTaskDescription()Landroid/app/ActivityManager$TaskDescription;
    .registers 1

    .line 4047
    iget-object p0, p0, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    return-object p0
.end method

.method public getTaskFragments()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/TaskFragment;",
            ">;"
        }
    .end annotation

    .line 9334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9335
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_d
    if-ltz v1, :cond_2b

    .line 9336
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 9337
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    if-eqz v3, :cond_28

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isEmbedded()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 9338
    check-cast v2, Lcom/android/server/wm/TaskFragment;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    :cond_2b
    return-object v0
.end method

.method public getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 2

    .line 4574
    new-instance v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    .line 4575
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;)V

    return-object v0
.end method

.method public getTopAppToken()Landroid/os/IBinder;
    .registers 1

    .line 9190
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 9191
    iget-object p0, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public getTopFullscreenActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 3981
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda59;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda59;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public getTopLeafTask()Lcom/android/server/wm/Task;
    .registers 3

    .line 3127
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1f

    .line 3128
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-nez v1, :cond_1b

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3130
    :cond_1b
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopLeafTask()Lcom/android/server/wm/Task;

    move-result-object p0

    :cond_1f
    return-object p0
.end method

.method public getTopPausingActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 7

    .line 1679
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-nez v0, :cond_26

    .line 1680
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_e
    if-ltz v0, :cond_26

    .line 1681
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_23

    return-object v1

    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 1688
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1690
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_34
    if-ltz v1, :cond_5c

    .line 1691
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    .line 1692
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v5

    if-eqz v5, :cond_4d

    .line 1693
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getTopPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    goto :goto_56

    :cond_4d
    if-eqz v0, :cond_56

    .line 1695
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-ne v4, v0, :cond_56

    move-object v3, v0

    :cond_56
    :goto_56
    if-eqz v3, :cond_59

    return-object v3

    :cond_59
    add-int/lit8 v1, v1, -0x1

    goto :goto_34

    :cond_5c
    return-object v2
.end method

.method public getTopRealVisibleActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 4012
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 7

    .line 1645
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-nez v0, :cond_35

    .line 1646
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_e
    if-ltz v0, :cond_35

    .line 1648
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-nez v1, :cond_1f

    goto :goto_32

    .line 1652
    :cond_1f
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_32

    return-object v1

    :cond_32
    :goto_32
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 1659
    :cond_35
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1661
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_43
    if-ltz v1, :cond_6b

    .line 1662
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    .line 1663
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v5

    if-eqz v5, :cond_5c

    .line 1664
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    goto :goto_65

    :cond_5c
    if-eqz v0, :cond_65

    .line 1666
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-ne v4, v0, :cond_65

    move-object v3, v0

    :cond_65
    :goto_65
    if-eqz v3, :cond_68

    return-object v3

    :cond_68
    add-int/lit8 v1, v1, -0x1

    goto :goto_43

    :cond_6b
    return-object v2
.end method

.method public getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3994
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;
    .registers 4

    .line 3999
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda46;

    invoke-direct {v0, p2, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda46;-><init>(ZZ)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;
    .registers 2

    const/4 v0, 0x0

    .line 3935
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object p0

    return-object p0
.end method

.method public getTopVisibleAppMainWindow(Z)Lcom/android/server/wm/WindowState;
    .registers 3

    const/4 v0, 0x1

    .line 3940
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/Task;->getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 3944
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return-object p0
.end method

.method public getTopVisibleTaskFragment()Lcom/android/server/wm/TaskFragment;
    .registers 4

    .line 9323
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_2a

    .line 9324
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 9325
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 9326
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isEmbedded()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 9327
    check-cast v1, Lcom/android/server/wm/TaskFragment;

    return-object v1

    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_2a
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTopWaitSplashScreenActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 4016
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda32;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public goToSleepIfPossible(Z)Z
    .registers 6

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 6180
    new-instance v3, Lcom/android/server/wm/Task$$ExternalSyntheticLambda12;

    invoke-direct {v3, p1, v1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda12;-><init>(Z[I)V

    invoke-virtual {p0, v3, v0}, Lcom/android/server/wm/Task;->forAllLeafTasksAndLeafTaskFragments(Ljava/util/function/Consumer;Z)V

    aget p0, v1, v2

    if-nez p0, :cond_13

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    return v0
.end method

.method public handlesOrientationChangeFromDescendant()Z
    .registers 4

    .line 3470
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->handlesOrientationChangeFromDescendant()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 3478
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_10

    return v2

    .line 3485
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->canSpecifyOrientation()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->canSpecifyOrientation()Z

    move-result p0

    if-eqz p0, :cond_21

    move v1, v2

    :cond_21
    return v1
.end method

.method public hasMetaKeyBounds()Z
    .registers 1

    .line 9176
    iget-object p0, p0, Lcom/android/server/wm/Task;->mMetaKeyBounds:Landroid/graphics/Rect;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public hasPendingDexNonResizeableAppRestartHelpMode()Z
    .registers 1

    .line 9444
    iget p0, p0, Lcom/android/server/wm/Task;->mPendingDexNonResizeableAppRestartHelpMode:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final hasVisibleChildren()Z
    .registers 3

    .line 5514
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_1a

    .line 5518
    :cond_e
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda48;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda48;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    :goto_1a
    return v1
.end method

.method public final hasWallpaper()Z
    .registers 3

    .line 4535
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_1a

    .line 4539
    :cond_e
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda63;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda63;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    :goto_1a
    return v1
.end method

.method public final inFrontOfStandardRootTask()Z
    .registers 6

    .line 6856
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v2, 0x1

    new-array v3, v2, [Z

    .line 6861
    new-instance v4, Lcom/android/server/wm/Task$$ExternalSyntheticLambda18;

    invoke-direct {v4, p0, v3}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/wm/Task;[Z)V

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 6873
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandard()Z

    move-result p0

    if-eqz p0, :cond_1d

    move v1, v2

    :cond_1d
    return v1
.end method

.method public final initMinMaxDimensions(Landroid/content/pm/ActivityInfo;)V
    .registers 7

    .line 8890
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v0, :cond_e

    .line 8891
    iget-object v1, p0, Lcom/android/server/wm/Task;->mMinDimensions:Landroid/graphics/Point;

    iget v2, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 8892
    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 8894
    :cond_e
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_4c

    .line 8895
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->getInitialDisplayDensity(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3bcccccd    # 0.00625f

    mul-float/2addr v0, v1

    .line 8898
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.samsung.android.sdk.multiwindow.maxWidth"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 8900
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.samsung.android.sdk.multiwindow.maxHeight"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_4c

    const/high16 v2, 0x3f000000    # 0.5f

    if-eq v1, v3, :cond_42

    .line 8904
    iget-object v4, p0, Lcom/android/server/wm/Task;->mMaxDimensions:Landroid/graphics/Point;

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v4, Landroid/graphics/Point;->x:I

    :cond_42
    if-eq p1, v3, :cond_4c

    .line 8907
    iget-object p0, p0, Lcom/android/server/wm/Task;->mMaxDimensions:Landroid/graphics/Point;

    int-to-float p1, p1

    mul-float/2addr p1, v0

    add-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Landroid/graphics/Point;->y:I

    :cond_4c
    return-void
.end method

.method public isAliasManaged()Z
    .registers 1

    .line 7924
    iget-boolean p0, p0, Lcom/android/server/wm/Task;->mIsAliasManaged:Z

    return p0
.end method

.method public isAlwaysOnTop()Z
    .registers 2

    .line 5696
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTop()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isAlwaysOnTopWhenVisible()Z
    .registers 1

    .line 5703
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTop()Z

    move-result p0

    return p0
.end method

.method public isAnimatingByRecents()Z
    .registers 3

    const/4 v0, 0x4

    const/16 v1, 0x8

    .line 3930
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result p0

    return p0
.end method

.method public isAvoidTrimDexPendingActivityTask()Z
    .registers 1

    .line 8880
    iget-boolean p0, p0, Lcom/android/server/wm/Task;->mIsAvoidTrimDexPendingActivityTask:Z

    return p0
.end method

.method public isChangeTransitionBlockedByCommonPolicy()Z
    .registers 2

    const/4 v0, 0x0

    .line 8738
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->isChangeTransitionBlockedByCommonPolicy(Z)Z

    move-result p0

    return p0
.end method

.method public isChangeTransitionBlockedByCommonPolicy(Z)Z
    .registers 3

    const/4 v0, 0x0

    .line 8742
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->isChangeTransitionBlockedByCommonPolicy(ZZ)Z

    move-result p0

    return p0
.end method

.method public isChangeTransitionBlockedByCommonPolicy(ZZ)Z
    .registers 5

    .line 8752
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisableTransitionAnimation:Z

    const/4 v1, 0x1

    if-nez v0, :cond_8c

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 8753
    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_11

    if-eqz p2, :cond_8c

    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    .line 8754
    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceFreezer;->hasLeash()Z

    move-result v0

    if-nez v0, :cond_8c

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_8c

    .line 8756
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_8c

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    move-result v0

    if-nez v0, :cond_8c

    .line 8757
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 8758
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 8759
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 8760
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_8c

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mSkipChangeTransition:Z

    if-eqz v0, :cond_46

    goto :goto_8c

    .line 8765
    :cond_46
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_53

    if-eqz p2, :cond_53

    .line 8766
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 8769
    :cond_53
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean p2, p2, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz p2, :cond_5c

    if-nez p1, :cond_5c

    return v1

    .line 8773
    :cond_5c
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_6f

    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 8774
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->isKeyguardLocked(I)Z

    move-result p1

    if-eqz p1, :cond_6f

    return v1

    .line 8778
    :cond_6f
    iget-boolean p1, p0, Lcom/android/server/wm/Task;->mChangingPinnedToSplitScreen:Z

    if-nez p1, :cond_8c

    new-instance p1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda42;

    invoke-direct {p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda42;-><init>()V

    .line 8779
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_7f

    goto :goto_8c

    .line 8783
    :cond_7f
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mNaturalSwitchingController:Lcom/android/server/wm/NaturalSwitchingController;

    .line 8784
    invoke-virtual {p0}, Lcom/android/server/wm/NaturalSwitchingController;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_8a

    return v1

    :cond_8a
    const/4 p0, 0x0

    return p0

    :cond_8c
    :goto_8c
    return v1
.end method

.method public isClearingToReuseTask()Z
    .registers 1

    .line 2279
    iget-boolean p0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    return p0
.end method

.method public isCompatible(II)Z
    .registers 3

    if-nez p2, :cond_3

    const/4 p2, 0x1

    .line 3450
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/ConfigurationContainer;->isCompatible(II)Z

    move-result p0

    return p0
.end method

.method public isDeferredResizeModeTaskLocked()Z
    .registers 5

    .line 7907
    iget-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 7910
    :cond_6
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMwSupportPolicyController:Lcom/android/server/wm/MultiWindowSupportPolicyController;

    .line 7911
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->isMultiSplitBlocklistPackageLocked(Ljava/lang/String;)Z

    move-result v0

    .line 7912
    iget v2, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    const/high16 v3, 0x200000

    and-int/2addr v2, v3

    const/4 v3, 0x1

    if-eqz v2, :cond_1c

    move v2, v3

    goto :goto_1d

    :cond_1c
    move v2, v1

    :goto_1d
    if-eq v2, v0, :cond_21

    move v0, v3

    goto :goto_22

    :cond_21
    move v0, v1

    :goto_22
    if-eqz v0, :cond_2b

    .line 7914
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_2b

    move v1, v3

    :cond_2b
    return v1
.end method

.method public isDexCompatEnabled()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isDexCompatUiFullscreen()Z
    .registers 2

    .line 9288
    iget p0, p0, Lcom/android/server/wm/Task;->mDexCompatUiMode:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public isDexTaskDocked()Z
    .registers 2

    .line 8553
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getDexTaskDockingState()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_11

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method public isDragMoving()Z
    .registers 1

    .line 9359
    iget-boolean p0, p0, Lcom/android/server/wm/Task;->mDragMoving:Z

    return p0
.end method

.method public isDragResizing()Z
    .registers 1

    .line 3706
    iget-boolean p0, p0, Lcom/android/server/wm/Task;->mDragResizing:Z

    return p0
.end method

.method public isEmbedActivityPackageEnabled()Z
    .registers 3

    .line 8872
    iget-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 8874
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lcom/android/server/wm/Task;->mUserId:I

    .line 8873
    invoke-virtual {v1, v0, p0}, Lcom/android/server/wm/MultiTaskingController;->getEmbedActivityPackageEnabled(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public isFocused()Z
    .registers 3

    .line 5504
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_a

    goto :goto_11

    .line 5507
    :cond_a
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne v0, p0, :cond_11

    const/4 v1, 0x1

    :cond_11
    :goto_11
    return v1
.end method

.method public isFocusedRootTaskOnDisplay()Z
    .registers 2

    .line 6198
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne p0, v0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isForceHidden()Z
    .registers 1

    .line 5708
    iget p0, p0, Lcom/android/server/wm/Task;->mForceHiddenFlags:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isFreeformPinned()Z
    .registers 2

    .line 8546
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getFreeformTaskPinningState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public isFreeformStashed()Z
    .registers 3

    .line 9404
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getFreeformStashState()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_12

    const/4 v1, 0x2

    if-ne p0, v1, :cond_11

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :cond_12
    :goto_12
    return v0
.end method

.method public isFullscreenRootForStageTask()Z
    .registers 6

    .line 9381
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v2, 0x1

    .line 9385
    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInStageType(I)Lcom/android/server/wm/Task;

    move-result-object v3

    const/4 v4, 0x2

    .line 9386
    invoke-virtual {v0, v4}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInStageType(I)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 9387
    iget-boolean v4, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v4, :cond_33

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_33

    if-eqz v3, :cond_33

    .line 9388
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-ne v3, p0, :cond_33

    if-eqz v0, :cond_33

    .line 9389
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-ne v0, p0, :cond_33

    move v1, v2

    :cond_33
    return v1
.end method

.method public isInChangeTransition()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2922
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceFreezer;->hasLeash()Z

    move-result v0

    if-nez v0, :cond_13

    iget p0, p0, Lcom/android/server/wm/WindowContainer;->mTransit:I

    invoke-static {p0}, Lcom/android/server/wm/AppTransition;->isChangeTransitOld(I)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public isInFreeformToSplitTransition()Z
    .registers 2

    .line 8829
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isChangingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    .line 8830
    invoke-virtual {p0}, Lcom/android/server/wm/SurfaceFreezer;->isFreeformModeChangeTransition()Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public final isInSkipClosingAppSnapshotTasks()Z
    .registers 2

    .line 9573
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskSnapshotController;->isInSkipClosingAppSnapshotTasks(Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public isInSplitActivityMode()Z
    .registers 4

    .line 8844
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->supportSplitActivityMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/server/wm/Task;->mActivityGroups:Lcom/android/server/wm/ActivityRecordGroups;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecordGroups;->hasActivity()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 8845
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    if-ne v0, v1, :cond_2a

    .line 8846
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v2, 0x1e0

    if-le v0, v2, :cond_2a

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_ACTIVITY_PACKAGE_ENABLED:Z

    if-eqz v0, :cond_2b

    .line 8847
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isSplitActivityPackageEnabled()Z

    move-result p0

    if-eqz p0, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x0

    :cond_2b
    :goto_2b
    return v1
.end method

.method public isInTask(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 4638
    :cond_4
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result p0

    if-eqz p0, :cond_b

    return-object p1

    :cond_b
    return-object v0
.end method

.method public isInternalPresentationOnly()Z
    .registers 1

    .line 9294
    iget-boolean p0, p0, Lcom/android/server/wm/Task;->mSetInternalPresentationOnly:Z

    return p0
.end method

.method public isLeafTask()Z
    .registers 4

    .line 3117
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1d

    .line 3118
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_1a

    const/4 p0, 0x0

    return p0

    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1d
    return v1
.end method

.method public isMinimized()Z
    .registers 2

    .line 8434
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mIsMinimized:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->supportsMinimizeState()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public final isOnHomeDisplay()Z
    .registers 1

    .line 5949
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isOpeningAboveDismissingSplit()Z
    .registers 5

    .line 8662
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    if-eqz v0, :cond_60

    .line 8663
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandard()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 8664
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 8665
    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isNextAppTransitionCustomType()Z

    move-result v0

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 8666
    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->getFirstAppTransition()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_60

    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/Task;)V

    .line 8667
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_32

    goto :goto_60

    .line 8671
    :cond_32
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 8672
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_3a

    if-eq v2, p0, :cond_3a

    iget-object v3, v2, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    .line 8673
    invoke-virtual {v3}, Lcom/android/server/wm/SurfaceFreezer;->hasLeash()Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    .line 8674
    invoke-virtual {v2}, Lcom/android/server/wm/SurfaceFreezer;->isDismissChangeTransitMode()Z

    move-result v2

    if-eqz v2, :cond_3a

    const/4 p0, 0x1

    return p0

    :cond_60
    :goto_60
    return v1
.end method

.method public isOrganized()Z
    .registers 1

    .line 5302
    iget-object p0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isResizeable()Z
    .registers 2

    const/4 v0, 0x1

    .line 3512
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->isResizeable(Z)Z

    move-result p0

    return p0
.end method

.method public isResizeable(Z)Z
    .registers 5

    .line 3521
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    .line 3522
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v0

    if-ne v0, v2, :cond_10

    move v0, v2

    goto :goto_11

    :cond_10
    move v0, v1

    :goto_11
    if-nez v0, :cond_21

    .line 3523
    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v0

    if-nez v0, :cond_21

    iget-boolean p0, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    if-eqz p0, :cond_22

    if-eqz p1, :cond_22

    :cond_21
    move v1, v2

    :cond_22
    return v1
.end method

.method public isRootTask()Z
    .registers 2

    .line 3113
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne v0, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isSameIntentFilter(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4

    .line 1407
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1410
    iget-object v1, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz p1, :cond_1c

    .line 1411
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1413
    :cond_1c
    iget-object p0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p0}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public final isSelfOrNonEmbeddedTask(Lcom/android/server/wm/Task;)Z
    .registers 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    if-eqz p1, :cond_d

    .line 3896
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public final isSplitActivityPackageEnabled()Z
    .registers 4

    .line 8852
    iget-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 8854
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lcom/android/server/wm/Task;->mUserId:I

    .line 8853
    invoke-virtual {v2, v0, p0}, Lcom/android/server/wm/MultiTaskingController;->getSplitActivityPackageEnabled(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method

.method public isTaskId(I)Z
    .registers 2

    .line 4625
    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne p0, p1, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isTopRootTaskInDisplayArea()Z
    .registers 2

    .line 6189
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 6190
    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskDisplayArea;->isTopRootTask(Lcom/android/server/wm/Task;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isUidPresent(I)Z
    .registers 4

    .line 1804
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda9;-><init>()V

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 1805
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1804
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object p1

    .line 1806
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    .line 1807
    :goto_1c
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    return p0
.end method

.method public isUnderHomeRootTask()Z
    .registers 2

    .line 8421
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 8422
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskDisplayArea;->isUnderHomeTask(Lcom/android/server/wm/Task;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public lockTaskAuthToString()Ljava/lang/String;
    .registers 3

    .line 2168
    iget v0, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    if-eqz v0, :cond_31

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_28

    const/4 v1, 0x4

    if-eq v0, v1, :cond_25

    .line 2174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_25
    const-string p0, "LOCK_TASK_AUTH_LAUNCHABLE_PRIV"

    return-object p0

    :cond_28
    const-string p0, "LOCK_TASK_AUTH_ALLOWLISTED"

    return-object p0

    :cond_2b
    const-string p0, "LOCK_TASK_AUTH_LAUNCHABLE"

    return-object p0

    :cond_2e
    const-string p0, "LOCK_TASK_AUTH_PINNABLE"

    return-object p0

    :cond_31
    const-string p0, "LOCK_TASK_AUTH_DONT_LOCK"

    return-object p0
.end method

.method public makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .registers 3

    .line 3901
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    return-object p0
.end method

.method public maybeApplyLastRecentsAnimationTransaction()V
    .registers 4

    .line 7812
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    if-eqz v0, :cond_22

    .line 7813
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 7814
    iget-object v1, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationOverlay:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_11

    .line 7815
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 7817
    :cond_11
    iget-object v1, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {v1, v2, v0}, Landroid/window/PictureInPictureSurfaceTransaction;->apply(Landroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    .line 7821
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const/4 v0, 0x0

    .line 7822
    iput-object v0, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    .line 7823
    iput-object v0, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationOverlay:Landroid/view/SurfaceControl;

    :cond_22
    return-void
.end method

.method public migrateToNewSurfaceControl(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    .line 2878
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->migrateToNewSurfaceControl(Landroid/view/SurfaceControl$Transaction;)V

    .line 2879
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mLastSurfaceSize:Landroid/graphics/Point;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 2880
    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 2881
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public minimalResumeActivityLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 8

    .line 6153
    sget-boolean p0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz p0, :cond_23

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x5

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, -0x456f6dcc    # -0.00110299f

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 p0, 0x1

    aput-object v0, v4, p0

    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 6155
    :cond_23
    sget-object p0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    const-string v0, "minimalResumeActivityLocked"

    invoke-virtual {p1, p0, v0}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 6156
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->completeResumeLocked()V

    return-void
.end method

.method public final moveActivityToFrontLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 9

    .line 1832
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    if-eqz v0, :cond_23

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x1b9e2278

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1835
    :cond_23
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->positionChildAtTop(Lcom/android/server/wm/ActivityRecord;)V

    .line 1836
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateEffectiveIntent()V

    return-void
.end method

.method public moveTaskToBack(Lcom/android/server/wm/Task;)Z
    .registers 3

    const/4 v0, 0x0

    .line 7189
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->moveTaskToBack(Lcom/android/server/wm/Task;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public moveTaskToBack(Lcom/android/server/wm/Task;Landroid/os/Bundle;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 7196
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/wm/Task;->moveTaskToBack(Lcom/android/server/wm/Task;Landroid/os/Bundle;ZZ)Z

    move-result p0

    return p0
.end method

.method public final moveTaskToBack(Lcom/android/server/wm/Task;Landroid/os/Bundle;ZZ)Z
    .registers 12

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 7203
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/Task;->moveTaskToBack(Lcom/android/server/wm/Task;Landroid/os/Bundle;ZZII)Z

    move-result p0

    return p0
.end method

.method public final moveTaskToBack(Lcom/android/server/wm/Task;Landroid/os/Bundle;ZZII)Z
    .registers 14

    .line 7209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveTaskToBack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7213
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/LockTaskController;->canMoveTaskToBack(Lcom/android/server/wm/Task;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_24

    return v2

    .line 7218
    :cond_24
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFreeformPinned()Z

    move-result v0

    const-string v3, "moveTaskToBack"

    if-eqz v0, :cond_31

    if-nez p3, :cond_31

    .line 7219
    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/Task;->stopFreeformPinning(ZLjava/lang/String;)V

    .line 7226
    :cond_31
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isTopRootTaskInDisplayArea()Z

    move-result v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v0, :cond_68

    .line 7227
    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0, v5, v0}, Lcom/android/server/wm/Task;->topRunningActivity(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_4c

    const/4 v0, -0x1

    .line 7229
    invoke-virtual {p0, v5, v0}, Lcom/android/server/wm/Task;->topRunningActivity(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    :cond_4c
    if-eqz v0, :cond_68

    .line 7235
    :try_start_4e
    iget-object v6, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v6, v0}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z

    move-result v0
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_58} :catch_59

    goto :goto_65

    .line 7237
    :catch_59
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 7238
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    move v0, v4

    :goto_65
    if-nez v0, :cond_68

    return v2

    .line 7246
    :cond_68
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v0, :cond_82

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Prepare to back transition: task="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7259
    :cond_82
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 7258
    invoke-static {v0, v1}, Lcom/android/server/wm/FreeformController;->useAlwaysOnTopFreeform(ILcom/android/server/wm/DisplayContent;)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 7260
    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowContainer;->setBoostRootTaskLayerForAppTransition(Z)V

    .line 7261
    invoke-super {p0, v2}, Lcom/android/server/wm/ConfigurationContainer;->setAlwaysOnTop(Z)V

    .line 7262
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFocusedRootTaskOnDisplay()Z

    move-result v0

    goto :goto_9a

    :cond_99
    move v0, v2

    :goto_9a
    if-eqz p3, :cond_a4

    if-nez p4, :cond_a4

    .line 7270
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/DisplayContent;->requestTransitionAndLegacyPrepare(ILcom/android/server/wm/WindowContainer;)V

    goto :goto_e0

    .line 7273
    :cond_a4
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v1

    if-nez v1, :cond_cf

    .line 7274
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v6, 0x4

    invoke-virtual {v1, v6, p1}, Lcom/android/server/wm/DisplayContent;->requestTransitionAndLegacyPrepare(ILcom/android/server/wm/WindowContainer;)V

    .line 7280
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_cf

    .line 7281
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_cf

    .line 7283
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_cf

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v6

    if-nez v6, :cond_cf

    .line 7284
    iput-boolean v4, v1, Lcom/android/server/wm/WindowContainer;->mNeedsZBoost:Z

    .line 7285
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 7290
    :cond_cf
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    if-eqz v1, :cond_e0

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_e0

    const-string v1, "1005"

    const-string v6, "Tap \'Back\' button"

    .line 7291
    invoke-static {v1, v6}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 7296
    :cond_e0
    :goto_e0
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MD_DEX_TASK_DOCKING:Z

    if-eqz v1, :cond_f1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isDexTaskDocked()Z

    move-result v1

    if-eqz v1, :cond_f1

    .line 7297
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mDexDockingController:Lcom/android/server/wm/DexDockingController;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/DexDockingController;->clearAllTasks(Ljava/lang/String;)V

    :cond_f1
    const-string v1, "moveTaskToBackLocked"

    .line 7301
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/Task;->moveToBack(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    if-eqz p2, :cond_124

    .line 7305
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {p1}, Lcom/android/server/wm/AppTransition;->getKeyguardTransition()I

    move-result p1

    if-lez p1, :cond_124

    .line 7306
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {p1}, Lcom/android/server/wm/AppTransition;->getFirstAppTransition()I

    move-result p1

    if-lez p1, :cond_124

    .line 7307
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_124

    .line 7309
    invoke-static {p2}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 7310
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->applyOptionsAnimation()V

    :cond_124
    if-eqz p3, :cond_129

    .line 7314
    invoke-virtual {p0, p4, p5, p6}, Lcom/android/server/wm/Task;->setMinimized(ZII)V

    .line 7318
    :cond_129
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_135

    .line 7319
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeRootTask(Lcom/android/server/wm/Task;)V

    return v4

    .line 7323
    :cond_135
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget p2, p2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p1, v5, p2, v2, v2}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z

    .line 7327
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_149

    goto :goto_14d

    .line 7329
    :cond_149
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v5

    :goto_14d
    if-eqz v5, :cond_180

    if-eq v5, p0, :cond_180

    .line 7330
    sget-object p2, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result p2

    if-eqz p2, :cond_180

    .line 7332
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p2

    if-eqz p2, :cond_173

    .line 7334
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isEmbeddedTaskInMultiWindow()Z

    move-result p2

    if-eqz p2, :cond_16e

    .line 7335
    new-instance p2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda40;

    invoke-direct {p2, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda40;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {p0, p2, v4}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    goto :goto_173

    :cond_16e
    const-string p2, "freeform_minimize"

    .line 7345
    invoke-virtual {p0, v2, v2, p1, p2}, Lcom/android/server/wm/TaskFragment;->startPausing(ZZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    :cond_173
    :goto_173
    if-eqz v0, :cond_17a

    .line 7350
    iget-object p2, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2, p1, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 7355
    :cond_17a
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    goto :goto_185

    .line 7357
    :cond_180
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    :goto_185
    return v4
.end method

.method public final moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V
    .registers 13

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 7055
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/Task;->moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;ZLjava/lang/String;)V

    return-void
.end method

.method public final moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;ZLjava/lang/String;)V
    .registers 12

    .line 7060
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveTaskToFront: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7064
    :cond_1a
    iget-object v0, p1, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/am/Pageboost;->moveTaskToFront(Ljava/lang/String;)V

    .line 7069
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 7068
    invoke-static {v0}, Lcom/android/server/wm/Task;->findEnterPipOnTaskSwitchCandidate(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    const/4 v2, 0x3

    if-eq p1, p0, :cond_3e

    .line 7071
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v3

    if-nez v3, :cond_3e

    if-eqz p2, :cond_3a

    .line 7074
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    goto :goto_3d

    .line 7076
    :cond_3a
    invoke-virtual {p0, v2, p3}, Lcom/android/server/wm/Task;->updateTransitLocked(ILandroid/app/ActivityOptions;)V

    :goto_3d
    return-void

    :cond_3e
    if-eqz p4, :cond_55

    .line 7083
    new-instance v3, Lcom/android/server/wm/Task$$ExternalSyntheticLambda52;

    invoke-direct {v3}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda52;-><init>()V

    const-class v4, Lcom/android/server/wm/ActivityRecord;

    .line 7084
    invoke-static {v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v4

    .line 7083
    invoke-static {v3, v4, p4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object p4

    .line 7085
    invoke-virtual {p1, p4}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 7086
    invoke-interface {p4}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 7092
    :cond_55
    :try_start_55
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p4

    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 7091
    invoke-static {p4, v3}, Lcom/android/server/wm/FreeformController;->useAlwaysOnTopFreeform(ILcom/android/server/wm/DisplayContent;)Z

    move-result p4

    const/4 v3, 0x1

    if-eqz p4, :cond_6b

    .line 7093
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTopFreeform()Z

    move-result p4

    if-nez p4, :cond_6b

    .line 7094
    invoke-super {p0, v3}, Lcom/android/server/wm/ConfigurationContainer;->setAlwaysOnTop(Z)V

    .line 7101
    :cond_6b
    sget-boolean p4, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    if-eqz p4, :cond_84

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p4

    if-eqz p4, :cond_84

    .line 7102
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result p4

    if-nez p4, :cond_84

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result p4

    if-eqz p4, :cond_82

    goto :goto_84

    .line 7103
    :cond_82
    iput-boolean v3, p0, Lcom/android/server/wm/Task;->mNeedToSendFreeformLogging:Z

    :cond_84
    :goto_84
    const/4 p4, 0x0

    if-nez p2, :cond_88

    goto :goto_89

    :cond_88
    move v3, p4

    .line 7107
    :goto_89
    invoke-virtual {p0, v3}, Lcom/android/server/wm/Task;->setUnminimizedWhenRestored(Z)V

    .line 7113
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->deferUpdateImeTarget()V

    .line 7116
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_ea

    .line 7117
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->showToCurrentUser()Z

    move-result v4

    if-nez v4, :cond_9e

    goto :goto_ea

    .line 7127
    :cond_9e
    invoke-virtual {v3, p6}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    .line 7129
    sget-boolean p6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz p6, :cond_b9

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Prepare to front transition: task="

    invoke-virtual {p6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {v1, p6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b9
    if-eqz p2, :cond_cb

    .line 7131
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p2, p4}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    .line 7132
    iget-object p2, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7133
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    goto :goto_ce

    .line 7148
    :cond_cb
    invoke-virtual {p0, v2, p3}, Lcom/android/server/wm/Task;->updateTransitLocked(ILandroid/app/ActivityOptions;)V

    :goto_ce
    if-eqz v0, :cond_dd

    .line 7160
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p2

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p4

    if-eq p2, p4, :cond_dd

    .line 7161
    invoke-static {v0, p1, v3, p3}, Lcom/android/server/wm/Task;->enableEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    :cond_dd
    if-nez p5, :cond_e4

    .line 7169
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z
    :try_end_e4
    .catchall {:try_start_55 .. :try_end_e4} :catchall_103

    .line 7172
    :cond_e4
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->continueUpdateImeTarget()V

    return-void

    .line 7118
    :cond_ea
    :goto_ea
    :try_start_ea
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->positionChildAtTop(Lcom/android/server/wm/Task;)V

    if-eqz v3, :cond_fa

    .line 7120
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    .line 7122
    :cond_fa
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V
    :try_end_fd
    .catchall {:try_start_ea .. :try_end_fd} :catchall_103

    .line 7172
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->continueUpdateImeTarget()V

    return-void

    :catchall_103
    move-exception p1

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->continueUpdateImeTarget()V

    .line 7173
    throw p1
.end method

.method public moveToBack(Ljava/lang/String;Lcom/android/server/wm/Task;)V
    .registers 7

    .line 6065
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 6068
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 6069
    iget-boolean v1, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-nez v1, :cond_50

    .line 6072
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 6073
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    if-eqz v1, :cond_21

    .line 6075
    invoke-virtual {v1, p1, p0}, Lcom/android/server/wm/Task;->moveToBack(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    goto :goto_3b

    .line 6077
    :cond_21
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    .line 6078
    invoke-virtual {v0, v2, p0, v3}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 6079
    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/TaskDisplayArea;->updateLastFocusedRootTask(Lcom/android/server/wm/Task;Ljava/lang/String;)V

    .line 6080
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object p1

    .line 6081
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    .line 6080
    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskMovedToBack(Landroid/app/TaskInfo;)V

    :goto_3b
    if-eqz p2, :cond_4f

    if-eq p2, p0, :cond_4f

    .line 6084
    invoke-virtual {p0, p2}, Lcom/android/server/wm/Task;->positionChildAtBottom(Lcom/android/server/wm/Task;)V

    .line 6085
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object p0

    .line 6086
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    .line 6085
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskMovedToBack(Landroid/app/TaskInfo;)V

    :cond_4f
    return-void

    :cond_50
    if-eqz p2, :cond_58

    if-ne p2, p0, :cond_55

    goto :goto_58

    .line 6111
    :cond_55
    invoke-virtual {v0, p2}, Lcom/android/server/wm/TaskDisplayArea;->positionTaskBehindHome(Lcom/android/server/wm/Task;)V

    :cond_58
    :goto_58
    return-void
.end method

.method public moveToFront(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 5953
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V
    .registers 6

    .line 5994
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-static {v0, v1}, Lcom/android/server/wm/FreeformController;->useAlwaysOnTopFreeform(ILcom/android/server/wm/DisplayContent;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 5995
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTopFreeform()Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    .line 5996
    invoke-super {p0, v0}, Lcom/android/server/wm/ConfigurationContainer;->setAlwaysOnTop(Z)V

    .line 6006
    :cond_16
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mMoveAdjacentTogether:Z

    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getAdjacentTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 6007
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getAdjacentTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 6009
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " adjacentTaskToTop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/Task;->moveToFrontInner(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 6014
    :cond_3f
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MD_DEX_TASK_DOCKING:Z

    if-eqz v0, :cond_50

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isDexTaskDocked()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 6015
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexDockingController:Lcom/android/server/wm/DexDockingController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DexDockingController;->moveTaskToFrontIfNeeded(Lcom/android/server/wm/Task;)V

    .line 6019
    :cond_50
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/Task;->moveToFrontInner(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public moveToFrontInner(Ljava/lang/String;Lcom/android/server/wm/Task;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 6028
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v0, :cond_7

    .line 6029
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->spegDisplayChecker()V

    .line 6032
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    .line 6036
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 6038
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v1

    if-nez v1, :cond_32

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->returnsToHomeRootTask()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 6041
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " returnToHome"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeRootTaskToFront(Ljava/lang/String;)V

    .line 6044
    :cond_32
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    goto :goto_3e

    :cond_3d
    const/4 v1, 0x0

    :goto_3e
    if-nez p2, :cond_41

    goto :goto_42

    :cond_41
    move-object p0, p2

    :goto_42
    const/4 p2, 0x1

    .line 6050
    invoke-virtual {p0, p2}, Lcom/android/server/wm/Task;->setUnminimizedWhenRestored(Z)V

    .line 6053
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    const v3, 0x7fffffff

    invoke-virtual {v2, v3, p0, p2}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 6054
    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/TaskDisplayArea;->updateLastFocusedRootTask(Lcom/android/server/wm/Task;Ljava/lang/String;)V

    return-void
.end method

.method public navigateUpTo(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)Z
    .registers 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v15, p2

    .line 6914
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v2

    const/4 v14, 0x0

    if-nez v2, :cond_e

    return v14

    .line 6919
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 6920
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v3

    if-nez v3, :cond_19

    return v14

    .line 6924
    :cond_19
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowContainer;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 6926
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 6927
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getBottomMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    const/4 v13, 0x1

    if-eq v5, v1, :cond_39

    if-eqz v4, :cond_39

    .line 6928
    new-instance v5, Lcom/android/server/wm/Task$$ExternalSyntheticLambda24;

    invoke-direct {v5, v4}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda24;-><init>(Landroid/content/ComponentName;)V

    invoke-virtual {v2, v5, v1, v14, v13}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_39

    move-object v12, v4

    move/from16 v16, v13

    goto :goto_3c

    :cond_39
    move-object v12, v3

    move/from16 v16, v14

    .line 6940
    :goto_3c
    iget-object v3, v0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    const/4 v4, -0x1

    if-eqz v3, :cond_62

    .line 6942
    iget-object v5, v1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v5, v4}, Lcom/android/server/wm/Task;->topRunningActivity(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_62

    .line 6947
    :try_start_4b
    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v3, v5}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z

    move-result v3
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_51} :catch_52

    goto :goto_5f

    .line 6949
    :catch_52
    iget-object v3, v0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 6950
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    move v3, v13

    :goto_5f
    if-nez v3, :cond_62

    return v14

    .line 6958
    :cond_62
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    new-array v3, v13, [I

    aput p4, v3, v14

    new-array v5, v13, [Landroid/content/Intent;

    aput-object p5, v5, v14

    new-array v6, v13, [Lcom/android/server/uri/NeededUriGrants;

    aput-object p6, v6, v14

    .line 6967
    new-instance v7, Lcom/android/server/wm/Task$$ExternalSyntheticLambda25;

    invoke-direct {v7, v12, v3, v5, v6}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/wm/ActivityRecord;[I[Landroid/content/Intent;[Lcom/android/server/uri/NeededUriGrants;)V

    invoke-virtual {v2, v7, v1, v13, v13}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Z

    aget v2, v3, v14

    aget-object v3, v5, v14

    if-eqz v12, :cond_175

    if-eqz v16, :cond_175

    .line 6981
    iget-object v5, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 6982
    iget-object v5, v12, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v5, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 6983
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const/4 v7, 0x3

    if-eq v5, v7, :cond_109

    const/4 v7, 0x2

    if-eq v5, v7, :cond_109

    if-eq v5, v13, :cond_109

    const/high16 v5, 0x4000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_9e

    goto :goto_109

    .line 7007
    :cond_9e
    :try_start_9e
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    .line 7008
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    const-wide/16 v7, 0x400

    iget v9, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 7007
    invoke-interface {v5, v6, v7, v8, v9}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 7011
    iget-object v0, v0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v0

    const-string v6, "navigateUpTo"

    .line 7012
    invoke-virtual {v0, v15, v6}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    iget-object v6, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 7013
    invoke-virtual {v6}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 7014
    invoke-virtual {v0, v5}, Lcom/android/server/wm/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    iget-object v5, v12, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 7015
    invoke-virtual {v0, v5}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 7016
    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityStarter;->setCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 7017
    invoke-virtual {v0, v11}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 7018
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    iget-object v1, v12, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    .line 7019
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 7020
    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 7021
    invoke-virtual {v0, v11}, Lcom/android/server/wm/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 7022
    invoke-virtual {v0, v13}, Lcom/android/server/wm/ActivityStarter;->setComponentSpecified(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 7023
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v0
    :try_end_f2
    .catch Landroid/os/RemoteException; {:try_start_9e .. :try_end_f2} :catch_f5

    if-nez v0, :cond_f5

    move v14, v13

    :catch_f5
    :cond_f5
    const/4 v0, 0x1

    const-string v1, "navigate-top"

    move-object/from16 p0, v12

    move/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, p6

    move-object/from16 p4, v1

    move/from16 p5, v0

    .line 7028
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;Z)I

    goto/16 :goto_173

    .line 6990
    :cond_109
    :goto_109
    :try_start_109
    iget-object v2, v0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v4, v12, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 6991
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getPid()I

    move-result v7

    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v0, 0x0

    const/16 v19, 0x0

    iget-object v8, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;
    :try_end_11d
    .catch Ljava/lang/SecurityException; {:try_start_109 .. :try_end_11d} :catch_140

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v3, p2

    move-object/from16 v22, v8

    move v8, v11

    move/from16 v23, v11

    move v11, v0

    move-object v0, v12

    move/from16 v12, v19

    move/from16 v19, v13

    move-object/from16 v13, v22

    move/from16 v22, v14

    move-object/from16 v14, v20

    move-object/from16 v20, v0

    move-object v0, v15

    move-object/from16 v15, v21

    .line 6990
    :try_start_139
    invoke-virtual/range {v2 .. v15}, Lcom/android/server/wm/ActivityTaskSupervisor;->checkStartAnyActivityPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ZZLcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z

    move-result v2
    :try_end_13d
    .catch Ljava/lang/SecurityException; {:try_start_139 .. :try_end_13d} :catch_149

    xor-int/lit8 v13, v2, 0x1

    goto :goto_14b

    :catch_140
    move/from16 v23, v11

    move-object/from16 v20, v12

    move/from16 v19, v13

    move/from16 v22, v14

    move-object v0, v15

    :catch_149
    move/from16 v13, v19

    :goto_14b
    if-eqz v13, :cond_166

    .line 6999
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot navigateUpTo, intent ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v14, v22

    goto :goto_173

    .line 7002
    :cond_166
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v2, p3

    move-object/from16 v4, v20

    move/from16 v3, v23

    invoke-virtual {v4, v3, v0, v2, v1}, Lcom/android/server/wm/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;)V

    move/from16 v14, v16

    :goto_173
    move/from16 v16, v14

    .line 7032
    :cond_175
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v16
.end method

.method public final needsWindowFocusInTask()Z
    .registers 2

    .line 9530
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_14

    :cond_7
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda19;-><init>()V

    .line 9531
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    :goto_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    if-eqz p1, :cond_12

    .line 6291
    iget-object v0, p0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 6292
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 6293
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 6296
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    .line 6297
    iput-object v1, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 6298
    iget-object v1, p0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 6299
    iget-object v1, p0, Lcom/android/server/wm/Task;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz v0, :cond_41

    .line 6302
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->setWindowOpaqueLocked(Landroid/os/IBinder;Z)V

    .line 6303
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result p0

    if-eqz p0, :cond_41

    .line 6305
    :try_start_33
    iget-object p0, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object p0

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    if-eqz p1, :cond_3e

    const/4 v2, 0x1

    :cond_3e
    invoke-interface {p0, v0, v2}, Landroid/app/IApplicationThread;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_41} :catch_41

    :catch_41
    :cond_41
    return-void
.end method

.method public onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V
    .registers 3

    .line 8636
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    const/4 p1, -0x1

    .line 8638
    iput p1, p0, Lcom/android/server/wm/WindowContainer;->mTransit:I

    .line 8643
    new-instance p1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda56;

    invoke-direct {p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda56;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 8649
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ChangeTransitionController;->onAnimationFinished(Lcom/android/server/wm/Task;)V

    .line 8650
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleProcessStoppingAndFinishingActivitiesIfNeeded()V

    .line 8653
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    if-eqz p1, :cond_28

    iget-boolean p1, p0, Lcom/android/server/wm/Task;->mNeedToSendFreeformLogging:Z

    if-eqz p1, :cond_28

    const/4 p1, 0x0

    .line 8654
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mNeedToSendFreeformLogging:Z

    .line 8655
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->sendFreeformLogging()V

    :cond_28
    return-void
.end method

.method public onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    .line 8700
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/FreeformController;->notifyFinishedToAnimatingActivityRegistry(Lcom/android/server/wm/Task;)V

    .line 8703
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mAnimatingForChangeTransit:Z

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    .line 8704
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setAnimatingForChangeTransit(Z)V

    .line 8705
    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda22;

    invoke-direct {v1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda22;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 8710
    iput-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mNeedsZBoost:Z

    .line 8712
    :cond_1a
    invoke-super {p0, p1}, Lcom/android/server/wm/TaskFragment;->onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public onAppFocusChanged(Z)V
    .registers 3

    .line 5570
    sget-boolean v0, Landroid/view/ViewRootImpl;->CAPTION_ON_SHELL:Z

    if-eqz v0, :cond_5

    goto :goto_c

    .line 5574
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->updateShadowsRadius(ZLandroid/view/SurfaceControl$Transaction;)V

    :goto_c
    const/4 v0, 0x0

    .line 5577
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    .line 5580
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mHasWindowFocus:Z

    if-eq v0, p1, :cond_19

    .line 5581
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mHasWindowFocus:Z

    .line 5582
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateWindowFocusInTask()V

    :cond_19
    return-void
.end method

.method public onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V
    .registers 6

    const/4 v0, 0x0

    .line 7739
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    .line 7741
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_28

    iget-boolean v1, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v1, :cond_28

    .line 7742
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result v1

    if-nez v1, :cond_28

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 7755
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    const-string/jumbo v3, "position-changed"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/ChangeTransitionController;->handleDismissingSplitTask(Lcom/android/server/wm/Task;Ljava/lang/String;)V

    .line 7759
    :cond_28
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    return-void

    .line 7762
    :cond_31
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 7764
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->invalidateTaskLayers()V

    .line 7767
    :cond_3c
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-ne v1, p1, :cond_43

    const/4 v0, 0x1

    :cond_43
    if-eqz v0, :cond_4c

    .line 7769
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    .line 7770
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    :cond_4c
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 8

    .line 2575
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_d

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    .line 2576
    invoke-virtual {v0, p0}, Lcom/android/server/wm/PinnedTaskController;->isFreezingTaskConfig(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 2587
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_17

    .line 2588
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->onConfigurationChangedInner(Landroid/content/res/Configuration;)V

    return-void

    .line 2592
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    .line 2593
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result v1

    .line 2594
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v2

    .line 2595
    iget-object v3, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    .line 2598
    invoke-virtual {p0, v3}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 2600
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->onConfigurationChangedInner(Landroid/content/res/Configuration;)V

    .line 2602
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    if-nez p1, :cond_36

    return-void

    .line 2607
    :cond_36
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    if-eq v0, v4, :cond_3f

    .line 2608
    invoke-virtual {p1, p0}, Lcom/android/server/wm/TaskDisplayArea;->onRootTaskWindowingModeChanged(Lcom/android/server/wm/Task;)V

    .line 2611
    :cond_3f
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_4c

    .line 2612
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 2613
    :cond_4c
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_96

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_96

    .line 2616
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    if-eq v2, v0, :cond_66

    const/4 v5, 0x1

    goto :goto_67

    :cond_66
    move v5, v4

    :goto_67
    if-eqz v5, :cond_96

    .line 2620
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_LARGE_SCREEN_BOUNDS_POLICY:Z

    if-eqz v5, :cond_74

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_74

    goto :goto_79

    .line 2624
    :cond_74
    iget-object v5, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5, v2, v0, v3}, Lcom/android/server/wm/DisplayContent;->rotateBounds(IILandroid/graphics/Rect;)V

    .line 2628
    :goto_79
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_90

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFreeformStashed()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 2629
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskPositioningController;->getTaskMotionController()Lcom/android/server/wm/TaskMotionController;

    move-result-object v0

    .line 2630
    invoke-virtual {v0, p0, v3}, Lcom/android/server/wm/TaskMotionController;->getFreeformStashBounds(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V

    .line 2633
    :cond_90
    invoke-virtual {p0, v3}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 2636
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->saveFreeformBoundsIfNeeded()V

    .line 2642
    :cond_96
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result v0

    if-eq v1, v0, :cond_a2

    const v0, 0x7fffffff

    .line 2646
    invoke-virtual {p1, v0, p0, v4}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    :cond_a2
    return-void
.end method

.method public final onConfigurationChangedInner(Landroid/content/res/Configuration;)V
    .registers 16

    .line 2388
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v0

    .line 2390
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v1

    .line 2391
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideWindowingMode()I

    move-result v2

    if-nez v2, :cond_1e

    .line 2392
    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v1

    :cond_1e
    if-nez v0, :cond_3a

    if-eqz v1, :cond_3a

    .line 2394
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_3a

    .line 2395
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 2397
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 2407
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v1, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 2413
    :cond_3a
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v5

    .line 2414
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2415
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 2414
    invoke-static {v0}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v0

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v0, :cond_5d

    .line 2416
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideWindowingMode()I

    move-result v0

    invoke-static {v0}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v0

    if-eqz v0, :cond_5b

    goto :goto_5d

    :cond_5b
    move v0, v9

    goto :goto_5e

    :cond_5d
    :goto_5d
    move v0, v8

    .line 2417
    :goto_5e
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v1

    if-eqz v1, :cond_6f

    if-eqz v0, :cond_6f

    .line 2418
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->clearSizeCompatMode()V

    .line 2421
    :cond_6f
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->snapshotSplitTasksIfNeeded(Landroid/content/res/Configuration;)V

    .line 2425
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    .line 2427
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_af

    .line 2428
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_a5

    .line 2429
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isLayoutWithIme()Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 2430
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 2431
    iget-object v1, p0, Lcom/android/server/wm/Task;->mFreezeSnapshotOffset:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v9, v2}, Landroid/graphics/Point;->set(II)V

    .line 2432
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTmpPrevBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_b8

    .line 2434
    :cond_a5
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTmpPrevBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_b8

    .line 2438
    :cond_af
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTmpPrevBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2440
    :goto_b8
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v1

    .line 2441
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v10

    .line 2444
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_ACTIVITY:Z

    if-eqz v2, :cond_de

    iget-object v2, p0, Lcom/android/server/wm/Task;->mActivityGroups:Lcom/android/server/wm/ActivityRecordGroups;

    if-eqz v2, :cond_de

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v2, :cond_de

    .line 2445
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect3:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 2446
    iget-object v2, p0, Lcom/android/server/wm/Task;->mActivityGroups:Lcom/android/server/wm/ActivityRecordGroups;

    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/Task;->mTmpRect3:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/ActivityRecordGroups;->updateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2450
    :cond_de
    invoke-super {p0, p1}, Lcom/android/server/wm/TaskFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2453
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    .line 2455
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result p1

    if-eq v10, p1, :cond_f0

    move p1, v8

    goto :goto_f1

    :cond_f0
    move p1, v9

    :goto_f1
    if-eqz p1, :cond_fd

    .line 2457
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    goto :goto_108

    .line 2458
    :cond_fd
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v2

    if-eq v1, v2, :cond_108

    .line 2459
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleUpdateMultiWindowMode(Lcom/android/server/wm/Task;)V

    .line 2462
    :cond_108
    :goto_108
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v11

    if-eq v0, v11, :cond_120

    .line 2465
    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v1, v0, v11}, Lcom/android/server/wm/EventLogTags;->writeWmTaskWindowingModeChanged(III)V

    if-eqz v0, :cond_120

    .line 2467
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskWindowingModeChanged(I)V

    :cond_120
    if-eq v0, v11, :cond_131

    const/4 v1, 0x6

    if-ne v0, v1, :cond_131

    if-nez v5, :cond_131

    .line 2475
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result v1

    if-eqz v1, :cond_131

    const/4 v1, 0x2

    .line 2476
    invoke-virtual {p0, v1, v9}, Lcom/android/server/wm/Task;->setForceHidden(IZ)Z

    :cond_131
    const/4 v12, 0x5

    if-eq v0, v11, :cond_140

    if-eq v0, v12, :cond_138

    if-ne v11, v12, :cond_140

    :cond_138
    if-ne v11, v12, :cond_13c

    move v1, v8

    goto :goto_13d

    :cond_13c
    move v1, v9

    .line 2480
    :goto_13d
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setTrustedOverlay(Z)V

    .line 2482
    :cond_140
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SUPPORT_OCCLUDES_PARENT_CHANGE_CALLBACK:Z

    if-eqz v1, :cond_153

    if-eq v0, v11, :cond_153

    if-eqz v0, :cond_153

    .line 2484
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerServiceExt;->updateOccludeTargetIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    .line 2487
    :cond_153
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 2488
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mTmpPrevBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v2, v3, :cond_172

    .line 2489
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTmpPrevBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eq v1, v2, :cond_170

    goto :goto_172

    :cond_170
    move v13, v9

    goto :goto_173

    :cond_172
    :goto_172
    move v13, v8

    .line 2490
    :goto_173
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v6

    .line 2491
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    invoke-virtual {v1}, Lcom/android/server/wm/FreeformController;->getFreeformHeaderType()I

    move-result v1

    if-eq v0, v11, :cond_198

    .line 2493
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    iget-object v7, p0, Lcom/android/server/wm/WindowContainer;->mTmpPrevBounds:Landroid/graphics/Rect;

    move-object v2, p0

    move v3, v0

    move v4, v11

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/ChangeTransitionController;->handleWindowingModeChanged(Lcom/android/server/wm/Task;IIIILandroid/graphics/Rect;)V

    .line 2495
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mChangingPinnedToSplitScreen:Z

    if-eqz v1, :cond_1b3

    .line 2496
    iput-boolean v9, p0, Lcom/android/server/wm/Task;->mChangingPinnedToSplitScreen:Z

    goto :goto_1b3

    .line 2498
    :cond_198
    iget v2, p0, Lcom/android/server/wm/Task;->mFreeformHeaderType:I

    if-eq v2, v1, :cond_1a8

    .line 2499
    iput v1, p0, Lcom/android/server/wm/Task;->mFreeformHeaderType:I

    .line 2500
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTmpPrevBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p0, v2}, Lcom/android/server/wm/ChangeTransitionController;->handleFreeformHeaderTypeChanged(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V

    goto :goto_1b3

    :cond_1a8
    if-eqz v13, :cond_1b3

    .line 2502
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTmpPrevBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p0, v2}, Lcom/android/server/wm/ChangeTransitionController;->handleTaskSizeChanged(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V

    .line 2504
    :cond_1b3
    :goto_1b3
    iget-object v1, p0, Lcom/android/server/wm/Task;->mFreezeSnapshotOffset:Landroid/graphics/Point;

    invoke-virtual {v1, v9, v9}, Landroid/graphics/Point;->set(II)V

    if-eqz v13, :cond_1c5

    .line 2506
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskPositioningController;->getTaskMotionController()Lcom/android/server/wm/TaskMotionController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/wm/TaskMotionController;->removeTaskToMotionInfo(Lcom/android/server/wm/Task;)V

    .line 2517
    :cond_1c5
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MD_DEX_TASK_DOCKING:Z

    if-eqz v1, :cond_1d6

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isDexTaskDocked()Z

    move-result v1

    if-eqz v1, :cond_1d6

    .line 2518
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mDexDockingController:Lcom/android/server/wm/DexDockingController;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/DexDockingController;->updateDexDockingIfNeeded(Lcom/android/server/wm/Task;)V

    .line 2524
    :cond_1d6
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v1

    if-eqz v1, :cond_1ed

    .line 2525
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 2526
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1ed

    .line 2527
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setLastNonFullscreenBounds(Landroid/graphics/Rect;)V

    :cond_1ed
    if-eqz p1, :cond_21c

    if-eqz v10, :cond_21c

    .line 2536
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_21c

    .line 2537
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->isFixedRotationLaunchingApp(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    if-eqz p1, :cond_21c

    .line 2538
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    .line 2539
    invoke-virtual {p1, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    sget-object v2, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    const/16 v3, 0x9

    new-array v3, v3, [F

    .line 2540
    invoke-virtual {p1, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 2544
    :cond_21c
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->saveLaunchingStateIfNeeded()V

    .line 2545
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateTaskOrganizerState()Z

    move-result p1

    if-eqz p1, :cond_239

    .line 2547
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V

    .line 2548
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v1

    if-nez v1, :cond_239

    .line 2552
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    :cond_239
    if-nez p1, :cond_23e

    .line 2558
    invoke-virtual {p0, v9}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    .line 2562
    :cond_23e
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    if-eqz p1, :cond_248

    if-eq v0, v12, :cond_248

    if-ne v11, v12, :cond_248

    .line 2565
    iput-boolean v8, p0, Lcom/android/server/wm/Task;->mNeedToSendFreeformLogging:Z

    .line 2568
    :cond_248
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateWindowFocusInTask()V

    return-void
.end method

.method public onDescendantActivityAdded(ZILcom/android/server/wm/ActivityRecord;)V
    .registers 5

    const-string/jumbo v0, "onDescendantActivityAdded"

    .line 1866
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->warnForNonLeafTask(Ljava/lang/String;)V

    if-nez p1, :cond_3e

    .line 1870
    invoke-virtual {p3}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_12

    .line 1875
    invoke-virtual {p3, p2}, Lcom/android/server/wm/ConfigurationContainer;->setActivityType(I)V

    .line 1877
    :cond_12
    invoke-virtual {p3}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->setActivityType(I)V

    .line 1878
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->isPersistable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/Task;->isPersistable:Z

    .line 1879
    iget p1, p3, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iput p1, p0, Lcom/android/server/wm/Task;->mCallingUid:I

    .line 1880
    iget-object p1, p3, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    .line 1881
    iget-object p1, p3, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    .line 1883
    iget-object p1, p3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget p1, p1, Landroid/content/pm/ActivityInfo;->maxRecents:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1884
    invoke-static {}, Landroid/app/ActivityTaskManager;->getMaxAppRecentsLimitStatic()I

    move-result p2

    .line 1883
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/Task;->maxRecents:I

    goto :goto_41

    .line 1887
    :cond_3e
    invoke-virtual {p3, p2}, Lcom/android/server/wm/ConfigurationContainer;->setActivityType(I)V

    .line 1890
    :goto_41
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateEffectiveIntent()V

    return-void
.end method

.method public onDescendantOrientationChanged(Lcom/android/server/wm/WindowContainer;)Z
    .registers 3

    .line 3455
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onDescendantOrientationChanged(Lcom/android/server/wm/WindowContainer;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_8

    return v0

    .line 3461
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 3462
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return v0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .registers 4

    .line 3496
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_d

    .line 3497
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-nez v0, :cond_d

    .line 3498
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->adjustBoundsForDisplayChangeIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    .line 3500
    :cond_d
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 3501
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-eqz v0, :cond_2b

    if-eqz p1, :cond_1d

    .line 3502
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p1

    goto :goto_1e

    :cond_1d
    const/4 p1, -0x1

    .line 3503
    :goto_1e
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskDisplayChanged(II)V

    .line 3506
    :cond_2b
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result p1

    if-eqz p1, :cond_34

    .line 3507
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateSurfaceBounds()V

    :cond_34
    return-void
.end method

.method public onLeashAnimationStarting(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 3

    .line 9501
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    .line 9502
    invoke-virtual {p1}, Lcom/android/server/wm/SurfaceFreezer;->isFreeformHeaderTypeChangeTransition()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 9503
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/FreeformController;->notifyStartingToAnimatingActivityRegistry(Lcom/android/server/wm/Task;)V

    :cond_f
    return-void
.end method

.method public onMovedByResize()V
    .registers 3

    .line 8691
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onMovedByResize()V

    .line 8692
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/ChangeTransitionController;->isPreparing()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 8693
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    const-string/jumbo v1, "onMovedByResize"

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/ChangeTransitionController;->removeFromSyncTasks(ILjava/lang/String;)V

    :cond_19
    return-void
.end method

.method public onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V
    .registers 10

    .line 1447
    check-cast p1, Lcom/android/server/wm/WindowContainer;

    .line 1448
    check-cast p2, Lcom/android/server/wm/WindowContainer;

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    .line 1449
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    goto :goto_d

    :cond_c
    move-object v1, v0

    :goto_d
    if-eqz p2, :cond_14

    .line 1450
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    goto :goto_15

    :cond_14
    move-object v2, v0

    :goto_15
    if-eqz v2, :cond_1a

    .line 1452
    iget v3, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    goto :goto_1b

    :cond_1a
    const/4 v3, -0x1

    :goto_1b
    iput v3, p0, Lcom/android/server/wm/Task;->mPrevDisplayId:I

    if-eqz p2, :cond_24

    if-nez p1, :cond_24

    .line 1455
    invoke-virtual {p0, p2}, Lcom/android/server/wm/Task;->cleanUpResourcesForDestroy(Lcom/android/server/wm/WindowContainer;)V

    :cond_24
    if-eqz v1, :cond_37

    .line 1468
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1469
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v4

    .line 1468
    invoke-virtual {v3, v4}, Landroid/app/WindowConfiguration;->setRotation(I)V

    .line 1473
    :cond_37
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v3

    if-eqz p1, :cond_77

    if-eqz p2, :cond_49

    .line 1475
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v5

    if-ne v4, v5, :cond_55

    :cond_49
    if-nez p2, :cond_77

    .line 1476
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v5

    if-eq v4, v5, :cond_77

    .line 1477
    :cond_55
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    move-result v4

    if-nez v4, :cond_61

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeAssistant()Z

    move-result v4

    if-eqz v4, :cond_77

    .line 1478
    :cond_61
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v4

    .line 1479
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->unset()V

    .line 1480
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5, v4}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    :cond_77
    if-eqz p2, :cond_9c

    .line 1483
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    if-eqz v4, :cond_9c

    if-eqz p1, :cond_9c

    .line 1484
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_9c

    .line 1485
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v4

    if-nez v4, :cond_9c

    .line 1486
    new-instance v4, Lcom/android/server/wm/Task$$ExternalSyntheticLambda49;

    invoke-direct {v4}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda49;-><init>()V

    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    if-eqz v3, :cond_9c

    .line 1490
    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p0, v0}, Lcom/android/server/wm/RootWindowContainer;->notifyActivityPipModeChanged(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    .line 1493
    :cond_9c
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFreeformPinned()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_bc

    const-string/jumbo v3, "onParentChanged"

    if-eqz v2, :cond_b9

    .line 1494
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_b9

    .line 1495
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    if-eqz v5, :cond_bc

    .line 1497
    invoke-virtual {v5, p0, v4, v3}, Lcom/android/server/wm/TaskDisplayArea;->stopFreeformTaskPinning(Lcom/android/server/wm/Task;ZLjava/lang/String;)V

    goto :goto_bc

    .line 1500
    :cond_b9
    invoke-virtual {p0, v4, v3}, Lcom/android/server/wm/Task;->stopFreeformPinning(ZLjava/lang/String;)V

    :cond_bc
    :goto_bc
    const/4 v3, 0x1

    if-eqz v2, :cond_c5

    if-eqz v1, :cond_c5

    if-eq v2, v1, :cond_c5

    move v2, v3

    goto :goto_c6

    :cond_c5
    move v2, v4

    :goto_c6
    if-eqz v2, :cond_db

    .line 1505
    iput-boolean v3, p0, Lcom/android/server/wm/Task;->mSkipChangeTransition:Z

    .line 1506
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_db

    .line 1507
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    invoke-virtual {v3}, Lcom/android/server/wm/TaskPositioningController;->getTaskMotionController()Lcom/android/server/wm/TaskMotionController;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/server/wm/TaskMotionController;->removeTaskToMotionInfo(Lcom/android/server/wm/Task;)V

    :cond_db
    if-eqz v2, :cond_e6

    .line 1521
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isMultiTaskingDisplay()Z

    move-result v1

    if-eqz v1, :cond_e6

    .line 1522
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->clearSizeCompatMode()V

    :cond_e6
    if-eqz p1, :cond_ef

    .line 1525
    invoke-static {}, Lcom/android/server/wm/PackageSettingsManager;->getInstance()Lcom/android/server/wm/PackageSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/wm/PackageSettingsManager;->updateValuesToTask(Lcom/android/server/wm/Task;)V

    .line 1529
    :cond_ef
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V

    if-eqz v2, :cond_f6

    .line 1534
    iput-boolean v4, p0, Lcom/android/server/wm/Task;->mSkipChangeTransition:Z

    .line 1536
    :cond_f6
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    invoke-virtual {v1}, Lcom/android/server/wm/ChangeTransitionController;->isPreparing()Z

    move-result v1

    if-eqz v1, :cond_10c

    .line 1537
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    const-string/jumbo v3, "parent_changed"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/ChangeTransitionController;->removeFromSyncTasks(ILjava/lang/String;)V

    .line 1545
    :cond_10c
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateTaskOrganizerState()Z

    .line 1553
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-nez v1, :cond_122

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_122

    .line 1554
    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1555
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    :cond_122
    if-eqz p2, :cond_152

    .line 1559
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_13f

    .line 1561
    new-instance v2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda50;

    invoke-direct {v2}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda50;-><init>()V

    const-class v3, Lcom/android/server/wm/ActivityRecord;

    .line 1563
    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    .line 1561
    invoke-static {v2, v1, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v1

    .line 1564
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 1565
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 1568
    :cond_13f
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_152

    if-eqz p1, :cond_14d

    .line 1569
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v1

    if-nez v1, :cond_152

    .line 1572
    :cond_14d
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/wm/RootWindowContainer;->notifyActivityPipModeChanged(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    :cond_152
    if-eqz p1, :cond_172

    .line 1579
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-nez v0, :cond_167

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->canBeOrganized()Z

    move-result v0

    if-nez v0, :cond_167

    .line 1580
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1585
    :cond_167
    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_172

    .line 1587
    :try_start_16b
    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v0, v1, v2}, Landroid/service/voice/IVoiceInteractionSession;->taskStarted(Landroid/content/Intent;I)V
    :try_end_172
    .catch Landroid/os/RemoteException; {:try_start_16b .. :try_end_172} :catch_172

    :catch_172
    :cond_172
    if-nez p2, :cond_179

    if-eqz p1, :cond_179

    .line 1598
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateOverrideConfigurationFromLaunchBounds()Landroid/graphics/Rect;

    .line 1603
    :cond_179
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateMinMaxSizeIfNeeded()V

    .line 1608
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->adjustBoundsForDisplayChangeIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    .line 1636
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->updateUIDsPresentOnDisplay()V

    .line 1639
    new-instance p1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda51;

    invoke-direct {p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda51;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onPictureInPictureParamsChanged()V
    .registers 2

    .line 5588
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    .line 5589
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    :cond_a
    return-void
.end method

.method public onResize()V
    .registers 3

    .line 8683
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onResize()V

    .line 8684
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/ChangeTransitionController;->isPreparing()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 8685
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    const-string/jumbo v1, "resized"

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/ChangeTransitionController;->removeFromSyncTasks(ILjava/lang/String;)V

    :cond_19
    return-void
.end method

.method public onShouldDockBigOverlaysChanged()V
    .registers 2

    const/4 v0, 0x1

    .line 5594
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    return-void
.end method

.method public onSizeCompatActivityChanged()V
    .registers 2

    const/4 v0, 0x1

    .line 5600
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    return-void
.end method

.method public onSnapshotChanged(Landroid/window/TaskSnapshot;)V
    .registers 3

    .line 4041
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastTaskSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->set(Landroid/window/TaskSnapshot;)V

    .line 4042
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskSnapshotChanged(ILandroid/window/TaskSnapshot;)V

    return-void
.end method

.method public onlyHasTaskOverlayActivities(Z)Z
    .registers 8

    .line 1996
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ltz v0, :cond_28

    .line 1997
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_15

    return v2

    :cond_15
    if-nez p1, :cond_1c

    .line 2002
    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_1c

    goto :goto_25

    .line 2005
    :cond_1c
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v4

    if-nez v4, :cond_23

    return v2

    :cond_23
    add-int/lit8 v3, v3, 0x1

    :goto_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_28
    if-lez v3, :cond_2b

    goto :goto_2c

    :cond_2b
    move v1, v2

    :goto_2c
    return v1
.end method

.method public performClearTaskForReuse(Z)V
    .registers 4

    const/4 v0, 0x1

    .line 2092
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 2093
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginDeferResume()V

    const/4 v0, 0x0

    :try_start_9
    const-string v1, "clear-task-all"

    .line 2095
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/Task;->removeActivities(Ljava/lang/String;Z)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_16

    .line 2097
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 2098
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    return-void

    :catchall_16
    move-exception p1

    .line 2097
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 2098
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 2099
    throw p1
.end method

.method public performClearTop(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityRecord;
    .registers 4

    const/4 v0, 0x1

    .line 2105
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 2106
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginDeferResume()V

    const/4 v0, 0x0

    .line 2109
    :try_start_9
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/Task;->clearTopActivities(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_15

    .line 2111
    iget-object p2, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 2112
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    return-object p1

    :catchall_15
    move-exception p1

    .line 2111
    iget-object p2, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 2112
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 2113
    throw p1
.end method

.method public positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .registers 6

    .line 3352
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    .line 3353
    :goto_c
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/Task;->getAdjustedChildPosition(Lcom/android/server/wm/WindowContainer;I)I

    move-result p1

    .line 3354
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 3357
    sget-boolean p3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_MOVEMENT:Z

    if-eqz p3, :cond_3e

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "positionChildAt: child="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " position="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " parent="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p3, "WindowManager"

    invoke-static {p3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3360
    :cond_3e
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_47

    .line 3362
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/Task;->updateTaskMovement(ZI)V

    :cond_47
    return-void
.end method

.method public positionChildAt(Lcom/android/server/wm/ActivityRecord;I)V
    .registers 4

    if-nez p1, :cond_a

    const-string p0, "WindowManager"

    const-string p1, "Attempted to position of non-existing app"

    .line 4028
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    const/4 v0, 0x0

    .line 4033
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    return-void
.end method

.method public positionChildAtBottom(Lcom/android/server/wm/Task;)V
    .registers 5

    .line 7721
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 7722
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    const/4 v2, 0x1

    .line 7721
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskDisplayArea;->getNextFocusableRootTask(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    .line 7723
    :goto_11
    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/Task;->positionChildAtBottom(Lcom/android/server/wm/Task;Z)V

    return-void
.end method

.method public positionChildAtBottom(Lcom/android/server/wm/Task;Z)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/high16 v0, -0x80000000

    .line 7733
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 7734
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    return-void
.end method

.method public positionChildAtTop(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    const v0, 0x7fffffff

    .line 4023
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->positionChildAt(Lcom/android/server/wm/ActivityRecord;I)V

    return-void
.end method

.method public positionChildAtTop(Lcom/android/server/wm/Task;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    if-ne p1, p0, :cond_c

    const-string/jumbo p1, "positionChildAtTop"

    .line 7706
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    return-void

    :cond_c
    const v0, 0x7fffffff

    const/4 v1, 0x1

    .line 7710
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 7712
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    .line 7713
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    return-void
.end method

.method public prepareSurfaces()V
    .registers 6

    .line 4230
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->resetDimStates()V

    .line 4231
    invoke-super {p0}, Lcom/android/server/wm/TaskFragment;->prepareSurfaces()V

    .line 4232
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 4235
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    .line 4236
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 4237
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v4

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v3

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_30

    .line 4240
    :cond_2b
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 4243
    :goto_30
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 4245
    sget-boolean v2, Landroid/view/ViewRootImpl;->CAPTION_ON_SHELL:Z

    if-eqz v2, :cond_39

    goto :goto_40

    .line 4249
    :cond_39
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFocused()Z

    move-result v2

    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/Task;->updateShadowsRadius(ZLandroid/view/SurfaceControl$Transaction;)V

    .line 4252
    :goto_40
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mDimmer:Lcom/android/server/wm/Dimmer;

    iget-object v3, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v3}, Lcom/android/server/wm/Dimmer;->updateDims(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 4255
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 4258
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 4264
    :cond_52
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v2

    if-nez v2, :cond_5f

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result v2

    if-eqz v2, :cond_60

    :cond_5f
    const/4 v1, 0x1

    .line 4265
    :cond_60
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_6b

    .line 4266
    iget-boolean v3, p0, Lcom/android/server/wm/Task;->mLastSurfaceShowing:Z

    if-eq v1, v3, :cond_6b

    .line 4267
    invoke-virtual {v0, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 4270
    :cond_6b
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mLastSurfaceShowing:Z

    return-void
.end method

.method public preserveOrientationOnResize()Z
    .registers 2

    .line 3533
    iget p0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    const/4 v0, 0x6

    if-eq p0, v0, :cond_e

    const/4 v0, 0x5

    if-eq p0, v0, :cond_e

    const/4 v0, 0x7

    if-ne p0, v0, :cond_c

    goto :goto_e

    :cond_c
    const/4 p0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 p0, 0x1

    :goto_f
    return p0
.end method

.method public removeActivities(Ljava/lang/String;Z)V
    .registers 7

    .line 2030
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->clearPinnedTaskIfNeed()V

    .line 2032
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_12

    .line 2033
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/wm/Task;ZLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    goto :goto_52

    .line 2043
    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2044
    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda16;

    invoke-direct {v1, p2, v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda16;-><init>(ZLjava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 2056
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_25
    if-ltz p2, :cond_52

    .line 2057
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 2062
    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v2

    if-nez v2, :cond_4b

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_47

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const/4 v3, 0x2

    .line 2063
    invoke-virtual {v2, v3}, Lcom/android/server/wm/AppTransition;->containsTransitRequest(I)Z

    move-result v2

    if-nez v2, :cond_47

    goto :goto_4b

    .line 2066
    :cond_47
    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    goto :goto_4f

    :cond_4b
    :goto_4b
    const/4 v2, 0x0

    .line 2064
    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    :goto_4f
    add-int/lit8 p2, p2, -0x1

    goto :goto_25

    :cond_52
    :goto_52
    return-void
.end method

.method public removeChild(Lcom/android/server/wm/WindowContainer;)V
    .registers 3

    const-string/jumbo v0, "removeChild"

    .line 1895
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->removeChild(Lcom/android/server/wm/WindowContainer;Ljava/lang/String;)V

    return-void
.end method

.method public removeChild(Lcom/android/server/wm/WindowContainer;Ljava/lang/String;)V
    .registers 6

    .line 1901
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1902
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->removeRootTaskReferenceIfNeeded(Lcom/android/server/wm/Task;)V

    .line 1904
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 1905
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "removeChild: r="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not found in t="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1909
    :cond_3c
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_ACTIVITY:Z

    if-eqz v0, :cond_4a

    instance-of v0, p1, Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_4a

    .line 1910
    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->removeFromActivityGroup()V

    .line 1914
    :cond_4a
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_MOVEMENT:Z

    if-eqz v0, :cond_6d

    .line 1915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeChild: child="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6d
    const/4 v0, 0x0

    .line 1917
    invoke-super {p0, p1, v0}, Lcom/android/server/wm/TaskFragment;->removeChild(Lcom/android/server/wm/WindowContainer;Z)V

    .line 1919
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_80

    .line 1923
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    :cond_80
    const/4 v1, 0x1

    .line 1927
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->updateInternalPresentationOnly(ZZ)V

    .line 1931
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 1932
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateEffectiveIntent()V

    .line 1937
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->onlyHasTaskOverlayActivities(Z)Z

    move-result p1

    if-eqz p1, :cond_117

    .line 1945
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p1, p0, v0, v0, p2}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V

    goto/16 :goto_117

    .line 1948
    :cond_9a
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    if-nez v0, :cond_117

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->shouldRemoveSelfOnLastChildRemoval()Z

    move-result v0

    if-eqz v0, :cond_117

    .line 1951
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_c4

    .line 1952
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_c4

    .line 1958
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mTaskAppearedSent:Z

    if-nez v1, :cond_bd

    .line 1959
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 1960
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->sendTaskAppearedImmediately()V

    .line 1962
    :cond_bd
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskFragment;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 1967
    :cond_c4
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MD_DEX_TASK_DOCKING:Z

    if-eqz v0, :cond_d8

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isDexTaskDocked()Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 1968
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexDockingController:Lcom/android/server/wm/DexDockingController;

    const-string/jumbo v1, "remove task"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DexDockingController;->clearAllTasks(Ljava/lang/String;)V

    .line 1971
    :cond_d8
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeChild:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " last r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in t="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1974
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    .line 1971
    invoke-static {v0, p1, v1}, Lcom/android/server/wm/EventLogTags;->writeWmTaskRemoved(ILjava/lang/String;I)V

    .line 1976
    invoke-virtual {p0, p2}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    .line 1978
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_117

    .line 1979
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    invoke-virtual {p1}, Lcom/android/server/wm/TaskPositioningController;->getTaskMotionController()Lcom/android/server/wm/TaskMotionController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/wm/TaskMotionController;->removeTaskToMotionInfo(Lcom/android/server/wm/Task;)V

    :cond_117
    :goto_117
    return-void
.end method

.method public removeIfPossible()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string/jumbo v0, "removeTaskIfPossible"

    .line 990
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    return-void
.end method

.method public removeIfPossible(Ljava/lang/String;)V
    .registers 4

    .line 994
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/Task;)V

    .line 995
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->shouldDeferRemoval()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 996
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ROOT_TASK:Z

    if-eqz v0, :cond_34

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeTask:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " deferring removing taskId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    return-void

    .line 1000
    :cond_35
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->removeImmediately(Ljava/lang/String;)V

    .line 1001
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result p1

    if-eqz p1, :cond_54

    .line 1002
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object p1

    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskRemoved(I)V

    .line 1004
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    if-eqz p1, :cond_54

    .line 1006
    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p1, p0}, Lcom/android/server/wm/TaskDisplayArea;->onLeafTaskRemoved(I)V

    :cond_54
    return-void
.end method

.method public removeImmediately()V
    .registers 2

    const-string/jumbo v0, "removeTask"

    .line 3368
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->removeImmediately(Ljava/lang/String;)V

    return-void
.end method

.method public removeImmediately(Ljava/lang/String;)V
    .registers 4

    .line 3373
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ROOT_TASK:Z

    if-eqz v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeTask:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " removing taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3374
    :cond_25
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mRemoving:Z

    if-eqz v0, :cond_2a

    return-void

    :cond_2a
    const/4 v0, 0x1

    .line 3377
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mRemoving:Z

    .line 3379
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 3381
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    .line 3379
    invoke-static {v0, p1, v1}, Lcom/android/server/wm/EventLogTags;->writeWmTaskRemoved(ILjava/lang/String;I)V

    .line 3383
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->clearPinnedTaskIfNeed()V

    const/4 v0, 0x0

    .line 3385
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setTaskOrganizer(Landroid/window/ITaskOrganizer;)Z

    .line 3388
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFreeformPinned()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_47

    .line 3389
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/Task;->stopFreeformPinning(ZLjava/lang/String;)V

    .line 3393
    :cond_47
    invoke-super {p0}, Lcom/android/server/wm/TaskFragment;->removeImmediately()V

    .line 3394
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mRemoving:Z

    return-void
.end method

.method public removeLaunchTickMessages()V
    .registers 2

    .line 7037
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public removedFromRecents()V
    .registers 3

    .line 1729
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->closeRecentsChain()V

    .line 1730
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    .line 1731
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->inRecents:Z

    .line 1732
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    .line 1735
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->clearRootProcess()V

    .line 1739
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMwSupportPolicyController:Lcom/android/server/wm/MultiWindowSupportPolicyController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->removeFromDeferredBlocklistIfNeeedLocked(Lcom/android/server/wm/Task;)V

    .line 1744
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    iget p0, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/TaskSnapshotController;->notifyTaskRemovedFromRecents(II)V

    return-void
.end method

.method public reparent(Lcom/android/server/wm/Task;IZLjava/lang/String;)V
    .registers 8

    .line 3399
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ROOT_TASK:Z

    if-eqz v0, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reParentTask: removing taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " from rootTask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3400
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    .line 3399
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3401
    :cond_29
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reParentTask:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 3403
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    .line 3401
    invoke-static {v0, p4, v1}, Lcom/android/server/wm/EventLogTags;->writeWmTaskRemoved(ILjava/lang/String;I)V

    .line 3406
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    .line 3408
    invoke-virtual {p1, p2, p0, p3}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    return-void
.end method

.method public reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V
    .registers 5

    if-eqz p1, :cond_63

    .line 7779
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    const-string v1, "Task="

    if-eq v0, p1, :cond_46

    .line 7783
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->canBeLaunchedOnDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_29

    if-eqz p2, :cond_1a

    const v0, 0x7fffffff

    goto :goto_1c

    :cond_1a
    const/high16 v0, -0x80000000

    .line 7784
    :goto_1c
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    .line 7785
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 7786
    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/TaskDisplayArea;->onLeafTaskMoved(Lcom/android/server/wm/Task;Z)V

    goto :goto_45

    .line 7789
    :cond_29
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " can\'t reparent to "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    :goto_45
    return-void

    .line 7780
    :cond_46
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " already child of "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 7776
    :cond_63
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Task can\'t reparent to null "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reparent(Lcom/android/server/wm/Task;IIZZZLjava/lang/String;)Z
    .registers 26

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p7

    .line 1128
    iget-object v6, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1129
    iget-object v7, v1, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1130
    iget-object v8, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 1131
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v9

    const/4 v11, 0x0

    const v12, 0x7fffffff

    if-ne v2, v12, :cond_20

    const/4 v12, 0x1

    goto :goto_21

    :cond_20
    move v12, v11

    .line 1132
    :goto_21
    invoke-virtual {v6, v1, v0, v12}, Lcom/android/server/wm/ActivityTaskSupervisor;->getReparentTargetRootTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;

    move-result-object v12

    if-ne v12, v9, :cond_28

    return v11

    .line 1137
    :cond_28
    invoke-virtual {v12}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v13

    invoke-virtual {v1, v13}, Lcom/android/server/wm/Task;->canBeLaunchedOnDisplay(I)Z

    move-result v13

    if-nez v13, :cond_33

    return v11

    .line 1141
    :cond_33
    invoke-virtual {v12}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v13

    .line 1142
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v14

    if-eqz v14, :cond_49

    .line 1145
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v15

    invoke-static {v15, v13}, Lcom/android/server/wm/Task;->replaceWindowsOnTaskMove(II)Z

    move-result v13

    if-eqz v13, :cond_49

    const/4 v13, 0x1

    goto :goto_4a

    :cond_49
    move v13, v11

    :goto_4a
    if-eqz v13, :cond_51

    .line 1155
    iget-object v15, v14, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v8, v15, v4}, Lcom/android/server/wm/WindowManagerService;->setWillReplaceWindow(Landroid/os/IBinder;Z)V

    .line 1158
    :cond_51
    iget-object v15, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v15}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 1161
    :try_start_56
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v15

    if-eqz v15, :cond_6a

    .line 1162
    invoke-virtual {v7, v9}, Lcom/android/server/wm/RootWindowContainer;->isTopDisplayFocusedRootTask(Lcom/android/server/wm/Task;)Z

    move-result v16

    if-eqz v16, :cond_6a

    .line 1163
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v11

    if-ne v11, v15, :cond_6a

    const/4 v11, 0x1

    goto :goto_6b

    :cond_6a
    const/4 v11, 0x0

    :goto_6b
    if-eqz v15, :cond_7b

    .line 1168
    invoke-virtual {v9}, Lcom/android/server/wm/Task;->isTopRootTaskInDisplayArea()Z

    move-result v17

    if-eqz v17, :cond_7b

    .line 1169
    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v10

    if-ne v10, v15, :cond_7b

    const/4 v10, 0x1

    goto :goto_7c

    :cond_7b
    const/4 v10, 0x0

    :goto_7c
    if-eqz v3, :cond_88

    const/4 v0, 0x1

    if-ne v3, v0, :cond_86

    if-nez v11, :cond_88

    if-eqz v10, :cond_86

    goto :goto_88

    :cond_86
    const/4 v0, 0x0

    goto :goto_89

    :cond_88
    :goto_88
    const/4 v0, 0x1

    .line 1175
    :goto_89
    invoke-virtual {v1, v12, v2, v0, v5}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;IZLjava/lang/String;)V

    if-eqz p6, :cond_91

    .line 1179
    invoke-virtual {v6, v1, v9}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    :cond_91
    if-eqz v15, :cond_ad

    if-eqz v0, :cond_ad

    .line 1186
    invoke-virtual {v12, v5}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    .line 1190
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v15, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-eqz v0, :cond_ad

    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-ne v15, v0, :cond_ad

    .line 1191
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, v15, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    :cond_ad
    if-nez v4, :cond_b6

    .line 1200
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b6
    .catchall {:try_start_56 .. :try_end_b6} :catchall_e8

    .line 1203
    :cond_b6
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    if-eqz v13, :cond_c4

    .line 1210
    iget-object v0, v14, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Lcom/android/server/wm/WindowManagerService;->scheduleClearWillReplaceWindows(Landroid/os/IBinder;Z)V

    goto :goto_c5

    :cond_c4
    const/4 v2, 0x0

    :goto_c5
    if-nez p5, :cond_d2

    const/4 v0, 0x0

    const/4 v3, 0x1

    xor-int/lit8 v4, v13, 0x1

    .line 1216
    invoke-virtual {v7, v0, v2, v4}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1217
    invoke-virtual {v7}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    goto :goto_d3

    :cond_d2
    const/4 v3, 0x1

    .line 1221
    :goto_d3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    iget-object v4, v1, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1222
    invoke-virtual {v4}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    .line 1221
    invoke-virtual {v6, v1, v0, v4, v12}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;)V

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_e6

    move v10, v3

    goto :goto_e7

    :cond_e6
    move v10, v2

    :goto_e7
    return v10

    :catchall_e8
    move-exception v0

    .line 1203
    iget-object v1, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1204
    throw v0
.end method

.method public reparent(Lcom/android/server/wm/Task;ZIZZLjava/lang/String;)Z
    .registers 15

    if-eqz p2, :cond_6

    const p2, 0x7fffffff

    goto :goto_7

    :cond_6
    const/4 p2, 0x0

    :goto_7
    move v2, p2

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    .line 1102
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;IIZZZLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public reparentSurfaceControl(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 4

    .line 5340
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 5343
    :cond_d
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->reparentSurfaceControl(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public resetPendingDexNonResizeableAppRestartHelpMode()V
    .registers 2

    const/4 v0, 0x0

    .line 9432
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setPendingDexNonResizeableAppRestartHelpMode(I)V

    return-void
.end method

.method public resetTaskIfNeeded(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .registers 5

    .line 6751
    iget-object p2, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget p2, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_a

    const/4 p2, 0x1

    goto :goto_b

    :cond_a
    const/4 p2, 0x0

    .line 6753
    :goto_b
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 6756
    sget-object v1, Lcom/android/server/wm/Task;->sResetTargetTaskHelper:Lcom/android/server/wm/ResetTargetTaskHelper;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/wm/ResetTargetTaskHelper;->process(Lcom/android/server/wm/Task;Z)Landroid/app/ActivityOptions;

    move-result-object p2

    .line 6758
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_24

    .line 6759
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_24

    move-object p1, p0

    :cond_24
    if-eqz p2, :cond_29

    .line 6768
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    :cond_29
    return-object p1
.end method

.method public resize(FF)V
    .registers 7

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_b

    cmpl-float v2, p2, v0

    if-nez v2, :cond_b

    return-void

    .line 9044
    :cond_b
    iget-object v2, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_5f

    .line 9045
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5f

    .line 9046
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/high16 v2, 0x3f000000    # 0.5f

    if-eqz v1, :cond_38

    .line 9047
    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_38

    .line 9048
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 9049
    iget v3, v1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v3, v2

    float-to-int p1, v3

    iput p1, v1, Landroid/graphics/Rect;->right:I

    :cond_38
    cmpl-float p1, p2, v0

    if-eqz p1, :cond_54

    .line 9051
    invoke-static {p2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p1

    if-nez p1, :cond_54

    .line 9052
    iget-object p1, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 9053
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    add-float/2addr v0, v2

    float-to-int p2, v0

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 9055
    :cond_54
    iget-object p1, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->adjustAspectRatioIfNeeded(Landroid/graphics/Rect;)V

    .line 9056
    iget-object p1, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2}, Lcom/android/server/wm/Task;->resize(Landroid/graphics/Rect;IZ)Z

    :cond_5f
    return-void
.end method

.method public resize(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 9063
    iget-object v3, v0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v3, :cond_f9

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_12

    goto/16 :goto_f9

    .line 9067
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 9068
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 9069
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 9070
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 9074
    iget-object v7, v0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 9075
    iget-object v8, v0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    const/4 v9, 0x1

    const v10, 0x3f4ccccd    # 0.8f

    const/high16 v11, 0x3f000000    # 0.5f

    if-le v7, v5, :cond_3c

    int-to-float v7, v5

    mul-float/2addr v7, v10

    add-float/2addr v7, v11

    float-to-int v7, v7

    move v13, v9

    goto :goto_3d

    :cond_3c
    const/4 v13, 0x0

    :goto_3d
    if-le v8, v6, :cond_44

    int-to-float v8, v6

    mul-float/2addr v8, v10

    add-float/2addr v8, v11

    float-to-int v8, v8

    goto :goto_45

    :cond_44
    const/4 v9, 0x0

    .line 9087
    :goto_45
    iget-object v10, v0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    iget v14, v10, Landroid/graphics/Rect;->left:I

    if-gez v14, :cond_4e

    .line 9088
    iget v15, v10, Landroid/graphics/Rect;->right:I

    goto :goto_57

    .line 9089
    :cond_4e
    iget v15, v1, Landroid/graphics/Rect;->right:I

    iget v12, v10, Landroid/graphics/Rect;->right:I

    if-ge v15, v12, :cond_56

    sub-int/2addr v15, v14

    goto :goto_57

    :cond_56
    move v15, v7

    .line 9092
    :goto_57
    iget v12, v10, Landroid/graphics/Rect;->top:I

    if-gez v12, :cond_60

    .line 9093
    iget v11, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v8

    goto :goto_6c

    .line 9094
    :cond_60
    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v8

    iget v8, v10, Landroid/graphics/Rect;->bottom:I

    if-ge v11, v8, :cond_6a

    sub-int/2addr v11, v12

    goto :goto_6c

    :cond_6a
    move/from16 v11, v16

    :goto_6c
    if-gt v3, v15, :cond_71

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_73

    :cond_71
    sub-int/2addr v3, v15

    int-to-float v3, v3

    :goto_73
    int-to-float v8, v14

    div-float/2addr v8, v3

    if-gt v4, v11, :cond_7a

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_7c

    :cond_7a
    sub-int/2addr v4, v11

    int-to-float v3, v4

    :goto_7c
    int-to-float v4, v12

    div-float/2addr v4, v3

    const v3, 0x3dcccccd    # 0.1f

    if-eqz v13, :cond_91

    .line 9105
    iget-object v8, v0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    int-to-float v5, v5

    mul-float/2addr v5, v3

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v5, v13

    float-to-int v5, v5

    iput v5, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v7

    .line 9106
    iput v5, v8, Landroid/graphics/Rect;->right:I

    goto :goto_b8

    :cond_91
    if-gez v14, :cond_9b

    .line 9108
    iget-object v5, v0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    iput v14, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v14, v7

    .line 9109
    iput v14, v5, Landroid/graphics/Rect;->right:I

    goto :goto_b8

    .line 9110
    :cond_9b
    iget v13, v1, Landroid/graphics/Rect;->right:I

    iget v14, v10, Landroid/graphics/Rect;->right:I

    if-ge v13, v14, :cond_ad

    .line 9111
    iget-object v5, v0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v14, v13

    add-int/2addr v8, v14

    iput v8, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v7

    .line 9113
    iput v8, v5, Landroid/graphics/Rect;->left:I

    goto :goto_b8

    .line 9115
    :cond_ad
    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    sub-int/2addr v5, v15

    int-to-float v5, v5

    mul-float/2addr v5, v8

    float-to-int v5, v5

    iput v5, v13, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v7

    .line 9116
    iput v5, v13, Landroid/graphics/Rect;->right:I

    :goto_b8
    if-eqz v9, :cond_c9

    .line 9120
    iget-object v1, v0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    int-to-float v2, v6

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    add-int v2, v2, v16

    .line 9121
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_f3

    :cond_c9
    if-gez v12, :cond_d4

    .line 9123
    iget-object v1, v0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    iput v12, v1, Landroid/graphics/Rect;->top:I

    add-int v12, v12, v16

    .line 9124
    iput v12, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_f3

    .line 9125
    :cond_d4
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v3, v10, Landroid/graphics/Rect;->bottom:I

    if-ge v1, v3, :cond_e7

    .line 9126
    iget-object v4, v0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v1

    add-int/2addr v2, v3

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v2, v16

    .line 9128
    iput v2, v4, Landroid/graphics/Rect;->top:I

    goto :goto_f3

    .line 9130
    :cond_e7
    iget-object v1, v0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    sub-int/2addr v6, v11

    int-to-float v2, v6

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    add-int v2, v2, v16

    .line 9131
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 9133
    :goto_f3
    iget-object v1, v0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/wm/Task;->resize(Landroid/graphics/Rect;IZ)Z

    :cond_f9
    :goto_f9
    return-void
.end method

.method public resize(Landroid/graphics/Rect;ZZ)V
    .registers 8

    .line 7365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "task.resize_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7366
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 7370
    :try_start_20
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda53;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda53;-><init>()V

    const-class v3, Lcom/android/server/wm/Task;

    .line 7371
    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    .line 7370
    invoke-static {v0, v3, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object p1

    const/4 v0, 0x1

    .line 7373
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->forAllTasks(Ljava/util/function/Consumer;Z)V

    .line 7374
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    if-nez p3, :cond_3f

    .line 7377
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskFragment;->ensureVisibleActivitiesConfiguration(Lcom/android/server/wm/ActivityRecord;Z)V
    :try_end_3f
    .catchall {:try_start_20 .. :try_end_3f} :catchall_48

    .line 7380
    :cond_3f
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 7381
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_48
    move-exception p1

    .line 7380
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 7381
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 7382
    throw p1
.end method

.method public resize(ZZ)V
    .registers 4

    .line 3489
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;Z)I

    move-result p2

    if-eqz p2, :cond_13

    if-eqz p1, :cond_13

    .line 3490
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    :cond_13
    return-void
.end method

.method public resize(Landroid/graphics/Rect;IZ)Z
    .registers 10

    .line 1022
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    and-int/lit8 p2, p2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_d

    move p2, v0

    goto :goto_e

    :cond_d
    move p2, v1

    .line 1027
    :goto_e
    :try_start_e
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    if-nez v2, :cond_29

    .line 1031
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 1032
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p1

    if-nez p1, :cond_23

    .line 1034
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->restoreRecentTaskLocked(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Z)Z
    :try_end_23
    .catchall {:try_start_e .. :try_end_23} :catchall_8c

    .line 1094
    :cond_23
    :goto_23
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    return v0

    .line 1039
    :cond_29
    :try_start_29
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->canResizeToBounds(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 1042
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->adjustAspectRatioIfNeeded(Landroid/graphics/Rect;)V

    .line 1054
    :cond_32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resizeTask_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x20

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1057
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1058
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    move-result p1

    if-eqz p1, :cond_66

    .line 1059
    iget-object p1, p0, Lcom/android/server/wm/Task;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result p1

    xor-int/2addr p1, v0

    goto :goto_67

    :cond_66
    move p1, v1

    :goto_67
    if-eqz p1, :cond_7f

    .line 1066
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_7f

    .line 1068
    invoke-virtual {p1, v1, p3}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZ)Z

    move-result v0

    .line 1076
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p1, v1, p3}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    if-nez v0, :cond_7f

    .line 1078
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 1082
    :cond_7f
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/Task;->resize(ZZ)V

    .line 1084
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->saveLaunchingStateIfNeeded()V

    .line 1087
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->saveFreeformBoundsIfNeeded()V

    .line 1091
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_8b
    .catchall {:try_start_29 .. :try_end_8b} :catchall_8c

    goto :goto_23

    :catchall_8c
    move-exception p1

    .line 1094
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1095
    throw p1
.end method

.method public resolveLeafTaskOnlyOverrideConfigs(Landroid/content/res/Configuration;Landroid/graphics/Rect;)V
    .registers 8

    .line 2651
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2656
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    if-nez v0, :cond_19

    .line 2658
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 2661
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    .line 2666
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2, v0}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 2678
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-ne v0, v4, :cond_40

    .line 2681
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result p0

    if-eqz p0, :cond_3c

    if-ne v1, v3, :cond_3f

    .line 2684
    :cond_3c
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    :cond_3f
    return-void

    .line 2691
    :cond_40
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/wm/Task;->adjustForMinimalTaskDimensions(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)V

    .line 2694
    invoke-virtual {p0, v2, p2}, Lcom/android/server/wm/Task;->adjustForMaximumTaskDimensions(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    if-ne v0, v3, :cond_a0

    .line 2698
    invoke-virtual {p0, v2, p1}, Lcom/android/server/wm/Task;->computeFreeformBounds(Landroid/graphics/Rect;Landroid/content/res/Configuration;)V

    .line 2699
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result p1

    if-nez p1, :cond_a0

    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz p1, :cond_a0

    iget-boolean p1, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz p1, :cond_a0

    .line 2701
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mTmpPrevBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result p2

    if-ne p1, p2, :cond_73

    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mTmpPrevBounds:Landroid/graphics/Rect;

    .line 2702
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result p2

    if-eq p1, p2, :cond_72

    goto :goto_73

    :cond_72
    const/4 v4, 0x0

    :cond_73
    :goto_73
    if-eqz v4, :cond_a0

    .line 2704
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 2705
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    .line 2707
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    .line 2708
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    .line 2709
    invoke-virtual {v0}, Lcom/android/server/wm/TaskPositioningController;->getTaskMotionController()Lcom/android/server/wm/TaskMotionController;

    move-result-object v0

    .line 2711
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getFreeformStashState()I

    move-result v1

    .line 2712
    invoke-virtual {v0, p0, p2, p1, v2}, Lcom/android/server/wm/TaskMotionController;->computeStashState(Lcom/android/server/wm/Task;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p1

    if-eq v1, p1, :cond_a0

    .line 2715
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0, p1}, Landroid/app/WindowConfiguration;->setFreeformStashState(I)V

    :cond_a0
    return-void
.end method

.method public restartPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;
    .registers 5

    .line 7496
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 7500
    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda61;

    invoke-direct {v1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda61;-><init>()V

    const-class v2, Lcom/android/server/wm/ActivityRecord;

    .line 7501
    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    .line 7500
    invoke-static {v1, v2, v0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object p1

    .line 7502
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 7503
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    return-object v0
.end method

.method public resumeNextFocusAfterReparent()V
    .registers 3

    const-string/jumbo v0, "reparent"

    const/4 v1, 0x1

    .line 5939
    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/wm/Task;->adjustFocusToNextFocusableTask(Ljava/lang/String;ZZ)Lcom/android/server/wm/Task;

    .line 5941
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 5944
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    return-void
.end method

.method public final resumeNextFocusableActivityWhenRootTaskIsEmpty(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .registers 8

    .line 6488
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "noMoreActivities"

    if-nez v0, :cond_16

    .line 6489
    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->adjustFocusToNextFocusableTask(Ljava/lang/String;)Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 6494
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result p0

    return p0

    .line 6501
    :cond_16
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 6502
    sget-boolean p2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz p2, :cond_2b

    sget-object p2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v0, -0x88e815e

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {p2, v0, v4, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 6504
    :cond_2b
    iget-object p2, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    invoke-virtual {p2, p1, v2, p0}, Lcom/android/server/wm/RootWindowContainer;->resumeHomeActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result p0

    return p0
.end method

.method public final resumeTopActivityInnerLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z
    .registers 15
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 6422
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooting()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooted()Z

    move-result v0

    if-nez v0, :cond_12

    return v1

    :cond_12
    const/4 v0, 0x1

    .line 6427
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_1e

    .line 6430
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/Task;->resumeNextFocusableActivityWhenRootTaskIsEmpty(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result p0

    return p0

    .line 6434
    :cond_1e
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_ACTIVITY:Z

    if-eqz v3, :cond_63

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isInSplitActivityMode()Z

    move-result v3

    if-eqz v3, :cond_63

    .line 6435
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isInActivityGroup()Z

    move-result v3

    if-eqz v3, :cond_63

    .line 6436
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getActivityGroup()Lcom/android/server/wm/ActivityRecordGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecordGroup;->zone()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_63

    .line 6437
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getActivityGroup()Lcom/android/server/wm/ActivityRecordGroup;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecordGroup;->getOppositeGroup()Lcom/android/server/wm/ActivityRecordGroup;

    move-result-object p0

    if-eqz p0, :cond_48

    .line 6439
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecordGroup;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    goto :goto_49

    :cond_48
    const/4 p0, 0x0

    :goto_49
    if-eqz p0, :cond_5a

    .line 6440
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    .line 6441
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 6442
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/android/server/wm/TaskFragment;->resumeTopActivity(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ZLcom/android/server/wm/ActivityRecord;)Z

    .line 6445
    :cond_5a
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/android/server/wm/TaskFragment;->resumeTopActivity(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ZLcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0

    :cond_63
    new-array v9, v0, [Z

    .line 6450
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    .line 6451
    invoke-virtual {v4, p1, p2, p3}, Lcom/android/server/wm/TaskFragment;->resumeTopActivity(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    move-result v3

    aput-boolean v3, v9, v1

    .line 6452
    new-instance v10, Lcom/android/server/wm/Task$$ExternalSyntheticLambda43;

    move-object v3, v10

    move-object v5, v9

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda43;-><init>(Lcom/android/server/wm/TaskFragment;[ZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)V

    invoke-virtual {p0, v10, v0}, Lcom/android/server/wm/TaskFragment;->forAllLeafTaskFragments(Ljava/util/function/Consumer;Z)V

    .line 6463
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MNO_TMO_DEVICE_REPORTING:Z

    if-eqz p0, :cond_94

    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->getStatus()Z

    move-result p0

    if-eqz p0, :cond_94

    .line 6464
    sget-object p0, Lcom/android/server/am/AppStateBroadcaster;->mObjHandler:Landroid/os/Handler;

    if-eqz p0, :cond_94

    .line 6465
    iget-object p1, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 6466
    new-instance p2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda44;

    invoke-direct {p2, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda44;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_94
    aget-boolean p0, v9, v1

    return p0
.end method

.method public resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    const/4 v0, 0x0

    .line 6416
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/Task;->resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    move-result p0

    return p0
.end method

.method public resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 6333
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    .line 6341
    :try_start_7
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    .line 6344
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->isPrepareOccluding()Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 6345
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->isKeyguardLocked(I)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 6346
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->setOccluding(Z)V

    .line 6350
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 6351
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isFocusableAndVisible()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 6352
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/Task;->resumeTopActivityInnerLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    move-result p1

    goto :goto_6e

    :cond_33
    move p1, v1

    goto :goto_6e

    .line 6355
    :cond_35
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    move v3, v2

    move v2, v1

    :goto_3e
    if-ltz v3, :cond_6d

    add-int/lit8 v4, v3, -0x1

    .line 6357
    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    .line 6358
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->isTopActivityFocusable()Z

    move-result v5

    if-nez v5, :cond_50

    :cond_4e
    move v3, v4

    goto :goto_3e

    :cond_50
    const/4 v5, 0x0

    .line 6369
    invoke-virtual {v3, v5}, Lcom/android/server/wm/TaskFragment;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result v5

    if-eqz v5, :cond_58

    goto :goto_6d

    .line 6374
    :cond_58
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/wm/Task;->resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    move-result v3

    or-int/2addr v2, v3

    .line 6379
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v4, v3, :cond_4e

    .line 6380
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v0

    goto :goto_3e

    :cond_6d
    :goto_6d
    move p1, v2

    .line 6392
    :goto_6e
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    if-eqz p2, :cond_7a

    .line 6393
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->canTurnScreenOn()Z

    move-result p3

    if-nez p3, :cond_7d

    .line 6394
    :cond_7a
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->checkReadyForSleep()V

    .line 6397
    :cond_7d
    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->FW_SA_LOGGING_FOR_HALF_OPEN_MODE:Z

    if-eqz p3, :cond_88

    .line 6398
    iget-object p3, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p3, p3, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    invoke-virtual {p3, p2}, Lcom/android/server/wm/WindowManagerServiceExt;->logHalfOpenModeFromResumeTopActivityIfNeededLocked(Lcom/android/server/wm/ActivityRecord;)V
    :try_end_88
    .catchall {:try_start_7 .. :try_end_88} :catchall_98

    .line 6403
    :cond_88
    iget-object p2, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerService;->isPrepareOccluding()Z

    move-result p2

    if-eqz p2, :cond_95

    .line 6404
    iget-object p2, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->setPrepareOccluding(Z)V

    .line 6407
    :cond_95
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    return p1

    :catchall_98
    move-exception p1

    .line 6403
    iget-object p2, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerService;->isPrepareOccluding()Z

    move-result p2

    if-eqz p2, :cond_a6

    .line 6404
    iget-object p2, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->setPrepareOccluding(Z)V

    .line 6407
    :cond_a6
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    .line 6408
    throw p1
.end method

.method public returnsToHomeRootTask()Z
    .registers 5

    .line 1417
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_51

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_51

    .line 1418
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    const/4 v2, 0x1

    if-eqz v0, :cond_44

    .line 1420
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    if-eqz v0, :cond_33

    .line 1421
    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1424
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v3

    .line 1425
    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;ZZ)Z

    move-result v0

    if-eqz v0, :cond_33

    move v0, v2

    goto :goto_34

    :cond_33
    move v0, v1

    .line 1428
    :goto_34
    iget-object p0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result p0

    const v3, 0x10004000

    and-int/2addr p0, v3

    if-ne p0, v3, :cond_43

    if-nez v0, :cond_43

    move v1, v2

    :cond_43
    return v1

    .line 1431
    :cond_44
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getBottomMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eq v0, p0, :cond_51

    .line 1432
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->returnsToHomeRootTask()Z

    move-result p0

    if-eqz p0, :cond_51

    move v1, v2

    :cond_51
    :goto_51
    return v1
.end method

.method public reuseAsLeafTask(Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/Task;
    .registers 6

    .line 943
    iput-object p1, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 944
    iput-object p2, p0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 945
    invoke-virtual {p0, p5, p3, p4}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 946
    invoke-virtual {p0, p4}, Lcom/android/server/wm/Task;->setMinDimensions(Landroid/content/pm/ActivityInfo;)V

    .line 954
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object p1

    iget p2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object p3, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p1, p2, p3}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskCreated(ILandroid/content/ComponentName;)V

    return-object p0
.end method

.method public reuseOrCreateTask(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;
    .registers 15

    .line 7530
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->canReuseAsLeafTask()Z

    move-result v0

    if-eqz v0, :cond_11

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p2

    move-object v4, p1

    move-object v5, p6

    .line 7533
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/Task;->reuseAsLeafTask(Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/Task;

    move-result-object p2

    goto :goto_4d

    :cond_11
    if-eqz p6, :cond_1c

    .line 7537
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget v1, p6, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->getNextTaskIdForUser(I)I

    move-result v0

    goto :goto_22

    .line 7538
    :cond_1c
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getNextTaskIdForUser()I

    move-result v0

    .line 7539
    :goto_22
    new-instance v1, Lcom/android/server/wm/Task$Builder;

    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v1, v2}, Lcom/android/server/wm/Task$Builder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 7540
    invoke-virtual {v1, v0}, Lcom/android/server/wm/Task$Builder;->setTaskId(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    .line 7541
    invoke-virtual {v0, p1}, Lcom/android/server/wm/Task$Builder;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    .line 7542
    invoke-virtual {v0, p8}, Lcom/android/server/wm/Task$Builder;->setActivityOptions(Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    .line 7543
    invoke-virtual {v0, p2}, Lcom/android/server/wm/Task$Builder;->setIntent(Landroid/content/Intent;)Lcom/android/server/wm/Task$Builder;

    move-result-object p2

    .line 7544
    invoke-virtual {p2, p3}, Lcom/android/server/wm/Task$Builder;->setVoiceSession(Landroid/service/voice/IVoiceInteractionSession;)Lcom/android/server/wm/Task$Builder;

    move-result-object p2

    .line 7545
    invoke-static {p2, p4}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetVoiceInteractor(Lcom/android/server/wm/Task$Builder;Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/wm/Task$Builder;

    move-result-object p2

    .line 7546
    invoke-virtual {p2, p5}, Lcom/android/server/wm/Task$Builder;->setOnTop(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object p2

    .line 7547
    invoke-virtual {p2, p0}, Lcom/android/server/wm/Task$Builder;->setParent(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Task$Builder;

    move-result-object p2

    .line 7548
    invoke-virtual {p2}, Lcom/android/server/wm/Task$Builder;->build()Lcom/android/server/wm/Task;

    move-result-object p2

    .line 7553
    :goto_4d
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateMinMaxSizeIfNeeded()V

    .line 7563
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result p3

    const/4 p4, -0x1

    if-ne p3, p4, :cond_58

    const/4 p3, 0x0

    .line 7565
    :cond_58
    iget-object p4, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p4, p4, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p4}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object p4

    .line 7566
    invoke-virtual {p4, p3}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result p3

    .line 7567
    iget-object p4, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p4}, Lcom/android/server/wm/ActivityTaskSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v0

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    move-object v1, p2

    move-object v3, p6

    move-object v4, p7

    move-object v5, p8

    .line 7568
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/LaunchParamsController;->layoutTask(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result p1

    if-nez p1, :cond_8f

    .line 7569
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8f

    .line 7570
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result p1

    if-eqz p1, :cond_8f

    if-nez p3, :cond_8f

    .line 7571
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    :cond_8f
    return-object p2
.end method

.method public reuseOrCreateTask(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)Lcom/android/server/wm/Task;
    .registers 13

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    .line 7519
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/Task;->reuseOrCreateTask(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public saveFreeformBoundsIfNeeded()V
    .registers 4

    .line 9139
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 9140
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getHasBeenVisible()Z

    move-result v1

    if-eqz v1, :cond_56

    iget-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v1, :cond_56

    .line 9141
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v1

    if-nez v1, :cond_56

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 9142
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isDragMoving()Z

    move-result v1

    if-eqz v1, :cond_29

    goto :goto_56

    .line 9145
    :cond_29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveFreeformBoundsIfNeeded : task #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9146
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/wm/LaunchParamsPersister;->saveFreeformBounds(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;)V

    :cond_56
    :goto_56
    return-void
.end method

.method public final saveLaunchingStateIfNeeded()V
    .registers 2

    .line 2957
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->saveLaunchingStateIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method public final saveLaunchingStateIfNeeded(Lcom/android/server/wm/DisplayContent;)V
    .registers 5

    .line 2961
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2965
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getHasBeenVisible()Z

    move-result v0

    if-nez v0, :cond_22

    .line 2966
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x0

    .line 2967
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_22

    :cond_21
    return-void

    .line 2979
    :cond_22
    :goto_22
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-eq v0, v1, :cond_2d

    if-eq v0, v2, :cond_2d

    return-void

    .line 2988
    :cond_2d
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getDisplayWindowingMode()I

    move-result v0

    if-eq v0, v2, :cond_38

    return-void

    .line 2998
    :cond_38
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/LaunchParamsPersister;->saveTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method public saveToXml(Landroid/util/TypedXmlSerializer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4890
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Saving task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4892
    :cond_1a
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v1, 0x0

    const-string/jumbo v2, "task_id"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4893
    iget-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_31

    .line 4894
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "real_activity"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4896
    :cond_31
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->realActivitySuspended:Z

    const-string/jumbo v2, "real_activity_suspended"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 4897
    iget-object v0, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_47

    .line 4898
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "orig_activity"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4904
    :cond_47
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    const-string v2, "@"

    const-string/jumbo v3, "root_affinity"

    if-eqz v0, :cond_68

    const-string v4, "affinity"

    .line 4905
    invoke-interface {p1, v1, v4, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4906
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    .line 4907
    iget-object v0, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_64

    move-object v2, v0

    :cond_64
    invoke-interface {p1, v1, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_72

    .line 4909
    :cond_68
    iget-object v0, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_72

    if-eqz v0, :cond_6f

    move-object v2, v0

    .line 4910
    :cond_6f
    invoke-interface {p1, v1, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4912
    :cond_72
    :goto_72
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    if-eqz v0, :cond_7c

    const-string/jumbo v2, "window_layout_affinity"

    .line 4913
    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4915
    :cond_7c
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->rootWasReset:Z

    const-string/jumbo v2, "root_has_reset"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 4916
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    const-string v2, "auto_remove_recents"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 4917
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->askedCompatMode:Z

    const-string v2, "asked_compat_mode"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 4918
    iget v0, p0, Lcom/android/server/wm/Task;->mUserId:I

    const-string/jumbo v2, "user_id"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4919
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mUserSetupComplete:Z

    const-string/jumbo v2, "user_setup_complete"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 4920
    iget v0, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    const-string v2, "effective_uid"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4921
    iget-wide v2, p0, Lcom/android/server/wm/Task;->mLastTimeMoved:J

    const-string v0, "last_time_moved"

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 4922
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    const-string v2, "never_relinquish_identity"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 4923
    iget-object v0, p0, Lcom/android/server/wm/Task;->lastDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_c4

    .line 4924
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "last_description"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4926
    :cond_c4
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v0

    if-eqz v0, :cond_d1

    .line 4927
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$TaskDescription;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    .line 4929
    :cond_d1
    iget v0, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    const-string/jumbo v2, "task_affiliation"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4930
    iget v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    const-string/jumbo v2, "prev_affiliation"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4931
    iget v0, p0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    const-string v2, "next_affiliation"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4932
    iget v0, p0, Lcom/android/server/wm/Task;->mCallingUid:I

    const-string v2, "calling_uid"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4933
    iget-object v0, p0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    const-string v2, ""

    if-nez v0, :cond_f6

    move-object v0, v2

    :cond_f6
    const-string v3, "calling_package"

    invoke-interface {p1, v1, v3, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4935
    iget-object v0, p0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    if-nez v0, :cond_100

    goto :goto_101

    :cond_100
    move-object v2, v0

    :goto_101
    const-string v0, "calling_feature_id"

    .line 4934
    invoke-interface {p1, v1, v0, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4936
    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    const-string/jumbo v2, "resize_mode"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4937
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    const-string/jumbo v2, "supports_picture_in_picture"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 4938
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_123

    .line 4940
    invoke-virtual {v0}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "non_fullscreen_bounds"

    .line 4939
    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4942
    :cond_123
    iget v0, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    const-string v2, "min_width"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4943
    iget v0, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    const-string v2, "min_height"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v0, 0x1

    const-string/jumbo v2, "persist_task_version"

    .line 4944
    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4946
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastTaskSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->taskSize:Landroid/graphics/Point;

    if-eqz v0, :cond_147

    .line 4948
    invoke-virtual {v0}, Landroid/graphics/Point;->flattenToString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "last_snapshot_task_size"

    .line 4947
    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4950
    :cond_147
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastTaskSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->contentInsets:Landroid/graphics/Rect;

    if-eqz v0, :cond_156

    .line 4952
    invoke-virtual {v0}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "last_snapshot_content_insets"

    .line 4951
    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4954
    :cond_156
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastTaskSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->bufferSize:Landroid/graphics/Point;

    if-eqz v0, :cond_165

    .line 4956
    invoke-virtual {v0}, Landroid/graphics/Point;->flattenToString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "last_snapshot_buffer_size"

    .line 4955
    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4960
    :cond_165
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DEDICATED_MEMORY:Z

    if-eqz v0, :cond_17f

    .line 4961
    iget-object v0, p0, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    if-eqz v0, :cond_172

    const-string v2, "host_process_name"

    .line 4962
    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4964
    :cond_172
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDedicatedTask:Z

    if-eqz v0, :cond_17f

    .line 4965
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "dedicated_task"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4970
    :cond_17f
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_190

    const-string v0, "affinity_intent"

    .line 4971
    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4972
    iget-object v2, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 4973
    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4976
    :cond_190
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_1a1

    const-string v0, "intent"

    .line 4977
    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4978
    iget-object v2, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 4979
    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4982
    :cond_1a1
    sput-object v1, Lcom/android/server/wm/Task;->sTmpException:Ljava/lang/Exception;

    .line 4983
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda30;-><init>()V

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 4984
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getBottomMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 4983
    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Lcom/android/internal/util/function/TriPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object p1

    .line 4985
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;)Z

    .line 4986
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 4987
    sget-object p0, Lcom/android/server/wm/Task;->sTmpException:Ljava/lang/Exception;

    if-nez p0, :cond_1c1

    return-void

    .line 4988
    :cond_1c1
    throw p0
.end method

.method public final sendFreeformLogging()V
    .registers 6

    .line 9450
    iget-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_2c

    :cond_b
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 9473
    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    new-instance v4, Lcom/android/server/wm/Task$$ExternalSyntheticLambda36;

    invoke-direct {v4, p0, v1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda36;-><init>(Lcom/android/server/wm/Task;[I)V

    invoke-virtual {v3, v4, v0}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 9479
    iget-object p0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 9480
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    aget v0, v1, v2

    const-string v1, "2000"

    .line 9479
    invoke-static {v1, p0, v0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public final sendTaskAppeared()V
    .registers 3

    .line 5393
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz v0, :cond_b

    .line 5394
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v1, v0, p0}, Lcom/android/server/wm/TaskOrganizerController;->onTaskAppeared(Landroid/window/ITaskOrganizer;Lcom/android/server/wm/Task;)V

    :cond_b
    return-void
.end method

.method public final sendTaskAppearedImmediately()V
    .registers 3

    .line 5400
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz v0, :cond_b

    .line 5401
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v1, v0, p0}, Lcom/android/server/wm/TaskOrganizerController;->onTaskAppearedImmediately(Landroid/window/ITaskOrganizer;Lcom/android/server/wm/Task;)V

    :cond_b
    return-void
.end method

.method public final sendTaskVanished(Landroid/window/ITaskOrganizer;)V
    .registers 3

    if-eqz p1, :cond_9

    .line 5408
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v0, p1, p0}, Lcom/android/server/wm/TaskOrganizerController;->onTaskVanished(Landroid/window/ITaskOrganizer;Lcom/android/server/wm/Task;)V

    :cond_9
    return-void
.end method

.method public setActivityWindowingMode(I)V
    .registers 4

    .line 5654
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda38;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda38;-><init>()V

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 5655
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 5654
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object p1

    .line 5656
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 5657
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    return-void
.end method

.method public setAliasManagedTask()V
    .registers 2

    const/4 v0, 0x1

    .line 7920
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mIsAliasManaged:Z

    return-void
.end method

.method public setAlwaysOnTop(Z)V
    .registers 4

    .line 7612
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTop()Z

    move-result v0

    if-ne v0, p1, :cond_7

    return-void

    .line 7615
    :cond_7
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->setAlwaysOnTop(Z)V

    .line 7622
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result p1

    if-nez p1, :cond_1b

    .line 7623
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    const v0, 0x7fffffff

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    :cond_1b
    return-void
.end method

.method public setAnimatingForChangeTransit(Z)V
    .registers 3

    .line 8821
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mAnimatingForChangeTransit:Z

    if-eq v0, p1, :cond_6

    .line 8822
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mAnimatingForChangeTransit:Z

    :cond_6
    return-void
.end method

.method public setAvoidTrimDexPendingActivityTask(Z)V
    .registers 2

    .line 8884
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mIsAvoidTrimDexPendingActivityTask:Z

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)I
    .registers 4

    .line 3425
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3426
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p0

    return p0

    :cond_f
    const/4 v0, 0x0

    .line 3430
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 3431
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    if-eqz v1, :cond_28

    .line 3433
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 3436
    :cond_28
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->setBounds(Landroid/graphics/Rect;)I

    move-result p1

    .line 3437
    iput v0, p0, Lcom/android/server/wm/Task;->mRotation:I

    .line 3438
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->updateSurfacePositionNonOrganized()V

    return p1
.end method

.method public final setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 5

    .line 7652
    invoke-static {p1, p2}, Lcom/android/server/wm/ConfigurationContainer;->equivalentBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    return v0

    .line 7660
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_18

    .line 7661
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    goto :goto_19

    :cond_18
    move-object p1, v1

    :goto_19
    if-eqz p1, :cond_21

    .line 7663
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p1

    iget v0, p1, Landroid/view/DisplayInfo;->rotation:I

    .line 7668
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result p1

    if-nez p1, :cond_28

    move-object p2, v1

    :cond_28
    invoke-super {p0, p2}, Lcom/android/server/wm/ConfigurationContainer;->setBounds(Landroid/graphics/Rect;)I

    move-result p1

    .line 7671
    iput v0, p0, Lcom/android/server/wm/Task;->mRotation:I

    .line 7674
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateSurfaceBounds()V

    return p1
.end method

.method public setBounds(Landroid/graphics/Rect;Z)I
    .registers 4

    .line 3412
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    move-result p1

    if-eqz p2, :cond_11

    and-int/lit8 p2, p1, 0x2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_11

    .line 3415
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->onResize()V

    or-int/lit8 p0, p1, 0x2

    return p0

    :cond_11
    return p1
.end method

.method public setCanAffectSystemUiFlags(Z)V
    .registers 4

    .line 4186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCanAffectSystemUiFlags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    .line 4187
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    .line 4186
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4190
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mCanAffectSystemUiFlags:Z

    return-void
.end method

.method public setDeferTaskAppear(Z)V
    .registers 2

    .line 5361
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mDeferTaskAppear:Z

    if-nez p1, :cond_7

    .line 5363
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->sendTaskAppeared()V

    :cond_7
    return-void
.end method

.method public setDragResizing(ZI)V
    .registers 5

    .line 3692
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDragResizing:Z

    if-eq v0, p1, :cond_3b

    if-eqz p1, :cond_34

    .line 3695
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/wm/DragResizeMode;->isModeAllowedForRootTask(Lcom/android/server/wm/Task;I)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_34

    .line 3696
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Drag resize mode not allow for root task id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3697
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " dragResizeMode="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3699
    :cond_34
    :goto_34
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mDragResizing:Z

    .line 3700
    iput p2, p0, Lcom/android/server/wm/Task;->mDragResizeMode:I

    .line 3701
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->resetDragResizingChangeReported()V

    :cond_3b
    return-void
.end method

.method public setForceHidden(IZ)Z
    .registers 4

    .line 5665
    iget v0, p0, Lcom/android/server/wm/Task;->mForceHiddenFlags:I

    if-eqz p2, :cond_6

    or-int/2addr p1, v0

    goto :goto_8

    :cond_6
    not-int p1, p1

    and-int/2addr p1, v0

    :goto_8
    if-ne v0, p1, :cond_c

    const/4 p0, 0x0

    return p0

    .line 5675
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result p2

    .line 5676
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 5677
    iput p1, p0, Lcom/android/server/wm/Task;->mForceHiddenFlags:I

    .line 5678
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result p1

    if-eq p2, p1, :cond_2e

    const-string/jumbo p2, "setForceHidden"

    if-eqz p1, :cond_25

    const/4 p1, 0x0

    .line 5685
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/Task;->moveToBack(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    goto :goto_2e

    .line 5686
    :cond_25
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 5688
    invoke-virtual {p0, p2}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    :cond_2e
    :goto_2e
    const/4 p0, 0x1

    return p0
.end method

.method public setForceShowForAllUsers(Z)V
    .registers 2

    .line 3845
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mForceShowForAllUsers:Z

    return-void
.end method

.method public setFreeformStashState(I)V
    .registers 2
    .param p1    # I
        .annotation build Landroid/app/WindowConfiguration$FreeformStashType;
        .end annotation
    .end param

    .line 9400
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0, p1}, Landroid/app/WindowConfiguration;->setFreeformStashState(I)V

    return-void
.end method

.method public setFreeformStashYFraction(F)V
    .registers 2

    .line 9414
    iput p1, p0, Lcom/android/server/wm/Task;->mFreeformStashYFraction:F

    return-void
.end method

.method public setHasBeenVisible(Z)V
    .registers 2

    .line 5347
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mHasBeenVisible:Z

    if-eqz p1, :cond_19

    .line 5349
    iget-boolean p1, p0, Lcom/android/server/wm/Task;->mDeferTaskAppear:Z

    if-nez p1, :cond_b

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->sendTaskAppeared()V

    .line 5350
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result p1

    if-nez p1, :cond_19

    .line 5351
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setHasBeenVisible(Z)V

    :cond_19
    return-void
.end method

.method public setInitialSurfaceControlProperties(Landroid/view/SurfaceControl$Builder;)V
    .registers 5

    .line 3924
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->setEffectLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    .line 3925
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setInitialSurfaceControlProperties(Landroid/view/SurfaceControl$Builder;)V

    return-void
.end method

.method public final setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .registers 13

    .line 1284
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1286
    :cond_7
    iget v0, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x1000

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_11

    move v0, v1

    goto :goto_12

    :cond_11
    move v0, v2

    :goto_12
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    .line 1287
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    .line 1288
    iget-object v3, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-nez v3, :cond_1e

    .line 1292
    iput-object v0, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    .line 1294
    :cond_1e
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v3, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    .line 1295
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mIsEffectivelySystemApp:Z

    const/4 v0, 0x0

    .line 1296
    iput-object v0, p0, Lcom/android/server/wm/Task;->stringName:Ljava/lang/String;

    .line 1298
    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    const/4 v4, 0x2

    if-nez v3, :cond_75

    if-eqz p1, :cond_4c

    .line 1303
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_40

    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_4c

    .line 1304
    :cond_40
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1305
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 1306
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    move-object p1, v3

    .line 1309
    :cond_4c
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v3, :cond_66

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, -0x7a744c8b

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v2

    aput-object v5, v4, v1

    invoke-static {v6, v7, v2, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1310
    :cond_66
    iput-object p1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz p1, :cond_6f

    .line 1311
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    goto :goto_70

    :cond_6f
    move-object p1, v0

    :goto_70
    iput-object p1, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 1312
    iput-object v0, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    goto :goto_bf

    .line 1314
    :cond_75
    new-instance v3, Landroid/content/ComponentName;

    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_b0

    .line 1317
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1318
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 1319
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 1320
    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v6, :cond_a5

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, 0x283aa656

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v6, v4, v2

    aput-object v7, v4, v1

    invoke-static {v8, v9, v2, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1321
    :cond_a5
    iput-object v5, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 1322
    iput-object v3, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 1323
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    goto :goto_bf

    .line 1325
    :cond_b0
    iput-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 1326
    iput-object v3, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 1327
    new-instance p1, Landroid/content/ComponentName;

    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    .line 1331
    :goto_bf
    iget-object p1, p2, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-nez p1, :cond_c4

    goto :goto_c6

    :cond_c4
    iget-object v0, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    :goto_c6
    iput-object v0, p0, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    .line 1333
    iget-object p1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-nez p1, :cond_ce

    move p1, v2

    goto :goto_d2

    :cond_ce
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p1

    :goto_d2
    const/high16 v0, 0x200000

    and-int/2addr v0, p1

    if-eqz v0, :cond_d9

    .line 1337
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->rootWasReset:Z

    .line 1339
    :cond_d9
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/Task;->mUserId:I

    .line 1340
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 1341
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v3, p0, Lcom/android/server/wm/Task;->mUserId:I

    const-string/jumbo v4, "user_setup_complete"

    .line 1340
    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_f8

    move v0, v1

    goto :goto_f9

    :cond_f8
    move v0, v2

    :goto_f9
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mUserSetupComplete:Z

    .line 1342
    iget v0, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_104

    .line 1344
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    goto :goto_118

    :cond_104
    const v0, 0x82000

    and-int/2addr p1, v0

    const/high16 v0, 0x80000

    if-ne p1, v0, :cond_116

    .line 1350
    iget p1, p2, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-eqz p1, :cond_113

    .line 1351
    iput-boolean v2, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    goto :goto_118

    .line 1353
    :cond_113
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    goto :goto_118

    .line 1356
    :cond_116
    iput-boolean v2, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    .line 1361
    :goto_118
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mMwSupportPolicyController:Lcom/android/server/wm/MultiWindowSupportPolicyController;

    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->updateSupportPolicyLocked(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo;)V

    .line 1365
    iget p1, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    iget v0, p2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    if-eq p1, v0, :cond_12a

    .line 1366
    iput v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 1367
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    .line 1369
    :cond_12a
    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    .line 1372
    iget-boolean p1, p0, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz p1, :cond_142

    .line 1373
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/Task;)V

    .line 1374
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    .line 1379
    :cond_142
    invoke-virtual {p0, p2}, Lcom/android/server/wm/Task;->initMinMaxDimensions(Landroid/content/pm/ActivityInfo;)V

    .line 1381
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_ACTIVITY:Z

    if-eqz p1, :cond_155

    .line 1382
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/MultiTaskingController;->supportSplitActivity(Landroid/content/pm/ApplicationInfo;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mIsSplitActivityPackage:Z

    .line 1386
    :cond_155
    invoke-static {}, Lcom/android/server/wm/PackageSettingsManager;->getInstance()Lcom/android/server/wm/PackageSettingsManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/wm/PackageSettingsManager;->updateValuesToTask(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public setIntent(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    const/4 v0, 0x0

    .line 1254
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    return-void
.end method

.method public setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .registers 9

    .line 1266
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_7

    goto :goto_23

    .line 1268
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    if-nez v0, :cond_22

    if-eqz p3, :cond_f

    move-object v0, p3

    goto :goto_11

    .line 1269
    :cond_f
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 1270
    :goto_11
    iget v3, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_23

    iget-boolean v4, p0, Lcom/android/server/wm/Task;->mIsEffectivelySystemApp:Z

    if-nez v4, :cond_23

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v3, v0, :cond_22

    goto :goto_23

    :cond_22
    move v1, v2

    :cond_23
    :goto_23
    if-eqz v1, :cond_3e

    .line 1274
    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iput v0, p0, Lcom/android/server/wm/Task;->mCallingUid:I

    .line 1275
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    .line 1276
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    if-eqz p2, :cond_34

    goto :goto_36

    .line 1277
    :cond_34
    iget-object p2, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    :goto_36
    if-eqz p3, :cond_39

    goto :goto_3b

    :cond_39
    iget-object p3, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    :goto_3b
    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/Task;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 1279
    :cond_3e
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setLockTaskAuth(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public setLastMinimizedDisplayType(I)V
    .registers 2

    .line 9591
    iput p1, p0, Lcom/android/server/wm/Task;->mLastMinimizedDisplayType:I

    return-void
.end method

.method public setLastNonFullscreenBounds(Landroid/graphics/Rect;)V
    .registers 3

    .line 2378
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_c

    .line 2379
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    goto :goto_f

    .line 2381
    :cond_c
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_f
    return-void
.end method

.method public setLastRecentsAnimationTransaction(Landroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V
    .registers 4

    .line 7795
    new-instance v0, Landroid/window/PictureInPictureSurfaceTransaction;

    invoke-direct {v0, p1}, Landroid/window/PictureInPictureSurfaceTransaction;-><init>(Landroid/window/PictureInPictureSurfaceTransaction;)V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    .line 7796
    iput-object p2, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationOverlay:Landroid/view/SurfaceControl;

    return-void
.end method

.method public setLockTaskAuth()V
    .registers 2

    .line 2179
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setLockTaskAuth(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public final setLockTaskAuth(Lcom/android/server/wm/ActivityRecord;)V
    .registers 7

    .line 2183
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/android/server/wm/LockTaskController;->getLockTaskAuth(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    .line 2184
    sget-boolean p1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_LOCKTASK_enabled:Z

    if-eqz p1, :cond_2e

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->lockTaskAuthToString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, 0x6cb9a502

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object p0, v3, p1

    invoke-static {v0, v1, v4, v2, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2e
    return-void
.end method

.method public setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    const/4 v0, 0x1

    if-eqz p1, :cond_35

    .line 5611
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMainWindowSizeChangeTransaction: t="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5612
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v2, :cond_1c

    const/4 v2, 0x7

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x3

    :goto_1d
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    .line 5611
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5614
    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 5619
    :cond_35
    invoke-virtual {p0, p1, p0}, Lcom/android/server/wm/Task;->setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/Task;)V

    .line 5620
    new-instance p1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda8;

    invoke-direct {p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public final setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/Task;)V
    .registers 4

    .line 5625
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 5626
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-nez v0, :cond_f

    return-void

    :cond_f
    if-eq v0, p0, :cond_15

    .line 5631
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/Task;->setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/Task;)V

    return-void

    .line 5634
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_25

    .line 5638
    new-instance p2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda17;

    invoke-direct {p2, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda17;-><init>(Landroid/view/SurfaceControl$Transaction;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/WindowState;->applyWithNextDraw(Ljava/util/function/Consumer;I)V

    goto :goto_28

    .line 5648
    :cond_25
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :goto_28
    return-void
.end method

.method public setMetaKeyBounds(Landroid/graphics/Rect;)V
    .registers 2

    .line 9180
    iput-object p1, p0, Lcom/android/server/wm/Task;->mMetaKeyBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public setMinDimensions(Landroid/content/pm/ActivityInfo;)V
    .registers 3

    if-eqz p1, :cond_f

    .line 1393
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz p1, :cond_f

    .line 1394
    iget v0, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    iput v0, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    .line 1395
    iget p1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    iput p1, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    goto :goto_14

    :cond_f
    const/4 p1, -0x1

    .line 1397
    iput p1, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    .line 1398
    iput p1, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    :goto_14
    return-void
.end method

.method public setMinimized(Z)V
    .registers 3

    const/4 v0, -0x1

    .line 8452
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/wm/Task;->setMinimized(ZII)V

    return-void
.end method

.method public setMinimized(ZII)V
    .registers 6

    .line 8457
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mIsMinimized:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 8460
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mIsMinimized:Z

    .line 8462
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    invoke-virtual {v1, p0, p2, p3}, Lcom/android/server/wm/FreeformController;->notifyFreeformMinimizeStateChanged(Lcom/android/server/wm/Task;II)V

    if-eqz p1, :cond_2d

    const/4 p2, 0x0

    .line 8466
    invoke-virtual {p0, p2}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p2

    if-nez p2, :cond_2d

    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean p3, p2, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez p3, :cond_2d

    .line 8467
    invoke-virtual {p2}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result p2

    const/4 p3, 0x0

    cmpg-float p2, p2, p3

    if-gtz p2, :cond_28

    goto :goto_2d

    :cond_28
    if-eqz p1, :cond_34

    .line 8472
    iput v0, p0, Lcom/android/server/wm/Task;->mMinimizeAnimState:I

    goto :goto_34

    .line 8469
    :cond_2d
    :goto_2d
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/FreeformController;->notifyFreeformMinimizeAnimationEnd(Lcom/android/server/wm/Task;)V

    .line 8485
    :cond_34
    :goto_34
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    invoke-virtual {p1}, Lcom/android/server/wm/TaskPositioningController;->getTaskMotionController()Lcom/android/server/wm/TaskMotionController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/wm/TaskMotionController;->removeTaskToMotionInfo(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public setNextAffiliate(Lcom/android/server/wm/Task;)V
    .registers 2

    .line 1441
    iput-object p1, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-nez p1, :cond_6

    const/4 p1, -0x1

    goto :goto_8

    .line 1442
    :cond_6
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    :goto_8
    iput p1, p0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    return-void
.end method

.method public setPendingDexNonResizeableAppRestartHelpMode(I)V
    .registers 2

    .line 9436
    iput p1, p0, Lcom/android/server/wm/Task;->mPendingDexNonResizeableAppRestartHelpMode:I

    return-void
.end method

.method public setPrevAffiliate(Lcom/android/server/wm/Task;)V
    .registers 2

    .line 1436
    iput-object p1, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    if-nez p1, :cond_6

    const/4 p1, -0x1

    goto :goto_8

    .line 1437
    :cond_6
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    :goto_8
    iput p1, p0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    return-void
.end method

.method public setResizeMode(I)V
    .registers 4

    .line 1012
    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    if-ne v0, p1, :cond_5

    return-void

    .line 1015
    :cond_5
    iput p1, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 1016
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1017
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 1018
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    return-void
.end method

.method public setRootProcess(Lcom/android/server/wm/WindowProcessController;)V
    .registers 4

    .line 3046
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->clearRootProcess()V

    .line 3047
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_28

    .line 3048
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-nez v0, :cond_28

    .line 3049
    iput-object p1, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    .line 3050
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowProcessController;->addRecentTask(Lcom/android/server/wm/Task;)V

    .line 3053
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_DEDICATED_MEMORY:Z

    if-eqz p1, :cond_28

    .line 3054
    iget-object p1, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    iget-object p1, p1, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    .line 3055
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget-object v0, p0, Lcom/android/server/wm/Task;->mOldHostProcessName:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/android/server/wm/RecentTasks;->dedicateToIfNeeded(Lcom/android/server/wm/Task;Ljava/lang/String;)V

    :cond_28
    return-void
.end method

.method public setSnappingGuideBounds(Landroid/graphics/Rect;)V
    .registers 2

    if-eqz p1, :cond_7

    .line 9374
    iget-object p0, p0, Lcom/android/server/wm/Task;->mSnappingGuideBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_7
    return-void
.end method

.method public setSurfaceControl(Landroid/view/SurfaceControl;)V
    .registers 3

    .line 5483
    invoke-super {p0, p1}, Lcom/android/server/wm/TaskFragment;->setSurfaceControl(Landroid/view/SurfaceControl;)V

    .line 5486
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->sendTaskAppeared()V

    .line 5489
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    .line 5490
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setTrustedOverlay(Z)V

    :cond_10
    if-eqz p1, :cond_2b

    .line 5492
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 5493
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iget-boolean p0, p0, Lcom/android/server/wm/Task;->mSetInternalPresentationOnly:Z

    .line 5494
    invoke-virtual {v0, p1, p0}, Landroid/view/SurfaceControl$Transaction;->setInternalPresentationOnly(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    .line 5495
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_2b
    return-void
.end method

.method public setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .registers 2

    .line 4037
    iput-object p1, p0, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    return-void
.end method

.method public setTaskOrganizer(Landroid/window/ITaskOrganizer;)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 5414
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->setTaskOrganizer(Landroid/window/ITaskOrganizer;Z)Z

    move-result p0

    return p0
.end method

.method public setTaskOrganizer(Landroid/window/ITaskOrganizer;Z)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5419
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_6

    return v1

    .line 5426
    :cond_6
    iput-object p1, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 5428
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->sendTaskVanished(Landroid/window/ITaskOrganizer;)V

    .line 5430
    iget-object p1, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz p1, :cond_15

    if-nez p2, :cond_2c

    .line 5432
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->sendTaskAppeared()V

    goto :goto_2c

    .line 5436
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 5438
    invoke-virtual {p1, p0}, Lcom/android/server/wm/TaskDisplayArea;->removeLaunchRootTask(Lcom/android/server/wm/Task;)V

    :cond_1e
    const/4 p1, 0x2

    .line 5440
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/Task;->setForceHidden(IZ)Z

    .line 5441
    iget-boolean p1, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz p1, :cond_2c

    const-string/jumbo p1, "setTaskOrganizer"

    .line 5442
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->removeImmediately(Ljava/lang/String;)V

    :cond_2c
    :goto_2c
    const/4 p0, 0x1

    return p0
.end method

.method public setTaskToAffiliateWith(Lcom/android/server/wm/Task;)V
    .registers 6

    .line 1749
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->closeRecentsChain()V

    .line 1750
    iget v0, p1, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    iput v0, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    .line 1752
    :goto_7
    iget-object v0, p1, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    const/4 v1, 0x0

    if-eqz v0, :cond_4a

    .line 1754
    iget v2, v0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    iget v3, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    if-eq v2, v3, :cond_48

    .line 1755
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTaskToAffiliateWith: nextRecents="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " affilTaskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    iget-object v2, v0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    if-ne v2, p1, :cond_44

    .line 1758
    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    .line 1760
    :cond_44
    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    goto :goto_4a

    :cond_48
    move-object p1, v0

    goto :goto_7

    .line 1765
    :cond_4a
    :goto_4a
    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    .line 1766
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    .line 1767
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public final setTrustedOverlay(Z)V
    .registers 3

    .line 9420
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 9424
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 9425
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setTrustedOverlay(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    .line 9426
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method public setUnminimizedWhenRemoved()V
    .registers 2

    .line 8490
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mIsMinimized:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 8493
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mIsMinimized:Z

    .line 8499
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/FreeformController;->notifyFreeformMinimizeStateChanged(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public setUnminimizedWhenRestored(Z)V
    .registers 3

    .line 8511
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mIsMinimized:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 8514
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mIsMinimized:Z

    if-eqz p1, :cond_d

    const/4 p1, 0x2

    .line 8516
    iput p1, p0, Lcom/android/server/wm/Task;->mMinimizeAnimState:I

    .line 8519
    :cond_d
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/FreeformController;->notifyFreeformMinimizeStateChanged(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public setWindowingMode(I)V
    .registers 3

    .line 5720
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_a

    .line 5721
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->setWindowingMode(I)V

    return-void

    :cond_a
    const/4 v0, 0x0

    .line 5725
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->setWindowingMode(IZ)V

    return-void
.end method

.method public setWindowingMode(IZ)V
    .registers 5

    .line 5737
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda54;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda54;-><init>(Lcom/android/server/wm/Task;IZ)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setWindowingModeInSurfaceTransaction(IZ)V
    .registers 15

    const-string v0, "movePinnedActivityToOriginalTask"

    .line 5743
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    if-nez v1, :cond_11

    const-string v0, "ActivityTaskManager"

    const-string/jumbo v1, "taskDisplayArea is null, bail early"

    .line 5745
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5748
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v2

    .line 5749
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-nez p2, :cond_25

    .line 5756
    invoke-virtual {v1, p1, v8, v3}, Lcom/android/server/wm/TaskDisplayArea;->isValidWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z

    move-result v5

    if-nez v5, :cond_25

    move v4, v7

    goto :goto_26

    :cond_25
    move v4, p1

    :goto_26
    if-ne v2, v4, :cond_32

    .line 5766
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v4}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    return-void

    .line 5770
    :cond_32
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 5772
    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v6

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v6, :cond_4c

    if-ne v2, v9, :cond_4c

    if-nez v4, :cond_4c

    if-eqz v5, :cond_4a

    .line 5775
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getLastParentBeforePip()Lcom/android/server/wm/Task;

    move-result-object v6

    if-nez v6, :cond_4c

    .line 5777
    :cond_4a
    iput-boolean v10, p0, Lcom/android/server/wm/Task;->mChangingPinnedToSplitScreen:Z

    :cond_4c
    if-nez v4, :cond_5b

    .line 5787
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    if-eqz v6, :cond_59

    .line 5788
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v6

    goto :goto_5c

    :cond_59
    move v6, v10

    goto :goto_5c

    :cond_5b
    move v6, v4

    :goto_5c
    if-ne v2, v9, :cond_63

    .line 5792
    iget-object v11, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v11, p0, v8}, Lcom/android/server/wm/RootWindowContainer;->notifyActivityPipModeChanged(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    :cond_63
    if-ne v6, v9, :cond_75

    .line 5798
    invoke-virtual {p0, v10}, Lcom/android/server/wm/Task;->setCanAffectSystemUiFlags(Z)V

    .line 5799
    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/Task;

    move-result-object v11

    if-eqz v11, :cond_75

    .line 5801
    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->dismissPip()V

    :cond_75
    const/4 v1, 0x5

    if-eq v6, v10, :cond_98

    if-eqz v5, :cond_98

    .line 5804
    iget-boolean v11, v5, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-nez v11, :cond_98

    .line 5806
    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityRecord;->canForceResizeNonResizable(I)Z

    move-result v11

    if-eqz v11, :cond_98

    if-ne v6, v1, :cond_87

    goto :goto_98

    .line 5815
    :cond_87
    iget-object v6, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 5816
    iget-object v11, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v11}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v11

    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v11, v3, v10, v6}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityForcedResizable(IILjava/lang/String;)V

    .line 5821
    :cond_98
    :goto_98
    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    if-eqz v5, :cond_a6

    .line 5824
    :try_start_9f
    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5827
    :cond_a6
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-static {v4, v3}, Lcom/android/server/wm/FreeformController;->useAlwaysOnTopFreeform(ILcom/android/server/wm/DisplayContent;)Z

    move-result v3

    if-eqz v3, :cond_b7

    .line 5829
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3, v10}, Landroid/app/WindowConfiguration;->setAlwaysOnTop(Z)V

    :cond_b7
    if-ne v2, v1, :cond_dc

    if-ne v4, v10, :cond_dc

    .line 5833
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v3

    .line 5834
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->unset()V

    .line 5835
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6, v3}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    .line 5840
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v3

    if-ne v3, v4, :cond_dc

    move v4, v7

    .line 5844
    :cond_dc
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFreeformPinned()Z

    move-result v3
    :try_end_e0
    .catchall {:try_start_9f .. :try_end_e0} :catchall_1cb

    const-string/jumbo v6, "windowingModeChanged"

    if-eqz v3, :cond_e8

    .line 5845
    :try_start_e5
    invoke-virtual {p0, v7, v6}, Lcom/android/server/wm/Task;->stopFreeformPinning(ZLjava/lang/String;)V

    .line 5848
    :cond_e8
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MD_DEX_TASK_DOCKING:Z

    if-eqz v3, :cond_f7

    if-ne v2, v1, :cond_f7

    if-ne v4, v10, :cond_f7

    .line 5851
    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mDexDockingController:Lcom/android/server/wm/DexDockingController;

    invoke-virtual {v3, v6}, Lcom/android/server/wm/DexDockingController;->clearAllTasks(Ljava/lang/String;)V

    .line 5854
    :cond_f7
    invoke-super {p0, v4}, Lcom/android/server/wm/ConfigurationContainer;->setWindowingMode(I)V

    if-ne v2, v9, :cond_129

    if-eqz v5, :cond_129

    .line 5864
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getLastParentBeforePip()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_11e

    .line 5867
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result v3

    if-nez v3, :cond_11e

    .line 5868
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getLastParentBeforePip()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 5869
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v6

    if-eqz v6, :cond_11e

    .line 5871
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v6

    .line 5870
    invoke-virtual {v5, v3, v6, v0}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/TaskFragment;ILjava/lang/String;)V

    .line 5873
    invoke-virtual {v3, v0}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    .line 5879
    :cond_11e
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible()Z

    move-result v0

    if-eqz v0, :cond_129

    .line 5880
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->resumeAppSwitches()V

    .line 5886
    :cond_129
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_151

    .line 5887
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_145

    .line 5888
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    if-eqz p2, :cond_13e

    const-string v3, "freeform stack attached"

    goto :goto_141

    :cond_13e
    const-string/jumbo v3, "windowing mode change:freeform"

    :goto_141
    invoke-virtual {v0, v3}, Lcom/android/server/wm/FreeformController;->scheduleBindMinimizeContainerService(Ljava/lang/String;)V

    goto :goto_151

    :cond_145
    if-nez p2, :cond_151

    .line 5891
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    const-string/jumbo v3, "windowing mode change:non-freeform"

    invoke-virtual {v0, v3}, Lcom/android/server/wm/FreeformController;->scheduleUnbindMinimizeContainerService(Ljava/lang/String;)V

    :cond_151
    :goto_151
    if-ne v2, v1, :cond_164

    .line 5897
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_164

    .line 5898
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskPositioningController;->getTaskMotionController()Lcom/android/server/wm/TaskMotionController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskMotionController;->removeTaskToMotionInfo(Lcom/android/server/wm/Task;)V
    :try_end_164
    .catchall {:try_start_e5 .. :try_end_164} :catchall_1cb

    :cond_164
    if-eqz p2, :cond_16c

    .line 5929
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    return-void

    :cond_16c
    if-eqz v5, :cond_181

    if-ne v2, v10, :cond_181

    if-ne v4, v9, :cond_181

    .line 5908
    :try_start_172
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 5910
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-nez v0, :cond_181

    .line 5911
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    .line 5912
    invoke-virtual {v0}, Lcom/android/server/wm/PinnedTaskController;->deferOrientationChangeForEnteringPipFromFullScreenIfNeeded()V

    :cond_181
    if-ne v4, v1, :cond_1b3

    .line 5916
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_1b3

    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_193

    .line 5917
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b3

    .line 5918
    :cond_193
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 5921
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v6

    .line 5922
    invoke-virtual {v6, v4}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 5924
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v1

    if-eqz v0, :cond_1ac

    .line 5925
    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    move-object v3, v2

    goto :goto_1ad

    :cond_1ac
    move-object v3, v8

    :goto_1ad
    const/4 v5, 0x0

    move-object v2, p0

    move-object v4, v0

    .line 5924
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/LaunchParamsController;->layoutTask(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z
    :try_end_1b3
    .catchall {:try_start_172 .. :try_end_1b3} :catchall_1cb

    .line 5929
    :cond_1b3
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 5932
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->isRootVisibilityUpdateDeferred()Z

    move-result v0

    if-nez v0, :cond_1ca

    .line 5933
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, v8, v7, v10}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 5934
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    :cond_1ca
    return-void

    :catchall_1cb
    move-exception v0

    .line 5929
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 5930
    throw v0
.end method

.method public shouldAnimate()Z
    .registers 3

    .line 3908
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 3914
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 3915
    invoke-virtual {v0, p0}, Lcom/android/server/wm/RecentsAnimationController;->isAnimatingTask(Lcom/android/server/wm/Task;)Z

    move-result p0

    if-eqz p0, :cond_1d

    .line 3916
    invoke-virtual {v0}, Lcom/android/server/wm/RecentsAnimationController;->shouldDeferCancelUntilNextTransition()Z

    move-result p0

    if-eqz p0, :cond_1d

    return v1

    :cond_1d
    const/4 p0, 0x1

    return p0
.end method

.method public shouldDeferAnimationFinish(Ljava/lang/Runnable;)Z
    .registers 3

    .line 9510
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 9511
    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/FreeformController;->notifyAboutToFinishToAnimatingActivityRegistry(Lcom/android/server/wm/Task;Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public final shouldDockBigOverlays()Z
    .registers 1

    .line 4555
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 4556
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->shouldDockBigOverlays:Z

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public shouldIgnoreInput()Z
    .registers 2

    .line 7840
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHasLeanbackFeature:Z

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 7841
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFocusedRootTaskOnDisplay()Z

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public shouldResizeRootTaskWithLaunchBounds()Z
    .registers 1

    .line 6261
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result p0

    return p0
.end method

.method public shouldSleepActivities()Z
    .registers 4

    .line 7875
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_9

    .line 7877
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isKeyguardGoingAway()Z

    move-result v1

    goto :goto_13

    .line 7878
    :cond_9
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isKeyguardGoingAway()Z

    move-result v1

    :goto_13
    const/4 v2, 0x0

    if-eqz v1, :cond_21

    .line 7882
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFocusedRootTaskOnDisplay()Z

    move-result v1

    if-eqz v1, :cond_21

    iget-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v1, :cond_21

    return v2

    :cond_21
    if-eqz v0, :cond_33

    .line 7890
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isSleeping()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 7891
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->isOccluding()Z

    move-result p0

    if-nez p0, :cond_39

    const/4 v2, 0x1

    goto :goto_39

    .line 7892
    :cond_33
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingLocked()Z

    move-result v2

    :cond_39
    :goto_39
    return v2
.end method

.method public final shouldSnapshotSplitTasks(I)Z
    .registers 4

    .line 9577
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    const/4 v1, 0x0

    if-nez v0, :cond_22

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandard()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 9578
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isInSkipClosingAppSnapshotTasks()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_22

    .line 9581
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_22

    if-ne p1, v0, :cond_22

    move v1, v0

    :cond_22
    :goto_22
    return v1
.end method

.method public final shouldStartChangeTransition(II)Z
    .registers 5

    .line 2868
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->canStartChangeTransition()Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_1d

    :cond_e
    const/4 p0, 0x5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_14

    move p1, v0

    goto :goto_15

    :cond_14
    move p1, v1

    :goto_15
    if-ne p2, p0, :cond_19

    move p0, v0

    goto :goto_1a

    :cond_19
    move p0, v1

    :goto_1a
    if-eq p1, p0, :cond_1d

    move v1, v0

    :cond_1d
    :goto_1d
    return v1
.end method

.method public shouldUpRecreateTaskLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z
    .registers 6

    .line 6880
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v0

    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    invoke-static {p2, v0, v1}, Lcom/android/server/wm/ActivityRecord;->computeTaskAffinity(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p2

    .line 6882
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_6c

    .line 6883
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_20

    goto :goto_6c

    .line 6890
    :cond_20
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p2

    .line 6891
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_6b

    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_6b

    .line 6892
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->isDocument()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 6894
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFrontOfStandardRootTask()Z

    move-result v0

    if-nez v0, :cond_42

    return v1

    .line 6899
    :cond_42
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowContainer;->getTaskBelow(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object p0

    if-nez p0, :cond_60

    .line 6901
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "shouldUpRecreateTask: task not in history for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6904
    :cond_60
    iget-object p1, p2, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6b

    return v1

    :cond_6b
    return v2

    :cond_6c
    :goto_6c
    return v1
.end method

.method public showForAllUsers()Z
    .registers 3

    .line 3833
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 3834
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 3835
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->mShowForAllUsers:Z

    if-eqz p0, :cond_15

    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method public showSurfaceOnCreation()Z
    .registers 3

    .line 5318
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 5324
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->canBeOrganized()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-nez v0, :cond_17

    .line 5330
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :cond_18
    :goto_18
    return v1
.end method

.method public showToCurrentUser()Z
    .registers 2

    .line 3840
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mForceShowForAllUsers:Z

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 3841
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object p0

    iget p0, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfile(I)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method

.method public final snapshotSplitTasksIfNeeded(Landroid/content/res/Configuration;)V
    .registers 3

    .line 9564
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->shouldSnapshotSplitTasks(I)Z

    move-result p1

    if-nez p1, :cond_d

    return-void

    :cond_d
    const/4 p1, 0x1

    new-array p1, p1, [Lcom/android/server/wm/Task;

    const/4 v0, 0x0

    aput-object p0, p1, v0

    .line 9567
    invoke-static {p1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object p1

    .line 9568
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;)V

    .line 9569
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->addSkipClosingAppSnapshotTasks(Ljava/util/Set;)V

    return-void
.end method

.method public final spegDisplayChecker()V
    .registers 7

    .line 5966
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 5970
    :cond_7
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 5972
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    const-string v3, "SPEG"

    if-nez v2, :cond_1f

    const-string p0, "Can\'t get DisplayManager"

    .line 5974
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5977
    :cond_1f
    invoke-virtual {v2, v1}, Landroid/hardware/display/DisplayManager;->getHiddenDisplayId(Ljava/lang/String;)I

    move-result v2

    .line 5979
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result p0

    const/4 v4, -0x1

    if-eq v2, v4, :cond_77

    if-eq v2, p0, :cond_77

    .line 5982
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "There is speg display "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", but "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " moveToFront on other display "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5985
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Backtrace: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_77
    return-void
.end method

.method public startActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;ZZLandroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 23

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    .line 6512
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/Task;->findEnterPipOnTaskSwitchCandidate(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 6513
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_1a

    .line 6514
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    move-result v7

    if-nez v7, :cond_18

    goto :goto_1a

    :cond_18
    move v7, v6

    goto :goto_1b

    :cond_1a
    :goto_1a
    move v7, v5

    :goto_1b
    if-eq v4, v0, :cond_26

    .line 6515
    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v8

    if-eqz v8, :cond_24

    goto :goto_26

    :cond_24
    move v8, v6

    goto :goto_27

    :cond_26
    :goto_26
    move v8, v5

    .line 6517
    :goto_27
    iget-boolean v9, v1, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    if-nez v9, :cond_34

    if-eqz v7, :cond_34

    if-eqz v8, :cond_31

    if-eqz p3, :cond_34

    .line 6521
    :cond_31
    invoke-virtual {p0, v4}, Lcom/android/server/wm/Task;->positionChildAtTop(Lcom/android/server/wm/Task;)V

    :cond_34
    if-nez p3, :cond_4f

    if-eqz v8, :cond_4f

    .line 6550
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v4

    if-nez v4, :cond_45

    .line 6551
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/Task;->getOccludingActivityAbove(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_4f

    goto :goto_4b

    .line 6553
    :cond_45
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible()Z

    move-result v4

    if-nez v4, :cond_4f

    .line 6554
    :goto_4b
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    return-void

    .line 6562
    :cond_4f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    const-string v8, "ActivityTaskManager"

    const/4 v9, 0x0

    if-nez v4, :cond_73

    .line 6563
    iget-object v10, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v11

    sub-int/2addr v11, v5

    if-eq v10, v11, :cond_73

    .line 6564
    iget-object v10, v0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-boolean v6, v10, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 6565
    sget-boolean v10, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    if-eqz v10, :cond_73

    const-string/jumbo v10, "startActivity() behind front, mUserLeaving=false"

    invoke-static {v8, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6572
    :cond_73
    sget-boolean v10, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    if-eqz v10, :cond_a0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v11, Ljava/lang/RuntimeException;

    const-string v12, "here"

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v13, -0x6544f687

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v10, v14, v6

    aput-object v4, v14, v5

    const/4 v4, 0x2

    aput-object v11, v14, v4

    invoke-static {v12, v13, v6, v9, v14}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 6576
    :cond_a0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result v4

    if-eqz v4, :cond_a9

    .line 6577
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateMinMaxSizeIfNeeded()V

    .line 6586
    :cond_a9
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v4

    if-eqz v4, :cond_b5

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->hasActivity()Z

    move-result v4

    if-eqz v4, :cond_160

    :cond_b5
    if-eqz v7, :cond_160

    .line 6587
    iget-object v4, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 6588
    sget-boolean v7, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v7, :cond_d1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Prepare open transition: starting "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6591
    :cond_d1
    iget-object v7, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    move-result v7

    const/high16 v8, 0x10000

    and-int/2addr v7, v8

    if-eqz v7, :cond_e7

    .line 6592
    invoke-virtual {v4, v6}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    .line 6593
    iget-object v4, v0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f1

    .line 6595
    :cond_e7
    invoke-virtual {v4, v5}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    .line 6596
    iget-object v4, v0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_f1
    if-eqz p3, :cond_fa

    .line 6598
    iget-boolean v4, v1, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    if-nez v4, :cond_fa

    .line 6603
    invoke-static {v3, v9, v1, v2}, Lcom/android/server/wm/Task;->enableEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    :cond_fa
    if-eqz p3, :cond_111

    .line 6613
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x200000

    and-int/2addr v2, v3

    if-eqz v2, :cond_11c

    .line 6614
    invoke-virtual {p0, v1, v1}, Lcom/android/server/wm/Task;->resetTaskIfNeeded(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    .line 6615
    invoke-virtual {p0, v9}, Lcom/android/server/wm/Task;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-ne v2, v1, :cond_11a

    goto :goto_11c

    :cond_111
    if-eqz v2, :cond_11c

    .line 6617
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_11c

    :cond_11a
    move v2, v6

    goto :goto_11d

    :cond_11c
    :goto_11c
    move v2, v5

    .line 6621
    :goto_11d
    iget-boolean v3, v1, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    if-eqz v3, :cond_12d

    .line 6625
    invoke-virtual {v1, v5}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 6626
    invoke-virtual {p0, v9, v6, v6}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 6629
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    goto :goto_177

    :cond_12d
    if-eqz v2, :cond_177

    .line 6635
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 6636
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v3

    if-eqz v3, :cond_145

    .line 6641
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 6644
    :cond_145
    new-instance v3, Lcom/android/server/wm/Task$$ExternalSyntheticLambda55;

    invoke-direct {v3}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda55;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 6646
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStartingSurfaceController:Lcom/android/server/wm/StartingSurfaceController;

    move-object/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/StartingSurfaceController;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ZZLcom/android/server/wm/ActivityRecord;Z)V

    goto :goto_177

    .line 6655
    :cond_160
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 6659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "allowMoveToFront is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_177
    :goto_177
    return-void
.end method

.method public startDragMoving()V
    .registers 2

    const/4 v0, 0x1

    .line 9351
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mDragMoving:Z

    return-void
.end method

.method public startFreeformPinning()V
    .registers 2

    .line 8530
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 8534
    :cond_7
    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskDisplayArea;->startFreeformTaskPinning(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public stopFreeformPinning(ZLjava/lang/String;)V
    .registers 4

    .line 8538
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 8542
    :cond_7
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wm/TaskDisplayArea;->stopFreeformTaskPinning(Lcom/android/server/wm/Task;ZLjava/lang/String;)V

    return-void
.end method

.method public supportSplitActivityMode()Z
    .registers 1

    .line 8840
    iget-boolean p0, p0, Lcom/android/server/wm/Task;->mIsSplitActivityPackage:Z

    return p0
.end method

.method public supportsFreeform()Z
    .registers 2

    .line 2230
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->supportsFreeformInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result p0

    return p0
.end method

.method public supportsFreeformInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z
    .registers 3

    .line 2238
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v0, :cond_e

    .line 2239
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragment;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public supportsMinimizeState()Z
    .registers 3

    .line 8438
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 8444
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p0

    if-nez p0, :cond_f

    return v1

    :cond_f
    const/4 p0, 0x1

    return p0
.end method

.method public supportsSplitScreenWindowingMode()Z
    .registers 2

    .line 2190
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->supportsSplitScreenWindowingModeInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result p0

    return p0
.end method

.method public supportsSplitScreenWindowingModeInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z
    .registers 3

    const/4 v0, 0x0

    .line 2195
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->supportsSplitScreenWindowingModeInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result p0

    return p0
.end method

.method public supportsSplitScreenWindowingModeInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Z)Z
    .registers 4

    .line 2201
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2202
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->supportsSplitScreenWindowingMode()Z

    move-result p0

    if-eqz p0, :cond_14

    if-eqz v0, :cond_12

    .line 2203
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/Task;->supportsSplitScreenWindowingModeInner(Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result p0

    if-eqz p0, :cond_14

    :cond_12
    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public final supportsSplitScreenWindowingModeInner(Lcom/android/server/wm/TaskDisplayArea;)Z
    .registers 3

    const/4 v0, 0x0

    .line 2211
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->supportsSplitScreenWindowingModeInner(Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result p0

    return p0
.end method

.method public final supportsSplitScreenWindowingModeInner(Lcom/android/server/wm/TaskDisplayArea;Z)Z
    .registers 5

    .line 2217
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->supportsSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsSplitScreenMultiWindow:Z

    if-nez v1, :cond_16

    if-eqz p2, :cond_1e

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    .line 2221
    invoke-virtual {v0}, Lcom/android/server/wm/MultiWindowEnableController;->deviceSupportsSplitScreenMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2223
    :cond_16
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskFragment;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method

.method public switchUser(I)V
    .registers 4

    .line 6117
    iget v0, p0, Lcom/android/server/wm/Task;->mCurrentUser:I

    if-ne v0, p1, :cond_5

    return-void

    .line 6120
    :cond_5
    iput p1, p0, Lcom/android/server/wm/Task;->mCurrentUser:I

    .line 6122
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->switchUser(I)V

    .line 6123
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result p1

    if-nez p1, :cond_39

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->showToCurrentUser()Z

    move-result p1

    if-eqz p1, :cond_39

    .line 6125
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MNO_TMO_DEVICE_REPORTING:Z

    if-eqz p1, :cond_2e

    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->getStatus()Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 6126
    iget-object p1, p0, Lcom/android/server/wm/Task;->mExitingActivities:Ljava/util/ArrayList;

    .line 6127
    sget-object v0, Lcom/android/server/am/AppStateBroadcaster;->mObjHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2e

    .line 6128
    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda28;-><init>(Lcom/android/server/wm/Task;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6148
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    const v0, 0x7fffffff

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    :cond_39
    return-void
.end method

.method public takeMetaKeyBounds()Landroid/graphics/Rect;
    .registers 3

    .line 9184
    iget-object v0, p0, Lcom/android/server/wm/Task;->mMetaKeyBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    .line 9185
    iput-object v1, p0, Lcom/android/server/wm/Task;->mMetaKeyBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public taskAppearedReady()Z
    .registers 4

    .line 5377
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 5381
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDeferTaskAppear:Z

    if-eqz v0, :cond_b

    return v1

    .line 5385
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    return v2

    .line 5389
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getHasBeenVisible()Z

    move-result p0

    if-eqz p0, :cond_1c

    move v1, v2

    :cond_1c
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 4799
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4800
    iget-object v1, p0, Lcom/android/server/wm/Task;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_9d

    .line 4801
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " U="

    .line 4802
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4803
    iget v1, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4804
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eq v1, p0, :cond_28

    const-string v2, " rootTaskId="

    .line 4806
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4807
    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_28
    const-string v1, " visible="

    .line 4809
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 4810
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " visibleRequested="

    .line 4811
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4812
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mode="

    .line 4813
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4814
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4817
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getStage()I

    move-result v2

    if-eqz v2, :cond_7b

    .line 4818
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " stage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4819
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getStage()I

    move-result v3

    .line 4818
    invoke-static {v3}, Landroid/app/WindowConfiguration;->stageConfigToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7b
    const-string v2, " translucent="

    .line 4822
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4823
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskFragment;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " sz="

    .line 4824
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4825
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    .line 4826
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4827
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9d
    const-string v1, "Task{"

    .line 4829
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4830
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #"

    .line 4831
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4832
    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4833
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4834
    iget-object v1, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    if-eqz v1, :cond_e2

    const-string v1, " A="

    .line 4835
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4836
    iget-object v1, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_121

    .line 4837
    :cond_e2
    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_ff

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_ff

    const-string v1, " I="

    .line 4838
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4839
    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_121

    .line 4840
    :cond_ff
    iget-object v1, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v1, :cond_11c

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_11c

    const-string v1, " aI="

    .line 4841
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4842
    iget-object v1, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_121

    :cond_11c
    const-string v1, " ??"

    .line 4844
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4846
    :goto_121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/Task;->stringName:Ljava/lang/String;

    .line 4847
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public topActivityContainsStartingWindow()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 1812
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 1815
    :cond_8
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public topRunningActivity(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;
    .registers 5

    .line 3969
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda11;-><init>()V

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 3970
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 3969
    invoke-static {v0, v1, p2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Lcom/android/internal/util/function/TriPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object p1

    .line 3971
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    .line 3972
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    return-object p0
.end method

.method public topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 1794
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 1797
    :cond_8
    new-instance v0, Lcom/android/server/wm/ActivityRecordGroup$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/wm/ActivityRecordGroup$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .registers 4

    .line 3948
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda47;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda47;-><init>()V

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 3949
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 3948
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object p1

    .line 3950
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    .line 3951
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    return-object p0
.end method

.method public touchActiveTime()V
    .registers 3

    .line 1239
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/Task;->lastActiveTime:J

    return-void
.end method

.method public touchGainFocusTime()V
    .registers 3

    .line 1248
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/Task;->lastGainFocusTime:J

    return-void
.end method

.method public unhandledBackLocked()V
    .registers 3

    .line 7405
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    .line 7406
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Performing unhandledBack(): top activity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    if-eqz p0, :cond_27

    const/4 v0, 0x1

    const-string/jumbo v1, "unhandled-back"

    .line 7409
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    :cond_27
    return-void
.end method

.method public updateDexCompatModeLocked(Landroid/content/pm/ActivityInfo;Landroid/app/ActivityOptions;)V
    .registers 4

    const/4 v0, 0x0

    .line 9203
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/Task;->updateDexCompatModeLocked(Landroid/content/pm/ActivityInfo;Landroid/app/ActivityOptions;Z)V

    return-void
.end method

.method public updateDexCompatModeLocked(Landroid/content/pm/ActivityInfo;Landroid/app/ActivityOptions;Z)V
    .registers 11

    .line 9208
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_ca

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeDream()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_ca

    :cond_e
    const/4 v0, 0x0

    if-nez p1, :cond_2b

    .line 9213
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 9214
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_1c

    goto :goto_1d

    :cond_1c
    move-object v1, v0

    :goto_1d
    if-nez v1, :cond_20

    return-void

    :cond_20
    if-nez p2, :cond_2a

    .line 9219
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getOptions()Landroid/app/ActivityOptions;

    move-result-object p1

    move-object v6, v1

    move-object v1, p1

    move-object p1, v6

    goto :goto_2c

    :cond_2a
    move-object p1, v1

    :cond_2b
    move-object v1, p2

    .line 9222
    :goto_2c
    iget v2, p0, Lcom/android/server/wm/Task;->mDexLaunchPolicy:I

    if-nez v2, :cond_37

    .line 9223
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mDexCompatController:Lcom/android/server/wm/DexCompatController;

    invoke-virtual {v2, p0, p1}, Lcom/android/server/wm/DexCompatController;->updateDexCompatLaunchPolicy(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo;)V

    .line 9226
    :cond_37
    iget p1, p0, Lcom/android/server/wm/Task;->mDexLaunchPolicy:I

    const/4 v2, 0x1

    and-int/2addr p1, v2

    const/4 v3, 0x0

    if-eqz p1, :cond_40

    move p1, v2

    goto :goto_41

    :cond_40
    move p1, v3

    .line 9227
    :goto_41
    iget-boolean v4, p0, Lcom/android/server/wm/Task;->mIsDexCompatEnabled:Z

    if-eq v4, p1, :cond_47

    .line 9228
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mIsDexCompatEnabled:Z

    .line 9230
    :cond_47
    iget-boolean p1, p0, Lcom/android/server/wm/Task;->mIsDexCompatEnabled:Z

    const/4 v4, 0x2

    if-eqz p1, :cond_ad

    .line 9233
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDexMetadataLaunchSize()Landroid/graphics/Point;

    move-result-object p1

    const/4 v5, 0x3

    if-eqz p1, :cond_7c

    .line 9236
    iget p2, p1, Landroid/graphics/Point;->x:I

    .line 9237
    iget p1, p1, Landroid/graphics/Point;->y:I

    if-eqz v1, :cond_5d

    .line 9238
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v0

    :cond_5d
    if-nez p2, :cond_61

    if-eqz p1, :cond_71

    :cond_61
    if-eqz v0, :cond_69

    .line 9240
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_71

    :cond_69
    if-eqz v1, :cond_73

    .line 9241
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result v0

    if-ne v0, v2, :cond_73

    :cond_71
    :goto_71
    move v2, v5

    goto :goto_a5

    .line 9245
    :cond_73
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p2, p1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mDexCompatCustomSize:Landroid/graphics/Point;

    :goto_7a
    move v2, v4

    goto :goto_a5

    :cond_7c
    if-eqz p2, :cond_9f

    .line 9248
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_9f

    .line 9250
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 9251
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_8f

    goto :goto_71

    .line 9254
    :cond_8f
    new-instance p2, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 9255
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-direct {p2, v0, p1}, Landroid/graphics/Point;-><init>(II)V

    iput-object p2, p0, Lcom/android/server/wm/Task;->mDexCompatCustomSize:Landroid/graphics/Point;

    goto :goto_7a

    .line 9258
    :cond_9f
    iget p1, p0, Lcom/android/server/wm/Task;->mDexCompatUiMode:I

    if-nez p1, :cond_a4

    goto :goto_a5

    :cond_a4
    move v2, v3

    .line 9262
    :goto_a5
    iget p1, p0, Lcom/android/server/wm/Task;->mDexCompatUiMode:I

    if-eq p1, v2, :cond_ad

    if-eqz v2, :cond_ad

    .line 9263
    iput v2, p0, Lcom/android/server/wm/Task;->mDexCompatUiMode:I

    :cond_ad
    if-eqz p3, :cond_ca

    .line 9267
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isDexCompatEnabled()Z

    move-result p1

    if-eqz p1, :cond_ca

    .line 9268
    new-instance p1, Landroid/content/res/Configuration;

    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    .line 9269
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 9270
    iput v4, p1, Landroid/content/res/Configuration;->dexCompatEnabled:I

    .line 9271
    iget p2, p0, Lcom/android/server/wm/Task;->mDexCompatUiMode:I

    iput p2, p1, Landroid/content/res/Configuration;->dexCompatUiMode:I

    .line 9272
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_ca
    :goto_ca
    return-void
.end method

.method public final updateDexMetaData(Landroid/content/pm/ActivityInfo;)V
    .registers 2

    if-eqz p1, :cond_8

    .line 9162
    invoke-static {p1}, Lcom/android/server/wm/DexController;->parseDexMetadata(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/DexController$DexMetaDataInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/Task;->mDexMetaDataInfo:Lcom/android/server/wm/DexController$DexMetaDataInfo;

    :cond_8
    return-void
.end method

.method public updateEffectiveIntent()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    .line 2369
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getRootActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 2371
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 2373
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    :cond_d
    return-void
.end method

.method public updateInternalPresentationOnly(ZZ)V
    .registers 4

    if-eqz p2, :cond_1e

    const/4 p1, 0x0

    .line 9300
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_e

    .line 9302
    invoke-virtual {p2, v0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object p1

    :cond_e
    if-eqz p1, :cond_1d

    .line 9305
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 p2, -0x80000000

    and-int/2addr p1, p2

    if-eqz p1, :cond_1d

    const/4 p1, 0x1

    goto :goto_1e

    :cond_1d
    move p1, v0

    .line 9308
    :cond_1e
    :goto_1e
    iget-boolean p2, p0, Lcom/android/server/wm/Task;->mSetInternalPresentationOnly:Z

    if-eq p1, p2, :cond_3e

    .line 9309
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mSetInternalPresentationOnly:Z

    .line 9310
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p2

    if-eqz p2, :cond_31

    .line 9312
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/view/SurfaceControl$Transaction;->setInternalPresentationOnly(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 9314
    :cond_31
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result p2

    if-eqz p2, :cond_3e

    .line 9315
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->updatePipWithInternalPresentationOnly(Z)V

    :cond_3e
    return-void
.end method

.method public updateMinMaxSizeIfNeeded()V
    .registers 8

    .line 8987
    iget-object v0, p0, Lcom/android/server/wm/Task;->mMinDimensions:Landroid/graphics/Point;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->equals(II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 8988
    iget-object v2, p0, Lcom/android/server/wm/Task;->mMaxDimensions:Landroid/graphics/Point;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/Point;->equals(II)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v0, :cond_1e

    if-nez v2, :cond_1e

    .line 8991
    iput v1, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    iput v1, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    .line 8992
    iput v1, p0, Lcom/android/server/wm/Task;->mMaxHeight:I

    iput v1, p0, Lcom/android/server/wm/Task;->mMaxWidth:I

    return-void

    .line 8996
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 8997
    iget-boolean v4, v3, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v4, :cond_2f

    .line 8998
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    goto :goto_37

    .line 8999
    :cond_2f
    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    :goto_37
    int-to-float v3, v3

    .line 9001
    iget-object v4, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_4b

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.server.wm.app"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 9002
    sget v3, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float v3, v3

    .line 9005
    :cond_4b
    iget v4, p0, Lcom/android/server/wm/Task;->mLastDensityDpi:F

    cmpl-float v4, v4, v3

    const-string v5, "ActivityTaskManager"

    if-eqz v4, :cond_c4

    .line 9006
    iput v3, p0, Lcom/android/server/wm/Task;->mLastDensityDpi:F

    .line 9010
    iget-object v4, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowManagerService;->getInitialDisplayDensity(I)I

    move-result v4

    int-to-float v4, v4

    const/4 v6, 0x0

    cmpg-float v6, v4, v6

    if-gtz v6, :cond_7f

    .line 9013
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateMinMaxSizeIfNeeded: packageBaseDensity="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", Error"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7f
    div-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    if-eqz v0, :cond_9f

    .line 9019
    iget-object v0, p0, Lcom/android/server/wm/Task;->mMinDimensions:Landroid/graphics/Point;

    iget v5, v0, Landroid/graphics/Point;->x:I

    if-gez v5, :cond_8c

    move v5, v1

    goto :goto_90

    :cond_8c
    int-to-float v5, v5

    mul-float/2addr v5, v3

    add-float/2addr v5, v4

    float-to-int v5, v5

    .line 9020
    :goto_90
    iput v5, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    .line 9021
    iget v0, v0, Landroid/graphics/Point;->y:I

    if-gez v0, :cond_98

    move v0, v1

    goto :goto_9c

    :cond_98
    int-to-float v0, v0

    mul-float/2addr v0, v3

    add-float/2addr v0, v4

    float-to-int v0, v0

    .line 9022
    :goto_9c
    iput v0, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    goto :goto_a3

    .line 9024
    :cond_9f
    iput v1, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    iput v1, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    :goto_a3
    if-eqz v2, :cond_bf

    .line 9027
    iget-object v0, p0, Lcom/android/server/wm/Task;->mMaxDimensions:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    if-gez v2, :cond_ad

    move v2, v1

    goto :goto_b1

    :cond_ad
    int-to-float v2, v2

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    .line 9028
    :goto_b1
    iput v2, p0, Lcom/android/server/wm/Task;->mMaxWidth:I

    .line 9029
    iget v0, v0, Landroid/graphics/Point;->y:I

    if-gez v0, :cond_b8

    goto :goto_bc

    :cond_b8
    int-to-float v0, v0

    mul-float/2addr v0, v3

    add-float/2addr v0, v4

    float-to-int v1, v0

    .line 9030
    :goto_bc
    iput v1, p0, Lcom/android/server/wm/Task;->mMaxHeight:I

    goto :goto_db

    .line 9032
    :cond_bf
    iput v1, p0, Lcom/android/server/wm/Task;->mMaxHeight:I

    iput v1, p0, Lcom/android/server/wm/Task;->mMaxWidth:I

    goto :goto_db

    .line 9035
    :cond_c4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateMinMaxSizeIfNeeded: new density equals last density. mLastDensityDpi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/Task;->mLastDensityDpi:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_db
    return-void
.end method

.method public updateOverlayInsetsState(Lcom/android/server/wm/WindowState;)V
    .registers 3

    .line 8408
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->updateOverlayInsetsState(Lcom/android/server/wm/WindowState;)V

    .line 8409
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eq p1, v0, :cond_a

    return-void

    .line 8412
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    .line 8413
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->getInsetsState(Z)Landroid/view/InsetsState;

    move-result-object p1

    .line 8414
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 8415
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

    iget-object p0, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p0}, Lcom/android/server/wm/TrustedOverlayHost;->dispatchInsetsChanged(Landroid/view/InsetsState;Landroid/graphics/Rect;)V

    :cond_1f
    return-void
.end method

.method public updateOverrideConfigurationFromLaunchBounds()Landroid/graphics/Rect;
    .registers 3

    .line 3004
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eq v0, p0, :cond_e

    .line 3005
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    goto :goto_12

    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 3006
    :goto_12
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    if-eqz v0, :cond_24

    .line 3007
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_24

    .line 3010
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_24
    return-object v0
.end method

.method public final updateShadowsRadius(ZLandroid/view/SurfaceControl$Transaction;)V
    .registers 4

    .line 5549
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 5551
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_28

    .line 5552
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_28

    .line 5557
    :cond_13
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->getShadowRadius(Z)F

    move-result p1

    .line 5558
    iget v0, p0, Lcom/android/server/wm/Task;->mShadowRadius:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_28

    .line 5559
    iput p1, p0, Lcom/android/server/wm/Task;->mShadowRadius:F

    .line 5560
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    iget p0, p0, Lcom/android/server/wm/Task;->mShadowRadius:F

    invoke-virtual {p2, p1, p0}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_28
    :goto_28
    return-void
.end method

.method public final updateSurfaceBounds()V
    .registers 2

    .line 7828
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    .line 7829
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->updateSurfacePositionNonOrganized()V

    .line 7830
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    return-void
.end method

.method public updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V
    .registers 6

    .line 2885
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_49

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2886
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_49

    .line 2895
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2896
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2897
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 2898
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_26

    :cond_25
    move v0, v1

    .line 2900
    :goto_26
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mLastSurfaceSize:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    if-ne v1, v3, :cond_31

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-ne v0, v2, :cond_31

    return-void

    .line 2904
    :cond_31
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 2907
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    goto :goto_43

    .line 2910
    :cond_3e
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 2912
    :goto_43
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mLastSurfaceSize:Landroid/graphics/Point;

    invoke-virtual {p0, v1, v0}, Landroid/graphics/Point;->set(II)V

    return-void

    .line 2887
    :cond_49
    :goto_49
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mLastSurfaceSize:Landroid/graphics/Point;

    iput v1, p0, Landroid/graphics/Point;->x:I

    .line 2888
    iput v1, p0, Landroid/graphics/Point;->y:I

    return-void
.end method

.method public updateTaskDescription()V
    .registers 5

    const/4 v0, 0x1

    .line 2301
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getRootActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_8

    return-void

    .line 2304
    :cond_8
    new-instance v1, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v1}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    .line 2305
    new-instance v2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda41;

    invoke-direct {v2}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda41;-><init>()V

    const-class v3, Lcom/android/server/wm/ActivityRecord;

    .line 2307
    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    .line 2305
    invoke-static {v2, v3, v0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Lcom/android/internal/util/function/TriPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    .line 2308
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;)Z

    .line 2309
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 2310
    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager$TaskDescription;->setResizeMode(I)V

    .line 2311
    iget v0, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager$TaskDescription;->setMinWidth(I)V

    .line 2312
    iget v0, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager$TaskDescription;->setMinHeight(I)V

    .line 2313
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 2314
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    .line 2315
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    .line 2314
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskDescriptionChanged(Landroid/app/TaskInfo;)V

    .line 2317
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 2319
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 2321
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    :cond_50
    const/4 v0, 0x0

    .line 2325
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    return-void
.end method

.method public updateTaskMovement(ZI)V
    .registers 4

    .line 1706
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v0, p1, p2}, Lcom/android/server/wm/EventLogTags;->writeWmTaskMoved(III)V

    .line 1707
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p2

    if-eqz p2, :cond_14

    .line 1708
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1709
    invoke-virtual {p2, p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->onLeafTaskMoved(Lcom/android/server/wm/Task;Z)V

    .line 1711
    :cond_14
    iget-boolean p1, p0, Lcom/android/server/wm/Task;->isPersistable:Z

    if-eqz p1, :cond_1e

    .line 1712
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/wm/Task;->mLastTimeMoved:J

    :cond_1e
    return-void
.end method

.method public updateTaskOrganizerState()Z
    .registers 2

    const/4 v0, 0x0

    .line 5450
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->updateTaskOrganizerState(Z)Z

    move-result p0

    return p0
.end method

.method public updateTaskOrganizerState(Z)Z
    .registers 5

    .line 5461
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 5466
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->canBeOrganized()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 p1, 0x0

    .line 5467
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setTaskOrganizer(Landroid/window/ITaskOrganizer;)Z

    move-result p0

    return p0

    .line 5470
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 5471
    invoke-virtual {v0}, Lcom/android/server/wm/TaskOrganizerController;->getTaskOrganizer()Landroid/window/ITaskOrganizer;

    move-result-object v0

    .line 5474
    iget-boolean v2, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz v2, :cond_2b

    if-eqz v0, :cond_2b

    if-eq v2, v0, :cond_2b

    return v1

    .line 5478
    :cond_2b
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/Task;->setTaskOrganizer(Landroid/window/ITaskOrganizer;Z)Z

    move-result p0

    return p0
.end method

.method public final updateTransitLocked(ILandroid/app/ActivityOptions;)V
    .registers 5

    if-eqz p2, :cond_17

    .line 7043
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 7044
    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 7045
    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    goto :goto_17

    .line 7047
    :cond_14
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 7050
    :cond_17
    :goto_17
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    return-void
.end method

.method public updateWindowFocusInTask()V
    .registers 4

    .line 9535
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mHasWindowFocus:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->needsWindowFocusInTask()Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 9537
    :goto_e
    iget-boolean v2, p0, Lcom/android/server/wm/Task;->mLastDispatchedWindowFocusInTask:Z

    if-eq v2, v0, :cond_1c

    .line 9538
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mLastDispatchedWindowFocusInTask:Z

    .line 9539
    new-instance v2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda45;

    invoke-direct {v2, v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda45;-><init>(Z)V

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    :cond_1c
    return-void
.end method

.method public final warnForNonLeafTask(Ljava/lang/String;)V
    .registers 3

    .line 7852
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 7853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " on non-leaf task "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", caller="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    .line 7855
    invoke-static {p0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    .line 7853
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    return-void
.end method

.method public willActivityBeVisible(Landroid/os/IBinder;)Z
    .registers 3

    .line 7392
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_8

    return p1

    .line 7397
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible()Z

    move-result v0

    if-nez v0, :cond_f

    return p1

    .line 7399
    :cond_f
    iget-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz p1, :cond_2a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "willActivityBeVisible: Returning false, would have returned true for r="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActivityTaskManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7401
    :cond_2a
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 2945
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 2946
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2947
    iget v0, p0, Lcom/android/server/wm/Task;->mUserId:I

    const-wide v1, 0x10500000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2948
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 2949
    iget-object p0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    goto :goto_31

    :cond_2f
    const-string p0, "Task"

    :goto_31
    const-wide v0, 0x10900000003L

    .line 2948
    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2950
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
