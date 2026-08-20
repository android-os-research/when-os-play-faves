.class public Lcom/android/server/wm/RootWindowContainer;
.super Lcom/android/server/wm/WindowContainer;
.source "RootWindowContainer.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;,
        Lcom/android/server/wm/RootWindowContainer$RankTaskLayersRunnable;,
        Lcom/android/server/wm/RootWindowContainer$SleepToken;,
        Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;,
        Lcom/android/server/wm/RootWindowContainer$MyHandler;,
        Lcom/android/server/wm/RootWindowContainer$FindTaskResult;,
        Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;,
        Lcom/android/server/wm/RootWindowContainer$AnyTaskForIdMatchTaskMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/WindowContainer<",
        "Lcom/android/server/wm/DisplayContent;",
        ">;",
        "Landroid/hardware/display/DisplayManager$DisplayListener;"
    }
.end annotation


# static fields
.field public static final DISPLAY_OFF_SLEEP_TOKEN_TAG:Ljava/lang/String; = "Display-off"

.field public static final MATCH_ATTACHED_TASK_ONLY:I = 0x0

.field public static final MATCH_ATTACHED_TASK_OR_RECENT_TASKS:I = 0x1

.field public static final MATCH_ATTACHED_TASK_OR_RECENT_TASKS_AND_RESTORE:I = 0x2

.field public static final SET_DEX_DISPLAY_USER_ACTIVITY_TIMEOUT:I = 0xa

.field public static final SET_SCREEN_BRIGHTNESS_OVERRIDE:I = 0x1

.field public static final SET_SCREEN_DIM_DURATION:I = 0xb

.field public static final SET_USER_ACTIVITY_TIMEOUT:I = 0x2

.field public static final TAG:Ljava/lang/String; = "WindowManager"

.field public static final TAG_RECENTS:Ljava/lang/String; = "WindowManager"

.field public static final TAG_STATES:Ljava/lang/String; = "WindowManager"

.field public static final TAG_TASKS:Ljava/lang/String; = "WindowManager"

.field public static final sRemoveReplacedWindowsConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mAttachApplicationHelper:Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;

.field public final mCloseSystemDialogsConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field public mCloseSystemDialogsReason:Ljava/lang/String;

.field public mCurrentUser:I

.field public mDeXUserActivityTimeout:J

.field public mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

.field public mDefaultMinSizeOfResizeableTaskDp:I

.field public mDestroyAllActivitiesReason:Ljava/lang/String;

.field public final mDestroyAllActivitiesRunnable:Ljava/lang/Runnable;

.field public final mDestroyTargetAllActivitiesRunnable:Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;

.field public final mDisplayAccessUIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/IntArray;",
            ">;"
        }
    .end annotation
.end field

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public final mDisplayOffTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

.field public final mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

.field public mFinishDisabledPackageActivitiesHelper:Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;

.field public final mHandler:Landroid/os/Handler;

.field public mHoldDexScreen:Lcom/android/server/wm/Session;

.field public mHoldDexScreenWindow:Lcom/android/server/wm/WindowState;

.field public mHoldScreen:Lcom/android/server/wm/Session;

.field public mHoldScreenWindow:Lcom/android/server/wm/WindowState;

.field public mLastWindowFreezeSource:Ljava/lang/Object;

.field public mObscureApplicationContentOnSecondaryDisplays:Z

.field public mObscuringDexScreenWindow:Lcom/android/server/wm/WindowState;

.field public mObscuringWindow:Lcom/android/server/wm/WindowState;

.field public mOrientationChangeComplete:Z

.field public mPerfBoost:Landroid/util/BoostFramework;

.field public final mRankTaskLayersRunnable:Lcom/android/server/wm/RootWindowContainer$RankTaskLayersRunnable;

.field public mScreenBrightnessOverride:F

.field public mScreenDimDuration:J

.field public mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mSleepTokens:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/RootWindowContainer$SleepToken;",
            ">;"
        }
    .end annotation
.end field

.field public mSustainedPerformanceModeCurrent:Z

.field public mSustainedPerformanceModeEnabled:Z

.field public mTaskLayersChanged:Z

.field public mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public final mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

.field public mTmpTaskLayerRank:I

.field public final mTopFocusedAppByProcess:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mTopFocusedDisplayId:I

.field public mUpdateRotation:Z

.field public mUserActivityTimeout:J

.field public mUserRootTaskInFront:Landroid/util/SparseIntArray;

.field public mWallpaperActionPending:Z

.field public mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$-3irvApYkzPx3a7ofFGo6g21S68(Landroid/util/ArraySet;ZLcom/android/server/wm/WindowState;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->lambda$updateHiddenWhileSuspendedState$4(Landroid/util/ArraySet;ZLcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$-lDEeztln0MnkAMy9TsYazmzHBw(ILcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->lambda$lockAllProfileTasks$37(ILcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$2k3zC_nv2SZ_nI8-ixMORvQU-jI(Lcom/android/server/wm/ActivityRecord;IZLandroid/content/Intent;Landroid/content/ComponentName;)Z
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/wm/RootWindowContainer;->matchesActivity(Lcom/android/server/wm/ActivityRecord;IZLandroid/content/Intent;Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$4B2gdwd09G7T4W5Q7C1FjmAZHGI(Lcom/android/server/wm/RootWindowContainer;ILcom/android/server/wm/Task;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->lambda$lockAllProfileTasks$38(ILcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4gCTEucWBVcwoFBz8ZTyncHFYkw(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/am/AppTimeTracker;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->clearOtherAppTimeTrackers(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/am/AppTimeTracker;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4nB35TzseTo6qyVD9NxDieoJN1Y(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;Lcom/android/server/wm/Task;[Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/wm/RootWindowContainer;->lambda$finishTopCrashedActivities$19(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;Lcom/android/server/wm/Task;[Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5qcNuBOnN7JbD8iIxllG-22wTSI([ZLjava/io/PrintWriter;Ljava/io/FileDescriptor;ZZLjava/lang/String;[ZLcom/android/server/wm/Task;)V
    .registers 8

    invoke-static/range {p0 .. p7}, Lcom/android/server/wm/RootWindowContainer;->lambda$dumpActivities$43([ZLjava/io/PrintWriter;Ljava/io/FileDescriptor;ZZLjava/lang/String;[ZLcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6bBUEGnHZga9lCDEhywWsBdcBmA(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicReference;Lcom/android/server/wm/Task;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wm/RootWindowContainer;->lambda$findActivityLockedByPackage$49(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicReference;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$87Uf5AKzlIbQuF9GALZTvnWLELA(Lcom/android/server/wm/DisplayContent;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/RootWindowContainer;->lambda$performSurfacePlacementNoTrace$9(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8HSZwYnfl8313fKhktKYx5u9_ck(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->lambda$rankTaskLayers$28(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9PHWaCQV_Qzf7tMIoErn2RmKBwk(Lcom/android/server/wm/RootWindowContainer;ZLcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Task;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/RootWindowContainer;->lambda$applySleepTokens$22(ZLcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AJ98l6Vu0VhEpmfv30jgOxfPyik(Lcom/android/server/wm/RootWindowContainer;ILjava/lang/String;ZZILcom/android/server/wm/TaskDisplayArea;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/wm/RootWindowContainer;->lambda$startHomeOnDisplay$13(ILjava/lang/String;ZZILcom/android/server/wm/TaskDisplayArea;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BStBZNSyOGbR92WvSMSchX44gOY(Lcom/android/server/wm/RootWindowContainer;Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->lambda$getAllRootTaskInfos$24(Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EWATV8JB6mK4DDDyJr7E6Z1K3LM(Landroid/util/ArrayMap;Lcom/android/server/wm/DisplayContent;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->lambda$updateDisplayImePolicyCache$26(Landroid/util/ArrayMap;Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EmYkrp6InuDhMKUJrCYyixlaL-U(Z[ZZLcom/android/server/wm/Task;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wm/RootWindowContainer;->lambda$putTasksToSleep$30(Z[ZZLcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FLmzhr01j2GERvqrf-mKQKpEFpE(Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ApplicationInfo;ILjava/lang/String;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wm/RootWindowContainer;->updateActivityApplicationInfo(Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ApplicationInfo;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GsYGvZBeVnD2eMPA-Op2K-EPXSg(I[ZLcom/android/server/wm/WindowState;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->lambda$hasVisibleWindowAboveButDoesNotOwnNotificationShade$33(I[ZLcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$IVHEId0Cs-2qT2bxlwRCGOD2pQQ(Ljava/io/PrintWriter;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/RootWindowContainer;->lambda$dumpActivities$46(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J66vwtgPqNxMuxy2Ejv-GIQ3xTk(Lcom/android/server/policy/PermissionPolicyInternal;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->lambda$getTaskToShowPermissionDialogOn$40(Lcom/android/server/policy/PermissionPolicyInternal;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$K87bnqOsVt-MGAeR-k3XqRvJYGA(Landroid/service/voice/IVoiceInteractionSession;Lcom/android/server/wm/Task;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->lambda$finishVoiceTask$34(Landroid/service/voice/IVoiceInteractionSession;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KP2gAmoEaDb_FjyICwdtUfbJUU8(IZLjava/util/ArrayList;Ljava/lang/String;ILcom/android/server/wm/Task;)Z
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/server/wm/RootWindowContainer;->lambda$getDumpActivities$42(IZLjava/util/ArrayList;Ljava/lang/String;ILcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$M84dZ30FHM-cM3si6ToGiFOu4U0(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicReference;Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wm/RootWindowContainer;->lambda$findActivityLockedByPackage$48(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicReference;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O6DUibTK-BdNQ-g_caEKZsI1FHs([Z[ZLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wm/RootWindowContainer;->lambda$startPowerModeLaunchIfNeeded$39([Z[ZLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Rbcc9ZjfN34-jFJ4tM_GLLPARl4(Lcom/android/server/policy/PermissionPolicyInternal;ILjava/lang/String;[ILcom/android/server/wm/TaskFragment;)Z
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/wm/RootWindowContainer;->lambda$getTaskToShowPermissionDialogOn$41(Lcom/android/server/policy/PermissionPolicyInternal;ILjava/lang/String;[ILcom/android/server/wm/TaskFragment;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Rp3zfjNoJMv9njBgrjZ8YrLqBaw(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/Task;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->lambda$rankTaskLayers$29(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SkZm86xGIlltyGGulD-HVjFq3F0(Lcom/android/server/wm/RootWindowContainer;Landroid/util/SparseIntArray;Lcom/android/server/wm/WindowState;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->lambda$reclaimSomeSurfaceMemory$8(Landroid/util/SparseIntArray;Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T5O2b-2Pin2YrxYnsz1zP_DLpiQ(Lcom/android/server/wm/Task;[ZZLandroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/server/wm/RootWindowContainer;->lambda$resumeFocusedTasksTopActivities$20(Lcom/android/server/wm/Task;[ZZLandroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TLGB-ZIfWOSTenqLJp2PHXsCmXM(ILcom/android/server/wm/Task;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->lambda$switchUser$15(ILcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VIFSlJvJNIRwqNQ22wBpGMeuYX8(Lcom/android/server/wm/Task;[Z[ILcom/android/server/wm/Task;)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wm/RootWindowContainer;->lambda$getRootTaskInfo$23(Lcom/android/server/wm/Task;[Z[ILcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$WCVj2i4iRluPRIROcqjqT7W2Vxg(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/WindowState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->lambda$new$0(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YLZAlJ3sCipIy27vYwSdw4Ep3R4(Lcom/android/server/wm/Task;Landroid/app/ActivityTaskManager$RootTaskInfo;[I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->processTaskForTaskInfo(Lcom/android/server/wm/Task;Landroid/app/ActivityTaskManager$RootTaskInfo;[I)V

    return-void
.end method

.method public static synthetic $r8$lambda$aoFSLVB0Zmxzm9rA2IaScAR13uA(Ljava/io/PrintWriter;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/RootWindowContainer;->lambda$dumpActivities$47(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bxFx20sbknVcWZ42UkNWpxRO-3E(Lcom/android/server/wm/TaskFragment;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/RootWindowContainer;->lambda$applySleepTokens$21(Lcom/android/server/wm/TaskFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dzY_5PPyti-McNEUKZ8rcWHn6gs(Lcom/android/server/wm/ActivityRecord;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/RootWindowContainer;->lambda$notifyActivityPipModeChanged$17(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$g7xJqgERpOKP5qJIkrW6_LnEWPU(ILcom/android/server/wm/WindowState;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->lambda$canShowStrictModeViolation$7(ILcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$gWoHKYdy7bFdj7cbUBETA2HlotA(Ljava/util/ArrayList;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->lambda$addStartingWindowsForVisibleActivities$27(Ljava/util/ArrayList;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hd8rhh_wz-6mOMteVnS9Ao7L7XI(IZLcom/android/server/wm/WindowState;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->lambda$updateHiddenWhileProfileLockedStateLocked$5(IZLcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iEFBirbjAKCNZaSuG8MHjZ1Wrqc([ZLcom/android/server/wm/Task;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->lambda$allPausedActivitiesComplete$36([ZLcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$jXBOTzac24wF933ZWTy32fDR7B8(Lcom/android/server/wm/Task;Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->lambda$getTopVisibleActivities$14(Lcom/android/server/wm/Task;Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k4CKWylWtJsvI4Dr5mHPTp81J7U(Ljava/lang/String;Ljava/util/ArrayList;ILcom/android/server/wm/WindowState;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wm/RootWindowContainer;->lambda$getWindowsByName$2(Ljava/lang/String;Ljava/util/ArrayList;ILcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kVQNpQWec3uEB9vg6i9ER25_V00(Lcom/android/server/wm/TaskFragment;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/RootWindowContainer;->lambda$moveActivityToPinnedRootTask$16(Lcom/android/server/wm/TaskFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nnfoagbqO7z0gk61NuCizYOmTXE(Lcom/android/server/wm/WindowState;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/RootWindowContainer;->lambda$updateAppOpsState$6(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oiaUvkvfmWZXPqzNFAWu4gDtU0g(Lcom/android/server/wm/RootWindowContainer;Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->lambda$closeSystemDialogActivities$31(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p59QcVpCDJNtvMsRJBNKaYgnBHw(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->handleAppCrash(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pGASteUZRXrCwSX0HkqqwwiJOLQ(Lcom/android/server/wm/RootWindowContainer;Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->lambda$getAllRootTaskInfos$25(Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pS0h-uH4pUtkcWQ_UbL8IJ6QPLc(Ljava/util/ArrayList;Ljava/io/PrintWriter;[IZLcom/android/server/wm/WindowState;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/wm/RootWindowContainer;->lambda$dumpWindowsNoHeader$10(Ljava/util/ArrayList;Ljava/io/PrintWriter;[IZLcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vlR7JHwDJ2dJBdkmJw8S5HvCnpQ(Lcom/android/server/wm/WindowState;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/RootWindowContainer;->lambda$static$1(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wN1b2TZOrkwXSkWupB1ty3p7oT0(Lcom/android/server/wm/WindowState;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/RootWindowContainer;->lambda$refreshSecureSurfaceState$3(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xnJtlYGiZGfvSHyUhNWlXf8RU54([ZLjava/io/PrintWriter;Ljava/lang/String;[ZLcom/android/server/wm/TaskDisplayArea;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/wm/RootWindowContainer;->lambda$dumpActivities$45([ZLjava/io/PrintWriter;Ljava/lang/String;[ZLcom/android/server/wm/TaskDisplayArea;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yCxCHHY5_b22BubdqQSTbee_cQI(Lcom/android/server/wm/RootWindowContainer;Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->lambda$closeSystemDialogActivities$32(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yG981LxkGbRDUhUsjf1pYaIKlQE([ZLcom/android/server/wm/Task;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->lambda$allResumedActivitiesVisible$35([ZLcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$z67rGiRCrE3fTlVrUMT7Z9WFhA0(Lcom/android/server/wm/RootWindowContainer;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->lambda$startHomeOnEmptyDisplays$12(Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zFRSdcz8A8ypXlBGgPIWXGfxltE(ILcom/android/server/wm/WindowState;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->lambda$getDisplayContextsWithNonToastVisibleWindows$11(ILcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$zQS5fCnIkK3f5eQeRu25wMNfcAU(Ljava/io/PrintWriter;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/RootWindowContainer;->lambda$dumpActivities$44(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zRI5wOJYPePeDsvwBIjl8j4nIEA(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/ActivityRecord;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->lambda$findTask$18(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTaskLayersChanged(Lcom/android/server/wm/RootWindowContainer;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskLayersChanged:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmTaskLayersChanged(Lcom/android/server/wm/RootWindowContainer;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskLayersChanged:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdestroyActivity(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->destroyActivity(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdestroyTargetActivity(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/RootWindowContainer;->destroyTargetActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smmakeSleepTokenKey(Ljava/lang/String;I)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->makeSleepTokenKey(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 572
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/android/server/wm/RootWindowContainer;->sRemoveReplacedWindowsConsumer:Ljava/util/function/Consumer;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 8

    .line 580
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    const/4 v0, 0x0

    .line 220
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mLastWindowFreezeSource:Ljava/lang/Object;

    .line 221
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 222
    iput v1, p0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightnessOverride:F

    const-wide/16 v1, -0x1

    .line 223
    iput-wide v1, p0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    .line 225
    iput-wide v1, p0, Lcom/android/server/wm/RootWindowContainer;->mScreenDimDuration:J

    const/4 v3, 0x0

    .line 227
    iput-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    .line 230
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    .line 232
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    .line 235
    iput-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    .line 237
    iput-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    .line 238
    iput-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    const/4 v4, 0x1

    .line 244
    iput-boolean v4, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    .line 245
    iput-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperActionPending:Z

    const/4 v3, -0x1

    .line 253
    iput v3, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    .line 256
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedAppByProcess:Landroid/util/ArrayMap;

    .line 271
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldDexScreen:Lcom/android/server/wm/Session;

    .line 272
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldDexScreenWindow:Lcom/android/server/wm/WindowState;

    .line 273
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mObscuringDexScreenWindow:Lcom/android/server/wm/WindowState;

    .line 274
    iput-wide v1, p0, Lcom/android/server/wm/RootWindowContainer;->mDeXUserActivityTimeout:J

    .line 278
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mPerfBoost:Landroid/util/BoostFramework;

    .line 309
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    .line 314
    new-instance v1, Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mUserRootTaskInFront:Landroid/util/SparseIntArray;

    .line 321
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mSleepTokens:Landroid/util/SparseArray;

    .line 325
    iput v3, p0, Lcom/android/server/wm/RootWindowContainer;->mDefaultMinSizeOfResizeableTaskDp:I

    .line 328
    iput-boolean v4, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskLayersChanged:Z

    .line 330
    new-instance v1, Lcom/android/server/wm/RootWindowContainer$RankTaskLayersRunnable;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/RootWindowContainer$RankTaskLayersRunnable;-><init>(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/RootWindowContainer$RankTaskLayersRunnable-IA;)V

    iput-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mRankTaskLayersRunnable:Lcom/android/server/wm/RootWindowContainer$RankTaskLayersRunnable;

    .line 332
    new-instance v1, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;-><init>(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper-IA;)V

    iput-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mAttachApplicationHelper:Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;

    .line 335
    new-instance v1, Lcom/android/server/wm/RootWindowContainer$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/RootWindowContainer$1;-><init>(Lcom/android/server/wm/RootWindowContainer;)V

    iput-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mDestroyAllActivitiesRunnable:Ljava/lang/Runnable;

    .line 379
    new-instance v1, Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;-><init>(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities-IA;)V

    iput-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mDestroyTargetAllActivitiesRunnable:Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;

    .line 382
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    invoke-direct {v0}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    .line 563
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda47;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda47;-><init>(Lcom/android/server/wm/RootWindowContainer;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsConsumer:Ljava/util/function/Consumer;

    .line 3673
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;-><init>(Lcom/android/server/wm/RootWindowContainer;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mFinishDisabledPackageActivitiesHelper:Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;

    .line 581
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 582
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$MyHandler;

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/RootWindowContainer$MyHandler;-><init>(Lcom/android/server/wm/RootWindowContainer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mHandler:Landroid/os/Handler;

    .line 583
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 584
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 585
    iput-object p0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 586
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Display-off"

    invoke-direct {v0, p1, v1}, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayOffTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

    return-void
.end method

.method public static clearOtherAppTimeTrackers(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/am/AppTimeTracker;)V
    .registers 3

    .line 3187
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eq v0, p1, :cond_7

    const/4 p1, 0x0

    .line 3188
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    :cond_7
    return-void
.end method

.method public static handleAppCrash(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;)V
    .registers 4

    .line 3252
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eq v0, p1, :cond_5

    return-void

    .line 3253
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  Force finishing activity "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 3254
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WindowManager"

    .line 3253
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3255
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->detachFromProcess()V

    .line 3256
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v0, 0x2

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/DisplayContent;->requestTransitionAndLegacyPrepare(II)V

    const-string p1, "handleAppCrashed"

    .line 3258
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    return-void
.end method

.method public static synthetic lambda$addStartingWindowsForVisibleActivities$27(Ljava/util/ArrayList;Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 3132
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3133
    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v1, :cond_19

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-nez v1, :cond_19

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const/4 v1, 0x1

    .line 3134
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Z)V

    .line 3135
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    return-void
.end method

.method public static synthetic lambda$allPausedActivitiesComplete$36([ZLcom/android/server/wm/Task;)Z
    .registers 9

    .line 3855
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_42

    .line 3856
    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->STOPPED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->FINISHING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 3857
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_36

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityRecord$State;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x355b0786

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v0

    aput-object p1, v6, v2

    invoke-static {v3, v4, v0, v5, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3859
    :cond_36
    sget-object p1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-virtual {p1}, Lcom/android/internal/protolog/ProtoLogGroup;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_41

    .line 3860
    aput-boolean v0, p0, v0

    goto :goto_42

    :cond_41
    return v2

    :cond_42
    :goto_42
    return v0
.end method

.method public static synthetic lambda$allResumedActivitiesVisible$35([ZLcom/android/server/wm/Task;)Z
    .registers 4

    .line 3837
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    .line 3839
    iget-boolean p1, p1, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    const/4 v1, 0x1

    if-nez p1, :cond_d

    return v1

    .line 3842
    :cond_d
    aput-boolean v1, p0, v0

    :cond_f
    return v0
.end method

.method public static synthetic lambda$applySleepTokens$21(Lcom/android/server/wm/TaskFragment;)V
    .registers 1

    .line 2810
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->awakeFromSleeping()V

    return-void
.end method

.method private synthetic lambda$applySleepTokens$22(ZLcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Task;)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 2807
    invoke-virtual {p3, v0}, Lcom/android/server/wm/Task;->goToSleepIfPossible(Z)Z

    goto :goto_2b

    .line 2809
    :cond_7
    new-instance p1, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda23;

    invoke-direct {p1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda23;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p3, p1, v1}, Lcom/android/server/wm/Task;->forAllLeafTasksAndLeafTaskFragments(Ljava/util/function/Consumer;Z)V

    .line 2820
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->isFocusedRootTaskOnDisplay()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_28

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2821
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object p0

    iget p1, p2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 2822
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result p0

    if-nez p0, :cond_28

    .line 2828
    invoke-virtual {p3, v1, v1}, Lcom/android/server/wm/Task;->resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    .line 2834
    :cond_28
    invoke-virtual {p3, v1, v0, v0}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    :goto_2b
    return-void
.end method

.method public static synthetic lambda$canShowStrictModeViolation$7(ILcom/android/server/wm/WindowState;)Z
    .registers 3

    .line 817
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    if-ne v0, p0, :cond_e

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private synthetic lambda$closeSystemDialogActivities$31(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 3612
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_e

    .line 3613
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/RootWindowContainer;->shouldCloseAssistant(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12

    :cond_e
    const/4 p0, 0x1

    .line 3614
    invoke-virtual {p2, p1, p0}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    :cond_12
    return-void
.end method

.method private synthetic lambda$closeSystemDialogActivities$32(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 3631
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_e

    .line 3632
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/RootWindowContainer;->shouldCloseAssistant(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12

    :cond_e
    const/4 p0, 0x1

    .line 3633
    invoke-virtual {p2, p1, p0}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    :cond_12
    return-void
.end method

.method public static synthetic lambda$dumpActivities$43([ZLjava/io/PrintWriter;Ljava/io/FileDescriptor;ZZLjava/lang/String;[ZLcom/android/server/wm/Task;)V
    .registers 17

    const/4 v0, 0x0

    .line 4149
    aget-boolean v1, p0, v0

    if-eqz v1, :cond_8

    .line 4150
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_8
    const/4 v8, 0x0

    move-object/from16 v2, p7

    move-object v3, p2

    move-object v4, p1

    move v5, p3

    move v6, p4

    move-object v7, p5

    .line 4152
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/Task;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;Z)Z

    move-result v1

    aput-boolean v1, p0, v0

    .line 4153
    aget-boolean v2, p6, v0

    or-int/2addr v1, v2

    aput-boolean v1, p6, v0

    return-void
.end method

.method public static synthetic lambda$dumpActivities$44(Ljava/io/PrintWriter;)V
    .registers 2

    const-string v0, "  Resumed activities in task display areas (from top to bottom):"

    .line 4158
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$dumpActivities$45([ZLjava/io/PrintWriter;Ljava/lang/String;[ZLcom/android/server/wm/TaskDisplayArea;)V
    .registers 13

    const/4 v0, 0x0

    .line 4156
    aget-boolean v1, p0, v0

    invoke-virtual {p4}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    aget-boolean v5, p3, v0

    new-instance v7, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda55;

    invoke-direct {v7, p1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda55;-><init>(Ljava/io/PrintWriter;)V

    const-string v6, "    Resumed: "

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v2 .. v7}, Lcom/android/server/wm/ActivityTaskSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;)Z

    move-result p1

    or-int/2addr p1, v1

    aput-boolean p1, p0, v0

    return-void
.end method

.method public static synthetic lambda$dumpActivities$46(Ljava/io/PrintWriter;)V
    .registers 2

    const-string v0, "  Activities waiting to finish:"

    .line 4166
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$dumpActivities$47(Ljava/io/PrintWriter;)V
    .registers 2

    const-string v0, "  Activities waiting to stop:"

    .line 4170
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$dumpWindowsNoHeader$10(Ljava/util/ArrayList;Ljava/io/PrintWriter;[IZLcom/android/server/wm/WindowState;)V
    .registers 8

    if-eqz p0, :cond_8

    .line 1499
    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1500
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Window #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-nez p3, :cond_34

    if-eqz p0, :cond_32

    goto :goto_34

    :cond_32
    move p0, v1

    goto :goto_35

    :cond_34
    :goto_34
    move p0, v0

    :goto_35
    const-string p3, "    "

    .line 1501
    invoke-virtual {p4, p1, p3, p0}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 1502
    aget p0, p2, v1

    add-int/2addr p0, v0

    aput p0, p2, v1

    :cond_3f
    return-void
.end method

.method public static synthetic lambda$findActivityLockedByPackage$48(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicReference;Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    .line 4211
    iget-object v0, p3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    iget p0, p3, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne p0, p1, :cond_17

    sget-object p0, Lcom/android/server/wm/ActivityRecord$State;->FINISHING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p3, p0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result p0

    if-nez p0, :cond_17

    .line 4212
    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_17
    return-void
.end method

.method public static synthetic lambda$findActivityLockedByPackage$49(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicReference;Lcom/android/server/wm/Task;)V
    .registers 5

    .line 4210
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {p3, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 4216
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityRecord;

    return-void
.end method

.method private synthetic lambda$findTask$18(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/ActivityRecord;
    .registers 4

    const/4 v0, 0x0

    if-ne p2, p1, :cond_4

    return-object v0

    .line 2647
    :cond_4
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->process(Lcom/android/server/wm/WindowContainer;)V

    .line 2648
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_10

    return-object p0

    :cond_10
    return-object v0
.end method

.method public static synthetic lambda$finishTopCrashedActivities$19(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;Lcom/android/server/wm/Task;[Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V
    .registers 5

    .line 2688
    invoke-virtual {p4, p0, p1}, Lcom/android/server/wm/Task;->finishTopCrashedActivityLocked(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)Lcom/android/server/wm/Task;

    move-result-object p0

    const/4 p1, 0x0

    if-eq p4, p2, :cond_b

    .line 2689
    aget-object p2, p3, p1

    if-nez p2, :cond_d

    .line 2690
    :cond_b
    aput-object p0, p3, p1

    :cond_d
    return-void
.end method

.method public static synthetic lambda$finishVoiceTask$34(Landroid/service/voice/IVoiceInteractionSession;Lcom/android/server/wm/Task;)V
    .registers 2

    .line 3777
    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    return-void
.end method

.method private synthetic lambda$getAllRootTaskInfos$24(Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .registers 3

    .line 2950
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->getRootTaskInfo(Lcom/android/server/wm/Task;)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$getAllRootTaskInfos$25(Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .registers 3

    .line 2959
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->getRootTaskInfo(Lcom/android/server/wm/Task;)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic lambda$getDisplayContextsWithNonToastVisibleWindows$11(ILcom/android/server/wm/WindowState;)Z
    .registers 3

    .line 1586
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    if-ne p0, v0, :cond_16

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result p0

    if-eqz p0, :cond_16

    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 p1, 0x7d5

    if-eq p0, p1, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public static synthetic lambda$getDumpActivities$42(IZLjava/util/ArrayList;Ljava/lang/String;ILcom/android/server/wm/Task;)Z
    .registers 8

    .line 4095
    iget v0, p5, Lcom/android/server/wm/Task;->effectiveUid:I

    const/4 v1, 0x0

    if-ne v0, p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    move p0, v1

    :goto_8
    if-eqz p1, :cond_13

    const/4 p1, 0x0

    .line 4096
    invoke-virtual {p5, p1}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    if-nez p1, :cond_13

    if-eqz p0, :cond_1a

    .line 4097
    :cond_13
    invoke-virtual {p5, p3, p4}, Lcom/android/server/wm/Task;->getDumpActivitiesLocked(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1a
    return v1
.end method

.method public static synthetic lambda$getRootTaskInfo$23(Lcom/android/server/wm/Task;[Z[ILcom/android/server/wm/Task;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p3, :cond_7

    .line 2885
    aput-boolean v0, p1, v1

    return v0

    .line 2888
    :cond_7
    aget p0, p2, v1

    add-int/2addr p0, v0

    aput p0, p2, v1

    return v1
.end method

.method public static synthetic lambda$getTaskToShowPermissionDialogOn$40(Lcom/android/server/policy/PermissionPolicyInternal;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 4059
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 4060
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PermissionPolicyInternal;->isIntentToPermissionDialog(Landroid/content/Intent;)Z

    move-result p0

    if-nez p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public static synthetic lambda$getTaskToShowPermissionDialogOn$41(Lcom/android/server/policy/PermissionPolicyInternal;ILjava/lang/String;[ILcom/android/server/wm/TaskFragment;)Z
    .registers 12

    .line 4057
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda29;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda29;-><init>(Lcom/android/server/policy/PermissionPolicyInternal;)V

    invoke-virtual {p4, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p4

    const/4 v0, 0x0

    if-eqz p4, :cond_3c

    .line 4062
    invoke-virtual {p4, p1}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    move-result p1

    if-eqz p1, :cond_3c

    iget-object p1, p4, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 4063
    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 4064
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    iget-object v4, p4, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iget-object v5, p4, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 4065
    invoke-virtual {p4}, Lcom/android/server/wm/WindowToken;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v3, p2

    .line 4064
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/policy/PermissionPolicyInternal;->shouldShowNotificationDialogForTask(Landroid/app/TaskInfo;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3c

    .line 4066
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    aput p0, p3, v0

    const/4 p0, 0x1

    return p0

    :cond_3c
    return v0
.end method

.method public static synthetic lambda$getTopVisibleActivities$14(Lcom/android/server/wm/Task;Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .registers 5

    const/4 v0, 0x0

    .line 2170
    invoke-virtual {p2, v0}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2171
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 2173
    new-instance v1, Lcom/android/server/wm/ActivityAssistInfo;

    invoke-direct {v1, v0}, Lcom/android/server/wm/ActivityAssistInfo;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    if-ne p2, p0, :cond_19

    const/4 p0, 0x0

    .line 2175
    invoke-virtual {p1, p0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1c

    .line 2177
    :cond_19
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    :goto_1c
    return-void
.end method

.method public static synthetic lambda$getWindowsByName$2(Ljava/lang/String;Ljava/util/ArrayList;ILcom/android/server/wm/WindowState;)V
    .registers 4

    if-eqz p0, :cond_16

    .line 720
    iget-object p2, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1f

    .line 721
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 723
    :cond_16
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    if-ne p0, p2, :cond_1f

    .line 724
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    :goto_1f
    return-void
.end method

.method public static synthetic lambda$hasVisibleWindowAboveButDoesNotOwnNotificationShade$33(I[ZLcom/android/server/wm/WindowState;)Z
    .registers 7

    .line 3653
    iget v0, p2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p0, :cond_e

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3654
    aput-boolean v1, p1, v2

    .line 3656
    :cond_e
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7f8

    if-ne v0, v3, :cond_21

    .line 3657
    aget-boolean p1, p1, v2

    if-eqz p1, :cond_1f

    iget p1, p2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-eq p1, p0, :cond_1f

    goto :goto_20

    :cond_1f
    move v1, v2

    :goto_20
    return v1

    :cond_21
    return v2
.end method

.method public static synthetic lambda$lockAllProfileTasks$37(ILcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 3890
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_a

    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne p1, p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private synthetic lambda$lockAllProfileTasks$38(ILcom/android/server/wm/Task;)V
    .registers 6

    .line 3881
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 3882
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v1, :cond_2b

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 3883
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.app.action.CONFIRM_DEVICE_CREDENTIAL_WITH_USER"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 3885
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getSysUiServiceComponentLocked()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3884
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    return-void

    .line 3890
    :cond_2b
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda26;

    invoke-direct {v0, p1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda26;-><init>(I)V

    invoke-virtual {p2, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_43

    .line 3892
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object p0

    .line 3893
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    .line 3892
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskProfileLocked(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_43
    return-void
.end method

.method public static synthetic lambda$moveActivityToPinnedRootTask$16(Lcom/android/server/wm/TaskFragment;)V
    .registers 2

    .line 2502
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isOrganizedTaskFragment()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2505
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->resetAdjacentTaskFragment()V

    .line 2506
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 2510
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ConfigurationContainer;->updateRequestedOverrideConfiguration(Landroid/content/res/Configuration;)V

    :cond_15
    return-void
.end method

.method private synthetic lambda$new$0(Lcom/android/server/wm/WindowState;)V
    .registers 3

    .line 564
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_b

    .line 566
    :try_start_4
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsReason:Ljava/lang/String;

    invoke-interface {p1, p0}, Landroid/view/IWindow;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_b

    :catch_b
    :cond_b
    return-void
.end method

.method public static synthetic lambda$notifyActivityPipModeChanged$17(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    const-string v0, "exit_pip"

    .line 2571
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->clearWaitForEnteringPinnedMode(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$performSurfacePlacementNoTrace$9(Lcom/android/server/wm/DisplayContent;)V
    .registers 3

    .line 1152
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 1153
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusion()Z

    .line 1154
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateKeepClearAreas()V

    .line 1155
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateTouchExcludeRegion()V

    return-void
.end method

.method public static synthetic lambda$putTasksToSleep$30(Z[ZZLcom/android/server/wm/Task;)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_d

    .line 3235
    aget-boolean p0, p1, v0

    invoke-virtual {p3, p2}, Lcom/android/server/wm/Task;->goToSleepIfPossible(Z)Z

    move-result p2

    and-int/2addr p0, p2

    aput-boolean p0, p1, v0

    goto :goto_11

    :cond_d
    const/4 p0, 0x0

    .line 3237
    invoke-virtual {p3, p0, v0, v0}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    :goto_11
    return-void
.end method

.method private synthetic lambda$rankTaskLayers$28(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 3165
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3166
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->onProcessActivityStateChanged(Lcom/android/server/wm/WindowProcessController;Z)V

    :cond_e
    return-void
.end method

.method private synthetic lambda$rankTaskLayers$29(Lcom/android/server/wm/Task;)V
    .registers 4

    .line 3156
    iget v0, p1, Lcom/android/server/wm/Task;->mLayerRank:I

    .line 3157
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 3158
    iget-boolean v1, v1, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v1, :cond_15

    .line 3159
    iget v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpTaskLayerRank:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpTaskLayerRank:I

    iput v1, p1, Lcom/android/server/wm/Task;->mLayerRank:I

    goto :goto_18

    :cond_15
    const/4 v1, -0x1

    .line 3161
    iput v1, p1, Lcom/android/server/wm/Task;->mLayerRank:I

    .line 3163
    :goto_18
    iget v1, p1, Lcom/android/server/wm/Task;->mLayerRank:I

    if-eq v1, v0, :cond_24

    .line 3164
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda30;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda30;-><init>(Lcom/android/server/wm/RootWindowContainer;)V

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    :cond_24
    return-void
.end method

.method private synthetic lambda$reclaimSomeSurfaceMemory$8(Landroid/util/SparseIntArray;Lcom/android/server/wm/WindowState;)V
    .registers 3

    .line 891
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    return-void

    .line 894
    :cond_b
    iget-object p0, p2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 895
    iget-object p2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz p2, :cond_18

    .line 896
    iget-object p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget p0, p0, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {p1, p0, p0}, Landroid/util/SparseIntArray;->append(II)V

    :cond_18
    return-void
.end method

.method public static synthetic lambda$refreshSecureSurfaceState$3(Lcom/android/server/wm/WindowState;)V
    .registers 2

    .line 786
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_d

    .line 787
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isSecureLocked()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowStateAnimator;->setSecureLocked(Z)V

    :cond_d
    return-void
.end method

.method public static synthetic lambda$resumeFocusedTasksTopActivities$20(Lcom/android/server/wm/Task;[ZZLandroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V
    .registers 8

    .line 2725
    invoke-virtual {p5}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2726
    invoke-virtual {p5}, Lcom/android/server/wm/TaskFragment;->isFocusableAndVisible()Z

    move-result v1

    if-eqz v1, :cond_44

    if-nez v0, :cond_d

    goto :goto_44

    :cond_d
    const/4 v1, 0x0

    if-ne p5, p0, :cond_16

    .line 2734
    aget-boolean p0, p1, v1

    or-int/2addr p0, p2

    aput-boolean p0, p1, v1

    return-void

    .line 2737
    :cond_16
    invoke-virtual {p5}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p2

    invoke-virtual {p2, p5}, Lcom/android/server/wm/TaskDisplayArea;->isTopRootTask(Lcom/android/server/wm/Task;)Z

    move-result p2

    if-eqz p2, :cond_3b

    sget-object p2, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    .line 2738
    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result p2

    if-eqz p2, :cond_3b

    .line 2740
    invoke-virtual {p5}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_37

    if-eqz p0, :cond_37

    .line 2741
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    if-eqz p0, :cond_37

    goto :goto_44

    .line 2750
    :cond_37
    invoke-virtual {p5, p3}, Lcom/android/server/wm/Task;->executeAppTransition(Landroid/app/ActivityOptions;)V

    goto :goto_44

    .line 2753
    :cond_3b
    aget-boolean p0, p1, v1

    invoke-virtual {v0, p4}, Lcom/android/server/wm/ActivityRecord;->makeActiveIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p2

    or-int/2addr p0, p2

    aput-boolean p0, p1, v1

    :cond_44
    :goto_44
    return-void
.end method

.method private synthetic lambda$startHomeOnDisplay$13(ILjava/lang/String;ZZILcom/android/server/wm/TaskDisplayArea;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 15

    .line 1736
    invoke-virtual {p7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p6

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnTaskDisplayArea(ILjava/lang/String;Lcom/android/server/wm/TaskDisplayArea;ZZI)Z

    move-result p0

    or-int/2addr p0, p5

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$startHomeOnEmptyDisplays$12(Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)V
    .registers 10

    .line 1707
    invoke-virtual {p2}, Lcom/android/server/wm/TaskDisplayArea;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_10

    .line 1708
    iget v2, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnTaskDisplayArea(ILjava/lang/String;Lcom/android/server/wm/TaskDisplayArea;ZZ)Z

    :cond_10
    return-void
.end method

.method public static synthetic lambda$startPowerModeLaunchIfNeeded$39([Z[ZLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;)V
    .registers 8

    .line 3991
    invoke-virtual {p3}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p3

    if-nez p3, :cond_8

    const/4 p3, 0x0

    goto :goto_a

    .line 3993
    :cond_8
    iget-object p3, p3, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    :goto_a
    const/4 v0, 0x0

    .line 3995
    aget-boolean v1, p0, v0

    const/4 v2, 0x1

    if-nez p3, :cond_12

    move v3, v2

    goto :goto_13

    :cond_12
    move v3, v0

    :goto_13
    and-int/2addr v1, v3

    aput-boolean v1, p0, v0

    if-eqz p3, :cond_24

    .line 3997
    aget-boolean p0, p1, v0

    iget-object p2, p2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 3998
    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr p2, v2

    and-int/2addr p0, p2

    aput-boolean p0, p1, v0

    :cond_24
    return-void
.end method

.method public static synthetic lambda$static$1(Lcom/android/server/wm/WindowState;)V
    .registers 2

    .line 573
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_7

    .line 575
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityRecord;->removeReplacedWindowIfNeeded(Lcom/android/server/wm/WindowState;)V

    :cond_7
    return-void
.end method

.method public static synthetic lambda$switchUser$15(ILcom/android/server/wm/Task;)V
    .registers 2

    .line 2274
    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task;->switchUser(I)V

    return-void
.end method

.method public static synthetic lambda$updateAppOpsState$6(Lcom/android/server/wm/WindowState;)V
    .registers 1

    .line 812
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->updateAppOpsState()V

    return-void
.end method

.method public static synthetic lambda$updateDisplayImePolicyCache$26(Landroid/util/ArrayMap;Lcom/android/server/wm/DisplayContent;)V
    .registers 3

    .line 3039
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getImePolicy()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic lambda$updateHiddenWhileProfileLockedStateLocked$5(IZLcom/android/server/wm/WindowState;)V
    .registers 4

    .line 803
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne p0, v0, :cond_d

    .line 804
    invoke-virtual {p2, p1}, Lcom/android/server/wm/WindowState;->setHiddenWhileProfileLockedStateLocked(Z)V

    :cond_d
    return-void
.end method

.method public static synthetic lambda$updateHiddenWhileSuspendedState$4(Landroid/util/ArraySet;ZLcom/android/server/wm/WindowState;)V
    .registers 4

    .line 794
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 795
    invoke-virtual {p2, p1}, Lcom/android/server/wm/WindowState;->setHiddenWhileSuspended(Z)V

    :cond_d
    return-void
.end method

.method public static makeSleepTokenKey(Ljava/lang/String;I)I
    .registers 3

    .line 4176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4177
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public static matchesActivity(Lcom/android/server/wm/ActivityRecord;IZLandroid/content/Intent;Landroid/content/ComponentName;)Z
    .registers 7

    .line 3278
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-eq v0, p1, :cond_c

    goto :goto_21

    :cond_c
    const/4 p1, 0x1

    if-eqz p2, :cond_18

    .line 3281
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0, p3}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_21

    return p1

    .line 3287
    :cond_18
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, p4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    return p1

    :cond_21
    :goto_21
    return v1
.end method

.method public static processTaskForTaskInfo(Lcom/android/server/wm/Task;Landroid/app/ActivityTaskManager$RootTaskInfo;[I)V
    .registers 8

    const/4 v0, 0x0

    .line 2916
    aget v1, p2, v0

    .line 2917
    iget-object v2, p1, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskIds:[I

    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    aput v3, v2, v1

    .line 2918
    iget-object v2, p1, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskNames:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2d

    .line 2919
    :cond_14
    iget-object v3, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_1d

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2d

    .line 2920
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_2a

    .line 2921
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_2d

    :cond_2a
    const-string/jumbo v3, "unknown"

    :goto_2d
    aput-object v3, v2, v1

    .line 2922
    iget-object v2, p1, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskBounds:[Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v4, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object v3

    aput-object v3, v2, v1

    .line 2923
    iget-object p1, p1, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskUserIds:[I

    iget p0, p0, Lcom/android/server/wm/Task;->mUserId:I

    aput p0, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 2924
    aput v1, p2, v0

    return-void
.end method

.method public static updateActivityApplicationInfo(Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ApplicationInfo;ILjava/lang/String;)V
    .registers 5

    .line 3770
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v0, p2, :cond_f

    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 3771
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;)V

    :cond_f
    return-void
.end method


# virtual methods
.method public acquireAppLaunchPerfLock(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6

    .line 2586
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mPerfBoost:Landroid/util/BoostFramework;

    if-nez v0, :cond_b

    .line 2587
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mPerfBoost:Landroid/util/BoostFramework;

    .line 2588
    :cond_b
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mPerfBoost:Landroid/util/BoostFramework;

    if-eqz p0, :cond_2a

    .line 2590
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_2a

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v0, :cond_2a

    const/4 v1, -0x1

    .line 2591
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x2f

    .line 2593
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 2592
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2591
    invoke-virtual {p0, v1, p1, v0}, Landroid/util/BoostFramework;->perfIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)I

    :cond_2a
    return-void
.end method

.method public addStartingWindowsForVisibleActivities()V
    .registers 3

    .line 3130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3131
    new-instance v1, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda37;

    invoke-direct {v1, v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda37;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public allPausedActivitiesComplete()Z
    .registers 4

    const/4 v0, 0x1

    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean v0, v1, v2

    .line 3854
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda36;

    invoke-direct {v0, v1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda36;-><init>([Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_12

    return v2

    :cond_12
    aget-boolean p0, v1, v2

    return p0
.end method

.method public allResumedActivitiesIdle()Z
    .registers 9

    .line 3808
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_52

    .line 3810
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 3811
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isSleeping()Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_4f

    .line 3818
    :cond_15
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_4f

    .line 3819
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->hasActivity()Z

    move-result v3

    if-nez v3, :cond_22

    goto :goto_4f

    .line 3822
    :cond_22
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 3823
    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->idle:Z

    if-nez v4, :cond_4f

    .line 3824
    :cond_2c
    sget-boolean p0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_4e

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result p0

    int-to-long v4, p0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x37ece3cd

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v0

    aput-object p0, v7, v1

    invoke-static {v2, v3, v1, v6, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4e
    return v0

    :cond_4f
    :goto_4f
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 3830
    :cond_52
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->endLaunchPowerMode(I)V

    return v1
.end method

.method public allResumedActivitiesVisible()Z
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    .line 3836
    new-instance v2, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda33;

    invoke-direct {v2, v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda33;-><init>([Z)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_12

    return v1

    :cond_12
    aget-boolean p0, v0, v1

    return p0
.end method

.method public anyTaskForId(I)Lcom/android/server/wm/Task;
    .registers 3

    const/4 v0, 0x2

    .line 3899
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public anyTaskForId(II)Lcom/android/server/wm/Task;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3903
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;
    .registers 15

    const/4 v0, 0x2

    if-eq p2, v0, :cond_e

    if-nez p3, :cond_6

    goto :goto_e

    .line 3918
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Should not specify activity options for non-restore lookup"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3922
    :cond_e
    :goto_e
    new-instance v1, Lcom/android/server/wm/AppTransition$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/server/wm/AppTransition$$ExternalSyntheticLambda3;-><init>()V

    const-class v2, Lcom/android/server/wm/Task;

    .line 3923
    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3922
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v1

    .line 3924
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v9

    .line 3925
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    const/4 v1, 0x0

    if-eqz v9, :cond_47

    if-eqz p3, :cond_46

    .line 3932
    invoke-virtual {p0, v1, p3, v9, p4}, Lcom/android/server/wm/RootWindowContainer;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_46

    .line 3933
    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eq p0, v3, :cond_46

    if-eqz p4, :cond_3c

    const/4 v0, 0x0

    :cond_3c
    move v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const-string v8, "anyTaskForId"

    move-object v2, v9

    move v4, p4

    .line 3936
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;ZIZZLjava/lang/String;)Z

    :cond_46
    return-object v9

    :cond_47
    if-nez p2, :cond_4a

    return-object v1

    .line 3950
    :cond_4a
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    const-string v2, " in recents"

    const-string v3, "WindowManager"

    if-eqz v0, :cond_69

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Looking for task id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3951
    :cond_69
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RecentTasks;->getTask(I)Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_8f

    .line 3954
    sget-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz p0, :cond_8e

    .line 3955
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\tDidn\'t find task id="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8e
    return-object v1

    :cond_8f
    const/4 v2, 0x1

    if-ne p2, v2, :cond_93

    return-object v0

    .line 3966
    :cond_93
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0, v0, p3, p4}, Lcom/android/server/wm/ActivityTaskSupervisor;->restoreRecentTaskLocked(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Z)Z

    move-result p0

    if-nez p0, :cond_b9

    .line 3967
    sget-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz p0, :cond_b8

    .line 3968
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Couldn\'t restore task id="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " found in recents"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b8
    return-object v1

    .line 3973
    :cond_b9
    sget-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz p0, :cond_d6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Restored task id="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " from in recents"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d6
    return-object v0
.end method

.method public applySleepTokens(Z)V
    .registers 6

    .line 2791
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_2a

    .line 2793
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 2794
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->shouldSleep()Z

    move-result v2

    .line 2795
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isSleeping()Z

    move-result v3

    if-ne v2, v3, :cond_19

    goto :goto_27

    .line 2798
    :cond_19
    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->setIsSleeping(Z)V

    if-nez p1, :cond_1f

    goto :goto_27

    .line 2805
    :cond_1f
    new-instance v3, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda15;

    invoke-direct {v3, p0, v2, v1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/wm/RootWindowContainer;ZLcom/android/server/wm/DisplayContent;)V

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    :goto_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_2a
    return-void
.end method

.method public final applySurfaceChangesTransaction()V
    .registers 6

    const/4 v0, 0x0

    .line 1206
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    .line 1207
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    .line 1216
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1217
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 1218
    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 1219
    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1220
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz v2, :cond_1e

    .line 1221
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2, v1, v0, v3}, Lcom/android/server/wm/Watermark;->positionSurface(IILandroid/view/SurfaceControl$Transaction;)V

    .line 1223
    :cond_1e
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    if-eqz v2, :cond_29

    .line 1224
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2, v1, v0, v3}, Lcom/android/server/wm/StrictModeFlash;->positionSurface(IILandroid/view/SurfaceControl$Transaction;)V

    .line 1226
    :cond_29
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    if-eqz v3, :cond_38

    .line 1228
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayRotation()I

    move-result v2

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1227
    invoke-virtual {v3, v1, v0, v2, v4}, Lcom/android/server/wm/EmulatorDisplayOverlay;->positionSurface(IIILandroid/view/SurfaceControl$Transaction;)V

    .line 1231
    :cond_38
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_3f
    if-ge v1, v0, :cond_4f

    .line 1233
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 1234
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->applySurfaceChangesTransaction()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    .line 1239
    :cond_4f
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->performTraversal(Landroid/view/SurfaceControl$Transaction;)V

    .line 1240
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {p0}, Landroid/view/SurfaceControl;->mergeToGlobalTransaction(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public attachApplication(Lcom/android/server/wm/WindowProcessController;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2217
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mAttachApplicationHelper:Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->process(Lcom/android/server/wm/WindowProcessController;)Z

    move-result p1
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_c

    .line 2219
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mAttachApplicationHelper:Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->reset()V

    return p1

    :catchall_c
    move-exception p1

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mAttachApplicationHelper:Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->reset()V

    .line 2220
    throw p1
.end method

.method public final canLaunchOnDisplay(Lcom/android/server/wm/ActivityRecord;I)Z
    .registers 4

    const/4 p0, 0x1

    if-nez p1, :cond_4

    return p0

    .line 3537
    :cond_4
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v0

    if-nez v0, :cond_29

    .line 3538
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not allow to launch "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " on display "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :cond_29
    return p0
.end method

.method public final canLaunchOnDisplay(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z
    .registers 6

    const/4 v0, 0x0

    const-string v1, "WindowManager"

    if-nez p2, :cond_1a

    .line 3520
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "canLaunchOnDisplay(), invalid task: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 3524
    :cond_1a
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v2

    if-nez v2, :cond_35

    .line 3525
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "canLaunchOnDisplay(), Task is not attached: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 3529
    :cond_35
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->canLaunchOnDisplay(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result p0

    return p0
.end method

.method public canShowStrictModeViolation(I)Z
    .registers 3

    .line 817
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda43;

    invoke-direct {v0, p1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda43;-><init>(I)V

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

.method public canStartHomeOnDisplayArea(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Z)Z
    .registers 9

    .line 2065
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_d

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopAction:Ljava/lang/String;

    if-nez v1, :cond_d

    return v3

    .line 2072
    :cond_d
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2073
    invoke-virtual {v0, v1, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Ljava/lang/String;I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    if-nez p3, :cond_22

    if-eqz v0, :cond_22

    .line 2074
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isInstrumenting()Z

    move-result p3

    if-eqz p3, :cond_22

    return v3

    :cond_22
    const/4 p3, -0x1

    if-eqz p2, :cond_2a

    .line 2079
    invoke-virtual {p2}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v0

    goto :goto_2b

    :cond_2a
    move v0, p3

    :goto_2b
    if-eqz v0, :cond_4b

    if-eq v0, p3, :cond_36

    .line 2081
    iget-object p3, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mVr2dDisplayId:I

    if-ne v0, p3, :cond_36

    goto :goto_4b

    .line 2087
    :cond_36
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->shouldPlaceSecondaryHomeOnDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result p0

    if-nez p0, :cond_3d

    return v3

    .line 2098
    :cond_3d
    iget p0, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 p1, 0x2

    if-eq p0, p1, :cond_47

    const/4 p1, 0x3

    if-eq p0, p1, :cond_47

    move p0, v2

    goto :goto_48

    :cond_47
    move p0, v3

    :goto_48
    if-nez p0, :cond_4b

    return v3

    :cond_4b
    :goto_4b
    return v2
.end method

.method public final checkAppTransitionReady(Lcom/android/server/wm/WindowSurfacePlacer;)V
    .registers 6

    .line 1175
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_49

    .line 1176
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 1180
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isReady()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1182
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mAppTransitionController:Lcom/android/server/wm/AppTransitionController;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransitionController;->handleAppTransitionReady()V

    .line 1183
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v2, :cond_2a

    .line 1184
    iget v2, v1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-string v3, "after handleAppTransitionReady"

    invoke-virtual {p1, v3, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 1189
    :cond_2a
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isAppTransitioning()Z

    move-result v2

    if-nez v2, :cond_46

    .line 1196
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->handleAnimatingStoppedAndTransition()V

    .line 1197
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v2, :cond_46

    .line 1198
    iget v1, v1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-string v2, "after handleAnimStopAndXitionLock"

    invoke-virtual {p1, v2, v1}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    :cond_46
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_49
    return-void
.end method

.method public clearOtherAppTimeTrackers(Lcom/android/server/am/AppTimeTracker;)V
    .registers 4

    .line 3179
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda12;-><init>()V

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 3181
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 3179
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object p1

    .line 3182
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 3183
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    return-void
.end method

.method public closeSystemDialogActivities(Ljava/lang/String;)V
    .registers 3

    .line 3611
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda34;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda34;-><init>(Lcom/android/server/wm/RootWindowContainer;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public closeSystemDialogActivities(Ljava/lang/String;I)V
    .registers 4

    .line 3624
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 3626
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "closeSystemDialogActivities: cannot find display #"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3630
    :cond_1d
    new-instance p2, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda41;

    invoke-direct {p2, p0, p1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda41;-><init>(Lcom/android/server/wm/RootWindowContainer;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public closeSystemDialogs(Ljava/lang/String;)V
    .registers 3

    .line 822
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsReason:Ljava/lang/String;

    .line 823
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsConsumer:Ljava/util/function/Consumer;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public closeSystemDialogs(Ljava/lang/String;I)V
    .registers 4

    .line 829
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 831
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "closeSystemDialogs: cannot find display #"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 834
    :cond_1d
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsReason:Ljava/lang/String;

    .line 835
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsConsumer:Ljava/util/function/Consumer;

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public copyAnimToLayoutParams()Z
    .registers 7

    .line 1409
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v2, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x1

    if-eqz v3, :cond_f

    .line 1411
    iput-boolean v4, p0, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    move v3, v4

    goto :goto_10

    :cond_f
    const/4 v3, 0x0

    .line 1414
    :goto_10
    iget-boolean v5, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    if-eqz v5, :cond_1d

    .line 1415
    iget-object v1, v1, Lcom/android/server/wm/WindowAnimator;->mLastWindowFreezeSource:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mLastWindowFreezeSource:Ljava/lang/Object;

    .line 1416
    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    if-eqz v0, :cond_1d

    move v3, v4

    :cond_1d
    and-int/lit8 v0, v2, 0x2

    if-eqz v0, :cond_23

    .line 1422
    iput-boolean v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperActionPending:Z

    :cond_23
    return v3
.end method

.method public createSleepToken(Ljava/lang/String;I)Lcom/android/server/wm/RootWindowContainer$SleepToken;
    .registers 11

    .line 3065
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 3070
    invoke-static {p1, p2}, Lcom/android/server/wm/RootWindowContainer;->makeSleepTokenKey(Ljava/lang/String;I)I

    move-result v1

    .line 3071
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mSleepTokens:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/RootWindowContainer$SleepToken;

    if-nez v2, :cond_47

    .line 3073
    new-instance v2, Lcom/android/server/wm/RootWindowContainer$SleepToken;

    invoke-direct {v2, p1, p2}, Lcom/android/server/wm/RootWindowContainer$SleepToken;-><init>(Ljava/lang/String;I)V

    .line 3074
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mSleepTokens:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3075
    iget-object p0, v0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    .line 3078
    invoke-static {p2, p0, p1}, Lcom/android/server/wm/EventLogTags;->writeWmSleepToken(IILjava/lang/String;)V

    .line 3081
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_46

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    int-to-long v0, p2

    sget-object p2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x12f0a7ca

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v6, p0

    invoke-static {p2, v3, v4, v5, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_46
    return-object v2

    .line 3083
    :cond_47
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Create the same sleep token twice: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3067
    :cond_5e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid display: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final destroyActivity(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 3198
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_60

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isDestroyable()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_60

    .line 3200
    :cond_b
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_5b

    .line 3201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Destroying "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " in state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityRecord$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " resumed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3202
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " pausing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3203
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for reason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mDestroyAllActivitiesReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    .line 3201
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3207
    :cond_5b
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mDestroyAllActivitiesReason:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityRecord;->destroyImmediately(Ljava/lang/String;)Z

    :cond_60
    :goto_60
    return-void
.end method

.method public final destroyTargetActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V
    .registers 4

    .line 3217
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez p0, :cond_63

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isDestroyable()Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_63

    :cond_b
    if-eqz p2, :cond_12

    .line 3218
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eq p0, p2, :cond_12

    return-void

    .line 3222
    :cond_12
    sget-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz p0, :cond_60

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Destroying "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " in state "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityRecord$State;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " resumed="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3223
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " pausing="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3224
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " for reason "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "ActivityTaskManager"

    .line 3222
    invoke-static {p2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3226
    :cond_60
    invoke-virtual {p1, p3}, Lcom/android/server/wm/ActivityRecord;->destroyImmediately(Ljava/lang/String;)Z

    :cond_63
    :goto_63
    return-void
.end method

.method public bridge synthetic dispatchConfigurationToChild(Lcom/android/server/wm/ConfigurationContainer;Landroid/content/res/Configuration;)V
    .registers 3

    .line 207
    check-cast p1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->dispatchConfigurationToChild(Lcom/android/server/wm/DisplayContent;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public dispatchConfigurationToChild(Lcom/android/server/wm/DisplayContent;Landroid/content/res/Configuration;)V
    .registers 3

    .line 776
    iget-boolean p0, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz p0, :cond_8

    .line 778
    invoke-virtual {p1, p2}, Lcom/android/server/wm/DisplayContent;->performDisplayOverrideConfigUpdate(Landroid/content/res/Configuration;)I

    goto :goto_b

    .line 780
    :cond_8
    invoke-virtual {p1, p2}, Lcom/android/server/wm/DisplayContent;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :goto_b
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 6

    .line 4107
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 4108
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "topDisplayFocusedRootTask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4110
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_25
    if-ltz v0, :cond_33

    .line 4111
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 4112
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wm/DisplayContent;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_25

    .line 4114
    :cond_33
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public dumpActivities(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;)Z
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v13, p2

    const/4 v14, 0x1

    new-array v15, v14, [Z

    const/16 v16, 0x0

    aput-boolean v16, v15, v16

    new-array v9, v14, [Z

    aput-boolean v16, v9, v16

    .line 4140
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v14

    move v10, v1

    :goto_15
    if-ltz v10, :cond_56

    .line 4141
    invoke-virtual {v0, v10}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/server/wm/DisplayContent;

    aget-boolean v1, v15, v16

    if-eqz v1, :cond_25

    .line 4143
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_25
    const-string v1, "Display #"

    .line 4145
    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4146
    iget v1, v11, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " (activities from top to bottom):"

    .line 4147
    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4148
    new-instance v12, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda19;

    move-object v1, v12

    move-object v2, v9

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object v8, v15

    invoke-direct/range {v1 .. v8}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda19;-><init>([ZLjava/io/PrintWriter;Ljava/io/FileDescriptor;ZZLjava/lang/String;[Z)V

    invoke-virtual {v11, v12}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 4155
    new-instance v1, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda20;

    move-object/from16 v12, p5

    invoke-direct {v1, v15, v13, v12, v9}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda20;-><init>([ZLjava/io/PrintWriter;Ljava/lang/String;[Z)V

    invoke-virtual {v11, v1}, Lcom/android/server/wm/WindowContainer;->forAllTaskDisplayAreas(Ljava/util/function/Consumer;)V

    add-int/lit8 v10, v10, -0x1

    goto :goto_15

    :cond_56
    move-object/from16 v12, p5

    aget-boolean v17, v15, v16

    .line 4163
    iget-object v1, v0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    const/4 v6, 0x0

    xor-int/lit8 v7, p3, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x1

    new-instance v11, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda21;

    invoke-direct {v11, v13}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda21;-><init>(Ljava/io/PrintWriter;)V

    const/16 v18, 0x0

    const-string v4, "  "

    const-string v5, "Fin"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v9, p5

    move-object/from16 v12, v18

    invoke-static/range {v1 .. v12}, Lcom/android/server/wm/ActivityTaskSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/Runnable;Lcom/android/server/wm/Task;)Z

    move-result v1

    or-int v12, v17, v1

    aput-boolean v12, v15, v16

    .line 4167
    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    const/4 v5, 0x0

    xor-int/lit8 v6, p3, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x1

    new-instance v10, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda22;

    invoke-direct {v10, v13}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda22;-><init>(Ljava/io/PrintWriter;)V

    const/4 v11, 0x0

    const-string v3, "  "

    const-string v4, "Stop"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v8, p5

    invoke-static/range {v0 .. v11}, Lcom/android/server/wm/ActivityTaskSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/Runnable;Lcom/android/server/wm/Task;)Z

    move-result v0

    or-int/2addr v0, v12

    aput-boolean v0, v15, v16

    return v0
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 7

    const/4 v0, 0x2

    if-ne p4, v0, :cond_a

    .line 1517
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 1521
    :cond_a
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10b00000001L

    .line 1522
    invoke-super {p0, p1, v0, v1, p4}, Lcom/android/server/wm/WindowContainer;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1524
    iget-object p4, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p4}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object p4

    const-wide v0, 0x10b00000005L

    invoke-virtual {p4, p1, v0, v1}, Lcom/android/server/wm/KeyguardController;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    const-wide v0, 0x10800000006L

    .line 1525
    iget-object p4, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p4, p4, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget p0, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    .line 1526
    invoke-virtual {p4, p0}, Lcom/android/server/wm/RecentTasks;->isRecentsComponentHomeActivity(I)Z

    move-result p0

    .line 1525
    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1527
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public dumpDisplayConfigs(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    .line 4123
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Display override configurations:"

    .line 4124
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4125
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_31

    .line 4127
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 4128
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  "

    .line 4129
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4130
    iget v3, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    .line 4131
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4132
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_31
    return-void
.end method

.method public dumpDisplayContents(Ljava/io/PrintWriter;)V
    .registers 7

    const-string v0, "WINDOW MANAGER DISPLAY CONTENTS (dumpsys window displays)"

    .line 1464
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1465
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v0, :cond_25

    .line 1466
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_2a

    .line 1468
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    const-string v3, "  "

    const/4 v4, 0x1

    .line 1469
    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/DisplayContent;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_25
    const-string p0, "  NO DISPLAY"

    .line 1472
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2a
    return-void
.end method

.method public dumpLayoutNeededDisplayIds(Ljava/io/PrintWriter;)V
    .registers 6

    .line 1482
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v0, "  mLayoutNeeded on displays="

    .line 1485
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1486
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_2d

    .line 1488
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 1489
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isLayoutNeeded()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1490
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 1493
    :cond_2d
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public dumpTokens(Ljava/io/PrintWriter;Z)V
    .registers 5

    const-string v0, "  All tokens:"

    .line 1508
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1509
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_d
    if-ltz v0, :cond_1d

    .line 1510
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/DisplayContent;->dumpTokens(Ljava/io/PrintWriter;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_1d
    return-void
.end method

.method public dumpTopFocusedDisplayId(Ljava/io/PrintWriter;)V
    .registers 3

    const-string v0, "  mTopFocusedDisplayId="

    .line 1477
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1478
    iget p0, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method public dumpWindowsNoHeader(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Z",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 1498
    new-instance v2, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda51;

    invoke-direct {v2, p3, p1, v1, p2}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda51;-><init>(Ljava/util/ArrayList;Ljava/io/PrintWriter;[IZ)V

    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V
    .registers 5

    const/4 v0, 0x1

    .line 2229
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V

    return-void
.end method

.method public ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V
    .registers 7

    .line 2237
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->inActivityVisibilityUpdate()Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2238
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->isRootVisibilityUpdateDeferred()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_37

    .line 2244
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginActivityVisibilityUpdate()V

    .line 2246
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1c
    if-ltz v0, :cond_2a

    .line 2247
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 2248
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/wm/DisplayContent;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V
    :try_end_27
    .catchall {:try_start_11 .. :try_end_27} :catchall_30

    add-int/lit8 v0, v0, -0x1

    goto :goto_1c

    .line 2252
    :cond_2a
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endActivityVisibilityUpdate()V

    return-void

    :catchall_30
    move-exception p1

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endActivityVisibilityUpdate()V

    .line 2253
    throw p1

    :cond_37
    :goto_37
    return-void
.end method

.method public ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2126
    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p2, v2, :cond_a

    return v1

    .line 2136
    :cond_a
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 2139
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/DisplayContent;->updateOrientation(Lcom/android/server/wm/WindowContainer;Z)Landroid/content/res/Configuration;

    move-result-object p2

    goto :goto_16

    :cond_15
    move-object p2, v0

    :goto_16
    if-eqz p1, :cond_1b

    .line 2145
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->reportDescendantOrientationChangeIfNeeded()V

    :cond_1b
    if-eqz p1, :cond_23

    if-eqz p3, :cond_23

    if-eqz p2, :cond_23

    .line 2148
    iput-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->frozenBeforeDestroy:Z

    :cond_23
    if-eqz p0, :cond_2a

    .line 2153
    invoke-virtual {p0, p2, p1, p4, v0}, Lcom/android/server/wm/DisplayContent;->updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;)Z

    move-result p0

    return p0

    :cond_2a
    return v1
.end method

.method public executeAppTransitionForAllDisplay()V
    .registers 3

    .line 2578
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_16

    .line 2579
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 2580
    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_16
    return-void
.end method

.method public findActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/wm/ActivityRecord;
    .registers 13

    .line 3262
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 3263
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 3264
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    move-object v8, v0

    .line 3266
    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 3268
    new-instance v3, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda52;

    invoke-direct {v3}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda52;-><init>()V

    const-class v0, Lcom/android/server/wm/ActivityRecord;

    .line 3269
    invoke-static {v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v4

    .line 3270
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v7, p1

    .line 3268
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Lcom/android/internal/util/function/QuintPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object p1

    .line 3271
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    .line 3272
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    return-object p0
.end method

.method public findActivityLockedByPackage(ILjava/lang/String;)Lcom/android/server/wm/ActivityRecord;
    .registers 7

    .line 4205
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 4207
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_1e

    .line 4208
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 4209
    new-instance v3, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda3;

    invoke-direct {v3, p2, p1, v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 4222
    :cond_1e
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityRecord;

    return-object p0
.end method

.method public findTask(ILjava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .registers 21

    move-object v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    .line 2608
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v4, :cond_3a

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v12, -0x5cf64ed6

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v4, v13, v5

    const/4 v4, 0x1

    aput-object v7, v13, v4

    const/4 v4, 0x2

    aput-object v8, v13, v4

    const/4 v4, 0x3

    aput-object v9, v13, v4

    const/4 v4, 0x4

    aput-object v10, v13, v4

    invoke-static {v11, v12, v5, v6, v13}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2611
    :cond_3a
    iget-object v4, v0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    move v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-virtual {v4, p1, v8, v9, v1}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->init(ILjava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    if-eqz v2, :cond_6a

    .line 2616
    iget-object v4, v0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->process(Lcom/android/server/wm/WindowContainer;)V

    .line 2617
    iget-object v4, v0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-object v7, v4, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v7, :cond_65

    .line 2619
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SYSPERF_QC_IOP_V3_ENABLE:Z

    if-eqz v1, :cond_60

    .line 2620
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityRecord$State;

    move-result-object v1

    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    if-ne v1, v2, :cond_60

    .line 2622
    invoke-virtual {p0, v3}, Lcom/android/server/wm/RootWindowContainer;->acquireAppLaunchPerfLock(Lcom/android/server/wm/ActivityRecord;)V

    .line 2626
    :cond_60
    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealRecord:Lcom/android/server/wm/ActivityRecord;

    return-object v0

    .line 2627
    :cond_65
    iget-object v4, v4, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mCandidateRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_6a

    goto :goto_6b

    :cond_6a
    move-object v4, v6

    .line 2634
    :goto_6b
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->SYSPERF_QC_IOP_V3_ENABLE:Z

    if-eqz v7, :cond_80

    .line 2635
    iget-object v7, v0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-object v7, v7, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v7, :cond_7d

    .line 2636
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityRecord$State;

    move-result-object v7

    sget-object v8, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    if-ne v7, v8, :cond_80

    .line 2637
    :cond_7d
    invoke-virtual {p0, v3}, Lcom/android/server/wm/RootWindowContainer;->acquireAppLaunchPerfLock(Lcom/android/server/wm/ActivityRecord;)V

    .line 2642
    :cond_80
    new-instance v3, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda49;

    invoke-direct {v3, p0, v2}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda49;-><init>(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/TaskDisplayArea;)V

    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowContainer;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_8e

    return-object v2

    .line 2657
    :cond_8e
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-virtual {v2}, Lcom/android/internal/protolog/ProtoLogGroup;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_a4

    if-nez v4, :cond_a4

    .line 2658
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v2, :cond_a4

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x5204a23e

    invoke-static {v2, v3, v5, v6, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_a4
    if-nez v4, :cond_de

    .line 2664
    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-string v2, "PkgPredictorService"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ipm/SecIpmManager;

    if-eqz v0, :cond_de

    .line 2666
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSecIpmManager Preload "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " dex files"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[secipm]"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2667
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2668
    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v2

    .line 2667
    invoke-virtual {v0, v3, v1, v2}, Lcom/samsung/android/ipm/SecIpmManager;->dexFilePreload(ILjava/lang/String;Ljava/lang/String;)V

    :cond_de
    return-object v4
.end method

.method public findTask(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/ActivityRecord;
    .registers 10

    .line 2601
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v1

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v0, p0

    move-object v5, p2

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/RootWindowContainer;->findTask(ILjava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public finishDisabledPackageActivities(Ljava/lang/String;Ljava/util/Set;ZZIZ)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZIZ)Z"
        }
    .end annotation

    .line 3754
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mFinishDisabledPackageActivitiesHelper:Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->process(Ljava/lang/String;Ljava/util/Set;ZZIZ)Z

    move-result p0

    return p0
.end method

.method public finishTopCrashedActivities(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)I
    .registers 6

    .line 2685
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/server/wm/Task;

    .line 2687
    new-instance v2, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda16;

    invoke-direct {v2, p1, p2, v0, v1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;Lcom/android/server/wm/Task;[Lcom/android/server/wm/Task;)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    aget-object p0, v1, p0

    if-eqz p0, :cond_17

    .line 2693
    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    goto :goto_18

    :cond_17
    const/4 p0, -0x1

    :goto_18
    return p0
.end method

.method public finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .registers 3

    .line 3776
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda13;

    invoke-direct {v0, p1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda13;-><init>(Landroid/service/voice/IVoiceInteractionSession;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public forAllDisplayPolicies(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/DisplayPolicy;",
            ">;)V"
        }
    .end annotation

    .line 1561
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1c

    .line 1562
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1c
    return-void
.end method

.method public forAllDisplays(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/DisplayContent;",
            ">;)V"
        }
    .end annotation

    .line 1555
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 1556
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public getActivityRecord(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;
    .registers 4

    .line 735
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1c

    .line 736
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 737
    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->getActivityRecord(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_19

    return-object v1

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAllRootTaskInfos(I)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityTaskManager$RootTaskInfo;",
            ">;"
        }
    .end annotation

    .line 2947
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, -0x1

    if-ne p1, v1, :cond_11

    .line 2949
    new-instance p1, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda38;

    invoke-direct {p1, p0, v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda38;-><init>(Lcom/android/server/wm/RootWindowContainer;Ljava/util/ArrayList;)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    return-object v0

    .line 2954
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    if-nez p1, :cond_18

    return-object v0

    .line 2958
    :cond_18
    new-instance v1, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda39;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda39;-><init>(Lcom/android/server/wm/RootWindowContainer;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public getCurrentInputMethodWindow()Lcom/android/server/wm/WindowState;
    .registers 3

    .line 1571
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1a

    .line 1572
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 1573
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_17

    return-object v1

    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDefaultDisplay()Lcom/android/server/wm/DisplayContent;
    .registers 1

    .line 1623
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    return-object p0
.end method

.method public getDefaultDisplayHomeActivityForUser(I)Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 1693
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->getHomeActivityForUser(I)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
    .registers 1

    .line 1633
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayContent(I)Lcom/android/server/wm/DisplayContent;
    .registers 5

    .line 1657
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_16

    .line 1658
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 1659
    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne v2, p1, :cond_13

    return-object v1

    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDisplayContent(Ljava/lang/String;)Lcom/android/server/wm/DisplayContent;
    .registers 5

    .line 1644
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_26

    .line 1645
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 1646
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->isValid()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1647
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    return-object v1

    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_26
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;
    .registers 4

    .line 1673
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 1677
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return-object v1

    .line 1681
    :cond_d
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    if-nez p1, :cond_14

    return-object v1

    .line 1687
    :cond_14
    new-instance v0, Lcom/android/server/wm/DisplayContent;

    invoke-direct {v0, p1, p0}, Lcom/android/server/wm/DisplayContent;-><init>(Landroid/view/Display;Lcom/android/server/wm/RootWindowContainer;)V

    const/high16 p1, -0x80000000

    .line 1688
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    return-object v0
.end method

.method public getDisplayContextsWithNonToastVisibleWindows(ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_3

    return-void

    .line 1584
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_b
    if-ltz v0, :cond_2a

    .line 1585
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 1586
    new-instance v2, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda50;

    invoke-direct {v2, p1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda50;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 1588
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayUiContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_2a
    return-void
.end method

.method public getDisplayUiContext(I)Landroid/content/Context;
    .registers 3

    .line 1595
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1596
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayUiContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return-object p0
.end method

.method public getDumpActivities(Ljava/lang/String;ZZI)Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZI)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_13

    .line 4082
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 4084
    invoke-virtual {p0, p1, p4}, Lcom/android/server/wm/Task;->getDumpActivitiesLocked(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    .line 4086
    :cond_d
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 4089
    :cond_13
    iget-object p3, p0, Lcom/android/server/wm/RootWindowContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p3, p3, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object p3

    if-eqz p3, :cond_22

    .line 4091
    invoke-virtual {p3}, Lcom/android/server/wm/RecentTasks;->getRecentsComponentUid()I

    move-result p3

    goto :goto_23

    :cond_22
    const/4 p3, -0x1

    :goto_23
    move v1, p3

    .line 4093
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 4094
    new-instance v6, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda28;

    move-object v0, v6

    move v2, p2

    move-object v3, p3

    move-object v4, p1

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda28;-><init>(IZLjava/util/ArrayList;Ljava/lang/String;I)V

    invoke-virtual {p0, v6}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Predicate;)Z

    return-object p3
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    const-string p0, "ROOT"

    return-object p0
.end method

.method public getNextFocusableRootTask(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;
    .registers 8

    .line 3574
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-nez v0, :cond_10

    .line 3578
    iget v0, p1, Lcom/android/server/wm/Task;->mPrevDisplayId:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 3579
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 3581
    :cond_10
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskDisplayArea;->getNextFocusableRootTask(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_17

    return-object v1

    .line 3586
    :cond_17
    iget-object v1, v0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->supportsSystemDecorations()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_21

    return-object v2

    .line 3594
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_27
    if-ltz v1, :cond_42

    .line 3595
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 3596
    iget-object v4, v0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-ne v3, v4, :cond_34

    goto :goto_3f

    .line 3600
    :cond_34
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    .line 3601
    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/TaskDisplayArea;->getNextFocusableRootTask(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_3f

    return-object v3

    :cond_3f
    :goto_3f
    add-int/lit8 v1, v1, -0x1

    goto :goto_27

    :cond_42
    return-object v2
.end method

.method public getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;ZLcom/android/server/wm/LaunchParamsController$LaunchParams;I)Lcom/android/server/wm/Task;
    .registers 21

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p6

    if-eqz v2, :cond_1a

    .line 3329
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_1a

    .line 3330
    invoke-virtual {p0, p1, v4}, Lcom/android/server/wm/RootWindowContainer;->canLaunchOnDisplay(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z

    move-result v6

    if-eqz v6, :cond_1a

    return-object v4

    :cond_1a
    const/4 v4, -0x1

    if-eqz v2, :cond_3b

    .line 3337
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v6

    if-eq v6, v4, :cond_3b

    .line 3340
    invoke-virtual {p2, v4}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    const/4 v7, 0x2

    move/from16 v8, p5

    .line 3341
    invoke-virtual {p0, v6, v7, p2, v8}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    move-result-object v7

    .line 3343
    invoke-virtual {p2, v6}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 3344
    invoke-virtual {p0, p1, v7}, Lcom/android/server/wm/RootWindowContainer;->canLaunchOnDisplay(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 3345
    invoke-virtual {v7}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0

    :cond_3b
    move/from16 v8, p5

    :cond_3d
    const/4 v6, 0x0

    if-eqz v5, :cond_45

    .line 3353
    iget-object v7, v5, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v7, :cond_45

    goto :goto_6e

    :cond_45
    if-eqz v2, :cond_6d

    .line 3356
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayArea()Landroid/window/WindowContainerToken;

    move-result-object v7

    if-eqz v7, :cond_58

    .line 3358
    invoke-virtual {v7}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/TaskDisplayArea;

    goto :goto_59

    :cond_58
    move-object v7, v6

    :goto_59
    if-nez v7, :cond_6e

    .line 3360
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v9

    if-eq v9, v4, :cond_6e

    .line 3362
    invoke-virtual {p0, v9}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    if-eqz v4, :cond_6e

    .line 3364
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    move-object v7, v4

    goto :goto_6e

    :cond_6d
    move-object v7, v6

    .line 3370
    :cond_6e
    :goto_6e
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/wm/RootWindowContainer;->resolveActivityType(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;)I

    move-result v9

    const/4 v4, 0x0

    if-eqz v7, :cond_11d

    .line 3372
    invoke-virtual {v7}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v10

    invoke-virtual {p0, p1, v10}, Lcom/android/server/wm/RootWindowContainer;->canLaunchOnDisplay(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v10

    if-eqz v10, :cond_119

    move-object/from16 v10, p4

    .line 3375
    invoke-virtual {p0, p1, p2, v10, v7}, Lcom/android/server/wm/RootWindowContainer;->needToAdjustLaunchRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v6

    if-eqz v6, :cond_106

    if-eqz v2, :cond_93

    .line 3378
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v4

    if-nez v4, :cond_93

    .line 3381
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result v4

    :cond_93
    if-eqz v3, :cond_a1

    .line 3384
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/TaskFragment;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    if-nez v6, :cond_106

    .line 3385
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result v6

    if-nez v6, :cond_106

    .line 3386
    :cond_a1
    invoke-virtual {v7, v4, p1, v3}, Lcom/android/server/wm/TaskDisplayArea;->validateWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    move-result v4

    if-nez v4, :cond_106

    if-eqz v3, :cond_c4

    .line 3391
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v4

    if-eqz v4, :cond_c4

    .line 3393
    invoke-virtual {v7, v4}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInStageType(I)Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_c4

    .line 3396
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v6

    .line 3395
    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c4

    return-object v4

    .line 3401
    :cond_c4
    invoke-virtual {v7}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootStageTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_106

    if-eqz v1, :cond_105

    .line 3403
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isLaunchAdjacent()Z

    move-result v2

    if-eqz v2, :cond_105

    iget-object v2, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_105

    .line 3405
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    move-result v2

    .line 3406
    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 3408
    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_105

    if-eqz v3, :cond_105

    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 3409
    invoke-virtual {v3, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_105

    .line 3410
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    move-result v0

    if-ne v2, v0, :cond_105

    .line 3411
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getAdjacentTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_105

    .line 3412
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getAdjacentTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0

    :cond_105
    return-object v4

    :cond_106
    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move/from16 v6, p7

    move v7, v9

    move/from16 v8, p5

    .line 3424
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/LaunchParamsController$LaunchParams;IIZ)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0

    :cond_119
    move-object/from16 v10, p4

    move-object v7, v6

    goto :goto_11f

    :cond_11d
    move-object/from16 v10, p4

    :goto_11f
    if-eqz v3, :cond_126

    .line 3435
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v11

    goto :goto_127

    :cond_126
    move-object v11, v6

    :goto_127
    if-nez v11, :cond_12f

    if-eqz v1, :cond_12f

    .line 3438
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v11

    :cond_12f
    if-eqz v5, :cond_133

    .line 3440
    iget v4, v5, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    :cond_133
    if-eqz v11, :cond_163

    .line 3443
    invoke-virtual {v11}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v7

    if-eqz v7, :cond_164

    .line 3444
    iget-object v12, v7, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v12, v12, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 3445
    invoke-virtual {p0, p1, v12}, Lcom/android/server/wm/RootWindowContainer;->canLaunchOnDisplay(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v12

    if-eqz v12, :cond_164

    .line 3448
    invoke-static {p2, p1, v3}, Lcom/android/server/wm/ForceLaunchWindowingModeUtils;->shouldApplyForceLaunchWindowingMode(Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z

    move-result v6

    if-eqz v6, :cond_14f

    .line 3449
    invoke-static {p2, p1, v3}, Lcom/android/server/wm/ForceLaunchWindowingModeUtils;->resolveForceLaunchWindowingMode(Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    move-result v4

    :cond_14f
    if-nez v4, :cond_155

    .line 3453
    invoke-virtual {v7, p1, p2, v3}, Lcom/android/server/wm/TaskDisplayArea;->resolveWindowingMode(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;)I

    move-result v4

    .line 3458
    :cond_155
    invoke-virtual {v11, v4, v9}, Lcom/android/server/wm/Task;->isCompatible(II)Z

    move-result v6

    if-nez v6, :cond_162

    iget-boolean v6, v11, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v6, :cond_163

    const/4 v6, 0x5

    if-eq v4, v6, :cond_163

    :cond_162
    return-object v11

    :cond_163
    move-object v6, v7

    :cond_164
    if-nez v6, :cond_16b

    .line 3474
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    goto :goto_16c

    :cond_16b
    move-object v0, v6

    :goto_16c
    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move/from16 v6, p7

    move v7, v9

    move/from16 v8, p5

    .line 3476
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/LaunchParamsController$LaunchParams;IIZ)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method public getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;
    .registers 13

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    .line 3306
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/RootWindowContainer;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;ZLcom/android/server/wm/LaunchParamsController$LaunchParams;I)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public getRootTask(I)Lcom/android/server/wm/Task;
    .registers 4

    .line 2842
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_18

    .line 2843
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->getRootTask(I)Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_15

    return-object v1

    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_18
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRootTask(II)Lcom/android/server/wm/Task;
    .registers 5

    .line 2853
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_18

    .line 2854
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/DisplayContent;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_15

    return-object v1

    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_18
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRootTask(III)Lcom/android/server/wm/Task;
    .registers 4

    .line 2864
    invoke-virtual {p0, p3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 2868
    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public getRootTaskInfo(I)Landroid/app/ActivityTaskManager$RootTaskInfo;
    .registers 2

    .line 2928
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getRootTask(I)Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 2930
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getRootTaskInfo(Lcom/android/server/wm/Task;)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRootTaskInfo(II)Landroid/app/ActivityTaskManager$RootTaskInfo;
    .registers 3

    .line 2936
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 2937
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getRootTaskInfo(Lcom/android/server/wm/Task;)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public getRootTaskInfo(III)Landroid/app/ActivityTaskManager$RootTaskInfo;
    .registers 4

    .line 2941
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/RootWindowContainer;->getRootTask(III)Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 2942
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getRootTaskInfo(Lcom/android/server/wm/Task;)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public final getRootTaskInfo(Lcom/android/server/wm/Task;)Landroid/app/ActivityTaskManager$RootTaskInfo;
    .registers 9

    .line 2872
    new-instance p0, Landroid/app/ActivityTaskManager$RootTaskInfo;

    invoke-direct {p0}, Landroid/app/ActivityTaskManager$RootTaskInfo;-><init>()V

    .line 2873
    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;)V

    .line 2875
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_14

    .line 2878
    iput v1, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->position:I

    goto :goto_28

    :cond_14
    new-array v4, v2, [I

    new-array v5, v2, [Z

    .line 2883
    new-instance v6, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda31;

    invoke-direct {v6, p1, v5, v4}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda31;-><init>(Lcom/android/server/wm/Task;[Z[I)V

    invoke-virtual {v0, v6, v3}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Predicate;Z)Z

    aget-boolean v0, v5, v3

    if-eqz v0, :cond_26

    aget v1, v4, v3

    .line 2891
    :cond_26
    iput v1, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->position:I

    :goto_28
    const/4 v0, 0x0

    .line 2893
    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->visible:Z

    .line 2894
    iget-object v1, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 2896
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDescendantTaskCount()I

    move-result v1

    .line 2897
    new-array v4, v1, [I

    iput-object v4, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskIds:[I

    .line 2898
    new-array v4, v1, [Ljava/lang/String;

    iput-object v4, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskNames:[Ljava/lang/String;

    .line 2899
    new-array v4, v1, [Landroid/graphics/Rect;

    iput-object v4, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskBounds:[Landroid/graphics/Rect;

    .line 2900
    new-array v1, v1, [I

    iput-object v1, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskUserIds:[I

    new-array v1, v2, [I

    aput v3, v1, v3

    .line 2903
    new-instance v2, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda32;

    invoke-direct {v2}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda32;-><init>()V

    const-class v4, Lcom/android/server/wm/Task;

    .line 2904
    invoke-static {v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v4

    .line 2903
    invoke-static {v2, v4, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v1

    .line 2906
    invoke-virtual {p1, v1, v3}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 2907
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 2909
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_6d

    .line 2910
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    :cond_6d
    iput-object v0, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getRunningTasks(ILjava/util/List;IILandroid/util/ArraySet;)V
    .registers 14
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;II",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 3980
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getRunningTasks()Lcom/android/server/wm/RunningTasks;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p0

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/RunningTasks;->getTasks(ILjava/util/List;ILcom/android/server/wm/RootWindowContainer;ILandroid/util/ArraySet;)V

    return-void
.end method

.method public getTaskToShowPermissionDialogOn(Ljava/lang/String;I)I
    .registers 7

    .line 4050
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPermissionPolicyInternal()Lcom/android/server/policy/PermissionPolicyInternal;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_a

    return v1

    :cond_a
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    .line 4056
    new-instance v1, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0, p2, p1, v2}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/policy/PermissionPolicyInternal;ILjava/lang/String;[I)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->forAllLeafTaskFragments(Ljava/util/function/Predicate;)Z

    aget p0, v2, v3

    return p0
.end method

.method public getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;
    .registers 3

    .line 2187
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_18

    .line 2188
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_15

    return-object v1

    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_18
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;
    .registers 2

    .line 645
    iget v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_9

    goto :goto_e

    :cond_9
    const/4 v0, 0x0

    .line 646
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    :goto_e
    return-object v0
.end method

.method public getTopFocusedDisplayId()I
    .registers 1

    .line 4029
    iget p0, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    return p0
.end method

.method public getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 3

    .line 2198
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 2202
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2203
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v1, :cond_13

    return-object v0

    .line 2208
    :cond_13
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityRecord;

    return-object p0
.end method

.method public getTopVisibleActivities()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/wm/ActivityAssistInfo;",
            ">;"
        }
    .end annotation

    .line 2165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2166
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 2168
    new-instance v2, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda6;

    invoke-direct {v2, v1, v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/Task;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;
    .registers 4

    .line 747
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1c

    .line 748
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 749
    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v1

    if-eqz v1, :cond_19

    return-object v1

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWindowTokenDisplay(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayContent;
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 763
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_c
    if-ltz v1, :cond_22

    .line 764
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 765
    iget-object v3, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v3

    if-ne v3, p1, :cond_1f

    return-object v2

    :cond_1f
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    :cond_22
    return-object v0
.end method

.method public getWindowsByName(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/16 v0, 0x10

    .line 709
    :try_start_2
    invoke-static {p2, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p2
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_6} :catch_b

    const/4 v0, 0x0

    move-object v1, v0

    move v0, p2

    move-object p2, v1

    goto :goto_c

    :catch_b
    const/4 v0, 0x0

    .line 714
    :goto_c
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/RootWindowContainer;->getWindowsByName(Ljava/util/ArrayList;Ljava/lang/String;I)V

    return-void
.end method

.method public final getWindowsByName(Ljava/util/ArrayList;Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 718
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda48;

    invoke-direct {v0, p2, p1, p3}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda48;-><init>(Ljava/lang/String;Ljava/util/ArrayList;I)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public handleAppCrash(Lcom/android/server/wm/WindowProcessController;)V
    .registers 4

    .line 3245
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda11;-><init>()V

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 3246
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 3245
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object p1

    .line 3247
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 3248
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    return-void
.end method

.method public handleNotObscuredLocked(Lcom/android/server/wm/WindowState;ZZ)Z
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1267
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1268
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1269
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v4

    .line 1270
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isDisplayed()Z

    move-result v5

    .line 1271
    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1284
    sget-boolean v7, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_KEEP_SCREEN_ON_enabled:Z

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v7, :cond_51

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-boolean v12, v1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isDisplayed()Z

    move-result v13

    iget-object v14, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v14, v14, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_KEEP_SCREEN_ON:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v7, v8, v10

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v8, v11

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v12, 0x2

    aput-object v7, v8, v12

    const/4 v7, 0x3

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v8, v7

    const/4 v7, 0x4

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v8, v7

    const v7, -0x1cb99646

    const/16 v12, 0x1fc

    const/4 v13, 0x0

    invoke-static {v9, v7, v12, v13, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1288
    :cond_51
    iget-boolean v7, v1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v7, :cond_a5

    if-eqz v4, :cond_a5

    .line 1290
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    const-wide/16 v7, 0x0

    if-nez p3, :cond_83

    .line 1305
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v12, v4, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    cmp-long v4, v12, v7

    if-ltz v4, :cond_83

    iget-wide v14, v0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    cmp-long v4, v14, v7

    if-gez v4, :cond_83

    .line 1306
    iput-wide v12, v0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    .line 1307
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_KEEP_SCREEN_ON_enabled:Z

    if-eqz v4, :cond_83

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_KEEP_SCREEN_ON:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, 0xd346f16

    new-array v14, v11, [Ljava/lang/Object;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v14, v10

    const/4 v12, 0x0

    invoke-static {v4, v9, v11, v12, v14}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_83
    if-nez p3, :cond_95

    .line 1313
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v12, v4, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    cmp-long v4, v12, v7

    if-ltz v4, :cond_95

    iget-wide v14, v0, Lcom/android/server/wm/RootWindowContainer;->mScreenDimDuration:J

    cmp-long v4, v14, v7

    if-gez v4, :cond_95

    .line 1314
    iput-wide v12, v0, Lcom/android/server/wm/RootWindowContainer;->mScreenDimDuration:J

    :cond_95
    if-nez p3, :cond_a5

    .line 1323
    iget-wide v7, v2, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v12, 0x146a

    cmp-long v4, v7, v12

    if-nez v4, :cond_a5

    const-wide/16 v7, -0x1

    .line 1324
    iput-wide v7, v2, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 1325
    iput-wide v7, v2, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 1330
    :cond_a5
    iget-boolean v4, v1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v4, :cond_16d

    if-eqz v5, :cond_16d

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_f9

    .line 1341
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iput-object v3, v0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    .line 1342
    iput-object v1, v0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    .line 1345
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v3, :cond_121

    .line 1349
    iget-object v3, v0, Lcom/android/server/wm/RootWindowContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v3

    if-eqz v3, :cond_121

    .line 1350
    invoke-virtual {v3}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SpegVirtualDisplay"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_121

    .line 1351
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignore FLAG_KEEP_SCREEN_ON for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SPEG"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 1353
    iput-object v3, v0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    .line 1354
    iput-object v3, v0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    .line 1355
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v4, v4, -0x81

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_121

    .line 1359
    :cond_f9
    iget-object v3, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

    if-ne v1, v3, :cond_121

    .line 1360
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_KEEP_SCREEN_ON_enabled:Z

    if-eqz v3, :cond_121

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_KEEP_SCREEN_ON:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x7c7d62da

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v10

    aput-object v4, v8, v11

    const/4 v3, 0x0

    invoke-static {v5, v7, v10, v3, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_121
    :goto_121
    if-nez p3, :cond_13a

    .line 1365
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_13a

    iget v3, v0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightnessOverride:F

    .line 1366
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_13a

    .line 1367
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v3, v0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightnessOverride:F

    .line 1370
    :cond_13a
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1373
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-eqz v3, :cond_159

    .line 1374
    iget-boolean v4, v3, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v4, :cond_159

    .line 1378
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isDreamWindow()Z

    move-result v1

    if-nez v1, :cond_156

    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowing()Z

    move-result v1

    if-eqz v1, :cond_165

    .line 1379
    :cond_156
    iput-boolean v11, v0, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    goto :goto_165

    :cond_159
    if-eqz v3, :cond_166

    .line 1382
    iget-boolean v1, v0, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    if-eqz v1, :cond_165

    if-eqz p2, :cond_166

    const/16 v1, 0x7d9

    if-ne v2, v1, :cond_166

    :cond_165
    :goto_165
    move v10, v11

    :cond_166
    const/high16 v1, 0x40000

    and-int/2addr v1, v6

    if-eqz v1, :cond_16d

    .line 1389
    iput-boolean v11, v0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    :cond_16d
    return v10
.end method

.method public final handleResizingWindows()V
    .registers 4

    .line 1247
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_30

    .line 1248
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 1249
    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v2, :cond_2d

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    if-eqz v2, :cond_23

    goto :goto_2d

    .line 1254
    :cond_23
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->reportResized()V

    .line 1255
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2d
    :goto_2d
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_30
    return-void
.end method

.method public hasAwakeDisplay()Z
    .registers 4

    .line 3295
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_18

    .line 3296
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 3297
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->shouldSleep()Z

    move-result v2

    if-nez v2, :cond_15

    return v1

    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public hasFrozenDisplay()Z
    .registers 4

    .line 4035
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_16

    .line 4036
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 4037
    iget-boolean v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayFrozen:Z

    if-eqz v2, :cond_13

    return v1

    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public hasPendingLayoutChanges(Lcom/android/server/wm/WindowAnimator;)Z
    .registers 7

    .line 854
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v1, v0, :cond_24

    .line 856
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    iget v3, v3, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_1e

    .line 858
    iget v4, p1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    :cond_1e
    if-eqz v3, :cond_21

    const/4 v2, 0x1

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_24
    return v2
.end method

.method public hasVisibleWindowAboveButDoesNotOwnNotificationShade(I)Z
    .registers 5

    const/4 v0, 0x1

    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v2

    .line 3652
    new-instance v2, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda0;-><init>(I[Z)V

    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result p0

    return p0
.end method

.method public invalidateTaskLayers()V
    .registers 2

    .line 3141
    iget-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskLayersChanged:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 3142
    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskLayersChanged:Z

    .line 3143
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mRankTaskLayersRunnable:Lcom/android/server/wm/RootWindowContainer$RankTaskLayersRunnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_10
    return-void
.end method

.method public isAttached()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isLayoutNeeded()Z
    .registers 5

    .line 695
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_1d

    .line 697
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 698
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->isLayoutNeeded()Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1d
    return v1
.end method

.method public isOnTop()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isTopDisplayFocusedRootTask(Lcom/android/server/wm/Task;)Z
    .registers 2

    if-eqz p1, :cond_a

    .line 2212
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-ne p1, p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public lockAllProfileTasks(I)V
    .registers 3

    .line 3880
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/RootWindowContainer;I)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public moveActivityToPinnedRootTask(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .registers 15

    .line 2368
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 2370
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 2373
    :try_start_9
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 2377
    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 2379
    invoke-virtual {v2}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_1b

    .line 2380
    invoke-virtual {v2, v1, v5}, Lcom/android/server/wm/TransitionController;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    goto :goto_28

    .line 2381
    :cond_1b
    invoke-virtual {v2}, Lcom/android/server/wm/TransitionController;->getTransitionPlayer()Landroid/window/ITransitionPlayer;

    move-result-object v3

    if-eqz v3, :cond_28

    const/16 v3, 0xa

    .line 2382
    invoke-virtual {v2, v3}, Lcom/android/server/wm/TransitionController;->createTransition(I)Lcom/android/server/wm/Transition;

    move-result-object v3

    goto :goto_29

    :cond_28
    :goto_28
    move-object v3, v4

    .line 2387
    :goto_29
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/Task;

    move-result-object v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v6, :cond_3b

    .line 2389
    invoke-virtual {v2, v6}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    new-array v6, v8, [I

    aput v7, v6, v5

    .line 2393
    invoke-virtual {p0, v6}, Lcom/android/server/wm/RootWindowContainer;->removeRootTasksInWindowingModes([I)V

    .line 2397
    :cond_3b
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 2398
    iget-object v6, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    invoke-virtual {v6, v1}, Lcom/android/server/wm/ChangeTransitionController;->handleMovingSplitTaskToPinned(Lcom/android/server/wm/Task;)V

    const-string/jumbo v6, "split_to_pip"

    .line 2399
    invoke-virtual {p1, v8, v6}, Lcom/android/server/wm/ActivityRecord;->setHiddenWhileEnteringPinnedMode(ZLjava/lang/String;)V

    goto :goto_66

    .line 2400
    :cond_4f
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v6

    if-eqz v6, :cond_5b

    const-string v6, "freeform_to_pip"

    .line 2401
    invoke-virtual {p1, v8, v6}, Lcom/android/server/wm/ActivityRecord;->setHiddenWhileEnteringPinnedMode(ZLjava/lang/String;)V

    goto :goto_66

    .line 2402
    :cond_5b
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v6

    if-nez v6, :cond_66

    const-string v6, "invisible_to_pip"

    .line 2403
    invoke-virtual {p1, v8, v6}, Lcom/android/server/wm/ActivityRecord;->setHiddenWhileEnteringPinnedMode(ZLjava/lang/String;)V

    .line 2409
    :cond_66
    :goto_66
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    .line 2411
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v6

    .line 2412
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getNonFinishingActivityCount()I

    move-result v9

    if-ne v9, v8, :cond_79

    move v9, v8

    goto :goto_7a

    :cond_79
    move v9, v5

    :goto_7a
    if-eqz v9, :cond_82

    .line 2418
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->maybeApplyLastRecentsAnimationTransaction()V

    move-object v9, v1

    goto/16 :goto_10b

    .line 2423
    :cond_82
    new-instance v9, Lcom/android/server/wm/Task$Builder;

    iget-object v10, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v9, v10}, Lcom/android/server/wm/Task$Builder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 2424
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/wm/Task$Builder;->setActivityType(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v9

    .line 2425
    invoke-virtual {v9, v8}, Lcom/android/server/wm/Task$Builder;->setOnTop(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v9

    iget-object v10, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 2426
    invoke-virtual {v9, v10}, Lcom/android/server/wm/Task$Builder;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/Task$Builder;

    move-result-object v9

    .line 2427
    invoke-virtual {v9, v0}, Lcom/android/server/wm/Task$Builder;->setParent(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Task$Builder;

    move-result-object v9

    iget-object v10, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 2428
    invoke-virtual {v9, v10}, Lcom/android/server/wm/Task$Builder;->setIntent(Landroid/content/Intent;)Lcom/android/server/wm/Task$Builder;

    move-result-object v9

    .line 2429
    invoke-virtual {v9, v8}, Lcom/android/server/wm/Task$Builder;->setDeferTaskAppear(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v9

    .line 2430
    invoke-virtual {v9, v8}, Lcom/android/server/wm/Task$Builder;->setHasBeenVisible(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v9

    .line 2431
    invoke-virtual {v9}, Lcom/android/server/wm/Task$Builder;->build()Lcom/android/server/wm/Task;

    move-result-object v9

    .line 2433
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->setLastParentBeforePip(Lcom/android/server/wm/ActivityRecord;)V

    .line 2437
    iget-object p2, v1, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v9, p2}, Lcom/android/server/wm/Task;->setLastNonFullscreenBounds(Landroid/graphics/Rect;)V

    .line 2438
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {v9, p2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 2441
    iget-object p2, v1, Lcom/android/server/wm/Task;->mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    if-eqz p2, :cond_cc

    .line 2442
    iget-object v10, v1, Lcom/android/server/wm/Task;->mLastRecentsAnimationOverlay:Landroid/view/SurfaceControl;

    invoke-virtual {v9, p2, v10}, Lcom/android/server/wm/Task;->setLastRecentsAnimationTransaction(Landroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V

    .line 2445
    invoke-virtual {v1, v5}, Lcom/android/server/wm/Task;->clearLastRecentsAnimationTransaction(Z)V

    :cond_cc
    if-eqz v6, :cond_dc

    .line 2451
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getNonFinishingActivityCount()I

    move-result p2

    if-ne p2, v8, :cond_dc

    .line 2452
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    if-ne p2, p1, :cond_dc

    .line 2453
    iput-boolean v8, v6, Lcom/android/server/wm/TaskFragment;->mClearedTaskFragmentForPip:Z

    :cond_dc
    const p2, 0x7fffffff

    .line 2460
    invoke-virtual {p1, v9, p2, p3}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/TaskFragment;ILjava/lang/String;)V

    .line 2463
    invoke-virtual {v9}, Lcom/android/server/wm/Task;->maybeApplyLastRecentsAnimationTransaction()V

    .line 2471
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    if-eqz p2, :cond_10b

    .line 2472
    sget-object p3, Lcom/android/server/wm/ActivityRecord$State;->STOPPED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p2, p3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result p3

    if-eqz p3, :cond_10b

    .line 2473
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p3

    iget-object p3, p3, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const/4 v10, 0x4

    invoke-virtual {p3, v10}, Lcom/android/server/wm/AppTransition;->containsTransitRequest(I)Z

    move-result p3

    if-eqz p3, :cond_10b

    .line 2475
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p3

    iget-object p3, p3, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {p3, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2476
    iput-boolean v8, p2, Lcom/android/server/wm/ActivityRecord;->mRequestForceTransition:Z

    .line 2482
    :cond_10b
    :goto_10b
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p2

    .line 2483
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p3

    if-eq p3, v0, :cond_118

    .line 2486
    invoke-virtual {v9, v0, v8}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    :cond_118
    if-eqz v3, :cond_11d

    .line 2491
    invoke-virtual {v2, v3, v9, v4, v4}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 2494
    :cond_11d
    invoke-virtual {v2, v9}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 2499
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ConfigurationContainer;->setWindowingMode(I)V

    .line 2500
    iput-boolean v8, p1, Lcom/android/server/wm/ActivityRecord;->mWaitForEnteringPinnedMode:Z

    .line 2501
    new-instance p2, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda14;

    invoke-direct {p2}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda14;-><init>()V

    invoke-virtual {v9, p2}, Lcom/android/server/wm/WindowContainer;->forAllTaskFragments(Ljava/util/function/Consumer;)V

    .line 2513
    invoke-virtual {v9, v7}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 2515
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getOptions()Landroid/app/ActivityOptions;

    move-result-object p2

    if-eqz p2, :cond_152

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getOptions()Landroid/app/ActivityOptions;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->isLaunchIntoPip()Z

    move-result p2

    if-eqz p2, :cond_152

    .line 2519
    iget-object p2, p0, Lcom/android/server/wm/RootWindowContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {p2, v1, v5}, Lcom/android/server/wm/TaskSnapshotController;->recordTaskSnapshot(Lcom/android/server/wm/Task;Z)V

    .line 2521
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getOptions()Landroid/app/ActivityOptions;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {v9, p2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 2523
    :cond_152
    invoke-virtual {v9, v5}, Lcom/android/server/wm/Task;->setDeferTaskAppear(Z)V

    .line 2527
    iput-boolean v5, p1, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    if-eqz v6, :cond_16a

    .line 2529
    iget-boolean p2, v6, Lcom/android/server/wm/TaskFragment;->mClearedTaskFragmentForPip:Z

    if-eqz p2, :cond_16a

    .line 2530
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->isTaskVisibleRequested()Z

    move-result p2

    if-eqz p2, :cond_16a

    .line 2533
    iget-object p2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-virtual {p2, v6}, Lcom/android/server/wm/TaskFragmentOrganizerController;->dispatchPendingInfoChangedEvent(Lcom/android/server/wm/TaskFragment;)V
    :try_end_16a
    .catchall {:try_start_9 .. :try_end_16a} :catchall_17d

    .line 2537
    :cond_16a
    iget-object p2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 2540
    invoke-virtual {p0, v4, v5, v5}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 2541
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 2543
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/RootWindowContainer;->notifyActivityPipModeChanged(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    return-void

    :catchall_17d
    move-exception p1

    .line 2537
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 2538
    throw p1
.end method

.method public moveRootTaskToDisplay(IIZ)V
    .registers 5

    .line 2356
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 2362
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/RootWindowContainer;->moveRootTaskToTaskDisplayArea(ILcom/android/server/wm/TaskDisplayArea;Z)V

    return-void

    .line 2358
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "moveRootTaskToDisplay: Unknown displayId="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public moveRootTaskToTaskDisplayArea(ILcom/android/server/wm/TaskDisplayArea;Z)V
    .registers 5

    .line 2319
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getRootTask(I)Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_69

    .line 2325
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    if-eqz p1, :cond_4d

    if-eqz p2, :cond_36

    if-eq p1, p2, :cond_17

    .line 2340
    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    .line 2343
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->resumeNextFocusAfterReparent()V

    return-void

    .line 2337
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Trying to move rootTask="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " to its current taskDisplayArea="

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2332
    :cond_36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "moveRootTaskToTaskDisplayArea: Unknown taskDisplayArea="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2327
    :cond_4d
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "moveRootTaskToTaskDisplayArea: rootTask="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is not attached to any task display area."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2321
    :cond_69
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "moveRootTaskToTaskDisplayArea: Unknown rootTaskId="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public needToAdjustLaunchRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskDisplayArea;)Z
    .registers 7

    .line 3484
    invoke-virtual {p4}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    if-eqz p2, :cond_33

    .line 3489
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v0

    if-nez v0, :cond_32

    .line 3490
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_17

    goto :goto_32

    .line 3494
    :cond_17
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getRemoteTransition()Landroid/window/RemoteTransition;

    move-result-object v0

    if-nez v0, :cond_2c

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->freezeRecentTasksReordering()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 3495
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object p0

    if-eqz p0, :cond_2c

    return v1

    .line 3500
    :cond_2c
    invoke-static {p2, p1}, Lcom/android/server/wm/ForceLaunchWindowingModeUtils;->shouldDismissSplitBeforeLaunch(Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_33

    :cond_32
    :goto_32
    return v1

    :cond_33
    if-eqz p3, :cond_3c

    .line 3505
    invoke-virtual {p3}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result p0

    if-eqz p0, :cond_3c

    return v1

    :cond_3c
    if-eqz p1, :cond_53

    .line 3509
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result p0

    if-nez p0, :cond_53

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    move-result p0

    if-nez p0, :cond_53

    .line 3510
    invoke-virtual {p1, p4}, Lcom/android/server/wm/ActivityRecord;->supportsSplitScreenWindowingModeInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result p0

    if-nez p0, :cond_51

    goto :goto_53

    :cond_51
    const/4 p0, 0x1

    return p0

    :cond_53
    :goto_53
    return v1
.end method

.method public notifyActivityPipModeChanged(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    move v1, v0

    :goto_6
    if-eqz v1, :cond_12

    .line 2556
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityPinned(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_1b

    .line 2558
    :cond_12
    iget-object p2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityUnpinned()V

    .line 2560
    :goto_1b
    iget-object p2, p0, Lcom/android/server/wm/RootWindowContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p2, v1}, Lcom/android/server/policy/WindowManagerPolicy;->setPipVisibilityLw(Z)V

    .line 2561
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl$Transaction;

    .line 2562
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p2

    invoke-virtual {p0, p2, v1}, Landroid/view/SurfaceControl$Transaction;->setTrustedOverlay(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    .line 2563
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2565
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    if-eqz p0, :cond_4a

    if-eqz v1, :cond_43

    .line 2566
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isInternalPresentationOnly()Z

    move-result v0

    .line 2567
    :cond_43
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->updatePipWithInternalPresentationOnly(Z)V

    :cond_4a
    if-nez v1, :cond_54

    .line 2570
    new-instance p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda25;

    invoke-direct {p0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda25;-><init>()V

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    :cond_54
    return-void
.end method

.method public onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V
    .registers 4

    .line 657
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, p1, Lcom/android/server/wm/WindowManagerService;->mPerDisplayFocusEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 659
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->updateTopResumedActivityIfNeeded()V

    return-void
.end method

.method public onDisplayAdded(I)V
    .registers 7

    .line 2966
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ROOT_TASK:Z

    if-eqz v0, :cond_1a

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display added displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2967
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_1f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2968
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-nez v1, :cond_2d

    .line 2970
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_73

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2975
    :cond_2d
    :try_start_2d
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooted()Z

    move-result v2

    if-nez v2, :cond_3d

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooting()Z

    move-result v2

    if-eqz v2, :cond_67

    :cond_3d
    if-eqz p1, :cond_64

    const-string v2, "WindowManager"

    .line 2978
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onDisplayAdded displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " display="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 2979
    invoke-virtual {v4, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2978
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2985
    :cond_64
    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->startSystemDecorations(Lcom/android/server/wm/DisplayContent;)V

    .line 2989
    :cond_67
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPossibleDisplayInfoMapper:Lcom/android/server/wm/PossibleDisplayInfoMapper;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/PossibleDisplayInfoMapper;->removePossibleDisplayInfos(I)V

    .line 2990
    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_2d .. :try_end_6f} :catchall_73

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_73
    move-exception p0

    :try_start_74
    monitor-exit v0
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onDisplayChanged(I)V
    .registers 5

    .line 3024
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ROOT_TASK:Z

    if-eqz v0, :cond_1a

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display changed displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3025
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_1f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3026
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 3028
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->onDisplayChanged()V

    .line 3032
    :cond_2b
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPossibleDisplayInfoMapper:Lcom/android/server/wm/PossibleDisplayInfoMapper;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/PossibleDisplayInfoMapper;->removePossibleDisplayInfos(I)V

    .line 3033
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->updateDisplayImePolicyCache()V

    .line 3034
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_1f .. :try_end_36} :catchall_3a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_3a
    move-exception p0

    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onDisplayRemoved(I)V
    .registers 7

    .line 3000
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ROOT_TASK:Z

    if-eqz v0, :cond_1a

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display removed displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    if-eqz p1, :cond_5b

    .line 3005
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_21
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3006
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-nez v1, :cond_2f

    .line 3008
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_55

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_2f
    :try_start_2f
    const-string v2, "WindowManager"

    .line 3013
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onDisplayRemoved, displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3017
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->remove()V

    .line 3018
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPossibleDisplayInfoMapper:Lcom/android/server/wm/PossibleDisplayInfoMapper;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/PossibleDisplayInfoMapper;->removePossibleDisplayInfos(I)V

    .line 3019
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_2f .. :try_end_51} :catchall_55

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_55
    move-exception p0

    :try_start_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 3002
    :cond_5b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t remove the primary display."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onSettingsRetrieved()V
    .registers 7

    .line 671
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_39

    .line 673
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 674
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/DisplayWindowSettings;->updateSettingsForDisplay(Lcom/android/server/wm/DisplayContent;)Z

    move-result v4

    if-nez v4, :cond_1d

    goto :goto_36

    .line 680
    :cond_1d
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    .line 685
    iget-boolean v4, v3, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v4, :cond_36

    .line 686
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 687
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    .line 686
    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v3

    .line 688
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Z)Z

    :cond_36
    :goto_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_39
    return-void
.end method

.method public performSurfacePlacement()V
    .registers 4

    const-wide/16 v0, 0x20

    const-string/jumbo v2, "performSurfacePlacement"

    .line 948
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 950
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->performSurfacePlacementNoTrace()V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_f

    .line 952
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 953
    throw p0
.end method

.method public performSurfacePlacementNoTrace()V
    .registers 15

    const-string v0, "<<< CLOSE TRANSACTION performLayoutAndPlaceSurfaces"

    const-string/jumbo v1, "performLayoutAndPlaceSurfaces"

    .line 959
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_TRACE:Z

    const/4 v3, 0x3

    const-string v4, "WindowManager"

    if-eqz v2, :cond_25

    .line 960
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "performSurfacePlacementInner: entry. Called by "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 961
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 960
    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    :cond_25
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v2, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_31

    .line 967
    iput-boolean v6, v2, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 968
    invoke-virtual {v2, v3, v6}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    :cond_31
    const/4 v2, 0x0

    .line 972
    iput-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    const/high16 v5, 0x7fc00000    # Float.NaN

    .line 973
    iput v5, p0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightnessOverride:F

    const-wide/16 v7, -0x1

    .line 974
    iput-wide v7, p0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    .line 977
    iput-wide v7, p0, Lcom/android/server/wm/RootWindowContainer;->mScreenDimDuration:J

    .line 980
    iput-boolean v6, p0, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    .line 981
    iput-boolean v6, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    .line 982
    iget-object v7, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v8, v7, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, v7, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    .line 994
    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    .line 995
    iget-object v8, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 997
    sget-boolean v10, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v10, :cond_5b

    const-string v10, ">>> OPEN TRANSACTION performLayoutAndPlaceSurfaces"

    .line 998
    invoke-static {v4, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5b
    const-wide/16 v10, 0x20

    const-string v12, "applySurfaceChanges"

    .line 1001
    invoke-static {v10, v11, v12}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1002
    iget-object v12, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 1004
    :try_start_67
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->applySurfaceChangesTransaction()V
    :try_end_6a
    .catch Ljava/lang/RuntimeException; {:try_start_67 .. :try_end_6a} :catch_7d
    .catchall {:try_start_67 .. :try_end_6a} :catchall_7a

    .line 1008
    iget-object v12, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v12, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 1009
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 1010
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_90

    .line 1011
    :goto_76
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_90

    :catchall_7a
    move-exception v2

    goto/16 :goto_24c

    :catch_7d
    move-exception v12

    :try_start_7e
    const-string v13, "Unhandled exception in Window Manager"

    .line 1006
    invoke-static {v4, v13, v12}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_83
    .catchall {:try_start_7e .. :try_end_83} :catchall_7a

    .line 1008
    iget-object v12, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v12, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 1009
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 1010
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_90

    goto :goto_76

    .line 1017
    :cond_90
    :goto_90
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskOrganizerController;->dispatchPendingEvents()V

    .line 1018
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->dispatchPendingEvents()V

    .line 1019
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v0}, Lcom/android/server/wm/BLASTSyncEngine;->onSurfacePlacement()V

    .line 1020
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowAnimator;->executeAfterPrepareSurfacesRunnables()V

    .line 1022
    invoke-virtual {p0, v8}, Lcom/android/server/wm/RootWindowContainer;->checkAppTransitionReady(Lcom/android/server/wm/WindowSurfacePlacer;)V

    .line 1025
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 1026
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    if-eqz v0, :cond_c0

    .line 1028
    iget-object v1, v7, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RecentsAnimationController;->checkAnimationReady(Lcom/android/server/wm/WallpaperController;)V

    :cond_c0
    move v0, v6

    .line 1031
    :goto_c1
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_f3

    .line 1032
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 1033
    iget-boolean v10, v1, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    if-eqz v10, :cond_f0

    .line 1034
    sget-boolean v10, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WALLPAPER_enabled:Z

    if-eqz v10, :cond_e1

    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v11, 0x1fe509f8

    invoke-static {v10, v11, v6, v2, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1035
    :cond_e1
    iget v10, v1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v10, v10, 0x4

    iput v10, v1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 1036
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v1, :cond_f0

    const-string v1, "WallpaperMayChange"

    .line 1037
    invoke-virtual {v8, v1, v10}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    :cond_f0
    add-int/lit8 v0, v0, 0x1

    goto :goto_c1

    .line 1043
    :cond_f3
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    const/4 v10, 0x2

    if-eqz v1, :cond_ff

    .line 1044
    iput-boolean v6, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 1045
    invoke-virtual {v0, v10, v6}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 1049
    :cond_ff
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v0

    if-eqz v0, :cond_113

    .line 1050
    iget v0, v7, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v0, v9

    iput v0, v7, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 1051
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v1, :cond_113

    const-string v1, "mLayoutNeeded"

    .line 1052
    invoke-virtual {v8, v1, v0}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 1057
    :cond_113
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->handleResizingWindows()V

    .line 1059
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v0, :cond_132

    .line 1060
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v0, :cond_132

    iget-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, -0x27ba2454

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v8, v6

    invoke-static {v1, v7, v3, v2, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1064
    :cond_132
    iget-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    const/16 v1, 0xb

    if-eqz v0, :cond_14e

    .line 1065
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v3, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    if-eqz v3, :cond_149

    .line 1066
    iput v6, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 1067
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mLastWindowFreezeSource:Ljava/lang/Object;

    iput-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 1068
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1076
    :cond_149
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 1081
    :cond_14e
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_18b

    :cond_158
    add-int/lit8 v0, v0, -0x1

    .line 1085
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 1086
    iput-boolean v6, v3, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 1087
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    .line 1088
    iget-object v8, v7, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne v8, v3, :cond_171

    .line 1089
    invoke-virtual {v7, v2}, Lcom/android/server/wm/DisplayContent;->setInputMethodWindowLocked(Lcom/android/server/wm/WindowState;)V

    .line 1091
    :cond_171
    iget-object v8, v7, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v8, v3}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v8

    if-eqz v8, :cond_17f

    .line 1092
    iget v8, v7, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v8, v8, 0x4

    iput v8, v7, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 1094
    :cond_17f
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->destroySurfaceUnchecked()V

    if-gtz v0, :cond_158

    .line 1096
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_18b
    move v0, v6

    .line 1099
    :goto_18c
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1a6

    .line 1100
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 1101
    iget v7, v3, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    if-eqz v7, :cond_1a3

    .line 1102
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    :cond_1a3
    add-int/lit8 v0, v0, 0x1

    goto :goto_18c

    .line 1106
    :cond_1a6
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowManagerService;->setHoldScreenLocked(Lcom/android/server/wm/Session;)V

    .line 1112
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v0, :cond_1ed

    .line 1114
    iget v0, p0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightnessOverride:F

    const/4 v3, 0x0

    cmpg-float v3, v0, v3

    if-ltz v3, :cond_1c2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v3

    if-lez v3, :cond_1c1

    goto :goto_1c2

    :cond_1c1
    move v5, v0

    .line 1116
    :cond_1c2
    :goto_1c2
    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 1119
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v9, v0, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1120
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1121
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mHandler:Landroid/os/Handler;

    iget-wide v7, p0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v10, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1128
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mHandler:Landroid/os/Handler;

    iget-wide v7, p0, Lcom/android/server/wm/RootWindowContainer;->mScreenDimDuration:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1133
    :cond_1ed
    iget-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    iget-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    if-eq v0, v1, :cond_1fc

    .line 1134
    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    .line 1135
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v1, v10, v0}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    .line 1140
    :cond_1fc
    iget-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    if-eqz v0, :cond_212

    .line 1141
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v0, :cond_20c

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, -0x41c0358b

    invoke-static {v0, v1, v6, v2, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1142
    :cond_20c
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->updateRotationUnchecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    .line 1145
    :cond_212
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22a

    iget-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    if-eqz v0, :cond_22f

    .line 1146
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v0

    if-nez v0, :cond_22f

    iget-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    if-nez v0, :cond_22f

    .line 1148
    :cond_22a
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->checkDrawnWindowsLocked()V

    .line 1151
    :cond_22f
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda53;

    invoke-direct {v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda53;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 1166
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 1168
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 1170
    sget-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_TRACE:Z

    if-eqz p0, :cond_24b

    const-string/jumbo p0, "performSurfacePlacementInner exit"

    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24b
    return-void

    .line 1008
    :goto_24c
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 1009
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 1010
    sget-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz p0, :cond_25b

    .line 1011
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    :cond_25b
    throw v2
.end method

.method public positionChildAt(ILcom/android/server/wm/DisplayContent;Z)V
    .registers 4

    .line 4306
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mExtraDisplayController:Lcom/android/server/wm/ExtraDisplayController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/ExtraDisplayController;->positionChildAt(ILcom/android/server/wm/DisplayContent;Z)V

    return-void
.end method

.method public bridge synthetic positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .registers 4

    .line 207
    check-cast p2, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/RootWindowContainer;->positionChildAt(ILcom/android/server/wm/DisplayContent;Z)V

    return-void
.end method

.method public prepareForShutdown()V
    .registers 4

    const/4 v0, 0x0

    .line 3059
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 3060
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    const-string/jumbo v2, "shutdown"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/RootWindowContainer;->createSleepToken(Ljava/lang/String;I)Lcom/android/server/wm/RootWindowContainer$SleepToken;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_18
    return-void
.end method

.method public putTasksToSleep(ZZ)Z
    .registers 6

    const/4 v0, 0x1

    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean v0, v1, v2

    .line 3233
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda46;

    invoke-direct {v0, p1, v1, p2}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda46;-><init>(Z[ZZ)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    aget-boolean p0, v1, v2

    return p0
.end method

.method public rankTaskLayers()V
    .registers 4

    .line 3149
    iget-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskLayersChanged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 3150
    iput-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskLayersChanged:Z

    .line 3151
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mRankTaskLayersRunnable:Lcom/android/server/wm/RootWindowContainer$RankTaskLayersRunnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3153
    :cond_10
    iput v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpTaskLayerRank:I

    .line 3155
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/wm/RootWindowContainer;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 3173
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->inActivityVisibilityUpdate()Z

    move-result v0

    if-nez v0, :cond_28

    .line 3174
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->computeProcessActivityStateBatch()V

    :cond_28
    return-void
.end method

.method public reclaimSomeSurfaceMemory(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "WindowManager"

    .line 870
    iget-object v3, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 873
    iget-object v4, v1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v5, v5, Lcom/android/server/wm/Session;->mPid:I

    move-object/from16 v6, p2

    invoke-static {v4, v5, v6}, Lcom/android/server/wm/EventLogTags;->writeWmNoSurfaceMemory(Ljava/lang/String;ILjava/lang/String;)V

    .line 875
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_1b
    const-string v6, "Out of memory for surface!  Looking for leaks..."

    .line 880
    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    iget-object v6, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    move v8, v7

    move v9, v8

    :goto_29
    if-ge v8, v6, :cond_3b

    .line 883
    iget-object v10, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->destroyLeakedSurfaces()Z

    move-result v10

    or-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_29

    :cond_3b
    const/4 v8, 0x1

    if-nez v9, :cond_8a

    const-string v10, "No leaked surfaces; killing applications!"

    .line 887
    invoke-static {v2, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    new-instance v10, Landroid/util/SparseIntArray;

    invoke-direct {v10}, Landroid/util/SparseIntArray;-><init>()V

    move v11, v7

    move v12, v11

    :goto_4a
    if-ge v11, v6, :cond_8b

    .line 890
    iget-object v13, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/DisplayContent;

    new-instance v14, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda27;

    invoke-direct {v14, v0, v10}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda27;-><init>(Lcom/android/server/wm/RootWindowContainer;Landroid/util/SparseIntArray;)V

    invoke-virtual {v13, v14, v7}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 900
    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v13

    if-lez v13, :cond_84

    .line 901
    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v13

    new-array v14, v13, [I

    move v15, v7

    :goto_69
    if-ge v15, v13, :cond_74

    .line 903
    invoke-virtual {v10, v15}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v16

    aput v16, v14, v15
    :try_end_71
    .catchall {:try_start_1b .. :try_end_71} :catchall_e1

    add-int/lit8 v15, v15, 0x1

    goto :goto_69

    .line 906
    :cond_74
    :try_start_74
    iget-object v13, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const-string v15, "Free memory"
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_7a} :catch_84
    .catchall {:try_start_74 .. :try_end_7a} :catchall_e1

    move/from16 v7, p3

    :try_start_7c
    invoke-interface {v13, v14, v15, v7}, Landroid/app/IActivityManager;->killPids([ILjava/lang/String;Z)Z

    move-result v13
    :try_end_80
    .catch Landroid/os/RemoteException; {:try_start_7c .. :try_end_80} :catch_86
    .catchall {:try_start_7c .. :try_end_80} :catchall_e1

    if-eqz v13, :cond_86

    move v12, v8

    goto :goto_86

    :catch_84
    :cond_84
    move/from16 v7, p3

    :catch_86
    :cond_86
    :goto_86
    add-int/lit8 v11, v11, 0x1

    const/4 v7, 0x0

    goto :goto_4a

    :cond_8a
    const/4 v12, 0x0

    :cond_8b
    if-nez v9, :cond_92

    if-eqz v12, :cond_90

    goto :goto_92

    :cond_90
    const/4 v11, 0x0

    goto :goto_d5

    :cond_92
    :goto_92
    :try_start_92
    const-string v6, "Looks like we have reclaimed some memory, clearing surface for retry."

    .line 918
    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_cd

    .line 921
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_SURFACE_ALLOC_enabled:Z

    if-eqz v2, :cond_b2

    iget-object v2, v1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_SURFACE_ALLOC:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, 0x17d51a79

    const/4 v7, 0x0

    new-array v10, v8, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-static {v3, v6, v11, v7, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b3

    :cond_b2
    const/4 v11, 0x0

    .line 923
    :goto_b3
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 924
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurface(Landroid/view/SurfaceControl$Transaction;)V

    .line 925
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 926
    iget-object v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_ce

    .line 927
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V
    :try_end_cc
    .catchall {:try_start_92 .. :try_end_cc} :catchall_e1

    goto :goto_ce

    :cond_cd
    const/4 v11, 0x0

    .line 932
    :cond_ce
    :goto_ce
    :try_start_ce
    iget-object v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->dispatchGetNewSurface()V
    :try_end_d5
    .catch Landroid/os/RemoteException; {:try_start_ce .. :try_end_d5} :catch_d5
    .catchall {:try_start_ce .. :try_end_d5} :catchall_e1

    .line 937
    :catch_d5
    :goto_d5
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v9, :cond_df

    if-eqz v12, :cond_dd

    goto :goto_df

    :cond_dd
    move v7, v11

    goto :goto_e0

    :cond_df
    :goto_df
    move v7, v8

    :goto_e0
    return v7

    :catchall_e1
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 938
    throw v0
.end method

.method public refreshSecureSurfaceState()V
    .registers 3

    .line 785
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda35;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public removeChild(Lcom/android/server/wm/DisplayContent;)V
    .registers 3

    .line 1542
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 1543
    iget v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p1

    if-ne v0, p1, :cond_12

    .line 1544
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    :cond_12
    return-void
.end method

.method public bridge synthetic removeChild(Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    .line 207
    check-cast p1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->removeChild(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method public removeReplacedWindows()V
    .registers 7

    const-string/jumbo v0, "removeReplacedWindows"

    .line 841
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_TRANSACTIONS_enabled:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_11

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x5a4f608f

    invoke-static {v1, v4, v2, v3, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 842
    :cond_11
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    const v1, 0x54da4e01

    .line 844
    :try_start_19
    sget-object v4, Lcom/android/server/wm/RootWindowContainer;->sRemoveReplacedWindowsConsumer:Ljava/util/function/Consumer;

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_2e

    .line 846
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 847
    sget-boolean p0, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_TRANSACTIONS_enabled:Z

    if-eqz p0, :cond_2d

    sget-object p0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {p0, v1, v2, v3, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2d
    return-void

    :catchall_2e
    move-exception v4

    .line 846
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 847
    sget-boolean p0, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_TRANSACTIONS_enabled:Z

    if-eqz p0, :cond_3d

    sget-object p0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {p0, v1, v2, v3, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 848
    :cond_3d
    throw v4
.end method

.method public varargs removeRootTasksInWindowingModes([I)V
    .registers 4

    .line 3786
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_14

    .line 3787
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->removeRootTasksInWindowingModes([I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_14
    return-void
.end method

.method public varargs removeRootTasksWithActivityTypes([I)V
    .registers 4

    .line 3792
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_14

    .line 3793
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->removeRootTasksWithActivityTypes([I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_14
    return-void
.end method

.method public removeSleepToken(Lcom/android/server/wm/RootWindowContainer$SleepToken;)V
    .registers 13

    .line 3089
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mSleepTokens:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mHashKey:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    const/4 v1, 0x6

    const-string v2, " from "

    const-string v3, "WindowManager"

    if-nez v0, :cond_2d

    .line 3090
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remove non-exist sleep token: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3092
    :cond_2d
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mSleepTokens:Landroid/util/SparseArray;

    iget v4, p1, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mHashKey:I

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 3095
    invoke-static {p1}, Lcom/android/server/wm/RootWindowContainer$SleepToken;->-$$Nest$fgetmDisplayId(Lcom/android/server/wm/RootWindowContainer$SleepToken;)I

    move-result v0

    invoke-static {p1}, Lcom/android/server/wm/RootWindowContainer$SleepToken;->-$$Nest$fgetmTag(Lcom/android/server/wm/RootWindowContainer$SleepToken;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v0, v5, v4}, Lcom/android/server/wm/EventLogTags;->writeWmSleepToken(IILjava/lang/String;)V

    .line 3098
    invoke-static {p1}, Lcom/android/server/wm/RootWindowContainer$SleepToken;->-$$Nest$fgetmDisplayId(Lcom/android/server/wm/RootWindowContainer$SleepToken;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-nez v0, :cond_69

    .line 3100
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Remove sleep token for non-existing display: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3101
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3100
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3105
    :cond_69
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_90

    invoke-static {p1}, Lcom/android/server/wm/RootWindowContainer$SleepToken;->-$$Nest$fgetmTag(Lcom/android/server/wm/RootWindowContainer$SleepToken;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/wm/RootWindowContainer$SleepToken;->-$$Nest$fgetmDisplayId(Lcom/android/server/wm/RootWindowContainer$SleepToken;)I

    move-result v3

    int-to-long v3, v3

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, -0x1a054642

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v1, v10, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v10, v2

    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3107
    :cond_90
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3108
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d6

    .line 3109
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 3119
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object p0

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p0, v1}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result p0

    if-nez p0, :cond_bc

    invoke-static {p1}, Lcom/android/server/wm/RootWindowContainer$SleepToken;->-$$Nest$fgetmTag(Lcom/android/server/wm/RootWindowContainer$SleepToken;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "keyguard"

    .line 3120
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d4

    :cond_bc
    invoke-static {p1}, Lcom/android/server/wm/RootWindowContainer$SleepToken;->-$$Nest$fgetmTag(Lcom/android/server/wm/RootWindowContainer$SleepToken;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Display-off"

    .line 3121
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d4

    invoke-static {p1}, Lcom/android/server/wm/RootWindowContainer$SleepToken;->-$$Nest$fgetmTag(Lcom/android/server/wm/RootWindowContainer$SleepToken;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "cover-virtual"

    .line 3123
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d6

    .line 3124
    :cond_d4
    iput-boolean v2, v0, Lcom/android/server/wm/DisplayContent;->mSkipAppTransitionAnimation:Z

    :cond_d6
    return-void
.end method

.method public removeUser(I)V
    .registers 2

    .line 2293
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mUserRootTaskInFront:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    return-void
.end method

.method public resolveActivities(ILandroid/content/Intent;)Ljava/util/List;
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1959
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 1960
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 1961
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-wide/16 v3, 0x400

    move-object v1, p2

    move v5, p1

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    .line 1962
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_22

    .line 1965
    :catch_1d
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_22
    return-object p0
.end method

.method public resolveActivityType(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;)I
    .registers 4

    if-eqz p1, :cond_7

    .line 3548
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result p0

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    if-nez p0, :cond_10

    if-eqz p3, :cond_10

    .line 3550
    invoke-virtual {p3}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result p0

    :cond_10
    if-eqz p0, :cond_13

    return p0

    :cond_13
    if-eqz p2, :cond_19

    .line 3556
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result p0

    :cond_19
    if-eqz p0, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x1

    :goto_1d
    return p0
.end method

.method public resolveHomeActivity(ILandroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    .registers 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1859
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 1864
    :try_start_7
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const-wide/16 v3, 0x400

    invoke-interface {v2, v0, v3, v4, p1}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    goto :goto_32

    .line 1866
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 1867
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 1868
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/16 v6, 0x400

    .line 1869
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    move-object v3, p2

    move v5, p1

    .line 1868
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 1871
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_30} :catch_31

    goto :goto_32

    :catch_31
    :cond_31
    move-object v0, v1

    :goto_32
    if-nez v0, :cond_50

    .line 1879
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No home screen found for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    const-string p2, "WindowManager"

    invoke-static {p2, p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    .line 1883
    :cond_50
    new-instance p2, Landroid/content/pm/ActivityInfo;

    invoke-direct {p2, v0}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 1884
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppInfoForUser(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iput-object p0, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object p2
.end method

.method public resolveSecondaryHomeActivity(ILcom/android/server/wm/TaskDisplayArea;)Landroid/util/Pair;
    .registers 12
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/wm/TaskDisplayArea;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 1891
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eq p2, v0, :cond_99

    .line 1896
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getHomeIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1897
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootWindowContainer;->resolveHomeActivity(ILandroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_7f

    .line 1899
    const-class v4, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    move-object v1, v3

    goto :goto_7f

    .line 1904
    :cond_24
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FLIP_APP_LAUNCH_WIDGET:Z

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExtraDisplayController:Lcom/android/server/wm/ExtraDisplayController;

    .line 1906
    invoke-virtual {p2}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v4

    .line 1905
    invoke-virtual {v0, v4}, Lcom/android/server/wm/ExtraDisplayController;->canHaveCoverHomeDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1907
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1908
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getSysUiServiceComponentLocked()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1907
    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getSecondaryHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_4f

    .line 1913
    :cond_45
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getSecondaryHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1915
    :goto_4f
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootWindowContainer;->resolveActivities(ILandroid/content/Intent;)Ljava/util/List;

    move-result-object v4

    .line 1916
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 1917
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move v6, v2

    :goto_5a
    if-ge v6, v5, :cond_72

    .line 1920
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 1923
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6f

    .line 1924
    iget-object v1, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_73

    :cond_6f
    add-int/lit8 v6, v6, 0x1

    goto :goto_5a

    :cond_72
    move-object v1, v3

    :goto_73
    if-nez v1, :cond_7f

    if-lez v5, :cond_7f

    .line 1930
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    :cond_7f
    :goto_7f
    if-eqz v1, :cond_88

    .line 1936
    invoke-virtual {p0, v1, p2, v2}, Lcom/android/server/wm/RootWindowContainer;->canStartHomeOnDisplayArea(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result p2

    if-nez p2, :cond_88

    move-object v1, v3

    :cond_88
    if-nez v1, :cond_94

    .line 1944
    iget-object p2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getSecondaryHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1945
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootWindowContainer;->resolveHomeActivity(ILandroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 1947
    :cond_94
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 1892
    :cond_99
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "resolveSecondaryHomeActivity: Should not be default task container"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public resumeFocusedTasksTopActivities()Z
    .registers 2

    const/4 v0, 0x0

    .line 2697
    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result p0

    return p0
.end method

.method public resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .registers 5

    const/4 v0, 0x0

    .line 2702
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    move-result p0

    return p0
.end method

.method public resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z
    .registers 20

    move-object v0, p0

    move-object/from16 v7, p1

    .line 2709
    iget-object v1, v0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->readyToResume()Z

    move-result v1

    const/4 v8, 0x0

    if-nez v1, :cond_d

    return v8

    :cond_d
    if-eqz v7, :cond_20

    .line 2714
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->isTopRootTaskInDisplayArea()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 2715
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-ne v1, v7, :cond_20

    .line 2716
    :cond_1b
    invoke-virtual/range {p1 .. p4}, Lcom/android/server/wm/Task;->resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    move-result v1

    goto :goto_21

    :cond_20
    move v1, v8

    .line 2720
    :goto_21
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v2

    const/4 v9, 0x1

    sub-int/2addr v2, v9

    move v10, v1

    move v11, v2

    :goto_29
    if-ltz v11, :cond_83

    .line 2721
    invoke-virtual {p0, v11}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/server/wm/DisplayContent;

    new-array v13, v9, [Z

    .line 2724
    new-instance v14, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda17;

    move-object v1, v14

    move-object/from16 v2, p1

    move-object v3, v13

    move v4, v10

    move-object/from16 v5, p3

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/wm/Task;[ZZLandroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v12, v14}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    aget-boolean v1, v13, v8

    or-int v2, v10, v1

    if-nez v1, :cond_7b

    .line 2768
    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->isAppCastingDisplay()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 2769
    invoke-virtual {v12, v8}, Lcom/android/server/wm/DisplayContent;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_58

    goto :goto_7b

    .line 2777
    :cond_58
    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_69

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 2779
    invoke-virtual {v1, v3, v4}, Lcom/android/server/wm/Task;->resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v1

    :goto_66
    or-int/2addr v1, v2

    move v10, v1

    goto :goto_80

    :cond_69
    move-object/from16 v3, p2

    move-object/from16 v4, p3

    if-nez v7, :cond_7f

    const/4 v1, 0x0

    .line 2782
    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    const-string v6, "no-focusable-task"

    .line 2781
    invoke-virtual {p0, v1, v6, v5}, Lcom/android/server/wm/RootWindowContainer;->resumeHomeActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v1

    goto :goto_66

    :cond_7b
    :goto_7b
    move-object/from16 v3, p2

    move-object/from16 v4, p3

    :cond_7f
    move v10, v2

    :goto_80
    add-int/lit8 v11, v11, -0x1

    goto :goto_29

    :cond_83
    return v10
.end method

.method public resumeHomeActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)Z
    .registers 10

    .line 1972
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooting()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooted()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 p0, 0x0

    return p0

    :cond_12
    if-nez p3, :cond_18

    .line 1978
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p3

    :cond_18
    move-object v3, p3

    .line 1981
    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->getHomeActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p3

    .line 1982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " resumeHomeActivity"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p3, :cond_41

    .line 1985
    iget-boolean p2, p3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez p2, :cond_41

    .line 1986
    invoke-virtual {p3, v2}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    .line 1987
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result p0

    return p0

    .line 1989
    :cond_41
    iget v1, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnTaskDisplayArea(ILjava/lang/String;Lcom/android/server/wm/TaskDisplayArea;ZZ)Z

    move-result p0

    return p0
.end method

.method public scheduleAnimation()V
    .registers 1

    .line 1537
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    return-void
.end method

.method public scheduleDestroyAllActivities(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V
    .registers 4

    .line 3212
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDestroyTargetAllActivitiesRunnable:Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;->setParam(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V

    .line 3213
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mDestroyTargetAllActivitiesRunnable:Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleDestroyAllActivities(Ljava/lang/String;)V
    .registers 2

    .line 3193
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mDestroyAllActivitiesReason:Ljava/lang/String;

    .line 3194
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mDestroyAllActivitiesRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 6

    .line 1600
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 1601
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 1602
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    invoke-virtual {p1, p0, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 1603
    const-class p1, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManagerInternal;

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 1605
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 1606
    :goto_29
    array-length v2, p1

    if-ge v1, v2, :cond_41

    .line 1607
    aget-object v2, p1, v1

    .line 1608
    new-instance v3, Lcom/android/server/wm/DisplayContent;

    invoke-direct {v3, v2, p0}, Lcom/android/server/wm/DisplayContent;-><init>(Landroid/view/Display;Lcom/android/server/wm/RootWindowContainer;)V

    const/high16 v2, -0x80000000

    .line 1609
    invoke-virtual {p0, v3, v2}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 1610
    iget v2, v3, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v2, :cond_3e

    .line 1611
    iput-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 1615
    :cond_41
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    const/4 v1, 0x1

    .line 1616
    invoke-virtual {p1, v1}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask(Z)Lcom/android/server/wm/Task;

    const v1, 0x7fffffff

    .line 1617
    iget-object p1, p1, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/wm/RootWindowContainer;->positionChildAt(ILcom/android/server/wm/DisplayContent;Z)V

    return-void
.end method

.method public final shouldCloseAssistant(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z
    .registers 4

    .line 3664
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeAssistant()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    :cond_8
    const-string p1, "assist"

    if-ne p2, p1, :cond_d

    return v0

    .line 3670
    :cond_d
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean p0, p0, Lcom/android/server/wm/WindowManagerService;->mAssistantOnTopOfDream:Z

    return p0
.end method

.method public shouldPlaceSecondaryHomeOnDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z
    .registers 6

    .line 2000
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eq v0, p1, :cond_62

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return v0

    .line 2007
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->canHostHomeTask()Z

    move-result v1

    if-nez v1, :cond_11

    return v0

    .line 2012
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    if-nez v1, :cond_1e

    return v0

    .line 2018
    :cond_1e
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mExtraDisplayController:Lcom/android/server/wm/ExtraDisplayController;

    .line 2019
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ExtraDisplayController;->canHaveCoverHomeDisplay(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2e

    goto :goto_4d

    .line 2023
    :cond_2e
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 2024
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "device_provisioned"

    .line 2023
    invoke-static {v1, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_40

    move v1, v2

    goto :goto_41

    :cond_40
    move v1, v0

    :goto_41
    if-nez v1, :cond_44

    return v0

    .line 2031
    :cond_44
    iget p0, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-static {p0}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result p0

    if-nez p0, :cond_4d

    return v0

    .line 2045
    :cond_4d
    :goto_4d
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayArea;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-eqz p0, :cond_61

    .line 2046
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isRemoved()Z

    move-result p1

    if-nez p1, :cond_61

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->supportsSystemDecorations()Z

    move-result p0

    if-nez p0, :cond_60

    goto :goto_61

    :cond_60
    return v2

    :cond_61
    :goto_61
    return v0

    .line 2001
    :cond_62
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "shouldPlaceSecondaryHomeOnDisplay: Should not be on default task container"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startHomeOnAllDisplays(ILjava/lang/String;)Z
    .registers 6

    .line 1698
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_7
    if-ltz v0, :cond_19

    .line 1699
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 1700
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnDisplay(ILjava/lang/String;I)Z

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_19
    return v1
.end method

.method public startHomeOnDisplay(ILjava/lang/String;I)Z
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    .line 1715
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnDisplay(ILjava/lang/String;IZZ)Z

    move-result p0

    return p0
.end method

.method public startHomeOnDisplay(ILjava/lang/String;IZZ)Z
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 1722
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnDisplay(ILjava/lang/String;IZZI)Z

    move-result p0

    return p0
.end method

.method public startHomeOnDisplay(ILjava/lang/String;IZZI)Z
    .registers 15

    const/4 v0, -0x1

    if-ne p3, v0, :cond_f

    .line 1730
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object p3

    if-eqz p3, :cond_e

    .line 1731
    invoke-virtual {p3}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result p3

    goto :goto_f

    :cond_e
    const/4 p3, 0x0

    .line 1734
    :cond_f
    :goto_f
    invoke-virtual {p0, p3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p3

    .line 1735
    new-instance v7, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda45;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda45;-><init>(Lcom/android/server/wm/RootWindowContainer;ILjava/lang/String;ZZI)V

    .line 1741
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1735
    invoke-virtual {p3, v7, p0}, Lcom/android/server/wm/WindowContainer;->reduceOnAllTaskDisplayAreas(Ljava/util/function/BiFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public startHomeOnEmptyDisplays(Ljava/lang/String;)V
    .registers 3

    .line 1706
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda40;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda40;-><init>(Lcom/android/server/wm/RootWindowContainer;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllTaskDisplayAreas(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startHomeOnTaskDisplayArea(ILjava/lang/String;Lcom/android/server/wm/TaskDisplayArea;ZZ)Z
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 1758
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnTaskDisplayArea(ILjava/lang/String;Lcom/android/server/wm/TaskDisplayArea;ZZI)Z

    move-result p0

    return p0
.end method

.method public startHomeOnTaskDisplayArea(ILjava/lang/String;Lcom/android/server/wm/TaskDisplayArea;ZZI)Z
    .registers 12

    if-nez p3, :cond_11

    .line 1767
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object p3

    if-eqz p3, :cond_d

    .line 1768
    invoke-virtual {p3}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p3

    goto :goto_11

    .line 1769
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p3

    .line 1784
    :cond_11
    :goto_11
    iget-object p6, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p6, p6, Lcom/android/server/wm/WindowManagerService;->mExtraDisplayController:Lcom/android/server/wm/ExtraDisplayController;

    .line 1786
    invoke-virtual {p3}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v0

    .line 1785
    invoke-virtual {p6, v0}, Lcom/android/server/wm/ExtraDisplayController;->canHaveCoverHomeDisplay(I)Z

    move-result p6

    const/4 v0, 0x0

    if-eqz p6, :cond_28

    .line 1787
    sget-boolean p6, Lcom/samsung/android/rune/CoreRune;->FW_FLIP_APP_LAUNCH_WIDGET:Z

    if-eqz p6, :cond_27

    if-eqz p5, :cond_27

    goto :goto_28

    :cond_27
    return v0

    .line 1797
    :cond_28
    :goto_28
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p6

    const/4 v1, 0x0

    if-ne p3, p6, :cond_3d

    .line 1798
    iget-object p6, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p6}, Lcom/android/server/wm/ActivityTaskManagerService;->getHomeIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1799
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/RootWindowContainer;->resolveHomeActivity(ILandroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object p6

    move-object v4, v1

    move-object v1, p6

    move-object p6, v4

    goto :goto_51

    .line 1800
    :cond_3d
    invoke-virtual {p0, p3}, Lcom/android/server/wm/RootWindowContainer;->shouldPlaceSecondaryHomeOnDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result p6

    if-eqz p6, :cond_50

    .line 1801
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/RootWindowContainer;->resolveSecondaryHomeActivity(ILcom/android/server/wm/TaskDisplayArea;)Landroid/util/Pair;

    move-result-object p6

    .line 1802
    iget-object v1, p6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/ActivityInfo;

    .line 1803
    iget-object p6, p6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p6, Landroid/content/Intent;

    goto :goto_51

    :cond_50
    move-object p6, v1

    :goto_51
    if-eqz v1, :cond_ee

    if-nez p6, :cond_57

    goto/16 :goto_ee

    .line 1809
    :cond_57
    invoke-virtual {p0, v1, p3, p4}, Lcom/android/server/wm/RootWindowContainer;->canStartHomeOnDisplayArea(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result p4

    if-nez p4, :cond_5e

    return v0

    .line 1814
    :cond_5e
    new-instance p4, Landroid/content/ComponentName;

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p4, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p6, p4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1815
    invoke-virtual {p6}, Landroid/content/Intent;->getFlags()I

    move-result p4

    const/high16 v2, 0x10000000

    or-int/2addr p4, v2

    invoke-virtual {p6, p4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 p4, 0x1

    if-eqz p5, :cond_b3

    const-string p5, "android.intent.extra.FROM_HOME_KEY"

    .line 1818
    invoke-virtual {p6, p5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1819
    iget-object p5, p0, Lcom/android/server/wm/RootWindowContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p5}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object p5

    if-eqz p5, :cond_8f

    .line 1820
    iget-object p5, p0, Lcom/android/server/wm/RootWindowContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p5}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object p5

    invoke-virtual {p5}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimationForHomeStart()V

    .line 1823
    :cond_8f
    invoke-virtual {p3}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result p5

    if-nez p5, :cond_9c

    .line 1824
    iget-object p5, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p5, p5, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {p5, v0, p4}, Lcom/android/server/wm/MultiTaskingController;->minimizeAllTasksLocked(IZ)V

    .line 1826
    :cond_9c
    sget-boolean p5, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    if-eqz p5, :cond_b3

    .line 1827
    invoke-virtual {p3}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result p5

    if-nez p5, :cond_b3

    .line 1828
    invoke-virtual {p3}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result p5

    if-eqz p5, :cond_b3

    const-string p5, "1005"

    const-string v0, "Tap \'Home\' button"

    .line 1829
    invoke-static {p5, v0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b3
    const-string p5, "android.intent.extra.EXTRA_START_REASON"

    .line 1834
    invoke-virtual {p6, p5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1844
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1845
    invoke-virtual {p3}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1846
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object p0

    invoke-virtual {p0, p6, v1, p1, p3}, Lcom/android/server/wm/ActivityStartController;->startHomeActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)V

    return p4

    :cond_ee
    :goto_ee
    return v0
.end method

.method public startPowerModeLaunchIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V
    .registers 7

    const/4 v0, 0x1

    if-nez p1, :cond_23

    if-eqz p2, :cond_23

    .line 3985
    iget-object p1, p2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz p1, :cond_23

    new-array p1, v0, [Z

    const/4 v1, 0x0

    aput-boolean v0, p1, v1

    new-array v2, v0, [Z

    aput-boolean v0, v2, v1

    .line 3990
    new-instance v3, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda18;

    invoke-direct {v3, p1, v2, p2}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda18;-><init>([Z[ZLcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowContainer;->forAllTaskDisplayAreas(Ljava/util/function/Consumer;)V

    aget-boolean p1, p1, v1

    if-nez p1, :cond_23

    aget-boolean p1, v2, v1

    if-nez p1, :cond_23

    return-void

    :cond_23
    if-eqz p2, :cond_2a

    .line 4015
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isKeyguardLocked()Z

    move-result p1

    goto :goto_30

    :cond_2a
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    move-result p1

    :goto_30
    if-eqz p1, :cond_50

    if-eqz p2, :cond_50

    const/4 p1, 0x3

    .line 4017
    invoke-virtual {p2, p1}, Lcom/android/server/wm/ActivityRecord;->isLaunchSourceType(I)Z

    move-result v1

    if-nez v1, :cond_50

    .line 4018
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getOptions()Landroid/app/ActivityOptions;

    move-result-object p2

    if-eqz p2, :cond_4f

    .line 4019
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getSourceInfo()Landroid/app/ActivityOptions$SourceInfo;

    move-result-object v1

    if-eqz v1, :cond_4f

    .line 4020
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getSourceInfo()Landroid/app/ActivityOptions$SourceInfo;

    move-result-object p2

    iget p2, p2, Landroid/app/ActivityOptions$SourceInfo;->type:I

    if-eq p2, p1, :cond_50

    :cond_4f
    const/4 v0, 0x5

    .line 4024
    :cond_50
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->startLaunchPowerMode(I)V

    return-void
.end method

.method public final startSystemDecorations(Lcom/android/server/wm/DisplayContent;)V
    .registers 5

    .line 2994
    iget v0, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    const-string v2, "displayAdded"

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnDisplay(ILjava/lang/String;I)Z

    .line 2995
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->notifyDisplayReady()V

    return-void
.end method

.method public superPositionChildAt(ILcom/android/server/wm/DisplayContent;Z)V
    .registers 4

    .line 4313
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    return-void
.end method

.method public switchUser(ILcom/android/server/am/UserState;)Z
    .registers 8

    .line 2257
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2259
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, -0x1

    :goto_c
    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 2263
    invoke-virtual {p0, v2}, Lcom/android/server/wm/RootWindowContainer;->removeRootTasksInWindowingModes([I)V

    .line 2266
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {v2, v4, v1}, Lcom/android/server/wm/MultiTaskingController;->minimizeAllTasksLocked(IZ)V

    .line 2269
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mUserRootTaskInFront:Landroid/util/SparseIntArray;

    iget v2, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 2270
    iput p1, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    .line 2272
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2273
    new-instance p2, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda10;

    invoke-direct {p2, p1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda10;-><init>(I)V

    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 2277
    iget-object p2, p0, Lcom/android/server/wm/RootWindowContainer;->mUserRootTaskInFront:Landroid/util/SparseIntArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    .line 2278
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getRootTask(I)Lcom/android/server/wm/Task;

    move-result-object p1

    if-nez p1, :cond_49

    .line 2280
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask()Lcom/android/server/wm/Task;

    move-result-object p1

    .line 2282
    :cond_49
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result p2

    .line 2283
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isOnHomeDisplay()Z

    move-result v0

    if-eqz v0, :cond_5a

    const-string/jumbo p0, "switchUserOnHomeDisplay"

    .line 2284
    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    goto :goto_65

    :cond_5a
    const/4 p1, 0x0

    .line 2287
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    const-string/jumbo v1, "switchUserOnOtherDisplay"

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/wm/RootWindowContainer;->resumeHomeActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)Z

    :goto_65
    return p2
.end method

.method public topRunningActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 3

    .line 3798
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_18

    .line 3799
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_15

    return-object v1

    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_18
    const/4 p0, 0x0

    return-object p0
.end method

.method public updateActivityApplicationInfo(Landroid/content/pm/ApplicationInfo;)V
    .registers 6

    .line 3759
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3760
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 3761
    new-instance v2, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda4;-><init>()V

    const-class v3, Lcom/android/server/wm/ActivityRecord;

    .line 3763
    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3761
    invoke-static {v2, v3, p1, v1, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Lcom/android/internal/util/function/QuadConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object p1

    .line 3764
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 3765
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    return-void
.end method

.method public updateAppOpsState()V
    .registers 3

    .line 811
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda54;

    invoke-direct {v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda54;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public updateDisplayImePolicyCache()V
    .registers 3

    .line 3038
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 3039
    new-instance v1, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda1;-><init>(Landroid/util/ArrayMap;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 3040
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayImePolicyCache:Ljava/util/Map;

    return-void
.end method

.method public updateFocusedWindowLocked(IZ)Z
    .registers 14

    .line 590
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedAppByProcess:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 593
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    move v5, v2

    move v4, v3

    :goto_11
    if-ltz v0, :cond_53

    .line 594
    iget-object v6, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/DisplayContent;

    .line 595
    invoke-virtual {v6, p1, p2, v4}, Lcom/android/server/wm/DisplayContent;->updateFocusedWindowLocked(IZI)Z

    move-result v7

    or-int/2addr v5, v7

    .line 596
    iget-object v7, v6, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v7, :cond_46

    .line 598
    iget-object v8, v7, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v8, v8, Lcom/android/server/wm/Session;->mPid:I

    .line 599
    iget-object v9, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedAppByProcess:Landroid/util/ArrayMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_3f

    .line 600
    iget-object v9, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedAppByProcess:Landroid/util/ArrayMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v9, v8, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3f
    if-ne v4, v3, :cond_50

    .line 603
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    goto :goto_50

    :cond_46
    if-ne v4, v3, :cond_50

    .line 605
    iget-object v7, v6, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v7, :cond_50

    .line 609
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    :cond_50
    :goto_50
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    :cond_53
    if-ne v4, v3, :cond_56

    move v4, v2

    .line 615
    :cond_56
    iget p1, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    if-eq p1, v4, :cond_8e

    .line 616
    iput v4, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    .line 617
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p1, v4}, Lcom/android/server/input/InputManagerService;->setFocusedDisplay(I)V

    .line 618
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p1, v4}, Lcom/android/server/policy/WindowManagerPolicy;->setTopFocusedDisplay(I)V

    .line 619
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {p1, v4}, Lcom/android/server/wm/AccessibilityController;->setFocusedDisplay(I)V

    .line 620
    sget-boolean p1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    if-eqz p1, :cond_87

    int-to-long p1, v4

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x12993590

    const/4 v6, 0x0

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v7, v2

    invoke-static {v0, v3, v1, v6, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 623
    :cond_87
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {p1, v4}, Lcom/android/server/wm/MultiTaskingController;->notifyFocusedDisplayChangedLocked(I)V

    :cond_8e
    if-eqz v5, :cond_9f

    .line 630
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/WindowManagerPolicyExt;

    .line 631
    invoke-virtual {p0, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p2

    iget-object p2, p2, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 630
    invoke-interface {p1, p2, v4}, Lcom/android/server/policy/WindowManagerPolicyExt;->onFocusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)V

    .line 633
    :cond_9f
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_TSP_STATE_CONTROLLER:Z

    if-eqz p1, :cond_b6

    if-eqz v5, :cond_b6

    if-nez v4, :cond_b6

    .line 635
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerServiceExt;->mTspStateController:Lcom/android/server/wm/TspStateController;

    .line 636
    invoke-virtual {p0, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 635
    invoke-virtual {p1, p0}, Lcom/android/server/wm/TspStateController;->updateWindowPolicy(Lcom/android/server/wm/WindowState;)V

    :cond_b6
    return v5
.end method

.method public updateHiddenWhileProfileLockedStateLocked(IZ)V
    .registers 4

    .line 802
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda44;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda44;-><init>(IZ)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public updateHiddenWhileSuspendedState(Landroid/util/ArraySet;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 793
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda42;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda42;-><init>(Landroid/util/ArraySet;Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public updateRotationUnchecked()Z
    .registers 5

    .line 1398
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_9
    if-ltz v0, :cond_21

    .line 1399
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayRotation;->updateRotationAndSendNewConfigIfChanged()Z

    move-result v3

    if-eqz v3, :cond_1e

    move v2, v1

    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_21
    return v2
.end method

.method public updateUIDsPresentOnDisplay()V
    .registers 5

    .line 3045
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 3046
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_b
    if-ltz v0, :cond_27

    .line 3047
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 3049
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 3050
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    iget v3, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 3051
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getPresentUIDs()Landroid/util/IntArray;

    move-result-object v1

    .line 3050
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 3055
    :cond_27
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayAccessUIDs(Landroid/util/SparseArray;)V

    return-void
.end method

.method public updateUserRootTask(ILcom/android/server/wm/Task;)V
    .registers 4

    .line 2301
    iget v0, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    if-eq p1, v0, :cond_17

    if-nez p2, :cond_e

    .line 2303
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask()Lcom/android/server/wm/Task;

    move-result-object p2

    .line 2306
    :cond_e
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mUserRootTaskInFront:Landroid/util/SparseIntArray;

    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_17
    return-void
.end method
