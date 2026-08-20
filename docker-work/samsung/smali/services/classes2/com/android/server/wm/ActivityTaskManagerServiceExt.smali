.class public Lcom/android/server/wm/ActivityTaskManagerServiceExt;
.super Ljava/lang/Object;
.source "ActivityTaskManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityTaskManagerServiceExt$RefreshRateBlockList;
    }
.end annotation


# static fields
.field public static final ACTION_KDDI_SCREEN_PINNING_CONDITION:Ljava/lang/String; = "com.kddi.agent.action.SCREEN_PINNING_CONDITION"

.field public static final ACTION_LOCK_TASK_MODE:Ljava/lang/String; = "com.samsung.android.action.LOCK_TASK_MODE"

.field public static final APPLOCK_PACKAGE:Ljava/lang/String; = "com.samsung.android.applock"

.field public static final CHECK_APPLOCK_SERVICE:Ljava/lang/String; = "com.samsung.android.intent.action.CHECK_APPLOCK_SERVICE"

.field public static final MAX_KEEP_ALIVE_ACTIVITIES:I = 0x2

.field public static final META_DATA_AUTO_OPEN_LAST_APP_IGNORE:Ljava/lang/String; = "com.samsung.android.dex.autoopenlastapp.ignore"

.field public static final PERMISSION_LOCK_TASK_MODE:Ljava/lang/String; = "com.samsung.android.permission.LOCK_TASK_MODE"

.field public static final PKG_SYSTEMUI:Ljava/lang/String; = "com.android.systemui"

.field public static final TAG:Ljava/lang/String; = "ActivityTaskManagerServiceExt"


# instance fields
.field public mActivityEmbeddedController:Lcom/android/server/wm/ActivityEmbeddedController;

.field public mAppContinuityController:Lcom/android/server/wm/AppContinuityController;

.field public mAppLockIsInMultiWindowMode:Z

.field public mAvoidCompatDisplayInsets:Z

.field public final mContext:Landroid/content/Context;

.field public final mCoreStateController:Lcom/android/server/wm/CoreStateController;

.field public mCustomAspectRatioController:Lcom/android/server/wm/CustomAspectRatioController;

.field public final mDefaultFullScreenPackagesFromScpm:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

.field public mDesktopModeManagerInternal:Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

.field public mDisplayCompatController:Lcom/android/server/wm/DisplayCompatController;

.field public mDisplayCutoutController:Lcom/android/server/wm/DisplayCutoutController;

.field public mFixedAspectRatioController:Lcom/android/server/wm/FixedAspectRatioController;

.field public mFlexPanelController:Lcom/android/server/wm/FlexPanelController;

.field public mHasActivitiesKeptAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mHighRefreshRateBlockList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

.field public mKeepAliveActivities:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/android/server/wm/ActivityRecord;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final mLowRefreshRateList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

.field public final mNaviAppLowRefreshRateList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

.field public mNoWaitRotationController:Lcom/android/server/wm/NoWaitRotationController;

.field public mOrientationController:Lcom/android/server/wm/OrientationController;

.field public final mPackageFeatureManagerService:Lcom/android/server/wm/PackageFeatureManagerService;

.field public mRestartAppPolicy:Lcom/android/server/wm/RestartAppPolicy;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mSmRccPolicy:Lcom/android/internal/app/SmRccPolicy;

.field public mSplitActivityController:Lcom/android/server/wm/SplitActivityController;

.field public final mStartedUserIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mSysUiPid:I

.field public mSystemReady:Z


# direct methods
.method public static synthetic $r8$lambda$2vvnRBxzeikLd_cRMxXCTVv483A(Lcom/android/server/wm/ActivityTaskManagerServiceExt;IZZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->lambda$startUser$3(IZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$2xXXZzgs1rK3t5Olh9o_EusW7fg(Lcom/android/server/wm/ActivityTaskManagerServiceExt;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->lambda$stopUser$4(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$4wNw4uz5tI10gdWqu2zONAWYYQk(Lcom/android/server/wm/ActivityRecord;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->lambda$startAppLockActivity$1(Lcom/android/server/wm/ActivityRecord;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AawSiaz_V9koIdJY9Z27hJiWvLQ(Lcom/android/server/wm/ActivityTaskManagerServiceExt;Ljava/lang/String;IZLandroid/content/Intent;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->lambda$checkAppLockState$0(Ljava/lang/String;IZLandroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UhbBFsPbzMEqR8ouAZVGFRhAX_U(ILjava/lang/String;Lcom/android/server/wm/Task;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->lambda$hasPackageTask$6(ILjava/lang/String;Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$bDKF4_3DYyQfcfU2uGsZ40G3DIo(I)[Ljava/lang/Integer;
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->lambda$removeTaskByIdIfNeededLocked$2(I)[Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cLU7EqjJrG1Cbkhx-Eat6a_t71M(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->isValidActivityForForeground(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$tRWlBol1IRNBkrXf3LASmM0qcis(Lcom/android/server/wm/ActivityTaskManagerServiceExt;Ljava/lang/String;Lcom/android/server/wm/Task;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->lambda$clearHomeStack$5(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 7

    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mStartedUserIds:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mAppLockIsInMultiWindowMode:Z

    .line 574
    new-instance v1, Lcom/android/server/wm/PackageFeatureManagerService;

    invoke-direct {v1}, Lcom/android/server/wm/PackageFeatureManagerService;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mPackageFeatureManagerService:Lcom/android/server/wm/PackageFeatureManagerService;

    const/4 v1, 0x0

    .line 579
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mSmRccPolicy:Lcom/android/internal/app/SmRccPolicy;

    .line 720
    new-instance v2, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    sget-object v3, Lcom/samsung/android/server/packagefeature/PackageFeature;->FULL_SCREEN:Lcom/samsung/android/server/packagefeature/PackageFeature;

    invoke-direct {v2, v3}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;-><init>(Lcom/samsung/android/server/packagefeature/PackageFeature;)V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mDefaultFullScreenPackagesFromScpm:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 727
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_NAVIGATION_LOW_REFRESH_RATE:Z

    if-eqz v2, :cond_2c

    .line 728
    new-instance v2, Lcom/android/server/wm/ActivityTaskManagerServiceExt$RefreshRateBlockList;

    sget-object v3, Lcom/samsung/android/server/packagefeature/PackageFeature;->NAVIGATION_LOW_REFRESH_RATE:Lcom/samsung/android/server/packagefeature/PackageFeature;

    invoke-direct {v2, p0, v3}, Lcom/android/server/wm/ActivityTaskManagerServiceExt$RefreshRateBlockList;-><init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt;Lcom/samsung/android/server/packagefeature/PackageFeature;)V

    goto :goto_2d

    :cond_2c
    move-object v2, v1

    :goto_2d
    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mNaviAppLowRefreshRateList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 733
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_LOW_REFRESH_RATE_LIST:Z

    if-eqz v2, :cond_3b

    .line 734
    new-instance v2, Lcom/android/server/wm/ActivityTaskManagerServiceExt$RefreshRateBlockList;

    sget-object v3, Lcom/samsung/android/server/packagefeature/PackageFeature;->LOW_REFRESH_RATE:Lcom/samsung/android/server/packagefeature/PackageFeature;

    invoke-direct {v2, p0, v3}, Lcom/android/server/wm/ActivityTaskManagerServiceExt$RefreshRateBlockList;-><init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt;Lcom/samsung/android/server/packagefeature/PackageFeature;)V

    goto :goto_3c

    :cond_3b
    move-object v2, v1

    :goto_3c
    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mLowRefreshRateList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 739
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_HIGH_REFRESH_RATE_BLOCK_LIST:Z

    if-eqz v2, :cond_49

    .line 740
    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerServiceExt$RefreshRateBlockList;

    sget-object v2, Lcom/samsung/android/server/packagefeature/PackageFeature;->HIGH_REFRESH_RATE:Lcom/samsung/android/server/packagefeature/PackageFeature;

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/ActivityTaskManagerServiceExt$RefreshRateBlockList;-><init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt;Lcom/samsung/android/server/packagefeature/PackageFeature;)V

    :cond_49
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mHighRefreshRateBlockList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 805
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mKeepAliveActivities:Ljava/util/WeakHashMap;

    .line 806
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mHasActivitiesKeptAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, -0x1

    .line 919
    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mSysUiPid:I

    .line 603
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mContext:Landroid/content/Context;

    .line 604
    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 605
    new-instance p1, Lcom/android/server/wm/CoreStateController;

    invoke-direct {p1, p2}, Lcom/android/server/wm/CoreStateController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mCoreStateController:Lcom/android/server/wm/CoreStateController;

    return-void
.end method

.method public static isValidActivityForForeground(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 970
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_28

    .line 971
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v0

    if-nez v0, :cond_28

    .line 972
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandard()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_17
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz p0, :cond_27

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_27

    const-string v0, "com.samsung.android.dex.autoopenlastapp.ignore"

    .line 975
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_28

    :cond_27
    const/4 v1, 0x1

    :cond_28
    return v1
.end method

.method private synthetic lambda$checkAppLockState$0(Ljava/lang/String;IZLandroid/content/Intent;)V
    .registers 8

    .line 198
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.intent.action.CHECK_APPLOCK_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.applock"

    .line 199
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "LAUNCH_FROM_RESUME"

    const/4 v2, 0x1

    .line 200
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "LOCKED_PACKAGE_NAME"

    .line 201
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    const-string p2, "LOCKED_PACKAGE_USERID"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "LOCKED_APP_CAN_SHOW_WHEN_LOCKED"

    .line 203
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p4, :cond_3c

    .line 205
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p2, "LOCKED_PACKAGE_INTENT"

    .line 207
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 210
    :cond_3c
    :try_start_3c
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_45} :catch_46

    goto :goto_5d

    :catch_46
    move-exception p0

    .line 212
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "AppLock service start failed for intent:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActivityTaskManagerServiceExt"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5d
    return-void
.end method

.method private synthetic lambda$clearHomeStack$5(Ljava/lang/String;Lcom/android/server/wm/Task;)V
    .registers 5

    .line 994
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 995
    :cond_c
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_48

    iget-object v0, p2, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_20

    .line 996
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_48

    .line 997
    :cond_20
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p1, :cond_3a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "clearHomeStack(), removing task="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActivityTaskManagerServiceExt"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    :cond_3a
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    move-result p1

    const/4 v0, 0x1

    const-string v1, "ActivityTaskManagerServiceExt#clearHomeStack"

    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V

    :cond_48
    return-void
.end method

.method public static synthetic lambda$hasPackageTask$6(ILjava/lang/String;Lcom/android/server/wm/Task;)Z
    .registers 4

    .line 1037
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v0

    if-ne v0, p0, :cond_16

    iget-object p0, p2, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz p0, :cond_16

    .line 1039
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public static synthetic lambda$removeTaskByIdIfNeededLocked$2(I)[Ljava/lang/Integer;
    .registers 1

    .line 707
    new-array p0, p0, [Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic lambda$startAppLockActivity$1(Lcom/android/server/wm/ActivityRecord;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    .line 265
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    invoke-static {v0}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    const/4 p0, 0x1

    .line 266
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1e
    return-void
.end method

.method private synthetic lambda$startUser$3(IZZ)V
    .registers 7

    .line 775
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 776
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mStartedUserIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 777
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mStartedUserIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    :cond_1d
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mCoreStateController:Lcom/android/server/wm/CoreStateController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/CoreStateController;->startUserLocked(IZZ)V

    .line 781
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_27
    move-exception p0

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method private synthetic lambda$stopUser$4(IZ)V
    .registers 6

    .line 787
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 788
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mStartedUserIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 790
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/MultiWindowEnableController;->stopUserLocked(IZ)V

    .line 792
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mCoreStateController:Lcom/android/server/wm/CoreStateController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/CoreStateController;->stopUserLocked(IZ)V

    .line 793
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_22
    move-exception p0

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method


# virtual methods
.method public boostPriority(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 935
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz p0, :cond_26

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object p0

    if-nez p0, :cond_b

    goto :goto_26

    .line 937
    :cond_b
    :try_start_b
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result p0

    const/16 v0, -0xa

    invoke-static {p0, v0}, Landroid/os/Process;->setThreadPriority(II)V

    .line 938
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object p0

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/app/IApplicationThread;->setProcessState(I)V

    .line 939
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setCurrentSchedulingGroup(I)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_26} :catch_26

    :catch_26
    :cond_26
    :goto_26
    return-void
.end method

.method public changeAppLockActivityToService(Lcom/android/server/wm/ActivityRecord;)V
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_14

    .line 146
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    goto :goto_15

    :cond_14
    move-object v1, v0

    :goto_15
    if-eqz v1, :cond_58

    .line 147
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    if-eqz v2, :cond_58

    .line 148
    invoke-virtual {v2}, Lcom/android/internal/app/AppLockPolicy;->getAppLockedCheckAction()Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 149
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    const-string v2, "LOCKED_PACKAGE_NAME"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 151
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    const-string v3, "LOCKED_PACKAGE_INTENT"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 153
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    const-string v3, "LOCKED_APP_CAN_SHOW_WHEN_LOCKED"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 155
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->addToFinishingAndWaitForIdle()Z

    const-string p1, "ActivityTaskManagerServiceExt"

    const-string v3, "Start AppLock Service"

    .line 156
    invoke-static {p1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    invoke-virtual {p1, v1, v4}, Lcom/android/internal/app/AppLockPolicy;->setAppLockedVerifying(Ljava/lang/String;Z)V

    .line 158
    invoke-virtual {p0, v0, v2, v1, v4}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->checkAppLockState(Landroid/content/Intent;ZLjava/lang/String;Z)V

    :cond_58
    return-void
.end method

.method public final checkAppLockState(Landroid/content/Intent;ZLjava/lang/String;Z)V
    .registers 13

    const-string v0, "ActivityTaskManagerServiceExt"

    .line 184
    :try_start_2
    invoke-virtual {p0, p3}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->getAppLockLockedVerifyingState(Ljava/lang/String;)[Z

    move-result-object v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6} :catch_67

    .line 189
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v2, 0x0

    .line 190
    aget-boolean v2, v1, v2

    if-eqz v2, :cond_66

    const/4 v3, 0x1

    .line 192
    aget-boolean v1, v1, v3

    .line 193
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AppLock checkAppLockState locked:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " verifying:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " pkgName = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isInMultiWindowMode:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mAppLockIsInMultiWindowMode:Z

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " showWhenLocked:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_4c

    if-eqz p2, :cond_66

    .line 196
    :cond_4c
    invoke-virtual {p0, p3, v3}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->setAppLockedVerifying(Ljava/lang/String;Z)V

    .line 197
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda4;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p3

    move v6, p2

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt;Ljava/lang/String;IZLandroid/content/Intent;)V

    if-eqz p4, :cond_5f

    .line 216
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_66

    .line 218
    :cond_5f
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_66
    :goto_66
    return-void

    :catch_67
    move-exception p0

    const-string p1, "Exception while checking App Lock locked / verifying state : "

    .line 186
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public checkScreenDpSizeChanges(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .registers 4

    .line 907
    iget p0, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz p0, :cond_8

    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-ne v0, p0, :cond_10

    :cond_8
    iget p0, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz p0, :cond_12

    iget p1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq p1, p0, :cond_12

    :cond_10
    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public clearAppLockedUnLockedApp()V
    .registers 3

    .line 346
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 347
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->isSystemUid(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 350
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    if-eqz p0, :cond_13

    .line 351
    invoke-virtual {p0}, Lcom/android/internal/app/AppLockPolicy;->clearAppLockedUnLockedApp()V

    :cond_13
    return-void

    .line 348
    :cond_14
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " cannot call clearAppLockedUnLockedApp()"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clearHomeStack(I)V
    .registers 6

    if-nez p1, :cond_7

    .line 986
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->getDefaultHomePackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 987
    :goto_8
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_2a

    const-string v1, "ActivityTaskManagerServiceExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearHomeStack(), displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", defaultHomePkgName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    :cond_2a
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_2f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 991
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    if-eqz p1, :cond_45

    .line 993
    new-instance v2, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {p1, v2, p0}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;Z)V

    .line 1006
    :cond_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_2f .. :try_end_46} :catchall_4a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_4a
    move-exception p0

    :try_start_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public dumpActivitiesLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3

    .line 897
    invoke-static {}, Lcom/android/server/wm/PackageSettingsManager;->getInstance()Lcom/android/server/wm/PackageSettingsManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/PackageSettingsManager;->dumpAll(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 900
    invoke-static {p1, p2}, Lcom/android/server/wm/BoundsCompatAlignmentController;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public getAppLockLaunchingState(Landroid/os/IBinder;)[Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Z

    .line 471
    monitor-enter p0

    .line 472
    :try_start_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_5c

    .line 474
    :try_start_8
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_40

    .line 479
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isLaunchRequestedFromNotification()Z

    move-result p1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_19

    aput-boolean v5, v0, v4

    goto :goto_1e

    .line 484
    :cond_19
    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityRecord;->setLaunchingRequestFromNotification(Z)V

    aput-boolean v4, v0, v4

    .line 487
    :goto_1e
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    iget-object v6, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/android/internal/app/AppLockPolicy;->isActivityInExceptionList(Ljava/lang/String;)Z

    move-result p1

    const/4 v6, 0x2

    if-eqz p1, :cond_30

    aput-boolean v4, v0, v6

    goto :goto_32

    :cond_30
    aput-boolean v5, v0, v6

    .line 493
    :goto_32
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    .line 499
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result p1

    aput-boolean p1, v0, v5
    :try_end_3b
    .catchall {:try_start_8 .. :try_end_3b} :catchall_57

    .line 502
    :try_start_3b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 504
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_5c

    return-object v0

    .line 476
    :cond_40
    :try_start_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AppLockLaunchingFromActivity: No activity record matching token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_57
    .catchall {:try_start_40 .. :try_end_57} :catchall_57

    :catchall_57
    move-exception p1

    .line 502
    :try_start_58
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 503
    throw p1

    :catchall_5c
    move-exception p1

    .line 504
    monitor-exit p0
    :try_end_5e
    .catchall {:try_start_58 .. :try_end_5e} :catchall_5c

    throw p1
.end method

.method public getAppLockLockedVerifyingState(Ljava/lang/String;)[Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Z

    .line 521
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    if-eqz v1, :cond_1b

    const/4 v2, 0x0

    .line 522
    invoke-virtual {v1, p1}, Lcom/android/internal/app/AppLockPolicy;->isAppLockedPackage(Ljava/lang/String;)Z

    move-result v1

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    .line 523
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AppLockPolicy;->isAppLockedVerifying(Ljava/lang/String;)Z

    move-result p0

    aput-boolean p0, v0, v1

    :cond_1b
    return-object v0
.end method

.method public getAppLockedCheckAction()Ljava/lang/String;
    .registers 1

    .line 368
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    if-eqz p0, :cond_b

    .line 369
    invoke-virtual {p0}, Lcom/android/internal/app/AppLockPolicy;->getAppLockedCheckAction()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAppLockedLockType()Ljava/lang/String;
    .registers 3

    .line 356
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 357
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->isSystemUid(I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 360
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    if-eqz p0, :cond_15

    .line 361
    invoke-virtual {p0}, Lcom/android/internal/app/AppLockPolicy;->getAppLockedLockType()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_15
    const/4 p0, 0x0

    return-object p0

    .line 358
    :cond_17
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " cannot call getAppLockedLockType()"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAppLockedPackageList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 321
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    if-eqz p0, :cond_b

    .line 322
    invoke-virtual {p0}, Lcom/android/internal/app/AppLockPolicy;->getAppLockedPackageList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getApplockLockedAppsClass()Ljava/lang/String;
    .registers 1

    .line 420
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    if-eqz p0, :cond_b

    .line 421
    invoke-virtual {p0}, Lcom/android/internal/app/AppLockPolicy;->getApplockLockedAppsClass()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getApplockLockedAppsPackage()Ljava/lang/String;
    .registers 1

    .line 413
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    if-eqz p0, :cond_b

    .line 414
    invoke-virtual {p0}, Lcom/android/internal/app/AppLockPolicy;->getApplockLockedAppsPackage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getApplockType()I
    .registers 1

    .line 427
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    if-eqz p0, :cond_b

    .line 428
    invoke-virtual {p0}, Lcom/android/internal/app/AppLockPolicy;->getApplockType()I

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public getCoreStateController()Lcom/android/server/wm/CoreStateController;
    .registers 1

    .line 762
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mCoreStateController:Lcom/android/server/wm/CoreStateController;

    return-object p0
.end method

.method public final getDefaultHomePackageName()Ljava/lang/String;
    .registers 3

    .line 1010
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "role"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/role/RoleManager;

    .line 1012
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    const-string v1, "android.app.role.HOME"

    .line 1011
    invoke-virtual {p0, v1, v0}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    .line 1013
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 p0, 0x0

    goto :goto_24

    :cond_1d
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :goto_24
    return-object p0
.end method

.method public final getDesktopModeManagerInternal()Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;
    .registers 2

    .line 1019
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mDesktopModeManagerInternal:Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    if-nez v0, :cond_e

    .line 1020
    const-class v0, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mDesktopModeManagerInternal:Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    .line 1023
    :cond_e
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mDesktopModeManagerInternal:Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    return-object p0
.end method

.method public getExtraPolicyForMultiResolution()Landroid/os/Bundle;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getForegroundTaskId(I)I
    .registers 5

    .line 953
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    const/4 v0, -0x1

    if-eqz p0, :cond_1f

    .line 955
    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_1f

    .line 958
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 960
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    .line 964
    :cond_20
    :goto_20
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_4a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getForegroundTaskId(), displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", taskId="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", task="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManagerServiceExt"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    return v0
.end method

.method public getRealActivityForTaskId(I)Landroid/content/ComponentName;
    .registers 2

    .line 979
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object p0

    if-nez p0, :cond_c

    const/4 p0, 0x0

    goto :goto_e

    .line 980
    :cond_c
    iget-object p0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    :goto_e
    return-object p0
.end method

.method public getSmRccAction()Ljava/lang/String;
    .registers 1

    .line 1075
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mSmRccPolicy:Lcom/android/internal/app/SmRccPolicy;

    if-eqz p0, :cond_9

    .line 1076
    invoke-virtual {p0}, Lcom/android/internal/app/SmRccPolicy;->getSmRccAction()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSsecureHiddenAppsPackages()Ljava/lang/String;
    .registers 1

    .line 439
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    if-eqz p0, :cond_b

    .line 440
    invoke-virtual {p0}, Lcom/android/internal/app/AppLockPolicy;->getSsecureHiddenAppsPackages()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getStartedUserIdsLocked()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 798
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mStartedUserIds:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSysUiPid()I
    .registers 1

    .line 922
    iget p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mSysUiPid:I

    return p0
.end method

.method public hasKeepAliveActivities(Lcom/android/server/wm/WindowProcessController;)Z
    .registers 5

    .line 854
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mHasActivitiesKeptAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 857
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 858
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mKeepAliveActivities:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 859
    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 p0, 0x1

    .line 860
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_f .. :try_end_32} :catchall_3b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    .line 863
    :cond_36
    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_3b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_3b
    move-exception p0

    .line 864
    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public hasMetaData(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 890
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 891
    invoke-virtual {p0, p1, p2}, Landroid/app/ActivityManagerInternal;->hasMetaData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public hasPackageTask(ILjava/lang/String;I)Z
    .registers 5

    .line 1034
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_18

    .line 1036
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda7;

    invoke-direct {v0, p3, p2}, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda7;-><init>(ILjava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_18

    move p1, p2

    :cond_18
    return p1
.end method

.method public initialize()V
    .registers 3

    .line 638
    new-instance v0, Lcom/android/server/wm/CustomAspectRatioController;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/wm/CustomAspectRatioController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mCustomAspectRatioController:Lcom/android/server/wm/CustomAspectRatioController;

    .line 644
    new-instance v0, Lcom/android/server/wm/DisplayCutoutController;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/wm/DisplayCutoutController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mDisplayCutoutController:Lcom/android/server/wm/DisplayCutoutController;

    .line 646
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FIXED_ASPECT_RATIO_MODE:Z

    if-eqz v0, :cond_1f

    .line 647
    new-instance v0, Lcom/android/server/wm/FixedAspectRatioController;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/wm/FixedAspectRatioController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mFixedAspectRatioController:Lcom/android/server/wm/FixedAspectRatioController;

    .line 650
    :cond_1f
    new-instance v0, Lcom/android/server/wm/CustomAspectRatioLegacyController;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/wm/CustomAspectRatioLegacyController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 658
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL:Z

    if-eqz v0, :cond_33

    .line 659
    new-instance v0, Lcom/android/server/wm/OrientationController;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/wm/OrientationController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mOrientationController:Lcom/android/server/wm/OrientationController;

    .line 662
    :cond_33
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {p0}, Lcom/android/server/wm/BoundsCompatAlignmentController;->setAtmService(Lcom/android/server/wm/ActivityTaskManagerService;)V

    return-void
.end method

.method public installSystemProvidersLocked()V
    .registers 4

    .line 766
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mStartedUserIds:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiWindowEnableController;->initializeLocked(I)V

    .line 770
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mCoreStateController:Lcom/android/server/wm/CoreStateController;

    invoke-virtual {p0}, Lcom/android/server/wm/CoreStateController;->initializeLocked()V

    return-void
.end method

.method public isAppLockedPackage(Ljava/lang/String;)Z
    .registers 2

    .line 339
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    if-eqz p0, :cond_b

    .line 340
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AppLockPolicy;->isAppLockedPackage(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public isAppLockedVerifying(Ljava/lang/String;)Z
    .registers 2

    .line 386
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    if-eqz p0, :cond_b

    .line 387
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AppLockPolicy;->isAppLockedVerifying(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public isApplockEnabled()Z
    .registers 1

    .line 433
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    if-eqz p0, :cond_b

    .line 434
    invoke-virtual {p0}, Lcom/android/internal/app/AppLockPolicy;->isApplockEnabled()Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public final isCallerSetSelf(ILjava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    .line 447
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_1b
    .catchall {:try_start_1 .. :try_end_b} :catchall_31

    if-eqz p0, :cond_1a

    .line 451
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    if-ne p0, p1, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    return v0

    :catch_1b
    :try_start_1b
    const-string p0, "ActivityTaskManagerServiceExt"

    .line 449
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception - isCallerSetSelf:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_1b .. :try_end_31} :catchall_31

    :catchall_31
    return v0
.end method

.method public isKeepAliveActivity(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 842
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mKeepAliveActivities:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isSmRccOpen(Ljava/lang/String;)Z
    .registers 2

    .line 1061
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mSmRccPolicy:Lcom/android/internal/app/SmRccPolicy;

    if-eqz p0, :cond_9

    .line 1062
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SmRccPolicy;->isSmRccOpen(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public isSmRccPkg(Ljava/lang/String;)Z
    .registers 2

    .line 1054
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mSmRccPolicy:Lcom/android/internal/app/SmRccPolicy;

    if-eqz p0, :cond_9

    .line 1055
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SmRccPolicy;->isSmRccPkg(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public final isSystemUid(I)Z
    .registers 3

    .line 456
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_d

    if-nez p1, :cond_b

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

.method public final keepAliveActivityLocked(Lcom/android/server/wm/Task;Z)V
    .registers 5

    .line 809
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_3c

    if-eqz p2, :cond_39

    .line 812
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mKeepAliveActivities:Ljava/util/WeakHashMap;

    invoke-virtual {p2}, Ljava/util/WeakHashMap;->size()I

    move-result p2

    const/4 v1, 0x2

    if-ge p2, v1, :cond_20

    .line 813
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mKeepAliveActivities:Ljava/util/WeakHashMap;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mHasActivitiesKeptAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    goto :goto_3c

    .line 816
    :cond_20
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Max count exceeded! Cannot set keepAlive for taskId="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManagerServiceExt"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 820
    :cond_39
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->resetActivityKeepAliveLocked(Lcom/android/server/wm/ActivityRecord;)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method public moveTaskToBack(IZLandroid/os/Bundle;)Z
    .registers 7

    .line 826
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 827
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_39

    .line 829
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 830
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_3e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 833
    :cond_24
    :try_start_24
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->keepAliveActivityLocked(Lcom/android/server/wm/Task;Z)V

    .line 834
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_34

    .line 835
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/Task;->moveTaskToBack(Lcom/android/server/wm/Task;Landroid/os/Bundle;)Z

    move-result p0

    if-eqz p0, :cond_34

    const/4 v1, 0x1

    :cond_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_24 .. :try_end_35} :catchall_3e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 837
    :cond_39
    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_3e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_3e
    move-exception p0

    .line 838
    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onLockTaskStateChanged(I)V
    .registers 5

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    .line 877
    :goto_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.kddi.agent.action.SCREEN_PINNING_CONDITION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "status"

    .line 878
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 879
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 882
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.action.LOCK_TASK_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "enable"

    .line 883
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 884
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v1, "com.samsung.android.permission.LOCK_TASK_MODE"

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public onSystemReady()V
    .registers 4

    const/4 v0, 0x1

    .line 609
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mSystemReady:Z

    .line 612
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/server/util/SafetySystemService;->onSystemReady(Landroid/content/Context;)V

    .line 615
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mPackageFeatureManagerService:Lcom/android/server/wm/PackageFeatureManagerService;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/PackageFeatureManagerService;->onSystemReady(Landroid/content/Context;Landroid/os/Handler;)V

    .line 617
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_ACTIVITY_PACKAGE_ENABLED:Z

    if-eqz v0, :cond_20

    .line 618
    new-instance v0, Lcom/android/server/wm/SplitActivityController;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/wm/SplitActivityController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mSplitActivityController:Lcom/android/server/wm/SplitActivityController;

    .line 620
    :cond_20
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_PACKAGE_ENABLED:Z

    if-eqz v0, :cond_2d

    .line 621
    new-instance v0, Lcom/android/server/wm/ActivityEmbeddedController;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/wm/ActivityEmbeddedController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mActivityEmbeddedController:Lcom/android/server/wm/ActivityEmbeddedController;

    .line 623
    :cond_2d
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX_ENHANCED:Z

    return-void
.end method

.method public onUserUnlocked()V
    .registers 3

    const-string v0, "ActivityTaskManagerServiceExt"

    const-string v1, "SmRcc onUserUnlocked loadData"

    .line 1048
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/app/SmRccPolicy;->getInstance(Landroid/content/Context;)Lcom/android/internal/app/SmRccPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mSmRccPolicy:Lcom/android/internal/app/SmRccPolicy;

    .line 1050
    invoke-virtual {v0}, Lcom/android/internal/app/SmRccPolicy;->loadData()V

    return-void
.end method

.method public final removeAllRecentTasksLocked(I)Z
    .registers 7

    .line 688
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->getRawTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 689
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_10
    if-ltz v1, :cond_32

    if-nez v1, :cond_19

    and-int/lit8 v3, p1, 0x20

    if-eqz v3, :cond_19

    goto :goto_2f

    .line 694
    :cond_19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    .line 695
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v4

    if-nez v4, :cond_2f

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    move-result v4

    if-eqz v4, :cond_2c

    goto :goto_2f

    .line 698
    :cond_2c
    invoke-virtual {p0, v3, p1}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->removeTaskByIdIfNeededLocked(Lcom/android/server/wm/Task;I)V

    :cond_2f
    :goto_2f
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    :cond_32
    return v2
.end method

.method public final removeTaskByIdIfNeededLocked(Lcom/android/server/wm/Task;I)V
    .registers 6

    .line 704
    iget v0, p1, Lcom/android/server/wm/Task;->mUserId:I

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v1, v1, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    if-eq v0, v1, :cond_48

    .line 705
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 706
    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->getCurrentProfileIds()[I

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Integer;

    .line 705
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 708
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v1, v1, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 710
    iget v1, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    return-void

    .line 714
    :cond_48
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    and-int/lit8 p2, p2, 0x10

    const/4 v0, 0x1

    if-nez p2, :cond_55

    move p2, v0

    goto :goto_56

    :cond_55
    const/4 p2, 0x0

    :goto_56
    const-string/jumbo v1, "sem-remove-id-task"

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTaskById(IZZLjava/lang/String;)Z

    return-void
.end method

.method public removeTaskLocked(II)Z
    .registers 7

    and-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_35

    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_9

    goto :goto_35

    :cond_9
    and-int/lit8 v0, p2, 0x10

    const/4 v1, 0x1

    if-nez v0, :cond_10

    move v0, v1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 678
    :goto_11
    :try_start_11
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const-string/jumbo v3, "sem-remove-task"

    invoke-virtual {v2, p1, v1, v0, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTaskById(IZZLjava/lang/String;)Z

    move-result p1
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_28

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_27

    .line 682
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleIdle()V

    :cond_27
    return p1

    :catchall_28
    move-exception p1

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_34

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleIdle()V

    .line 684
    :cond_34
    throw p1

    .line 673
    :cond_35
    :goto_35
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->removeAllRecentTasksLocked(I)Z

    move-result p0

    return p0
.end method

.method public resetActivityKeepAliveLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 846
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mKeepAliveActivities:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mKeepAliveActivities:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Ljava/util/WeakHashMap;->size()I

    move-result p1

    if-nez p1, :cond_14

    .line 848
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mHasActivitiesKeptAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    :cond_14
    return-void
.end method

.method public resetSmRccOpen(Ljava/lang/String;)V
    .registers 2

    .line 1069
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mSmRccPolicy:Lcom/android/internal/app/SmRccPolicy;

    if-eqz p0, :cond_7

    .line 1070
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SmRccPolicy;->resetSmRccOpen(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public setAppLockedUnLockPackage(Ljava/lang/String;)V
    .registers 4

    .line 328
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 329
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->isSystemUid(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 332
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    if-eqz p0, :cond_13

    .line 333
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AppLockPolicy;->setAppLockedUnLockPackage(Ljava/lang/String;)V

    :cond_13
    return-void

    .line 330
    :cond_14
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " cannot call setAppLockedUnLockPackage("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAppLockedVerifying(Ljava/lang/String;Z)V
    .registers 5

    .line 375
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 376
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->isSystemUid(I)Z

    move-result v1

    if-nez v1, :cond_28

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->isCallerSetSelf(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_28

    .line 377
    :cond_11
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is not system uid or the packageNmae is not itself\'s"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 379
    :cond_28
    :goto_28
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    if-eqz p0, :cond_31

    .line 380
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/AppLockPolicy;->setAppLockedVerifying(Ljava/lang/String;Z)V

    :cond_31
    return-void
.end method

.method public setApplockEnabled(Z)V
    .registers 2

    .line 405
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AppLockPolicy;->setApplockEnabled(Z)V

    return-void
.end method

.method public setApplockLockedAppsClass(Ljava/lang/String;)V
    .registers 2

    .line 397
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AppLockPolicy;->setApplockLockedAppsClass(Ljava/lang/String;)V

    return-void
.end method

.method public setApplockLockedAppsPackage(Ljava/lang/String;)V
    .registers 2

    .line 393
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AppLockPolicy;->setApplockLockedAppsPackage(Ljava/lang/String;)V

    return-void
.end method

.method public setApplockType(I)V
    .registers 2

    .line 401
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AppLockPolicy;->setApplockType(I)V

    return-void
.end method

.method public setSsecureHiddenAppsPackages(Ljava/lang/String;)V
    .registers 2

    .line 409
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AppLockPolicy;->setSsecureHiddenAppsPackages(Ljava/lang/String;)V

    return-void
.end method

.method public setSystemUiPidIfNeed(Lcom/android/server/wm/WindowProcessController;)V
    .registers 4

    .line 926
    iget v0, p1, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    if-nez v0, :cond_2f

    iget-object v0, p1, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    const-string v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 927
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSystemUiPidIfNeed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManagerServiceExt"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mSysUiPid:I

    :cond_2f
    return-void
.end method

.method public startAppLockActivity(Lcom/android/server/wm/ActivityRecord;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 225
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    if-nez v2, :cond_b

    return-void

    .line 228
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 229
    iget v15, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 230
    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 231
    iget-object v5, v2, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    .line 232
    iget-object v6, v2, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    .line 233
    iget v12, v2, Lcom/android/server/wm/Task;->mCallingUid:I

    .line 234
    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->isAppLockedPackage(Ljava/lang/String;)Z

    move-result v4

    .line 235
    iget-object v7, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->isAppLockedVerifying(Ljava/lang/String;)Z

    move-result v7

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v3, :cond_37

    .line 237
    iget-object v8, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    iget-object v9, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 238
    invoke-virtual {v8, v9}, Lcom/android/internal/app/AppLockPolicy;->isActivityInExceptionList(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_37

    move v8, v14

    goto :goto_38

    :cond_37
    move v8, v13

    :goto_38
    if-eqz v4, :cond_16f

    if-nez v7, :cond_16f

    .line 244
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isLaunchRequestedFromNotification()Z

    move-result v4

    if-nez v4, :cond_16f

    if-eqz v8, :cond_16f

    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    .line 245
    invoke-virtual {v1, v4}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v4

    if-eqz v4, :cond_16f

    .line 249
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 250
    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v7, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 258
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v8

    .line 261
    iget-object v9, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v9}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v9

    if-eqz v9, :cond_6b

    .line 262
    invoke-virtual {v4, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 264
    :cond_6b
    iget-object v9, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v9}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    new-instance v10, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda3;

    invoke-direct {v10, v1, v7}, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/ActivityRecord;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 271
    invoke-static {v15}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v9

    if-nez v9, :cond_16f

    iget-object v9, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    invoke-virtual {v9, v15}, Lcom/android/internal/app/AppLockPolicy;->isManagedProfileUserId(I)Z

    move-result v9

    if-nez v9, :cond_16f

    .line 272
    invoke-static {v15}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v9

    if-eqz v9, :cond_97

    invoke-static {}, Lcom/android/internal/app/AppLockPolicy;->isSupportSSecure()Z

    move-result v9

    if-nez v9, :cond_16f

    :cond_97
    if-eqz v8, :cond_9a

    return-void

    .line 276
    :cond_9a
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    const-string v11, "ActivityTaskManagerServiceExt"

    if-nez v7, :cond_15e

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_aa

    goto/16 :goto_15e

    .line 281
    :cond_aa
    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4, v13}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->setAppLockedVerifying(Ljava/lang/String;Z)V

    .line 282
    new-instance v4, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->getAppLockedCheckAction()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x20000

    .line 283
    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 284
    iget-object v7, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v8, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v4, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "LAUNCH_FROM_RESUME"

    .line 285
    invoke-virtual {v4, v7, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 286
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v7, "LOCKED_PACKAGE_NAME"

    invoke-virtual {v4, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "LOCKED_PACKAGE_USERID"

    .line 287
    invoke-virtual {v4, v3, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 288
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v3

    const-string v7, "LOCKED_APP_CAN_SHOW_WHEN_LOCKED"

    invoke-virtual {v4, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "com.samsung.android.applock"

    .line 289
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v9

    .line 291
    invoke-static {v15}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v3

    if-eqz v3, :cond_f9

    move v10, v14

    goto :goto_fa

    :cond_f9
    move v10, v15

    :goto_fa
    const/4 v3, 0x0

    move-object v8, v4

    move-object/from16 v16, v11

    move v11, v3

    .line 290
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 292
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 293
    iget-object v7, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v7, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    .line 296
    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v3, v2}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 297
    invoke-virtual {v3, v13, v14}, Landroid/app/ActivityOptions;->setTaskOverlay(ZZ)V

    .line 300
    :try_start_118
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mContext:Landroid/content/Context;

    .line 301
    invoke-virtual {v7}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v7

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mContext:Landroid/content/Context;

    .line 305
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 309
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v12

    const/4 v13, 0x0

    .line 311
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v14

    move-object v3, v2

    move-object v0, v4

    move-object v4, v7

    move-object v7, v0

    .line 300
    invoke-virtual/range {v3 .. v15}, Lcom/android/server/wm/ActivityTaskManagerService;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    :try_end_13d
    .catch Ljava/lang/Exception; {:try_start_118 .. :try_end_13d} :catch_13e

    goto :goto_16f

    :catch_13e
    move-exception v0

    .line 314
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while launching AppLock Confirm Activity for"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Exception is : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v16

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16f

    :cond_15e
    :goto_15e
    move-object v2, v11

    const-string v4, "Start AppLock Service"

    .line 277
    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v1

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v3, v14}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->checkAppLockState(Landroid/content/Intent;ZLjava/lang/String;Z)V

    :cond_16f
    :goto_16f
    return-void
.end method

.method public startAppLockService(Landroid/os/IBinder;Landroid/content/Intent;ZLjava/lang/String;)V
    .registers 8

    .line 118
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    .line 123
    :try_start_8
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->getAppLockLaunchingState(Landroid/os/IBinder;)[Z

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_d

    goto :goto_15

    :catch_d
    move-exception p1

    const-string v1, "ActivityTaskManagerServiceExt"

    const-string v2, "exception while querying AppLock Launching State"

    .line 125
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_15
    if-eqz v0, :cond_63

    const/4 p1, 0x0

    .line 128
    aget-boolean v1, v0, p1

    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mAppLockIsInMultiWindowMode:Z

    const/4 v1, 0x1

    .line 129
    aget-boolean v1, v0, v1

    const/4 v2, 0x2

    .line 130
    aget-boolean v0, v0, v2

    .line 132
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->isKeyguardLocked(I)Z

    move-result p1

    if-eqz p1, :cond_2c

    if-nez v0, :cond_63

    :cond_2c
    if-nez v0, :cond_34

    if-nez v1, :cond_34

    iget-boolean p1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mAppLockIsInMultiWindowMode:Z

    if-eqz p1, :cond_63

    .line 134
    :cond_34
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 135
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_63

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    .line 136
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/app/AppLockPolicy;->isManagedProfileUserId(I)Z

    move-result v0

    if-nez v0, :cond_63

    .line 137
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result p1

    if-eqz p1, :cond_60

    invoke-static {}, Lcom/android/internal/app/AppLockPolicy;->isSupportSSecure()Z

    move-result p1

    if-nez p1, :cond_63

    .line 138
    :cond_60
    invoke-virtual {p0, p2, p3, p4, v1}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->checkAppLockState(Landroid/content/Intent;ZLjava/lang/String;Z)V

    :cond_63
    return-void
.end method

.method public startUser(IZZ)V
    .registers 6

    .line 774
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt;IZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stopUser(IZ)V
    .registers 5

    .line 786
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
