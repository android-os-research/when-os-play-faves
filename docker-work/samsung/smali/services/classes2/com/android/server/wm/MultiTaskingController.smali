.class public Lcom/android/server/wm/MultiTaskingController;
.super Ljava/lang/Object;
.source "MultiTaskingController.java"

# interfaces
.implements Lcom/android/server/wm/IController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/MultiTaskingController$FindTasksResult;,
        Lcom/android/server/wm/MultiTaskingController$H;,
        Lcom/android/server/wm/MultiTaskingController$SettingsObserver;,
        Lcom/android/server/wm/MultiTaskingController$NaturalSwitchingConsumer;,
        Lcom/android/server/wm/MultiTaskingController$AppTransitionConsumer;
    }
.end annotation


# static fields
.field public static final EXTRA_ALL_APPS_BUTTON_POSITION:Ljava/lang/String; = "all_apps_button_position"

.field public static final EXTRA_SPLIT_STAGE_POSITION:Ljava/lang/String; = "split_stage_position"

.field public static final FREEFORM_HANDLER_ALIGNMENT_OFFSET_DIP:F = 1.5f

.field public static final OVERLAY_ALLAPPS_SERVICE_CLS:Ljava/lang/String; = "com.samsung.android.app.appsedge.allapps.overlay.OverlayAllAppsService"

.field public static final PACKAGE_APPS_EDGE:Ljava/lang/String; = "com.samsung.android.app.appsedge"

.field public static final RECENT_ALL_APPS_ACTIVITY:Ljava/lang/String; = "com.samsung.android.app.appsedge.fromrecent.FromRecentAllAppsActivity"

.field public static final RECENT_EDGE_ACTIVITY:Ljava/lang/String; = "com.samsung.android.app.appsedge.fromrecent.FromRecentEdgeActivity"

.field public static final SPLIT_FREEFORM_ALIGNMENT_OFFSET_DIP:I = 0xf

.field public static final TAG:Ljava/lang/String; = "MultiTaskingController"


# instance fields
.field public final LAUNCH_SINGLE_INSTANCE_PER_TASK_MAX_COUNT:I

.field public final mActivityEmbeddedPackageRepository:Lcom/android/server/wm/ActivityEmbeddedPackageRepository;

.field public mAlignmentOffset:I

.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mDeferEnsureConfig:Z

.field public mDeferFocusChanging:Z

.field public final mDemoResetStartedReceiver:Landroid/content/BroadcastReceiver;

.field public final mExcludeLoggingPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mFreeformHandlerOffset:F

.field public mH:Lcom/android/server/wm/MultiTaskingController$H;

.field public mIsFullToSplitEnabled:Z

.field public mIsGestureTypeSideAndBottom:Z

.field public mIsNavigationModeGesture:Z

.field public mIsSplitScreenFeasible:Z

.field public mLastConfig:Landroid/content/res/Configuration;

.field public final mLastPackageNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mLastRotation:I

.field public final mMinimizeAllReceiver:Landroid/content/BroadcastReceiver;

.field public mMoveToBackTaskWithIme:Ljava/lang/Runnable;

.field public final mNotifyFinishRecentsAnimation:Lcom/android/server/wm/MultiTaskingController$AppTransitionConsumer;

.field public final mNotifyNaturalSwitchingFinish:Lcom/android/server/wm/MultiTaskingController$NaturalSwitchingConsumer;

.field public final mNotifyNaturalSwitchingStart:Lcom/android/server/wm/MultiTaskingController$NaturalSwitchingConsumer;

.field public final mNotifyStartHomeAnimation:Lcom/android/server/wm/MultiTaskingController$AppTransitionConsumer;

.field public final mNotifyStartRecentsAnimation:Lcom/android/server/wm/MultiTaskingController$AppTransitionConsumer;

.field public final mNotifyWallpaperVisibilityChanged:Lcom/android/server/wm/MultiTaskingController$AppTransitionConsumer;

.field public mPendingMoveToBackTaskId:I

.field public final mRemoteAppTransitionListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mRemoteNaturalSwitchingListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/multiwindow/INaturalSwitchingListener;",
            ">;"
        }
    .end annotation
.end field

.field public mSettingsObserver:Lcom/android/server/wm/MultiTaskingController$SettingsObserver;

.field public final mSplitActivityInfoRepository:Lcom/android/server/wm/SplitActivityInfoRepository;

.field public mSwipeGestureThreshold:I

.field public mSystemUIUid:I

.field public final mTmpFindTaskResult:Lcom/android/server/wm/MultiTaskingController$FindTasksResult;

.field public final mTmpRect:Landroid/graphics/Rect;

.field public mWm:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$1FygBYK5lHBsjV_3qgFGNCzl5QE(Lcom/android/server/wm/MultiTaskingController;[ZLcom/android/server/wm/TaskDisplayArea;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/MultiTaskingController;->lambda$removeFocusedTask$18([ZLcom/android/server/wm/TaskDisplayArea;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5UVog4R9EDRMWrtuQJAKB5TLQyM(Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;Landroid/os/Message;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/MultiTaskingController;->lambda$new$0(Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5ynwfBMI9rbPDm5GTQ7Jo8pepa4(Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;Landroid/os/Message;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/MultiTaskingController;->lambda$new$2(Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$A_vFL63bq9kgVcuFNkv2jg-xIjM(Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;Landroid/os/Message;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/MultiTaskingController;->lambda$new$3(Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BBfDtpGOBC-tQdAhnx5GR4_v5hg(Lcom/samsung/android/multiwindow/INaturalSwitchingListener;Landroid/os/Message;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/MultiTaskingController;->lambda$new$4(Lcom/samsung/android/multiwindow/INaturalSwitchingListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DMAOqzLJfO0BLFyZguev0LCgIVw(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wm/MultiTaskingController;->lambda$getTaskInfoFromPackageName$17(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EQuLQU4XQWc5qVk6NaMNv5sVTVk(Lcom/android/server/wm/MultiTaskingController;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/MultiTaskingController;->lambda$showOverlayAllApps$13(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$E_jNljPiva6oo_urLaG1qqRIaNg(Lcom/android/server/wm/MultiTaskingController;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/Task;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/MultiTaskingController;->lambda$removeEmbedActivityTaskAndProcessIfNeeded$21(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JidsvsMX35XIVtoswbPSDooCk4g(Ljava/lang/String;Ljava/util/List;Lcom/android/server/wm/Task;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/MultiTaskingController;->lambda$updateSplitActivityPackageTasks$19(Ljava/lang/String;Ljava/util/List;Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$LX9_xwEK8j3wRZLg7IET6GRmiYw(Lcom/android/server/wm/MultiTaskingController;Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/MultiTaskingController;->lambda$dumpTaskOrderLocked$24(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QWP8U0yteaTkwjYjHu5MOfhzVMk(Lcom/samsung/android/multiwindow/INaturalSwitchingListener;Landroid/os/Message;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/MultiTaskingController;->lambda$new$5(Lcom/samsung/android/multiwindow/INaturalSwitchingListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RC1nH2qUd1p7zMEkak2QJNga8Ng([ILcom/android/server/wm/Task;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/MultiTaskingController;->lambda$getMultiWindowModeStates$9([ILcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Uqf0vw8nfqz7h0O2j9uuu5D8vRE(Lcom/android/server/wm/WindowState;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/MultiTaskingController;->lambda$isInThreeButtonsGestureArea$14(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Wd18RuN9SEvQHA7ts46Wk9VPZYI(Lcom/android/server/wm/Task;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/MultiTaskingController;->lambda$getMultiSplitFlags$11(Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$YdcfJl3O2YqrlNJRwWqKWFODsFc(Lcom/android/server/wm/MultiTaskingController;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/MultiTaskingController;->lambda$startUser$16(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$dQvCZXhdtkOljgItjxVajNJe4gU(Lcom/android/server/wm/MultiTaskingController;Lcom/android/server/wm/Task;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/MultiTaskingController;->lambda$minimizeTaskLocked$6(Lcom/android/server/wm/Task;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$i6Tx29tf3_bySM_3DBoUcVRAXC8(Lcom/android/server/wm/MultiTaskingController;Lcom/android/server/wm/WindowProcessController;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/MultiTaskingController;->lambda$removeEmbedActivityProcessIfNeeded$22(Lcom/android/server/wm/WindowProcessController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mBoJ6y4ibxVo3KkvyBW62RN4XPM([ZLcom/android/server/wm/Task;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/MultiTaskingController;->lambda$notifyWallpaperVisibilityChanged$15([ZLcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$n9AzCgLPAftQnR6TuS8SvcelgOY(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/MultiTaskingController;->lambda$findTasks$23(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$okz1Y9n-rC4D8u7G1Alzd6JC_24(Lcom/android/server/wm/MultiTaskingController;ILjava/lang/String;Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/MultiTaskingController;->lambda$removeEmbedActivityTaskIfNeeded$20(ILjava/lang/String;Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rvs3ePeCUdlawEAMUcz41njbsvw(Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;Landroid/os/Message;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/MultiTaskingController;->lambda$new$1(Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tg4XKEu3_Seye1W_CyQqjlaY6WU(ILjava/lang/String;Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wm/MultiTaskingController;->lambda$findAliasManagedTaskInPackage$8(ILjava/lang/String;Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$trx_a1rh1Akzo_GemsBG4_7mm88(Lcom/android/server/wm/MultiTaskingController;ZLcom/android/server/wm/DisplayContent;IILcom/android/server/wm/Task;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/wm/MultiTaskingController;->lambda$minimizeAllTasksLocked$7(ZLcom/android/server/wm/DisplayContent;IILcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vGnJe3dn-Y418U8de5o4wKbIJ2Y(Lcom/android/server/wm/Task;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/MultiTaskingController;->lambda$moveFreeformTaskToSplitLocked$12(Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$w_Tm59UEsh9PVaMy7UMaB111ydg(I)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/MultiTaskingController;->lambda$notifyFocusedDisplayChangedLocked$10(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAtm(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyFinishRecentsAnimation(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/MultiTaskingController$AppTransitionConsumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mNotifyFinishRecentsAnimation:Lcom/android/server/wm/MultiTaskingController$AppTransitionConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyNaturalSwitchingFinish(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/MultiTaskingController$NaturalSwitchingConsumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mNotifyNaturalSwitchingFinish:Lcom/android/server/wm/MultiTaskingController$NaturalSwitchingConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyNaturalSwitchingStart(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/MultiTaskingController$NaturalSwitchingConsumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mNotifyNaturalSwitchingStart:Lcom/android/server/wm/MultiTaskingController$NaturalSwitchingConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyStartHomeAnimation(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/MultiTaskingController$AppTransitionConsumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mNotifyStartHomeAnimation:Lcom/android/server/wm/MultiTaskingController$AppTransitionConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyStartRecentsAnimation(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/MultiTaskingController$AppTransitionConsumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mNotifyStartRecentsAnimation:Lcom/android/server/wm/MultiTaskingController$AppTransitionConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyWallpaperVisibilityChanged(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/MultiTaskingController$AppTransitionConsumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mNotifyWallpaperVisibilityChanged:Lcom/android/server/wm/MultiTaskingController$AppTransitionConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsFullToSplitEnabled(Lcom/android/server/wm/MultiTaskingController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/MultiTaskingController;->mIsFullToSplitEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsGestureTypeSideAndBottom(Lcom/android/server/wm/MultiTaskingController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/MultiTaskingController;->mIsGestureTypeSideAndBottom:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsNavigationModeGesture(Lcom/android/server/wm/MultiTaskingController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/MultiTaskingController;->mIsNavigationModeGesture:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mforAllRemoteAppTransitionListeners(Lcom/android/server/wm/MultiTaskingController;Lcom/android/server/wm/MultiTaskingController$AppTransitionConsumer;Landroid/os/Message;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/MultiTaskingController;->forAllRemoteAppTransitionListeners(Lcom/android/server/wm/MultiTaskingController$AppTransitionConsumer;Landroid/os/Message;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mforAllRemoteNaturalSwitchingListeners(Lcom/android/server/wm/MultiTaskingController;Lcom/android/server/wm/MultiTaskingController$NaturalSwitchingConsumer;Landroid/os/Message;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/MultiTaskingController;->forAllRemoteNaturalSwitchingListeners(Lcom/android/server/wm/MultiTaskingController$NaturalSwitchingConsumer;Landroid/os/Message;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/wm/MultiTaskingController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 4

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 173
    iput v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAlignmentOffset:I

    .line 198
    new-instance v1, Lcom/android/server/wm/MultiTaskingController$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/MultiTaskingController$1;-><init>(Lcom/android/server/wm/MultiTaskingController;)V

    iput-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mMinimizeAllReceiver:Landroid/content/BroadcastReceiver;

    .line 216
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mTmpRect:Landroid/graphics/Rect;

    .line 229
    iput-boolean v0, p0, Lcom/android/server/wm/MultiTaskingController;->mDeferEnsureConfig:Z

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mLastPackageNameList:Ljava/util/ArrayList;

    const-string v0, "com.samsung.android.app.appsedge"

    const-string v1, "com.samsung.controlpanel"

    .line 238
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mExcludeLoggingPackages:Ljava/util/List;

    const/4 v0, -0x1

    .line 240
    iput v0, p0, Lcom/android/server/wm/MultiTaskingController;->mSystemUIUid:I

    .line 249
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mRemoteAppTransitionListeners:Landroid/os/RemoteCallbackList;

    .line 257
    new-instance v1, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda3;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mNotifyStartRecentsAnimation:Lcom/android/server/wm/MultiTaskingController$AppTransitionConsumer;

    .line 262
    new-instance v1, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda4;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mNotifyFinishRecentsAnimation:Lcom/android/server/wm/MultiTaskingController$AppTransitionConsumer;

    .line 267
    new-instance v1, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda5;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mNotifyStartHomeAnimation:Lcom/android/server/wm/MultiTaskingController$AppTransitionConsumer;

    .line 272
    new-instance v1, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda6;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mNotifyWallpaperVisibilityChanged:Lcom/android/server/wm/MultiTaskingController$AppTransitionConsumer;

    .line 280
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mRemoteNaturalSwitchingListeners:Landroid/os/RemoteCallbackList;

    .line 288
    new-instance v1, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda7;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mNotifyNaturalSwitchingStart:Lcom/android/server/wm/MultiTaskingController$NaturalSwitchingConsumer;

    .line 292
    new-instance v1, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda8;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mNotifyNaturalSwitchingFinish:Lcom/android/server/wm/MultiTaskingController$NaturalSwitchingConsumer;

    .line 299
    iput v0, p0, Lcom/android/server/wm/MultiTaskingController;->mPendingMoveToBackTaskId:I

    .line 303
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mLastConfig:Landroid/content/res/Configuration;

    const/4 v0, 0x1

    .line 305
    iput-boolean v0, p0, Lcom/android/server/wm/MultiTaskingController;->mIsSplitScreenFeasible:Z

    .line 1252
    new-instance v0, Lcom/android/server/wm/MultiTaskingController$2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/MultiTaskingController$2;-><init>(Lcom/android/server/wm/MultiTaskingController;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mDemoResetStartedReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x5

    .line 2095
    iput v0, p0, Lcom/android/server/wm/MultiTaskingController;->LAUNCH_SINGLE_INSTANCE_PER_TASK_MAX_COUNT:I

    .line 2202
    new-instance v0, Lcom/android/server/wm/MultiTaskingController$FindTasksResult;

    invoke-direct {v0}, Lcom/android/server/wm/MultiTaskingController$FindTasksResult;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mTmpFindTaskResult:Lcom/android/server/wm/MultiTaskingController$FindTasksResult;

    .line 309
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 311
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_ACTIVITY:Z

    if-eqz v0, :cond_8f

    new-instance v0, Lcom/android/server/wm/SplitActivityInfoRepository;

    invoke-direct {v0}, Lcom/android/server/wm/SplitActivityInfoRepository;-><init>()V

    goto :goto_90

    :cond_8f
    const/4 v0, 0x0

    :goto_90
    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mSplitActivityInfoRepository:Lcom/android/server/wm/SplitActivityInfoRepository;

    .line 313
    new-instance v0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;

    invoke-direct {v0, p1}, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mActivityEmbeddedPackageRepository:Lcom/android/server/wm/ActivityEmbeddedPackageRepository;

    return-void
.end method

.method private synthetic lambda$dumpTaskOrderLocked$24(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)V
    .registers 5

    .line 2326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/MultiTaskingController;->printTaskDisplayAreaLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/wm/WindowContainer;)V

    return-void
.end method

.method public static synthetic lambda$findAliasManagedTaskInPackage$8(ILjava/lang/String;Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .registers 5

    .line 837
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->isAliasManaged()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget v0, p3, Lcom/android/server/wm/Task;->mUserId:I

    if-eq v0, p0, :cond_b

    goto :goto_1d

    .line 840
    :cond_b
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 841
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    goto :goto_1d

    .line 844
    :cond_1a
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    :goto_1d
    return-void
.end method

.method public static synthetic lambda$findTasks$23(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)I
    .registers 4

    .line 2199
    iget-wide v0, p1, Lcom/android/server/wm/Task;->lastGainFocusTime:J

    iget-wide p0, p0, Lcom/android/server/wm/Task;->lastGainFocusTime:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$getMultiSplitFlags$11(Lcom/android/server/wm/Task;)Z
    .registers 2

    .line 985
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result v0

    if-nez v0, :cond_c

    .line 986
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 987
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public static synthetic lambda$getMultiWindowModeStates$9([ILcom/android/server/wm/Task;)V
    .registers 5

    .line 945
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 946
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1f

    const/4 v1, 0x5

    if-eq v0, v1, :cond_12

    goto :goto_25

    .line 948
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isUnderHomeRootTask()Z

    move-result p1

    if-nez p1, :cond_25

    .line 949
    aget p1, p0, v2

    or-int/lit8 p1, p1, 0x1

    aput p1, p0, v2

    goto :goto_25

    .line 954
    :cond_1f
    aget p1, p0, v2

    or-int/lit8 p1, p1, 0x4

    aput p1, p0, v2

    :cond_25
    :goto_25
    return-void
.end method

.method public static synthetic lambda$getTaskInfoFromPackageName$17(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    .line 1718
    iget-object v0, p3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_48

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_48

    .line 1719
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_48

    .line 1720
    new-instance p0, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-direct {p0}, Landroid/app/ActivityManager$RecentTaskInfo;-><init>()V

    .line 1721
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;)V

    .line 1722
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1723
    iget p2, p0, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1724
    sget-object p1, Lcom/android/server/wm/MultiTaskingController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getTaskIdFromPackageName, recentTaskInfo="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    return-void
.end method

.method public static synthetic lambda$isInThreeButtonsGestureArea$14(Lcom/android/server/wm/WindowState;)Z
    .registers 2

    .line 1488
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0x8e2

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private synthetic lambda$minimizeAllTasksLocked$7(ZLcom/android/server/wm/DisplayContent;IILcom/android/server/wm/Task;)V
    .registers 6

    .line 804
    invoke-virtual {p0, p5, p1}, Lcom/android/server/wm/MultiTaskingController;->minimizeTaskLocked(Lcom/android/server/wm/Task;Z)Z

    return-void
.end method

.method private synthetic lambda$minimizeTaskLocked$6(Lcom/android/server/wm/Task;Z)V
    .registers 6

    .line 733
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 734
    invoke-virtual {p1, p1, v1, v2, p2}, Lcom/android/server/wm/Task;->moveTaskToBack(Lcom/android/server/wm/Task;Landroid/os/Bundle;ZZ)Z

    const/4 p2, -0x1

    .line 735
    iput p2, p0, Lcom/android/server/wm/MultiTaskingController;->mPendingMoveToBackTaskId:I

    .line 736
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz p0, :cond_2a

    .line 737
    sget-object p0, Lcom/android/server/wm/MultiTaskingController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "minimizeTaskLocked: minimizeDelayTask="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_2f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_2f
    move-exception p0

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public static synthetic lambda$moveFreeformTaskToSplitLocked$12(Lcom/android/server/wm/Task;)Z
    .registers 2

    .line 1134
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static synthetic lambda$new$0(Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;Landroid/os/Message;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 258
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    .line 259
    :goto_7
    invoke-interface {p0, p1}, Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;->onStartRecentsAnimation(Z)V

    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;Landroid/os/Message;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 263
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    .line 264
    :goto_7
    invoke-interface {p0, p1}, Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;->onFinishRecentsAnimation(Z)V

    return-void
.end method

.method public static synthetic lambda$new$2(Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;Landroid/os/Message;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 268
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    .line 269
    :goto_7
    invoke-interface {p0, p1}, Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;->onStartHomeAnimation(Z)V

    return-void
.end method

.method public static synthetic lambda$new$3(Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;Landroid/os/Message;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 273
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    .line 274
    :goto_9
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_e

    goto :goto_f

    :cond_e
    move v1, v2

    .line 275
    :goto_f
    invoke-interface {p0, v0, v1}, Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;->onWallpaperVisibilityChanged(ZZ)V

    return-void
.end method

.method public static synthetic lambda$new$4(Lcom/samsung/android/multiwindow/INaturalSwitchingListener;Landroid/os/Message;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 289
    invoke-interface {p0}, Lcom/samsung/android/multiwindow/INaturalSwitchingListener;->onNaturalSwitchingStart()V

    return-void
.end method

.method public static synthetic lambda$new$5(Lcom/samsung/android/multiwindow/INaturalSwitchingListener;Landroid/os/Message;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 293
    invoke-interface {p0}, Lcom/samsung/android/multiwindow/INaturalSwitchingListener;->onNaturalSwitchingFinish()V

    return-void
.end method

.method public static synthetic lambda$notifyFocusedDisplayChangedLocked$10(I)V
    .registers 2

    .line 970
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 971
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz v0, :cond_d

    .line 973
    invoke-interface {v0, p0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onFocusedDisplayChanged(I)V

    :cond_d
    return-void
.end method

.method public static synthetic lambda$notifyWallpaperVisibilityChanged$15([ZLcom/android/server/wm/Task;)Z
    .registers 4

    .line 1600
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 1601
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p1

    aput-boolean p1, p0, v1

    const/4 p0, 0x1

    return p0

    :cond_f
    return v1
.end method

.method private synthetic lambda$removeEmbedActivityProcessIfNeeded$22(Lcom/android/server/wm/WindowProcessController;)V
    .registers 4

    .line 2072
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v0, p1, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/wm/WindowProcessController;->mUid:I

    const-string v1, "embedded-package-changed"

    invoke-virtual {p0, v0, p1, v1}, Landroid/app/ActivityManagerInternal;->killProcess(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$removeEmbedActivityTaskAndProcessIfNeeded$21(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/Task;)V
    .registers 6

    .line 2047
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v1, p1, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/wm/WindowProcessController;->mUid:I

    const-string v2, "embedded-package-changed"

    invoke-virtual {v0, v1, p1, v2}, Landroid/app/ActivityManagerInternal;->killProcess(Ljava/lang/String;ILjava/lang/String;)V

    .line 2048
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1, p1, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$removeEmbedActivityTaskIfNeeded$20(ILjava/lang/String;Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .registers 6

    .line 2003
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mActivityEmbeddedController:Lcom/android/server/wm/ActivityEmbeddedController;

    iget v0, p4, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityEmbeddedController;->findTargetUserId(I)I

    move-result p0

    if-ne p0, p1, :cond_1f

    .line 2004
    iget-object p0, p4, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz p0, :cond_1f

    .line 2005
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    .line 2006
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    return-void
.end method

.method private synthetic lambda$removeFocusedTask$18([ZLcom/android/server/wm/TaskDisplayArea;)V
    .registers 8

    .line 1746
    invoke-virtual {p2}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_72

    .line 1747
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_72

    .line 1748
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4a

    const/4 v0, 0x5

    .line 1749
    invoke-virtual {p2, v0, v3}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object p2

    if-eqz p2, :cond_72

    .line 1751
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_72

    .line 1752
    sget-object v0, Lcom/android/server/wm/MultiTaskingController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeFocusedTask, topMostFreeformTask="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1753
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1752
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object p2

    iget p2, p2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->removeTask(I)Z

    .line 1755
    aput-boolean v3, p1, v2

    goto :goto_72

    .line 1758
    :cond_4a
    sget-object p2, Lcom/android/server/wm/MultiTaskingController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeFocusedTask, focusedTask="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p2

    iget p2, p2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->removeTask(I)Z

    .line 1760
    aput-boolean v3, p1, v2

    :cond_72
    :goto_72
    return-void
.end method

.method private synthetic lambda$showOverlayAllApps$13(Landroid/content/Intent;)V
    .registers 3

    .line 1207
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void
.end method

.method private synthetic lambda$startUser$16(Z)V
    .registers 4

    .line 1686
    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1688
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    const-string/jumbo v1, "startUser"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/FreeformController;->scheduleUnbindSmartPopupViewService(Ljava/lang/String;)V

    .line 1689
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    const-string/jumbo v0, "startUser"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/FreeformController;->scheduleBindSmartPopupViewService(Ljava/lang/String;)V

    .line 1694
    monitor-exit p1
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_21
    move-exception p0

    :try_start_22
    monitor-exit p1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public static synthetic lambda$updateSplitActivityPackageTasks$19(Ljava/lang/String;Ljava/util/List;Lcom/android/server/wm/Task;)Z
    .registers 4

    .line 1936
    iget-object v0, p2, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_11

    .line 1937
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 1938
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public addSplitActivityInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1879
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mSplitActivityInfoRepository:Lcom/android/server/wm/SplitActivityInfoRepository;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/SplitActivityInfoRepository;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public allowMultipleTask(Lcom/android/server/wm/ActivityRecord;IILcom/android/server/wm/ActivityRecord;)Z
    .registers 11

    .line 2099
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getLaunchTaskIdForSingleInstancePerTask()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    return v1

    .line 2103
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2104
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/MultiTaskingController;->findTasks(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)V

    if-nez p4, :cond_21

    if-nez p2, :cond_21

    if-nez p3, :cond_21

    .line 2106
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 2108
    invoke-virtual {p0}, Landroid/content/Intent;->isStartedAsWindowTypeLauncher()Z

    move-result p0

    if-eqz p0, :cond_2d

    :cond_21
    if-eqz p4, :cond_4c

    .line 2109
    invoke-virtual {p4}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result p0

    if-nez p0, :cond_4c

    if-nez p2, :cond_4c

    if-nez p3, :cond_4c

    :cond_2d
    move p0, v1

    .line 2112
    :goto_2e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p0, p2, :cond_4b

    .line 2113
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/Task;

    .line 2114
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result p3

    if-eqz p3, :cond_48

    .line 2115
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget p1, p2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setLaunchTaskIdForSingleInstancePerTask(I)V

    goto :goto_4b

    :cond_48
    add-int/lit8 p0, p0, 0x1

    goto :goto_2e

    :cond_4b
    :goto_4b
    return v1

    :cond_4c
    if-eqz p4, :cond_5b

    .line 2121
    invoke-virtual {p4}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result p0

    if-nez p0, :cond_5b

    .line 2122
    invoke-virtual {p4}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result p0

    if-nez p0, :cond_5b

    return v1

    .line 2126
    :cond_5b
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 p4, 0x0

    move-object v2, p4

    move v3, v1

    .line 2129
    :goto_63
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_c5

    .line 2130
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Task;

    .line 2131
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_83

    .line 2132
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    move-result v5

    if-ne v5, p3, :cond_83

    .line 2133
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget p1, v4, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setLaunchTaskIdForSingleInstancePerTask(I)V

    return v1

    .line 2135
    :cond_83
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_9b

    .line 2136
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result v5

    if-nez v5, :cond_93

    if-nez v2, :cond_c2

    move-object v2, v4

    goto :goto_c2

    .line 2138
    :cond_93
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget p1, v4, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setLaunchTaskIdForSingleInstancePerTask(I)V

    return v1

    .line 2145
    :cond_9b
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v5

    if-nez v5, :cond_a5

    if-nez p4, :cond_c2

    move-object p4, v4

    goto :goto_c2

    .line 2150
    :cond_a5
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_b7

    .line 2151
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c2

    .line 2153
    :cond_b7
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c2
    :goto_c2
    add-int/lit8 v3, v3, 0x1

    goto :goto_63

    .line 2159
    :cond_c5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/Task;

    if-nez p0, :cond_d4

    if-eqz p4, :cond_d4

    goto :goto_d5

    :cond_d4
    move-object p4, p0

    :goto_d5
    if-eqz p4, :cond_df

    .line 2164
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget p1, p4, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setLaunchTaskIdForSingleInstancePerTask(I)V

    return v1

    .line 2167
    :cond_df
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 p2, 0x5

    if-ge p0, p2, :cond_ef

    .line 2168
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_ed

    goto :goto_ef

    :cond_ed
    const/4 p0, 0x1

    return p0

    :cond_ef
    :goto_ef
    if-eqz v2, :cond_f8

    .line 2170
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget p1, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setLaunchTaskIdForSingleInstancePerTask(I)V

    :cond_f8
    return v1
.end method

.method public canUseCellWindowingModeLocked(Lcom/android/server/wm/TaskDisplayArea;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public continueEnsureConfig()V
    .registers 2

    const/4 v0, 0x0

    .line 2086
    iput-boolean v0, p0, Lcom/android/server/wm/MultiTaskingController;->mDeferEnsureConfig:Z

    return-void
.end method

.method public deferEnsureConfig()V
    .registers 2

    const/4 v0, 0x1

    .line 2082
    iput-boolean v0, p0, Lcom/android/server/wm/MultiTaskingController;->mDeferEnsureConfig:Z

    return-void
.end method

.method public dismissSplitTaskLocked(Lcom/android/server/wm/Task;)V
    .registers 7

    if-eqz p1, :cond_5a

    .line 912
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 913
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 914
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_5a

    .line 918
    :cond_19
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 920
    :try_start_1e
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 921
    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 922
    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    goto :goto_29

    .line 925
    :cond_41
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    const-string v0, "dismissSplitTaskLocked"

    .line 927
    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->adjustFocusToNextFocusableTask(Ljava/lang/String;)Lcom/android/server/wm/Task;
    :try_end_4d
    .catchall {:try_start_1e .. :try_end_4d} :catchall_53

    .line 929
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    return-void

    :catchall_53
    move-exception p1

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 930
    throw p1

    .line 915
    :cond_5a
    :goto_5a
    sget-object p0, Lcom/android/server/wm/MultiTaskingController;->TAG:Ljava/lang/String;

    const-string p1, "dismissSplitTaskLocked: cannot find task or not in split"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public dumpActivityEmbeddedPackageRepository(Ljava/io/PrintWriter;)V
    .registers 2

    .line 1996
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mActivityEmbeddedPackageRepository:Lcom/android/server/wm/ActivityEmbeddedPackageRepository;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final dumpConfigurationContainersLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 2315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(CONFIGURATION CONTAINERS)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2316
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/ConfigurationContainer;->dumpConfigurationLocked(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 2317
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final dumpFocusStateLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    .line 2356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(FOCUS INFO)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2357
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 2358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  TopDisplayFocusedTask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  TopResumedActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2360
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2361
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_57
    if-ltz v0, :cond_175

    .line 2362
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 2363
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  DisplayContent #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    FocusedTask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    Preferred TopFocusableTask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2366
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2365
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2367
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    mFocusedApp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2368
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    mCurrentFocus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    mInputMethodWindow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2370
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    mImeLayeringTarget="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2371
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    mImeInputTarget="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getImeInputTarget()Lcom/android/server/wm/InputTarget;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2372
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    mImeControlTarget="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2373
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_57

    .line 2375
    :cond_175
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedAppByProcess:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d2

    .line 2376
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mTopFocusedAppByProcess"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2377
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedAppByProcess:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_19e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "] r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_19e

    .line 2381
    :cond_1d2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    const-string v0, "[MultiTaskingController]"

    .line 2306
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2307
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/MultiTaskingController;->dumpConfigurationContainersLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2308
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/MultiTaskingController;->dumpTaskOrderLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2309
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/MultiTaskingController;->dumpFocusStateLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2310
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public dumpSplitActivityRepository(Ljava/io/PrintWriter;)V
    .registers 2

    .line 1897
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mSplitActivityInfoRepository:Lcom/android/server/wm/SplitActivityInfoRepository;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/SplitActivityInfoRepository;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final dumpTaskOrderLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    .line 2321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(TASK ORDER INFO)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2322
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1e
    if-ltz v0, :cond_4e

    .line 2323
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 2324
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  DisplayContent #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2325
    new-instance v2, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/wm/MultiTaskingController;Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowContainer;->forAllTaskDisplayAreas(Ljava/util/function/Consumer;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1e

    .line 2329
    :cond_4e
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public enableScreenAfterBoot()V
    .registers 1

    return-void
.end method

.method public ensureMultiSplitAppMinSize(Lcom/android/server/wm/TaskDisplayArea;)V
    .registers 3

    .line 2409
    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingController;->updateMultiSplitAppMinimumSizeLocked()V

    .line 2411
    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingController;->supportMultiSplitAppMinimumSizeLocked()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 2414
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->isMultiSplitActive()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 2418
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 2420
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_3b

    .line 2421
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 2422
    iget-object p1, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingController;->exitMultiWindow(Landroid/os/IBinder;)Z

    goto :goto_3b

    :cond_29
    const/4 v0, 0x2

    .line 2425
    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInStageType(I)Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_3b

    .line 2427
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_3b

    .line 2429
    iget-object p1, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingController;->exitMultiWindow(Landroid/os/IBinder;)Z

    :cond_3b
    :goto_3b
    return-void
.end method

.method public exitMultiWindow(Landroid/os/IBinder;)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 852
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/MultiTaskingController;->exitMultiWindow(Landroid/os/IBinder;ZZ)Z

    move-result p0

    return p0
.end method

.method public exitMultiWindow(Landroid/os/IBinder;ZZ)Z
    .registers 12

    .line 856
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 860
    instance-of v1, p1, Lcom/android/server/wm/ActivityRecord$Token;

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    .line 861
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 862
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    :cond_17
    :goto_17
    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_3b

    .line 863
    :cond_1b
    instance-of v1, p1, Lcom/android/server/wm/WindowContainer$RemoteToken;

    if-eqz v1, :cond_3a

    move-object v1, p1

    check-cast v1, Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 864
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer$RemoteToken;->getContainer()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    instance-of v1, v1, Lcom/android/server/wm/Task;

    if-eqz v1, :cond_3a

    .line 865
    move-object v1, p1

    check-cast v1, Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer$RemoteToken;->getContainer()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 866
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    goto :goto_17

    :cond_3a
    move-object v1, v2

    :goto_3b
    const/4 v3, 0x0

    if-eqz v2, :cond_e2

    if-eqz v1, :cond_e2

    .line 869
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    if-nez v4, :cond_48

    goto/16 :goto_e2

    .line 874
    :cond_48
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    .line 875
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v5

    invoke-static {v5}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_a6

    .line 876
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v5

    if-eqz v5, :cond_a6

    .line 877
    iget-object p0, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 878
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result p0

    if-eqz p0, :cond_75

    .line 879
    iget-object p0, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/16 p1, 0x67

    .line 881
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p2

    .line 879
    invoke-virtual {p0, p1, v3, v1, p2}, Lcom/android/server/wm/TransitionController;->requestTransitionIfNeeded(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;

    goto :goto_d6

    :cond_75
    if-nez p2, :cond_9b

    .line 885
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result p0

    if-ne p0, v6, :cond_8e

    .line 887
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootSideStageTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object p0

    goto :goto_9c

    .line 889
    :cond_8e
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootMainStageTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object p0

    goto :goto_9c

    :cond_9b
    move-object p0, v1

    :goto_9c
    if-eqz p0, :cond_d6

    .line 893
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    invoke-virtual {p1, p0, p3, v6}, Lcom/android/server/wm/TaskDisplayArea;->onStageSplitScreenDismissed(Lcom/android/server/wm/Task;ZZ)V

    goto :goto_d6

    :cond_a6
    const/4 p2, 0x5

    if-ne p2, v4, :cond_b1

    .line 898
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityClientController:Lcom/android/server/wm/ActivityClientController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityClientController;->toggleFreeformWindowingMode(Landroid/os/IBinder;)V

    goto :goto_d6

    :cond_b1
    if-ne v6, v4, :cond_b4

    goto :goto_d6

    .line 904
    :cond_b4
    sget-object p0, Lcom/android/server/wm/MultiTaskingController;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "exitMultiWindow: invalid windowing mode to request mode="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", r="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 904
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    :cond_d6
    :goto_d6
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p0

    if-ne p0, v6, :cond_dd

    move v3, v6

    :cond_dd
    monitor-exit v0
    :try_end_de
    .catchall {:try_start_5 .. :try_end_de} :catchall_fd

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 870
    :cond_e2
    :goto_e2
    :try_start_e2
    sget-object p0, Lcom/android/server/wm/MultiTaskingController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "exitMultiWindow: cannot find task, token="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    monitor-exit v0
    :try_end_f9
    .catchall {:try_start_e2 .. :try_end_f9} :catchall_fd

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    :catchall_fd
    move-exception p0

    .line 908
    :try_start_fe
    monitor-exit v0
    :try_end_ff
    .catchall {:try_start_fe .. :try_end_ff} :catchall_fd

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public findAliasManagedTaskInPackage(Ljava/lang/String;ILjava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    .line 835
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 836
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance v1, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda18;

    invoke-direct {v1, p2, p1, p3}, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda18;-><init>(ILjava/lang/String;Ljava/util/ArrayList;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 846
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1a
    move-exception p0

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final findTaskForFreezerSnapshotLocked(I)Lcom/android/server/wm/Task;
    .registers 4

    .line 1338
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object p0

    if-nez p0, :cond_23

    .line 1340
    sget-object p0, Lcom/android/server/wm/MultiTaskingController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findTaskForFreezerSnapshotLocked: failed, cannot find tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 1343
    :cond_23
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopLeafTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_2f

    .line 1344
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_30

    :cond_2f
    const/4 v0, 0x1

    :cond_30
    if-eqz v0, :cond_33

    goto :goto_34

    :cond_33
    move-object p0, p1

    :goto_34
    return-object p0
.end method

.method public findTasks(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/ActivityRecord;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    .line 2198
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mTmpFindTaskResult:Lcom/android/server/wm/MultiTaskingController$FindTasksResult;

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1, p0, p2}, Lcom/android/server/wm/MultiTaskingController$FindTasksResult;->process(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowContainer;Ljava/util/ArrayList;)V

    .line 2199
    new-instance p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-void
.end method

.method public finishBooting()V
    .registers 4

    .line 1226
    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingController;->registerMinimizeAllReceiver()V

    .line 1229
    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingController;->registerDemoResetReceiver()V

    .line 1232
    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingController;->updateSystemGestureThreshold()V

    .line 1234
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_PACKAGE_ENABLED:Z

    if-eqz v0, :cond_17

    .line 1235
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mActivityEmbeddedPackageRepository:Lcom/android/server/wm/ActivityEmbeddedPackageRepository;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->registerActivityEmbeddedPackageReceiver()V

    .line 1236
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mActivityEmbeddedPackageRepository:Lcom/android/server/wm/ActivityEmbeddedPackageRepository;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->loadActivityEmbeddedPackages()V

    :cond_17
    const/high16 v0, 0x41700000    # 15.0f

    .line 1239
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 1241
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    .line 1239
    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAlignmentOffset:I

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 1245
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 1247
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1245
    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/MultiTaskingController;->mFreeformHandlerOffset:F

    return-void
.end method

.method public final forAllRemoteAppTransitionListeners(Lcom/android/server/wm/MultiTaskingController$AppTransitionConsumer;Landroid/os/Message;)V
    .registers 6

    .line 1611
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mRemoteAppTransitionListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 1612
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mRemoteAppTransitionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_22

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_1b

    .line 1614
    :try_start_d
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController;->mRemoteAppTransitionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;

    invoke-interface {p1, v2, p2}, Lcom/android/server/wm/MultiTaskingController$AppTransitionConsumer;->accept(Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;Landroid/os/Message;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_18} :catch_18
    .catchall {:try_start_d .. :try_end_18} :catchall_22

    :catch_18
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 1618
    :cond_1b
    :try_start_1b
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mRemoteAppTransitionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1619
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_22

    throw p0
.end method

.method public final forAllRemoteNaturalSwitchingListeners(Lcom/android/server/wm/MultiTaskingController$NaturalSwitchingConsumer;Landroid/os/Message;)V
    .registers 6

    .line 1671
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mRemoteNaturalSwitchingListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 1672
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mRemoteNaturalSwitchingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_22

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_1b

    .line 1674
    :try_start_d
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController;->mRemoteNaturalSwitchingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/multiwindow/INaturalSwitchingListener;

    invoke-interface {p1, v2, p2}, Lcom/android/server/wm/MultiTaskingController$NaturalSwitchingConsumer;->accept(Lcom/samsung/android/multiwindow/INaturalSwitchingListener;Landroid/os/Message;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_18} :catch_18
    .catchall {:try_start_d .. :try_end_18} :catchall_22

    :catch_18
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 1678
    :cond_1b
    :try_start_1b
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mRemoteNaturalSwitchingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1679
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_22

    throw p0
.end method

.method public final getCurrentMultiSplitSide(Lcom/android/server/wm/TaskDisplayArea;)I
    .registers 5

    .line 1024
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getRootMainStageTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1025
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getRootMainStageTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getStagePosition()I

    .line 1026
    :cond_d
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getRootSideStageTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 1027
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getRootSideStageTask()Lcom/android/server/wm/Task;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getStagePosition()I

    .line 1053
    :cond_1a
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    .line 1054
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p1

    .line 1055
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 1056
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p0

    iget p0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1057
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->getNavBarPosition()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4a

    const/4 v1, 0x2

    const/16 v2, 0x80

    if-eq p1, v1, :cond_49

    const/4 v1, 0x4

    if-eq p1, v1, :cond_44

    const/16 p0, 0x40

    return p0

    :cond_44
    if-le v0, p0, :cond_47

    goto :goto_49

    :cond_47
    const/16 v2, 0x100

    :cond_49
    :goto_49
    return v2

    :cond_4a
    const/16 p0, 0x200

    return p0
.end method

.method public getDexMode()I
    .registers 2

    .line 1214
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1215
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {p0}, Lcom/android/server/wm/DexController;->getDexModeLocked()I

    move-result p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_15
    move-exception p0

    .line 1216
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getEmbedActivityPackageEnabled(Ljava/lang/String;I)Z
    .registers 3

    .line 1966
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mActivityEmbeddedController:Lcom/android/server/wm/ActivityEmbeddedController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityEmbeddedController;->getEnabled(Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public final getFreeformBoundsFromMultiSplitBounds(Lcom/android/server/wm/Task;)Landroid/graphics/Rect;
    .registers 8

    .line 1150
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1151
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_9b

    .line 1152
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 1153
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 1159
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1160
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    .line 1161
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1162
    invoke-virtual {p1, v2}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 1164
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1165
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1166
    invoke-static {v0, v3}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getDefaultFreeformBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1167
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {p1, v3, v0, v4}, Lcom/android/server/wm/Task;->adjustForMinimalTaskDimensions(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)V

    .line 1169
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v4, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v4

    .line 1170
    iget v4, v3, Landroid/graphics/Rect;->right:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    .line 1171
    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/android/server/wm/MultiTaskingController;->mAlignmentOffset:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    .line 1173
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getStagePosition()I

    move-result p1

    and-int/lit8 v5, p1, 0x8

    if-eqz v5, :cond_71

    .line 1175
    iget v0, v1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/server/wm/MultiTaskingController;->mAlignmentOffset:I

    add-int/2addr v0, v1

    iget v1, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    goto :goto_7d

    :cond_71
    and-int/lit8 v5, p1, 0x20

    if-eqz v5, :cond_7d

    .line 1177
    iget v0, v1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/server/wm/MultiTaskingController;->mAlignmentOffset:I

    sub-int/2addr v0, v1

    iget v1, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    :cond_7d
    :goto_7d
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_8b

    .line 1180
    iget p1, v2, Landroid/graphics/Rect;->top:I

    iget p0, p0, Lcom/android/server/wm/MultiTaskingController;->mAlignmentOffset:I

    add-int/2addr p1, p0

    iget p0, v3, Landroid/graphics/Rect;->top:I

    :goto_88
    sub-int v4, p1, p0

    goto :goto_97

    :cond_8b
    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_97

    .line 1182
    iget p1, v2, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Lcom/android/server/wm/MultiTaskingController;->mAlignmentOffset:I

    sub-int/2addr p1, p0

    iget p0, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_88

    .line 1185
    :cond_97
    :goto_97
    invoke-virtual {v3, v0, v4}, Landroid/graphics/Rect;->offset(II)V

    return-object v3

    :cond_9b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLaunchModeSingleInstancePerTask(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    .registers 5

    .line 2185
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_8

    return-object p1

    :cond_8
    const-wide/32 v0, 0x10000

    .line 2188
    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v0

    .line 2187
    invoke-virtual {p0, p2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;

    move-result-object p0

    .line 2189
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    .line 2190
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v0, p2, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_17

    return-object p2

    :cond_2b
    return-object p1
.end method

.method public final getMinimalSize(Landroid/content/res/Resources;)I
    .registers 3

    .line 2471
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 2473
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 2475
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_15

    const/16 v0, 0x1cc

    goto :goto_17

    :cond_15
    const/16 v0, 0x1a4

    :goto_17
    if-lt p0, v0, :cond_21

    const p0, 0x1050132

    .line 2478
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_21
    const p0, 0x1050237

    .line 2481
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public getMultiSplitFlags()I
    .registers 6

    .line 983
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 984
    new-instance v1, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda20;

    invoke-direct {v1}, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda20;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5a

    .line 989
    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_2a

    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 990
    invoke-virtual {v3, v2}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked(I)Z

    move-result v2

    if-eqz v2, :cond_2a

    goto :goto_40

    .line 992
    :cond_2a
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v2

    if-nez v2, :cond_3f

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    move-result v2

    if-eqz v2, :cond_37

    goto :goto_3f

    .line 996
    :cond_37
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->supportsSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_40

    const/4 v4, 0x1

    goto :goto_40

    :cond_3f
    :goto_3f
    const/4 v4, 0x4

    .line 1002
    :cond_40
    :goto_40
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isMultiSplitActive()Z

    move-result v1

    if-eqz v1, :cond_49

    or-int/lit8 v1, v4, 0x20

    goto :goto_54

    .line 1004
    :cond_49
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v1

    if-eqz v1, :cond_52

    or-int/lit8 v1, v4, 0x10

    goto :goto_54

    :cond_52
    or-int/lit8 v1, v4, 0x8

    .line 1010
    :goto_54
    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiTaskingController;->getCurrentMultiSplitSide(Lcom/android/server/wm/TaskDisplayArea;)I

    move-result v0

    or-int v2, v1, v0

    .line 1013
    :cond_5a
    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingController;->preventNaturalSwitching()Z

    move-result p0

    if-nez p0, :cond_6a

    and-int/lit8 p0, v2, 0x1

    if-eqz p0, :cond_6a

    and-int/lit8 p0, v2, 0x4

    if-nez p0, :cond_6a

    or-int/lit16 v2, v2, 0x800

    :cond_6a
    return v2
.end method

.method public getMultiWindowModeStates(I)I
    .registers 6

    .line 935
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 936
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_18

    .line 938
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_38

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 940
    :cond_18
    :try_start_18
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v1, 0x2

    goto :goto_25

    :cond_24
    move v1, p1

    :goto_25
    const/4 v2, 0x1

    new-array v2, v2, [I

    .line 944
    new-instance v3, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda23;

    invoke-direct {v3, v2}, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda23;-><init>([I)V

    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    aget p0, v2, p1

    or-int/2addr p0, v1

    .line 962
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_18 .. :try_end_34} :catchall_38

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_38
    move-exception p0

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getSplitActivityAllowPackages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1910
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_ACTIVITY:Z

    if-nez v0, :cond_9

    .line 1911
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 1913
    :cond_9
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mSplitActivityInfoRepository:Lcom/android/server/wm/SplitActivityInfoRepository;

    invoke-virtual {p0}, Lcom/android/server/wm/SplitActivityInfoRepository;->getAllowPackageNames()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSplitActivityInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;
    .registers 4

    .line 1889
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mSplitActivityInfoRepository:Lcom/android/server/wm/SplitActivityInfoRepository;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/SplitActivityInfoRepository;->getInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;

    move-result-object p0

    return-object p0
.end method

.method public getSplitActivityInfoRepository()Lcom/android/server/wm/SplitActivityInfoRepository;
    .registers 1

    .line 1906
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mSplitActivityInfoRepository:Lcom/android/server/wm/SplitActivityInfoRepository;

    return-object p0
.end method

.method public getSplitActivityPackageEnabled(Ljava/lang/String;I)I
    .registers 3
    .annotation build Lcom/samsung/android/multiwindow/MultiWindowManager$SplitActivityPackageEnabledState;
    .end annotation

    .line 1920
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mSplitActivityController:Lcom/android/server/wm/SplitActivityController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/SplitActivityController;->getEnabled(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getSupportEmbedActivityPackages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1989
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_PACKAGE_ENABLED:Z

    if-nez v0, :cond_9

    .line 1990
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 1992
    :cond_9
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mActivityEmbeddedPackageRepository:Lcom/android/server/wm/ActivityEmbeddedPackageRepository;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->getActivityEmbeddedPackages()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSurfaceFreezerSnapshot(I)Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;
    .registers 9

    .line 1288
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1289
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingController;->findTaskForFreezerSnapshotLocked(I)Lcom/android/server/wm/Task;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_2a

    .line 1291
    sget-object p0, Lcom/android/server/wm/MultiTaskingController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSurfaceFreezerSnapshot: failed, cannot find tid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_104

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 1294
    :cond_2a
    :try_start_2a
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-eqz v3, :cond_e9

    .line 1296
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    if-eqz v4, :cond_e9

    .line 1297
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    if-nez v4, :cond_3e

    goto/16 :goto_e9

    .line 1301
    :cond_3e
    iget-object v4, p0, Lcom/android/server/wm/MultiTaskingController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 1304
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_5e

    iget-object v4, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 1305
    invoke-virtual {v4}, Lcom/android/server/wm/FreeformController;->getFreeformHeaderType()I

    move-result v4

    if-nez v4, :cond_5e

    .line 1306
    new-instance v4, Landroid/graphics/Point;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/server/wm/MultiTaskingController;->mFreeformHandlerOffset:F

    neg-float v6, v6

    float-to-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_5f

    :cond_5e
    move-object v4, v2

    .line 1309
    :goto_5f
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/MultiTaskingController;->mTmpRect:Landroid/graphics/Rect;

    .line 1308
    invoke-static {v5, v6, v2, v4}, Lcom/android/server/wm/SurfaceFreezer;->createSnapshotBuffer(Landroid/view/SurfaceControl;Landroid/graphics/Rect;[Landroid/view/SurfaceControl;Landroid/graphics/Point;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v4

    .line 1310
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_7f

    .line 1311
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->hasWallpaper()Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 1312
    iget-object v1, v3, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WallpaperController;->screenshotWallpaperLocked(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p0

    move-object v6, p0

    goto :goto_80

    :cond_7f
    move-object v6, v2

    .line 1314
    :goto_80
    monitor-exit v0
    :try_end_81
    .catchall {:try_start_2a .. :try_end_81} :catchall_104

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v4, :cond_8b

    .line 1318
    invoke-virtual {v4}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object p0

    goto :goto_8c

    :cond_8b
    move-object p0, v2

    :goto_8c
    if-eqz p0, :cond_d2

    .line 1319
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_d2

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v0

    if-gt v0, v1, :cond_9c

    goto :goto_d2

    .line 1323
    :cond_9c
    invoke-static {p0}, Landroid/graphics/GraphicBuffer;->createFromHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/graphics/GraphicBuffer;

    move-result-object v0

    .line 1324
    invoke-virtual {v4}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->containsSecureLayers()Z

    move-result v4

    .line 1325
    invoke-static {p0}, Lcom/android/server/wm/utils/RotationAnimationUtils;->hasProtectedContent(Landroid/hardware/HardwareBuffer;)Z

    move-result v5

    .line 1327
    invoke-static {v0}, Landroid/hardware/HardwareBuffer;->createFromGraphicBuffer(Landroid/graphics/GraphicBuffer;)Landroid/hardware/HardwareBuffer;

    move-result-object p0

    .line 1326
    invoke-static {p0, v2}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_c9

    .line 1329
    sget-object p0, Lcom/android/server/wm/MultiTaskingController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSurfaceFreezerSnapshot: failed to create bitmap, tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 1333
    :cond_c9
    new-instance v0, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;-><init>(Landroid/graphics/Bitmap;IZZLandroid/graphics/Bitmap;)V

    return-object v0

    .line 1320
    :cond_d2
    :goto_d2
    sget-object p0, Lcom/android/server/wm/MultiTaskingController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSurfaceFreezerSnapshot: failed to get buffer, tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 1298
    :cond_e9
    :goto_e9
    :try_start_e9
    sget-object p0, Lcom/android/server/wm/MultiTaskingController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSurfaceFreezerSnapshot: failed, not attached tid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    monitor-exit v0
    :try_end_100
    .catchall {:try_start_e9 .. :try_end_100} :catchall_104

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    :catchall_104
    move-exception p0

    .line 1314
    :try_start_105
    monitor-exit v0
    :try_end_106
    .catchall {:try_start_105 .. :try_end_106} :catchall_104

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getSystemUiUid()I
    .registers 6

    .line 2295
    iget v0, p0, Lcom/android/server/wm/MultiTaskingController;->mSystemUIUid:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    .line 2296
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    const-wide/32 v1, 0x100000

    const/4 v3, 0x0

    const-string v4, "com.android.systemui"

    .line 2297
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/MultiTaskingController;->mSystemUIUid:I

    .line 2299
    :cond_17
    iget p0, p0, Lcom/android/server/wm/MultiTaskingController;->mSystemUIUid:I

    return p0
.end method

.method public getTaskInfoFromPackageName(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1711
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1712
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1713
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1714
    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_20
    if-ltz v3, :cond_37

    .line 1716
    iget-object v4, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DisplayContent;

    .line 1717
    new-instance v5, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda16;

    invoke-direct {v5, p1, v2, v1}, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda16;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_20

    .line 1728
    :cond_37
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_9 .. :try_end_3d} :catchall_41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p0

    :catchall_41
    move-exception p0

    .line 1729
    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getTopPairPackageNamesLocked()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public handleMultiSplitAppMinSize(Lcom/android/server/wm/DisplayContent;)V
    .registers 7

    .line 2387
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2388
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mLastConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 2389
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    .line 2390
    iget v2, p0, Lcom/android/server/wm/MultiTaskingController;->mLastRotation:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v1, :cond_1a

    move v2, v3

    goto :goto_1b

    :cond_1a
    move v2, v4

    :goto_1b
    and-int/lit16 v0, v0, 0x1400

    if-nez v0, :cond_23

    if-eqz v2, :cond_22

    goto :goto_23

    :cond_22
    move v3, v4

    :cond_23
    :goto_23
    if-eqz v3, :cond_2c

    .line 2394
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    .line 2400
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingController;->ensureMultiSplitAppMinSize(Lcom/android/server/wm/TaskDisplayArea;)V

    :cond_2c
    if-eqz v2, :cond_30

    .line 2404
    iput v1, p0, Lcom/android/server/wm/MultiTaskingController;->mLastRotation:I

    :cond_30
    return-void
.end method

.method public hasMatchedActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z
    .registers 4

    .line 2179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2180
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mTmpFindTaskResult:Lcom/android/server/wm/MultiTaskingController$FindTasksResult;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/MultiTaskingController$FindTasksResult;->process(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowContainer;Ljava/util/ArrayList;)V

    .line 2181
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public initialize()V
    .registers 3

    .line 319
    new-instance v0, Lcom/android/server/wm/MultiTaskingController$H;

    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/MultiTaskingController$H;-><init>(Lcom/android/server/wm/MultiTaskingController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mH:Lcom/android/server/wm/MultiTaskingController$H;

    .line 320
    new-instance v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mH:Lcom/android/server/wm/MultiTaskingController$H;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;-><init>(Lcom/android/server/wm/MultiTaskingController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mSettingsObserver:Lcom/android/server/wm/MultiTaskingController$SettingsObserver;

    return-void
.end method

.method public interceptNewTaskIfNeededLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/uri/NeededUriGrants;Lcom/android/server/wm/ActivityStarter$Request;)Z
    .registers 7

    const/4 p0, 0x0

    return p0
.end method

.method public interceptStartActivityFromRecentsLocked(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;II)Z
    .registers 5

    if-eqz p2, :cond_5

    .line 377
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public interceptStartActivityLocked(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;IIILandroid/app/ActivityOptions;Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/wm/Task;ZLcom/android/server/wm/ActivityStarter$Request;)Z
    .registers 12

    const/4 p0, 0x0

    return p0
.end method

.method public isDeferredTaskFocusChange()Z
    .registers 1

    .line 1376
    iget-boolean p0, p0, Lcom/android/server/wm/MultiTaskingController;->mDeferFocusChanging:Z

    return p0
.end method

.method public isEnsureConfigDeferred()Z
    .registers 1

    .line 2090
    iget-boolean p0, p0, Lcom/android/server/wm/MultiTaskingController;->mDeferEnsureConfig:Z

    return p0
.end method

.method public isFullToSplitEnabled()Z
    .registers 1

    .line 1701
    iget-boolean p0, p0, Lcom/android/server/wm/MultiTaskingController;->mIsFullToSplitEnabled:Z

    return p0
.end method

.method public final isInImmersiveSplitModeArea(Lcom/android/server/wm/WindowState;II)Z
    .registers 7

    .line 1496
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1497
    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingController;->isInImmersiveSplitScreenMode()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_41

    .line 1498
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1499
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result p1

    if-nez p1, :cond_1c

    goto :goto_41

    .line 1504
    :cond_1c
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/wm/MultiTaskingController;->isInNavigationBarArea(Lcom/android/server/wm/DisplayContent;II)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_25

    :cond_23
    :goto_23
    move v2, v1

    goto :goto_41

    .line 1506
    :cond_25
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/wm/MultiTaskingController;->isInStatusBarArea(Lcom/android/server/wm/DisplayContent;II)Z

    move-result p1

    if-eqz p1, :cond_2c

    goto :goto_23

    .line 1509
    :cond_2c
    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1510
    iget p1, p0, Lcom/android/server/wm/MultiTaskingController;->mSwipeGestureThreshold:I

    if-lt p2, p1, :cond_23

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mTmpRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, p1

    if-le p2, p0, :cond_41

    goto :goto_23

    :cond_41
    :goto_41
    return v2
.end method

.method public isInImmersiveSplitScreenMode()Z
    .registers 1

    .line 1530
    sget-boolean p0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    if-nez p0, :cond_b

    sget-boolean p0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_NAVISTAR_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public final isInNavigationBarArea(Lcom/android/server/wm/DisplayContent;II)Z
    .registers 7

    .line 1430
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object p0

    const/4 p1, 0x1

    .line 1432
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsStateController;->peekSourceProvider(I)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 1434
    invoke-virtual {v0}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_16

    :cond_15
    move-object v0, v1

    :goto_16
    const/16 v2, 0x15

    .line 1436
    invoke-virtual {p0, v2}, Lcom/android/server/wm/InsetsStateController;->peekSourceProvider(I)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 1438
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    :cond_26
    if-eqz v0, :cond_34

    .line 1439
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_34

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-nez p0, :cond_42

    :cond_34
    if-eqz v1, :cond_43

    .line 1440
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_43

    invoke-virtual {v1, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_43

    :cond_42
    return p1

    :cond_43
    const/4 p0, 0x0

    return p0
.end method

.method public final isInSidesGestureArea(Lcom/android/server/wm/DisplayContent;II)Z
    .registers 5

    .line 1456
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object p0

    const/4 p1, 0x5

    .line 1457
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsStateController;->peekSourceProvider(I)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    move-result-object p1

    .line 1458
    invoke-virtual {p1}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object p1

    const/4 v0, 0x6

    .line 1459
    invoke-virtual {p0, v0}, Lcom/android/server/wm/InsetsStateController;->peekSourceProvider(I)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    move-result-object p0

    .line 1460
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object p0

    if-eqz p1, :cond_2c

    .line 1461
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_3a

    :cond_2c
    if-eqz p0, :cond_3c

    .line 1462
    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3c

    invoke-virtual {p0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_3c

    :cond_3a
    const/4 p0, 0x1

    return p0

    :cond_3c
    const/4 p0, 0x0

    return p0
.end method

.method public final isInStatusBarArea(Lcom/android/server/wm/DisplayContent;II)Z
    .registers 5

    .line 1447
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsStateController;->peekSourceProvider(I)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    move-result-object p0

    .line 1448
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object p0

    if-eqz p0, :cond_21

    .line 1449
    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_21

    const/4 p0, 0x1

    return p0

    :cond_21
    return p1
.end method

.method public final isInSwipeGestureArea(Lcom/android/server/wm/DisplayContent;II)Z
    .registers 7

    .line 1469
    iget-boolean v0, p0, Lcom/android/server/wm/MultiTaskingController;->mIsGestureTypeSideAndBottom:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1474
    :cond_6
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    const/4 v2, 0x0

    .line 1475
    invoke-virtual {p1, v0, v2}, Lcom/android/server/wm/DisplayContent;->calculateSystemGestureExclusion(Landroid/graphics/Region;Landroid/graphics/Region;)Z

    .line 1476
    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Region;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_28

    .line 1478
    :cond_1b
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/MultiTaskingController;->isInNavigationBarArea(Lcom/android/server/wm/DisplayContent;II)Z

    move-result v2

    if-nez v2, :cond_27

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/MultiTaskingController;->isInSidesGestureArea(Lcom/android/server/wm/DisplayContent;II)Z

    move-result p0

    if-eqz p0, :cond_28

    :cond_27
    const/4 v1, 0x1

    .line 1481
    :cond_28
    :goto_28
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    return v1
.end method

.method public final isInThreeButtonsGestureArea(Lcom/android/server/wm/DisplayContent;II)Z
    .registers 4

    .line 1487
    new-instance p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda19;

    invoke-direct {p0}, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda19;-><init>()V

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_1b

    .line 1489
    iget-boolean p1, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz p1, :cond_10

    goto :goto_1b

    .line 1492
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x0

    return p0
.end method

.method public final isMultiWindowActivated(Lcom/android/server/wm/DisplayContent;)Z
    .registers 4

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 1521
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    .line 1522
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    return v1

    :cond_10
    const/4 v0, 0x5

    .line 1525
    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInWindowingMode(I)Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 1526
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1e

    move p0, v1

    :cond_1e
    return p0
.end method

.method public isNavigationBarSideBottomGestureEnabled()Z
    .registers 2

    .line 1549
    iget-boolean v0, p0, Lcom/android/server/wm/MultiTaskingController;->mIsNavigationModeGesture:Z

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/android/server/wm/MultiTaskingController;->mIsGestureTypeSideAndBottom:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final isShowingTransientBars(Lcom/android/server/wm/DisplayContent;)Z
    .registers 5

    .line 1535
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object p1

    const/4 v0, 0x0

    .line 1536
    invoke-virtual {p1, v0}, Lcom/android/server/wm/InsetsPolicy;->isTransient(I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2f

    invoke-virtual {p1, v2}, Lcom/android/server/wm/InsetsPolicy;->isTransient(I)Z

    move-result v1

    if-nez v1, :cond_2f

    const/16 v1, 0x15

    .line 1537
    invoke-virtual {p1, v1}, Lcom/android/server/wm/InsetsPolicy;->isTransient(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_2f

    .line 1540
    :cond_1b
    iget-boolean p0, p0, Lcom/android/server/wm/MultiTaskingController;->mIsGestureTypeSideAndBottom:Z

    if-eqz p0, :cond_2e

    const/4 p0, 0x6

    invoke-virtual {p1, p0}, Lcom/android/server/wm/InsetsPolicy;->isTransient(I)Z

    move-result p0

    if-nez p0, :cond_2d

    const/4 p0, 0x5

    .line 1541
    invoke-virtual {p1, p0}, Lcom/android/server/wm/InsetsPolicy;->isTransient(I)Z

    move-result p0

    if-eqz p0, :cond_2e

    :cond_2d
    return v2

    :cond_2e
    return v0

    :cond_2f
    :goto_2f
    return v2
.end method

.method public isSplitActivityPackageBlocked(Ljava/lang/String;ILcom/android/server/wm/TaskFragment;)Z
    .registers 7

    .line 1952
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/MultiTaskingController;->getSplitActivityPackageEnabled(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_9

    return v1

    :cond_9
    if-eqz p3, :cond_f

    .line 1956
    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/wm/MultiTaskingController;->setSplitActivityPackageEnabled(Ljava/lang/String;II)V

    return v1

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public final isVerticalDivision(II)Z
    .registers 4

    and-int/lit8 p0, p1, 0x8

    const/4 v0, 0x1

    if-eqz p0, :cond_a

    and-int/lit8 p0, p2, 0x20

    if-eqz p0, :cond_a

    return v0

    :cond_a
    and-int/lit8 p0, p2, 0x8

    if-eqz p0, :cond_13

    and-int/lit8 p0, p1, 0x20

    if-eqz p0, :cond_13

    return v0

    :cond_13
    if-nez p1, :cond_18

    if-nez p2, :cond_18

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public minimizeAllTasksLocked(IZ)V
    .registers 4

    const/4 v0, -0x1

    .line 770
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/MultiTaskingController;->minimizeAllTasksLocked(IZI)V

    return-void
.end method

.method public minimizeAllTasksLocked(IZI)V
    .registers 11

    .line 775
    iget-object p3, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p3, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-nez v3, :cond_b

    return-void

    .line 779
    :cond_b
    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz p3, :cond_25

    .line 780
    sget-object p3, Lcom/android/server/wm/MultiTaskingController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "minimizeAllFreeformTasks: displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :cond_25
    sget-boolean p3, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_BLOCKED_MINIMIZED_FREEFORM_ENABLED:Z

    if-eqz p3, :cond_37

    .line 791
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result p3

    if-nez p3, :cond_37

    .line 792
    sget-object p0, Lcom/android/server/wm/MultiTaskingController;->TAG:Ljava/lang/String;

    const-string p1, "Blocked minimized freeform by multistar"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_37
    const/4 v5, -0x1

    .line 801
    :try_start_38
    iget-object p3, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 803
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p3

    new-instance v6, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda22;

    move-object v0, v6

    move-object v1, p0

    move v2, p2

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/wm/MultiTaskingController;ZLcom/android/server/wm/DisplayContent;II)V

    const/4 p1, 0x0

    invoke-virtual {p3, v6, p1}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;Z)V
    :try_end_4e
    .catchall {:try_start_38 .. :try_end_4e} :catchall_54

    .line 816
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    return-void

    :catchall_54
    move-exception p1

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 817
    throw p1
.end method

.method public minimizeTaskLocked(Lcom/android/server/wm/Task;Z)Z
    .registers 4

    const/4 v0, -0x1

    .line 751
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/server/wm/MultiTaskingController;->minimizeTaskLocked(Lcom/android/server/wm/Task;ZII)Z

    move-result p0

    return p0
.end method

.method public minimizeTaskLocked(Lcom/android/server/wm/Task;ZII)Z
    .registers 12

    if-eqz p1, :cond_4c

    .line 717
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->canMinimize()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_4c

    .line 721
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 725
    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->isInputMethodTargetTaskAndShowing(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 726
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isImeShowing()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 729
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object p3

    const/16 p4, 0x1f

    invoke-virtual {p3, p4}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod(I)V

    .line 731
    iget p3, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iput p3, p0, Lcom/android/server/wm/MultiTaskingController;->mPendingMoveToBackTaskId:I

    .line 732
    new-instance p3, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda17;

    invoke-direct {p3, p0, p1, p2}, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/wm/MultiTaskingController;Lcom/android/server/wm/Task;Z)V

    iput-object p3, p0, Lcom/android/server/wm/MultiTaskingController;->mMoveToBackTaskWithIme:Ljava/lang/Runnable;

    .line 741
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mH:Lcom/android/server/wm/MultiTaskingController$H;

    const-wide/16 p1, 0x190

    invoke-virtual {p0, p3, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p0, 0x1

    return p0

    :cond_40
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p1

    move-object v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 746
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/Task;->moveTaskToBack(Lcom/android/server/wm/Task;Landroid/os/Bundle;ZZII)Z

    move-result p0

    return p0

    :cond_4c
    :goto_4c
    const/4 p0, 0x0

    return p0
.end method

.method public moveFreeformTaskToSplitLocked(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;)V
    .registers 5

    .line 1119
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 1120
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->supportsSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 1121
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v0

    if-eqz v0, :cond_14

    goto/16 :goto_8b

    .line 1125
    :cond_14
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 1126
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v0, :cond_75

    if-eqz v1, :cond_75

    .line 1127
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    if-eqz v1, :cond_27

    goto :goto_75

    .line 1132
    :cond_27
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v0

    if-nez v0, :cond_54

    .line 1133
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 1136
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->supportsSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 1137
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1138
    :cond_4c
    sget-object p0, Lcom/android/server/wm/MultiTaskingController;->TAG:Ljava/lang/String;

    const-string p1, "moveFreeformTaskToSplitLocked: there is no top task that supports multi-window."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1143
    :cond_54
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mWm:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    const/4 v0, 0x0

    if-eqz p2, :cond_68

    .line 1144
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getSplitPosition()I

    move-result v1

    if-eqz v1, :cond_68

    .line 1145
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getSplitPosition()I

    move-result v1

    goto :goto_69

    :cond_68
    move v1, v0

    :goto_69
    if-eqz p2, :cond_70

    .line 1146
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->needToReparentCell()Z

    move-result p2

    goto :goto_71

    :cond_70
    move p2, v0

    .line 1143
    :goto_71
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/wm/TaskOrganizerController;->onFreeformToSplitRequested(Lcom/android/server/wm/Task;ZIZ)V

    return-void

    .line 1128
    :cond_75
    :goto_75
    sget-object p0, Lcom/android/server/wm/MultiTaskingController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "moveFreeformTaskToSplitLocked: failed, no display, t="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8b
    :goto_8b
    return-void
.end method

.method public moveSplitTaskToFreeformLocked(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V
    .registers 7

    .line 1084
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    const/4 v0, 0x0

    .line 1086
    :try_start_6
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_54

    .line 1087
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_54

    :cond_13
    if-eqz p2, :cond_23

    .line 1091
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_23

    .line 1092
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, p1, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    goto :goto_26

    :cond_23
    const/4 p2, 0x0

    .line 1096
    iput-object p2, p1, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 1099
    :goto_26
    iget-object p2, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lcom/android/server/wm/ChangeTransitionController;->setSwitchingSplitScreen(Z)V

    .line 1104
    iget-object p2, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/16 v2, 0x66

    .line 1106
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 1104
    invoke-virtual {p2, v2, v0, p1, v3}, Lcom/android/server/wm/TransitionController;->requestTransitionIfNeeded(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;

    .line 1108
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p2

    const v1, 0x7fffffff

    invoke-virtual {p1, p2, v1}, Lcom/android/server/wm/WindowContainer;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    const/4 p2, 0x5

    .line 1109
    invoke-virtual {p1, p2}, Lcom/android/server/wm/Task;->setWindowingMode(I)V
    :try_end_47
    .catchall {:try_start_6 .. :try_end_47} :catchall_61

    .line 1111
    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1113
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ChangeTransitionController;->setSwitchingSplitScreen(Z)V

    return-void

    .line 1111
    :cond_54
    :goto_54
    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1113
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ChangeTransitionController;->setSwitchingSplitScreen(Z)V

    return-void

    :catchall_61
    move-exception p1

    .line 1111
    iget-object p2, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1113
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ChangeTransitionController;->setSwitchingSplitScreen(Z)V

    .line 1115
    throw p1
.end method

.method public notifyFinishRecentsAnimation(Z)V
    .registers 4

    .line 1580
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mH:Lcom/android/server/wm/MultiTaskingController$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1581
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mH:Lcom/android/server/wm/MultiTaskingController$H;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 1582
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyFocusedDisplayChangedLocked(I)V
    .registers 3

    .line 969
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mH:Lcom/android/server/wm/MultiTaskingController$H;

    new-instance v0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda21;

    invoke-direct {v0, p1}, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda21;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyNaturalSwitchingFinish()V
    .registers 3

    .line 1666
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mH:Lcom/android/server/wm/MultiTaskingController$H;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1667
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mH:Lcom/android/server/wm/MultiTaskingController$H;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyNaturalSwitchingStart()V
    .registers 3

    .line 1661
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mH:Lcom/android/server/wm/MultiTaskingController$H;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1662
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mH:Lcom/android/server/wm/MultiTaskingController$H;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifySecureWindowAdded(Lcom/android/server/wm/WindowState;)V
    .registers 2

    .line 675
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 676
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    return-void
.end method

.method public notifySecureWindowRemoved(Lcom/android/server/wm/WindowState;)V
    .registers 2

    .line 692
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 693
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    return-void
.end method

.method public notifyStartHomeAnimation(Z)V
    .registers 4

    .line 1586
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mH:Lcom/android/server/wm/MultiTaskingController$H;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1587
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mH:Lcom/android/server/wm/MultiTaskingController$H;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 1588
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyStartRecentsAnimation(Z)V
    .registers 4

    .line 1574
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mH:Lcom/android/server/wm/MultiTaskingController$H;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1575
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mH:Lcom/android/server/wm/MultiTaskingController$H;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 1576
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyWallpaperVisibilityChanged(Lcom/android/server/wm/DisplayContent;)V
    .registers 7

    .line 1592
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 1594
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mH:Lcom/android/server/wm/MultiTaskingController$H;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1596
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    move-result v0

    const/4 v2, 0x1

    new-array v2, v2, [Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v3

    .line 1598
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    new-instance v4, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda11;

    invoke-direct {v4, v2}, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda11;-><init>([Z)V

    invoke-virtual {p1, v4}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Predicate;)Z

    .line 1606
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mH:Lcom/android/server/wm/MultiTaskingController$H;

    aget-boolean p1, v2, v3

    invoke-virtual {p0, v1, v0, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 1607
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onChangeTransitStateReadyLocked()V
    .registers 1

    .line 1626
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mNaturalSwitchingController:Lcom/android/server/wm/NaturalSwitchingController;

    invoke-virtual {p0}, Lcom/android/server/wm/NaturalSwitchingController;->onChangeTransitStateReady()V

    return-void
.end method

.method public onStopFreezingDisplayLocked(I)V
    .registers 3

    .line 1632
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppPairController:Lcom/android/server/wm/AppPairController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppPairController;->onStopFreezingDisplayLocked()V

    .line 1636
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mNaturalSwitchingController:Lcom/android/server/wm/NaturalSwitchingController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/NaturalSwitchingController;->onStopFreezingDisplay(I)V

    return-void
.end method

.method public performDisplayOverrideConfigUpdate(IIFFLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 15

    .line 330
    sget-object v0, Lcom/android/server/wm/MultiTaskingController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConfigurationChangedLocked: display#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", configChanges=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", scaleW="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", scaleH="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", prevScreenBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", nextScreenBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 330
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/FreeformController;->performDisplayOverrideConfigUpdate(IIFFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    if-nez p2, :cond_55

    .line 347
    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingController;->updateSystemGestureThreshold()V

    :cond_55
    return-void
.end method

.method public final preventNaturalSwitching()Z
    .registers 4

    .line 1349
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    .line 1350
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1351
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootMainStageTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "com.samsung.android.multiwindow.ignore.trim.task"

    if-eqz v0, :cond_30

    .line 1353
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 1354
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_30

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_30

    .line 1355
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    return v1

    .line 1359
    :cond_30
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootSideStageTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_55

    .line 1360
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootSideStageTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_55

    .line 1362
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_55

    .line 1363
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz p0, :cond_55

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_55

    .line 1364
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_55

    return v1

    :cond_55
    const/4 p0, 0x0

    return p0
.end method

.method public final printAllTasksLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/wm/WindowContainer;I)V
    .registers 7

    .line 2345
    invoke-virtual {p3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p3

    if-nez p3, :cond_7

    return-void

    .line 2349
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "Root #"

    goto :goto_1a

    :cond_18
    const-string v1, "Leaf #"

    :goto_1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2350
    iget-object p4, p3, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    :goto_37
    if-ltz p4, :cond_58

    .line 2351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p3, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p0, p1, v0, v1, p4}, Lcom/android/server/wm/MultiTaskingController;->printAllTasksLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/wm/WindowContainer;I)V

    add-int/lit8 p4, p4, -0x1

    goto :goto_37

    :cond_58
    return-void
.end method

.method public final printTaskDisplayAreaLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/wm/WindowContainer;)V
    .registers 8

    .line 2333
    invoke-virtual {p3}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_57

    .line 2334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "TaskDisplayArea: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2335
    invoke-virtual {p3, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    .line 2336
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    const-string v3, "  "

    if-eqz v2, :cond_42

    .line 2337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/wm/MultiTaskingController;->printTaskDisplayAreaLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/wm/WindowContainer;)V

    goto :goto_54

    .line 2340
    :cond_42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/android/server/wm/MultiTaskingController;->printAllTasksLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/wm/WindowContainer;I)V

    :goto_54
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_57
    return-void
.end method

.method public readAllSettings()V
    .registers 3

    .line 353
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mSettingsObserver:Lcom/android/server/wm/MultiTaskingController$SettingsObserver;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->readSettings(Landroid/net/Uri;Z)V

    return-void
.end method

.method public final registerDemoResetReceiver()V
    .registers 5

    .line 1274
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.sea.rm.DEMO_RESET_STARTED"

    .line 1275
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    .line 1276
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1277
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController;->mDemoResetStartedReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mH:Lcom/android/server/wm/MultiTaskingController$H;

    const-string v3, "android.permission.MANAGE_ACTIVITY_STACKS"

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public registerMinimizeAllReceiver()V
    .registers 5

    .line 824
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.multiwindow.MINIMIZE_ALL"

    .line 825
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.multiwindow.MINIMIZE_ALL_BY_SYSTEM"

    .line 826
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 827
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController;->mMinimizeAllReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mH:Lcom/android/server/wm/MultiTaskingController$H;

    const-string v3, "android.permission.MANAGE_ACTIVITY_STACKS"

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public registerNaturalSwitchingListener(Lcom/samsung/android/multiwindow/INaturalSwitchingListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_f

    .line 1645
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mRemoteNaturalSwitchingListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 1646
    :try_start_5
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mRemoteNaturalSwitchingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1647
    monitor-exit v0

    goto :goto_f

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p0

    :cond_f
    :goto_f
    return-void
.end method

.method public registerRemoteAppTransitionListener(Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;)V
    .registers 3

    .line 1562
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mRemoteAppTransitionListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 1563
    :try_start_3
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mRemoteAppTransitionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1564
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public removeEmbedActivityProcessIfNeeded(Ljava/lang/String;I)V
    .registers 5

    .line 2056
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_d} :catch_57

    if-eqz p1, :cond_57

    .line 2061
    iget-object p2, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p2, v0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Ljava/lang/String;I)Lcom/android/server/wm/WindowProcessController;

    move-result-object p1

    if-eqz p1, :cond_57

    .line 2064
    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result p2

    sget v0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne p2, v0, :cond_4d

    .line 2065
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz p0, :cond_4c

    .line 2066
    sget-object p0, Lcom/android/server/wm/MultiTaskingController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Do not kill system process, app="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " callers="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x3

    .line 2067
    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2066
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    return-void

    .line 2071
    :cond_4d
    iget-object p2, p0, Lcom/android/server/wm/MultiTaskingController;->mH:Lcom/android/server/wm/MultiTaskingController$H;

    new-instance v0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/MultiTaskingController;Lcom/android/server/wm/WindowProcessController;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :catch_57
    :cond_57
    return-void
.end method

.method public removeEmbedActivityTaskAndProcessIfNeeded(Lcom/android/server/wm/Task;)V
    .registers 5

    .line 2037
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRootProcess()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 2039
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v1

    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v1, v2, :cond_36

    .line 2040
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz p0, :cond_35

    .line 2041
    sget-object p0, Lcom/android/server/wm/MultiTaskingController;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Do not kill system process, app="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " callers="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x3

    .line 2042
    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2041
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    return-void

    .line 2046
    :cond_36
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mH:Lcom/android/server/wm/MultiTaskingController$H;

    new-instance v2, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/wm/MultiTaskingController;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/Task;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_40
    return-void
.end method

.method public removeEmbedActivityTaskIfNeeded(Ljava/lang/String;I)V
    .registers 8

    .line 2000
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2001
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2002
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    new-instance v3, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda13;

    invoke-direct {v3, p0, p2, p1, v1}, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/wm/MultiTaskingController;ILjava/lang/String;Ljava/util/ArrayList;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 2010
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 2011
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/MultiTaskingController;->removeEmbedActivityProcessIfNeeded(Ljava/lang/String;I)V

    .line 2012
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_55

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2015
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_30
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_50

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/Task;

    .line 2016
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 2017
    iput-boolean v4, p2, Lcom/android/server/wm/Task;->mIsWaitingRemoveEmbedActivityTask:Z

    .line 2018
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/wm/Task;->moveTaskToBack(Lcom/android/server/wm/Task;)Z

    goto :goto_30

    .line 2020
    :cond_4c
    invoke-virtual {p0, p2}, Lcom/android/server/wm/MultiTaskingController;->removeEmbedActivityTaskAndProcessIfNeeded(Lcom/android/server/wm/Task;)V

    goto :goto_30

    .line 2023
    :cond_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_2c .. :try_end_51} :catchall_55

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
.end method

.method public removeFocusedTask(I)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_5

    return v0

    .line 1738
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1739
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    if-nez p1, :cond_1c

    .line 1741
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :cond_1c
    const/4 v2, 0x1

    :try_start_1d
    new-array v2, v2, [Z

    aput-boolean v0, v2, v0

    .line 1745
    new-instance v3, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda12;

    invoke-direct {v3, p0, v2}, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/wm/MultiTaskingController;[Z)V

    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowContainer;->forAllTaskDisplayAreas(Ljava/util/function/Consumer;)V

    aget-boolean p0, v2, v0

    .line 1764
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_1d .. :try_end_2c} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_30
    move-exception p0

    .line 1765
    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public removeMoveToBackTaskWithIme(I)V
    .registers 3

    .line 755
    iget v0, p0, Lcom/android/server/wm/MultiTaskingController;->mPendingMoveToBackTaskId:I

    if-ne v0, p1, :cond_b

    .line 756
    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingController;->mH:Lcom/android/server/wm/MultiTaskingController$H;

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mMoveToBackTaskWithIme:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_b
    return-void
.end method

.method public removeSplitActivityInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1883
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mSplitActivityInfoRepository:Lcom/android/server/wm/SplitActivityInfoRepository;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/SplitActivityInfoRepository;->remove(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeWaitingEmbedActivityTaskIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 2027
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2028
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 2029
    iget-boolean v1, p1, Lcom/android/server/wm/Task;->mIsWaitingRemoveEmbedActivityTask:Z

    if-nez v1, :cond_13

    goto :goto_1b

    .line 2032
    :cond_13
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingController;->removeEmbedActivityTaskAndProcessIfNeeded(Lcom/android/server/wm/Task;)V

    .line 2033
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_20

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2030
    :cond_1b
    :goto_1b
    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_20

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_20
    move-exception p0

    .line 2033
    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public retrieveSettings()V
    .registers 1

    .line 404
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mSettingsObserver:Lcom/android/server/wm/MultiTaskingController$SettingsObserver;

    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->initSettings()V

    return-void
.end method

.method public setEmbedActivityPackageEnabled(Ljava/lang/String;ZI)V
    .registers 5

    if-eqz p2, :cond_4

    const/4 p2, 0x1

    goto :goto_5

    :cond_4
    const/4 p2, 0x2

    .line 1973
    :goto_5
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mActivityEmbeddedController:Lcom/android/server/wm/ActivityEmbeddedController;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/wm/ActivityEmbeddedController;->getEnabled(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, p2, :cond_12

    return-void

    .line 1976
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mActivityEmbeddedController:Lcom/android/server/wm/ActivityEmbeddedController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/ActivityEmbeddedController;->setEnabled(Ljava/lang/String;II)V

    .line 1977
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/MultiTaskingController;->removeEmbedActivityTaskIfNeeded(Ljava/lang/String;I)V

    return-void
.end method

.method public setRelationSplitActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 1901
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->addTargetSplitActivities(Lcom/android/server/wm/ActivityRecord;)V

    const/4 p0, 0x1

    .line 1902
    invoke-virtual {p2, p1, p0}, Lcom/android/server/wm/ActivityRecord;->setSourceSplitActivity(Lcom/android/server/wm/ActivityRecord;Z)V

    return-void
.end method

.method public setSplitActivityPackageEnabled(Ljava/lang/String;II)V
    .registers 5
    .param p2    # I
        .annotation build Lcom/samsung/android/multiwindow/MultiWindowManager$SplitActivityPackageEnabledState;
        .end annotation
    .end param

    .line 1925
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/MultiTaskingController;->getSplitActivityPackageEnabled(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, p2, :cond_7

    return-void

    .line 1928
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mSplitActivityController:Lcom/android/server/wm/SplitActivityController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/SplitActivityController;->setEnabled(Ljava/lang/String;II)V

    .line 1929
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingController;->updateSplitActivityPackageTasks(Ljava/lang/String;)V

    return-void
.end method

.method public setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    .line 325
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController;->mWm:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method public shouldIgnoreTaskFocusChange(Lcom/android/server/wm/InputTarget;III)Z
    .registers 10

    .line 1381
    iget-boolean v0, p0, Lcom/android/server/wm/MultiTaskingController;->mIsNavigationModeGesture:Z

    const/4 v1, 0x0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingController;->isInImmersiveSplitScreenMode()Z

    move-result v0

    if-nez v0, :cond_c

    return v1

    .line 1385
    :cond_c
    invoke-interface {p1}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object p1

    .line 1386
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2f

    .line 1389
    iget-boolean v3, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v3, :cond_2f

    .line 1390
    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiTaskingController;->isMultiWindowActivated(Lcom/android/server/wm/DisplayContent;)Z

    move-result v3

    .line 1392
    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingController;->isInImmersiveSplitScreenMode()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_2d

    move v4, v2

    goto :goto_31

    :cond_2d
    move v4, v1

    goto :goto_31

    :cond_2f
    move v3, v1

    move v4, v3

    :goto_31
    if-nez v3, :cond_3b

    if-nez v4, :cond_3b

    .line 1396
    iput-boolean v1, p0, Lcom/android/server/wm/MultiTaskingController;->mDeferFocusChanging:Z

    if-eqz p2, :cond_3a

    move v1, v2

    :cond_3a
    return v1

    :cond_3b
    if-eqz p2, :cond_56

    if-eq p2, v2, :cond_47

    const/4 p1, 0x3

    if-eq p2, p1, :cond_43

    goto :goto_6b

    .line 1420
    :cond_43
    iput-boolean v1, p0, Lcom/android/server/wm/MultiTaskingController;->mDeferFocusChanging:Z

    :cond_45
    :goto_45
    move v1, v2

    goto :goto_6b

    .line 1411
    :cond_47
    iget-boolean p1, p0, Lcom/android/server/wm/MultiTaskingController;->mDeferFocusChanging:Z

    if-eqz p1, :cond_45

    .line 1412
    iput-boolean v1, p0, Lcom/android/server/wm/MultiTaskingController;->mDeferFocusChanging:Z

    if-eqz v4, :cond_6b

    .line 1413
    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiTaskingController;->isShowingTransientBars(Lcom/android/server/wm/DisplayContent;)Z

    move-result p0

    if-eqz p0, :cond_6b

    goto :goto_45

    .line 1403
    :cond_56
    invoke-virtual {p0, v0, p3, p4}, Lcom/android/server/wm/MultiTaskingController;->isInSwipeGestureArea(Lcom/android/server/wm/DisplayContent;II)Z

    move-result p2

    if-nez p2, :cond_68

    .line 1404
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/wm/MultiTaskingController;->isInImmersiveSplitModeArea(Lcom/android/server/wm/WindowState;II)Z

    move-result p1

    if-nez p1, :cond_68

    .line 1405
    invoke-virtual {p0, v0, p3, p4}, Lcom/android/server/wm/MultiTaskingController;->isInThreeButtonsGestureArea(Lcom/android/server/wm/DisplayContent;II)Z

    move-result p1

    if-eqz p1, :cond_6b

    .line 1406
    :cond_68
    iput-boolean v2, p0, Lcom/android/server/wm/MultiTaskingController;->mDeferFocusChanging:Z

    goto :goto_45

    :cond_6b
    :goto_6b
    return v1
.end method

.method public showCanNotSwitchUserToast()V
    .registers 1

    .line 1220
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {p0}, Lcom/android/server/wm/DexController;->showCanNotSwitchUserToast()V

    return-void
.end method

.method public showOverlayAllApps(Landroid/os/IBinder;[I)V
    .registers 6

    .line 1193
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1194
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_5a

    .line 1195
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_5a

    .line 1199
    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_76

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1200
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 1201
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v0

    const-string/jumbo v1, "split_stage_position"

    .line 1202
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "all_apps_button_position"

    .line 1203
    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    const-string p2, "com.samsung.android.app.appsedge"

    const-string v1, "com.samsung.android.app.appsedge.allapps.overlay.OverlayAllAppsService"

    .line 1204
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1205
    sget-object p2, Lcom/android/server/wm/MultiTaskingController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showOverlayAllApps: send stageType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    iget-object p2, p0, Lcom/android/server/wm/MultiTaskingController;->mH:Lcom/android/server/wm/MultiTaskingController$H;

    new-instance v0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/wm/MultiTaskingController;Landroid/content/Intent;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1196
    :cond_5a
    :goto_5a
    :try_start_5a
    sget-object p0, Lcom/android/server/wm/MultiTaskingController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showOverlayAllApps: activity is not in stage, token="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    monitor-exit v0
    :try_end_72
    .catchall {:try_start_5a .. :try_end_72} :catchall_76

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_76
    move-exception p0

    .line 1199
    :try_start_77
    monitor-exit v0
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public startUser(IZZ)V
    .registers 4

    .line 1685
    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingController;->mH:Lcom/android/server/wm/MultiTaskingController$H;

    new-instance p3, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p2}, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/MultiTaskingController;Z)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public supportMultiSplitAppMinimumSizeLocked()Z
    .registers 1

    .line 2467
    iget-boolean p0, p0, Lcom/android/server/wm/MultiTaskingController;->mIsSplitScreenFeasible:Z

    return p0
.end method

.method public supportSplitActivity(Landroid/content/pm/ApplicationInfo;)Z
    .registers 2

    if-eqz p1, :cond_e

    .line 1893
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mSplitActivityInfoRepository:Lcom/android/server/wm/SplitActivityInfoRepository;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/SplitActivityInfoRepository;->hasInfo(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public unregisterNaturalSwitchingListener(Lcom/samsung/android/multiwindow/INaturalSwitchingListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_f

    .line 1654
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mRemoteNaturalSwitchingListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 1655
    :try_start_5
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mRemoteNaturalSwitchingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1656
    monitor-exit v0

    goto :goto_f

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p0

    :cond_f
    :goto_f
    return-void
.end method

.method public unregisterRemoteAppTransitionListener(Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;)V
    .registers 3

    .line 1568
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mRemoteAppTransitionListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 1569
    :try_start_3
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mRemoteAppTransitionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1570
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public updateEmbedActivityPackageEnabled(Ljava/lang/String;IIZ)V
    .registers 6

    .line 1982
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mActivityEmbeddedController:Lcom/android/server/wm/ActivityEmbeddedController;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/wm/ActivityEmbeddedController;->getEnabled(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_e

    if-eqz p4, :cond_17

    .line 1984
    :cond_e
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mActivityEmbeddedController:Lcom/android/server/wm/ActivityEmbeddedController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityEmbeddedController;->setEnabled(Ljava/lang/String;II)V

    :cond_17
    return-void
.end method

.method public updateMultiSplitAppMinimumSizeLocked()V
    .registers 1

    return-void
.end method

.method public final updateSplitActivityPackageTasks(Ljava/lang/String;)V
    .registers 6

    .line 1933
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1934
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1935
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda24;

    invoke-direct {v2, p1, v1}, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda24;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Predicate;)Z

    .line 1942
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1d
    :goto_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/Task;

    .line 1943
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1944
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1945
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    goto :goto_1d

    .line 1948
    :cond_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_5 .. :try_end_3e} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_42
    move-exception p0

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final updateSystemGestureThreshold()V
    .registers 3

    .line 1553
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mWm:Lcom/android/server/wm/WindowManagerService;

    .line 1554
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10504d8

    .line 1555
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/MultiTaskingController;->mSwipeGestureThreshold:I

    return-void
.end method
