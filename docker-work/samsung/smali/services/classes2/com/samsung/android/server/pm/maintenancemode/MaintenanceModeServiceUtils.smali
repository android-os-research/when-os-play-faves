.class public Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;
.super Ljava/lang/Object;
.source "MaintenanceModeServiceUtils.java"


# static fields
.field public static final ACTION_HIDE_MAINTENANCE_MODE_MARK:Ljava/lang/String; = "com.samsung.android.intent.action.HIDE_MAINTENANCE_MODE_MARK"

.field public static final ACTION_NOTIFY_PREPROCESSING_MAINTENANCE_MODE:Ljava/lang/String; = "com.samsung.android.intent.action.NOTIFY_PREPROCESSING_MAINTENANCE_MODE"

.field public static final ACTION_RESPONSE_PREPROCESSING_MAINTENANCE_MODE:Ljava/lang/String; = "com.samsung.android.intent.action.RESPONSE_PREPROCESSING_MAINTENANCE_MODE"

.field public static final ACTION_SHOW_MAINTENANCE_MODE_MARK:Ljava/lang/String; = "com.samsung.android.intent.action.SHOW_MAINTENANCE_MODE_MARK"

.field public static final ADB_CHECK_DELAY:J = 0xc8L

.field public static final ADB_CHECK_TIMEOUT:J = 0x3a98L

.field public static final LOG_DIR:Ljava/io/File;

.field public static final MAINTENANCE_MODE_USER_ID:I = 0x4d

.field public static final NOTIFY_TIMEOUT:J = 0xea60L

.field public static final NOTIFY_TIMEOUT_EXTRA_DELAY:J = 0x1388L

.field public static final PACKAGE_DQA:Ljava/lang/String; = "com.samsung.android.dqagent"

.field public static final PACKAGE_GOOGLE_SUW:Ljava/lang/String; = "com.google.android.setupwizard"

.field public static final PACKAGE_SAMSUNG_SUW:Ljava/lang/String; = "com.sec.android.app.SecSetupWizard"

.field public static final PACKAGE_SDHMS:Ljava/lang/String; = "com.sec.android.sdhms"

.field public static final TAG:Ljava/lang/String; = "MaintenanceMode"

.field public static final TARGET_PACKAGES_PREPROCESSING:[Ljava/lang/String;


# instance fields
.field public isBeingCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mContext:Landroid/content/Context;

.field public mDeviceStorageMonitor:Lcom/android/server/storage/DeviceStorageMonitorInternal;

.field public final mExitRunnable:Ljava/lang/Runnable;

.field public final mHandler:Landroid/os/Handler;

.field public mLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mLifecycleListeners:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLifecycleListeners"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/pm/UserManagerInternal$MaintenanceModeLifecycleListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mOverlayReceiver:Landroid/content/BroadcastReceiver;

.field public mOverlayView:Landroid/widget/TextView;

.field public mOverlayViewParams:Landroid/view/WindowManager$LayoutParams;

.field public mReceiver:Landroid/content/BroadcastReceiver;

.field public mRemainingPkgs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mUms:Lcom/android/server/pm/UserManagerService;

.field public mWm:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$0AMa8LdOpguq2UxsNnNHssD6Z9E(Landroid/content/pm/UserInfo;)Z
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->lambda$isInMaintenanceMode$0(Landroid/content/pm/UserInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$39UwTlThu4yvkAXpOfXCRtbeTIA(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->lambda$logDebugInfoAsync$5(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3z7OHlNX5AXjx6pAX3ghj8JFntQ(Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->lambda$onUserStartingAsync$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$8bjAFkXRNavv0C1TE9bNA5hyhlE(Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->lambda$onUserUnlockedAsync$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$F-Etanimc0kQ2BIih5irHaeh9uc(Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;Lcom/android/server/pm/UserManagerInternal$MaintenanceModeLifecycleListener;Ljava/util/concurrent/CompletableFuture;Ljava/lang/Boolean;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->lambda$notifyPostprocessingAsync$7(Lcom/android/server/pm/UserManagerInternal$MaintenanceModeLifecycleListener;Ljava/util/concurrent/CompletableFuture;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JPrthkpaylgQj3Hdrmq5PWxfRNk(Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;IJ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->lambda$checkPendingAdbProcessing$4(IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$PvBGBgVdfUpA9D8JViy9JhviyCw(Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->lambda$notifyPostprocessingAsync$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$mpkPKfvl9-WNNBWyZpjJxUIuqJY(Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;Ljava/lang/Void;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->lambda$notifyPostprocessingAsync$9(Ljava/lang/Void;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sCXGy8clZrFIVSe-JGaR3pjIfUk(Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->lambda$new$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$xT3gtUZkYgz0F85mHK0ImRJwEvM(II)V
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->lambda$isAllowedToManage$1(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmLatch(Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRemainingPkgs(Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mRemainingPkgs:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetOverlayVisibility(Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->setOverlayVisibility(Z)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "com.samsung.android.dqagent"

    const-string v1, "com.sec.android.sdhms"

    .line 79
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->TARGET_PACKAGES_PREPROCESSING:[Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/log/repairdump"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->LOG_DIR:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/pm/UserManagerService;)V
    .registers 6

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mRemainingPkgs:Ljava/util/Set;

    .line 104
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->isBeingCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mLifecycleListeners:Ljava/util/ArrayList;

    .line 378
    new-instance v0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils$1;-><init>(Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;)V

    iput-object v0, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mOverlayReceiver:Landroid/content/BroadcastReceiver;

    .line 544
    new-instance v0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;)V

    iput-object v0, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mExitRunnable:Ljava/lang/Runnable;

    .line 111
    iput-object p1, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mContext:Landroid/content/Context;

    .line 112
    iput-object p2, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mHandler:Landroid/os/Handler;

    .line 113
    iput-object p3, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mUms:Lcom/android/server/pm/UserManagerService;

    return-void
.end method

.method public static isDisallowedByPolicy(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    const-string v0, "com.samsung.feature.support_repair_mode"

    .line 118
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_21

    const-string/jumbo p1, "persist.sys.disallow_maintenance_mode"

    .line 119
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_14

    return v1

    .line 122
    :cond_14
    invoke-static {}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->isLduSkuBinary()Z

    move-result p1

    if-nez p1, :cond_20

    invoke-static {p0}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->isShopDemo(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_21

    :cond_20
    return v1

    :cond_21
    return v0
.end method

.method public static isInMaintenanceMode()Z
    .registers 2

    .line 152
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Lcom/android/server/pm/UserManagerService;->getUsers(ZZZ)Ljava/util/List;

    move-result-object v0

    .line 155
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public static isLduSkuBinary()Z
    .registers 5

    const-string/jumbo v0, "ril.product_code"

    const-string v1, ""

    .line 397
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 398
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0xb

    if-ge v1, v3, :cond_13

    return v2

    :cond_13
    const/16 v1, 0xa

    .line 401
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x38

    if-eq v3, v4, :cond_25

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x39

    if-ne v0, v1, :cond_26

    :cond_25
    const/4 v2, 0x1

    :cond_26
    return v2
.end method

.method public static isPlatformSigned(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_14

    if-nez p1, :cond_6

    goto :goto_14

    .line 163
    :cond_6
    invoke-virtual {p1, p0}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z

    move-result v1

    if-nez v1, :cond_13

    const/4 v1, 0x4

    .line 164
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result p0

    if-eqz p0, :cond_14

    :cond_13
    const/4 v0, 0x1

    :cond_14
    :goto_14
    return v0
.end method

.method public static isRestrictedInstallRequest(I)Z
    .registers 2

    const/4 v0, 0x0

    .line 169
    invoke-static {p0, v0}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->isRestrictedInstallRequest(II)Z

    move-result p0

    return p0
.end method

.method public static isRestrictedInstallRequest(II)Z
    .registers 3

    const/16 v0, 0x4d

    if-eq p0, v0, :cond_a

    and-int/lit8 p0, p1, 0x40

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static isShopDemo(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    .line 406
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "shopdemo"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_11

    const/4 v1, 0x1

    if-ne p0, v1, :cond_10

    move v0, v1

    :cond_10
    return v0

    :catch_11
    move-exception p0

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to check shopdemo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MaintenanceMode"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private synthetic lambda$checkPendingAdbProcessing$4(IJ)V
    .registers 4

    .line 428
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->checkPendingAdbProcessing(IJ)V

    return-void
.end method

.method public static synthetic lambda$isAllowedToManage$1(II)V
    .registers 5

    .line 185
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 187
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 188
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, p0, :cond_e

    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v2, p1, :cond_e

    .line 189
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Requested by "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MaintenanceMode"

    invoke-static {p0, p1}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_3a

    :catch_3a
    :cond_3a
    return-void
.end method

.method public static synthetic lambda$isInMaintenanceMode$0(Landroid/content/pm/UserInfo;)Z
    .registers 1

    .line 155
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isMaintenanceMode()Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$logDebugInfoAsync$5(Ljava/lang/String;)V
    .registers 2

    :try_start_0
    const-string v0, "MaintenanceMode"

    .line 458
    invoke-static {p0, v0}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method private synthetic lambda$new$6()V
    .registers 6

    const/4 v0, 0x0

    .line 545
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->changeUsbDebuggingOption(Z)V

    .line 547
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3a98

    add-long/2addr v1, v3

    .line 546
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->checkPendingAdbProcessing(IJ)V

    return-void
.end method

.method private synthetic lambda$notifyPostprocessingAsync$7(Lcom/android/server/pm/UserManagerInternal$MaintenanceModeLifecycleListener;Ljava/util/concurrent/CompletableFuture;Ljava/lang/Boolean;)V
    .registers 6

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received callback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->logDebugInfoAsync(Ljava/lang/String;)V

    .line 561
    invoke-virtual {p2, p3}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$notifyPostprocessingAsync$8()V
    .registers 9

    .line 552
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 553
    iget-object v1, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mLifecycleListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 554
    :try_start_8
    iget-object v2, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerInternal$MaintenanceModeLifecycleListener;

    .line 555
    new-instance v4, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v4}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 556
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_96

    .line 558
    :try_start_22
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start to call onPostprocessing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->logDebugInfoAsync(Ljava/lang/String;)V

    .line 559
    new-instance v5, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils$$ExternalSyntheticLambda8;

    invoke-direct {v5, p0, v3, v4}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;Lcom/android/server/pm/UserManagerInternal$MaintenanceModeLifecycleListener;Ljava/util/concurrent/CompletableFuture;)V

    invoke-interface {v3, v5}, Lcom/android/server/pm/UserManagerInternal$MaintenanceModeLifecycleListener;->onPostprocessing(Ljava/util/function/Consumer;)V

    .line 563
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Finish calling onPostprocessing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->logDebugInfoAsync(Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_52} :catch_53
    .catchall {:try_start_22 .. :try_end_52} :catchall_96

    goto :goto_e

    :catch_53
    move-exception v5

    .line 565
    :try_start_54
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->logDebugInfoAsync(Ljava/lang/String;)V

    .line 566
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_e

    .line 569
    :cond_7a
    monitor-exit v1
    :try_end_7b
    .catchall {:try_start_54 .. :try_end_7b} :catchall_96

    .line 570
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_82

    return-void

    .line 573
    :cond_82
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/util/concurrent/CompletableFuture;

    .line 575
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/util/concurrent/CompletableFuture;

    invoke-static {p0}, Ljava/util/concurrent/CompletableFuture;->allOf([Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    .line 577
    :try_start_92
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_95} :catch_95

    :catch_95
    return-void

    :catchall_96
    move-exception p0

    .line 569
    :try_start_97
    monitor-exit v1
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    throw p0
.end method

.method private synthetic lambda$notifyPostprocessingAsync$9(Ljava/lang/Void;Ljava/lang/Throwable;)V
    .registers 4

    if-eqz p2, :cond_1a

    .line 584
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Got exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->logDebugInfoAsync(Ljava/lang/String;)V

    .line 586
    :cond_1a
    iget-object p1, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mExitRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 587
    iget-object p1, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mExitRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$onUserStartingAsync$2()V
    .registers 1

    .line 258
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->setUserRestrictions()V

    .line 259
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->skipSetupWizard()V

    return-void
.end method

.method private synthetic lambda$onUserUnlockedAsync$3()V
    .registers 2

    .line 265
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->startNotificationService()V

    .line 266
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->initializeOverlay()V

    const/4 v0, 0x1

    .line 267
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->changeUsbDebuggingOption(Z)V

    .line 268
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->initializeSwitchabilityIfNeeded()V

    return-void
.end method


# virtual methods
.method public addLifecycleListener(Lcom/android/server/pm/UserManagerInternal$MaintenanceModeLifecycleListener;)V
    .registers 5

    .line 216
    iget-object v0, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mLifecycleListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 217
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addLifecycleListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->logDebugInfoAsync(Ljava/lang/String;)V

    .line 219
    iget-object p0, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_24
    monitor-exit v0

    return-void

    :catchall_26
    move-exception p0

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public final changeUsbDebuggingOption(Z)V
    .registers 4

    if-eqz p1, :cond_5

    const-string v0, "1"

    goto :goto_7

    :cond_5
    const-string v0, "0"

    :goto_7
    const-string/jumbo v1, "persist.sys.auto_confirm"

    .line 414
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-object p0, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "adb_enabled"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public final checkPendingAdbProcessing(IJ)V
    .registers 6

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 421
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->containsAdbFunction()Z

    move-result v1

    goto :goto_11

    .line 422
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->containsAdbFunction()Z

    move-result v1

    if-nez v1, :cond_10

    move v1, v0

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    if-nez v1, :cond_27

    .line 423
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->isAdbProcessingTimeout(J)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_27

    .line 427
    :cond_1a
    iget-object v0, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;IJ)V

    const-wide/16 p0, 0xc8

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_27
    :goto_27
    if-ne p1, v0, :cond_2c

    const-string p1, "Enable"

    goto :goto_2e

    :cond_2c
    const-string p1, "Disable"

    .line 424
    :goto_2e
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->reboot(Ljava/lang/String;)V

    return-void
.end method

.method public final cleanUpLogFiles()V
    .registers 1

    .line 467
    :try_start_0
    sget-object p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->LOG_DIR:Ljava/io/File;

    invoke-static {p0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method public closeUserCreationSession()V
    .registers 2

    .line 148
    iget-object p0, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->isBeingCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final containsAdbFunction()Z
    .registers 5

    const-string/jumbo p0, "persist.sys.usb.config"

    const-string v0, ""

    .line 436
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "adb"

    .line 439
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_13

    return v1

    :cond_13
    const/16 v2, 0x2c

    if-lez v0, :cond_20

    add-int/lit8 v3, v0, -0x1

    .line 441
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v2, :cond_20

    return v1

    :cond_20
    add-int/lit8 v0, v0, 0x3

    .line 443
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-eq p0, v2, :cond_2f

    return v1

    :cond_2f
    const/4 p0, 0x1

    return p0
.end method

.method public doesUserIdExist()Z
    .registers 4

    .line 204
    iget-object p0, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mUms:Lcom/android/server/pm/UserManagerService;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/pm/UserManagerService;->getUsers(ZZZ)Ljava/util/List;

    move-result-object p0

    .line 206
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 207
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    const/16 v2, 0x4d

    if-ne v1, v2, :cond_b

    const-string p0, "MaintenanceMode"

    const-string v0, "Maintenance mode user already exists."

    .line 208
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_26
    return v0
.end method

.method public finishUserCreation()V
    .registers 6

    const/4 v0, 0x1

    .line 232
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->changeUsbDebuggingOption(Z)V

    .line 234
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3a98

    add-long/2addr v1, v3

    .line 233
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->checkPendingAdbProcessing(IJ)V

    return-void
.end method

.method public finishUserDeletion()V
    .registers 4

    .line 238
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->cleanUpLogFiles()V

    const-wide/32 v0, 0xea60

    .line 239
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->notifyPostprocessingAsync(J)V

    .line 240
    iget-object v0, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mExitRunnable:Ljava/lang/Runnable;

    const-wide/32 v1, 0xfde8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public hasSystemFeature()Z
    .registers 4

    const/4 p0, 0x0

    .line 131
    :try_start_1
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-string v1, "com.samsung.feature.support_repair_mode"

    invoke-interface {v0, v1, p0}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_c

    return p0

    :catch_c
    move-exception v0

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to check feature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MaintenanceMode"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final initializeOverlay()V
    .registers 2

    .line 315
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->makeOverlay()V

    const/4 v0, 0x1

    .line 316
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->setOverlayVisibility(Z)V

    .line 317
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->registerOverlayReceiver()V

    return-void
.end method

.method public final initializeSwitchabilityIfNeeded()V
    .registers 4

    const-string v0, "allow_user_switching_when_system_user_locked"

    .line 475
    :try_start_2
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 476
    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->isDeviceUpgrading()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 477
    iget-object v1, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mContext:Landroid/content/Context;

    .line 478
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    .line 477
    invoke-static {v1, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    goto :goto_1c

    :cond_1b
    move v1, v2

    :goto_1c
    if-eqz v1, :cond_27

    .line 481
    iget-object p0, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_27} :catch_27

    :catch_27
    :cond_27
    return-void
.end method

.method public final isAdbProcessingTimeout(J)Z
    .registers 5

    .line 448
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    if-gtz p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public isAllowedToManage()Z
    .registers 4

    .line 178
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    .line 179
    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 181
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 182
    iget-object p0, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils$$ExternalSyntheticLambda9;

    invoke-direct {v2, v1, v0}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils$$ExternalSyntheticLambda9;-><init>(II)V

    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public isLowOnStorage()Z
    .registers 2

    .line 249
    iget-object v0, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mDeviceStorageMonitor:Lcom/android/server/storage/DeviceStorageMonitorInternal;

    if-nez v0, :cond_e

    .line 250
    const-class v0, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    iput-object v0, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mDeviceStorageMonitor:Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 253
    :cond_e
    iget-object p0, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mDeviceStorageMonitor:Lcom/android/server/storage/DeviceStorageMonitorInternal;

    if-eqz p0, :cond_17

    invoke-interface {p0}, Lcom/android/server/storage/DeviceStorageMonitorInternal;->isMemoryLow()Z

    move-result p0

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method

.method public final logDebugInfoAsync(Ljava/lang/String;)V
    .registers 3

    .line 456
    iget-object p0, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final makeOverlay()V
    .registers 5

    .line 325
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 327
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mOverlayView:Landroid/widget/TextView;

    const v1, 0x1050222

    .line 328
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 329
    iget-object v2, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mOverlayView:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 330
    iget-object v2, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mOverlayView:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 331
    iget-object v1, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mOverlayView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mContext:Landroid/content/Context;

    const v3, 0x1060229

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 332
    iget-object v1, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mOverlayView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mContext:Landroid/content/Context;

    const v3, 0x106022a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 333
    iget-object v1, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mOverlayView:Landroid/widget/TextView;

    const/4 v2, 0x0

    const v3, 0x1050223

    .line 334
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 333
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 335
    iget-object v0, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mOverlayView:Landroid/widget/TextView;

    const v1, 0x1040707

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 337
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mOverlayViewParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7f6

    .line 338
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, -0x2

    .line 339
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 340
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const v1, 0x800053

    .line 341
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 342
    iget-object v1, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mOverlayView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 343
    iget-object v0, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mOverlayViewParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x18

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 345
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v2, 0x20000010

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 348
    iget-object v0, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mWm:Landroid/view/WindowManager;
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_90} :catch_91

    goto :goto_ac

    :catch_91
    move-exception p0

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to make overlay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MaintenanceMode"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ac
    return-void
.end method

.method public notifyOtherServices()V
    .registers 9

    const-string v0, "MaintenanceMode"

    .line 492
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mRemainingPkgs:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 493
    iget-object v1, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mRemainingPkgs:Ljava/util/Set;

    sget-object v2, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->TARGET_PACKAGES_PREPROCESSING:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 494
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 496
    new-instance v1, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils$2;-><init>(Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;)V

    iput-object v1, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 512
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.samsung.android.intent.action.RESPONSE_PREPROCESSING_MAINTENANCE_MODE"

    .line 513
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 514
    iget-object v3, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 516
    array-length v1, v2

    const/4 v3, 0x0

    :goto_37
    if-ge v3, v1, :cond_7b

    aget-object v4, v2, v3

    .line 517
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.samsung.android.intent.action.NOTIFY_PREPROCESSING_MAINTENANCE_MODE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 518
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendBroadcast: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v4, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5f} :catch_62

    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    :catch_62
    move-exception p0

    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to notify: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7b
    return-void
.end method

.method public final notifyPostprocessingAsync(J)V
    .registers 5

    .line 551
    new-instance v0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;)V

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 581
    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/CompletableFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;)V

    .line 582
    invoke-virtual {p1, p2}, Ljava/util/concurrent/CompletableFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method public onUserStartingAsync()V
    .registers 3

    .line 257
    iget-object v0, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUserUnlockedAsync()V
    .registers 3

    .line 264
    iget-object v0, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public openUserCreationSession()Z
    .registers 3

    .line 140
    iget-object v0, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->isBeingCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    const-string p0, "MaintenanceMode"

    const-string v0, "Maintenance mode user is already being created."

    .line 141
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 144
    :cond_11
    iget-object p0, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->isBeingCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    return p0
.end method

.method public reboot(Ljava/lang/String;)V
    .registers 3

    .line 244
    iget-object p0, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "MaintenanceMode"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    return-void
.end method

.method public final registerOverlayReceiver()V
    .registers 5

    .line 368
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.intent.action.HIDE_MAINTENANCE_MODE_MARK"

    .line 369
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.intent.action.SHOW_MAINTENANCE_MODE_MARK"

    .line 370
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 371
    iget-object v1, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mOverlayReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    goto :goto_35

    :catch_1a
    move-exception p0

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to register overlay receiver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MaintenanceMode"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_35
    return-void
.end method

.method public removeLifecycleListener(Lcom/android/server/pm/UserManagerInternal$MaintenanceModeLifecycleListener;)V
    .registers 5

    .line 225
    iget-object v0, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mLifecycleListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 226
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeLifecycleListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->logDebugInfoAsync(Ljava/lang/String;)V

    .line 227
    iget-object p0, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 228
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public final setOverlayVisibility(Z)V
    .registers 3

    if-eqz p1, :cond_c

    .line 357
    :try_start_2
    iget-object p1, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mWm:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mOverlayView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mOverlayViewParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2f

    .line 359
    :cond_c
    iget-object p1, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mWm:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mOverlayView:Landroid/widget/TextView;

    invoke-interface {p1, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_13} :catch_14

    goto :goto_2f

    :catch_14
    move-exception p0

    .line 362
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to set overlay visibility: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MaintenanceMode"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2f
    return-void
.end method

.method public final setUserRestrictions()V
    .registers 5

    .line 273
    iget-object v0, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mUms:Lcom/android/server/pm/UserManagerService;

    const-string v1, "no_sms"

    const/4 v2, 0x1

    const/16 v3, 0x4d

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 275
    iget-object p0, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mUms:Lcom/android/server/pm/UserManagerService;

    const-string v0, "no_outgoing_calls"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    return-void
.end method

.method public final skipSetupWizard()V
    .registers 11

    .line 280
    iget-object v0, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x1

    const/16 v3, 0x4d

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 283
    iget-object p0, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_off_timeout"

    const-wide/32 v1, 0x927c0

    invoke-static {p0, v0, v1, v2, v3}, Landroid/provider/Settings$System;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    .line 288
    :try_start_1e
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    const-string v5, "com.sec.android.app.SecSetupWizard"

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/16 v8, 0x4d

    const-string v9, "MaintenanceMode"

    move-object v4, p0

    .line 289
    invoke-interface/range {v4 .. v9}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    const-string v5, "com.google.android.setupwizard"

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/16 v8, 0x4d

    const-string v9, "MaintenanceMode"

    move-object v4, p0

    .line 292
    invoke-interface/range {v4 .. v9}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_3a} :catch_3b

    goto :goto_56

    :catch_3b
    move-exception p0

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to disable SUW: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MaintenanceMode"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_56
    return-void
.end method

.method public final startNotificationService()V
    .registers 4

    .line 302
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-string v2, "com.android.internal.app.MaintenanceModeNotificationService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 306
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 307
    iget-object p0, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/UserHandle;

    const/16 v2, 0x4d

    invoke-direct {v0, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_39

    :catch_1e
    move-exception p0

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to register notification: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MaintenanceMode"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_39
    return-void
.end method

.method public waitForOtherServices(Z)V
    .registers 6

    const-string v0, "MaintenanceMode"

    if-eqz p1, :cond_32

    .line 529
    :try_start_4
    iget-object p1, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz p1, :cond_32

    const-wide/16 v1, 0x1

    .line 530
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_18

    const-string p1, "Latch wake"

    .line 531
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 533
    :cond_18
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Latch timed out "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mRemainingPkgs:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_32
    :goto_32
    iget-object p1, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_55

    .line 537
    iget-object p0, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3b} :catch_3c

    goto :goto_55

    :catch_3c
    move-exception p0

    .line 540
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to wait: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    :goto_55
    return-void
.end method
