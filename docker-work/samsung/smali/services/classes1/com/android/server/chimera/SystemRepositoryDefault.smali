.class public Lcom/android/server/chimera/SystemRepositoryDefault;
.super Ljava/lang/Object;
.source "SystemRepositoryDefault.java"

# interfaces
.implements Lcom/android/server/chimera/SystemRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/chimera/SystemRepositoryDefault$SmartSwitchEventReceiver;
    }
.end annotation


# static fields
.field public static final COMPACT_ACTION_ANON_FLAG:I = 0x2

.field public static final DEFAULT_LAUNCHER_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.launcher"

.field public static final HQM_COMPONENT_SLUGGISH:Ljava/lang/String; = "Sluggish"

.field public static final HQM_HIT_TYPE:Ljava/lang/String; = "ph"

.field public static final HQM_MANUFACTURE:Ljava/lang/String; = "sec"

.field public static final HQM_VER:Ljava/lang/String; = "1.1"

.field public static final IS_USER_SHIP_BUILD:Z

.field public static final TAG:Ljava/lang/String; = "SystemRepositoryDefault"


# instance fields
.field public final mActivityManager:Landroid/app/ActivityManager;

.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field public mAudioManager:Landroid/media/AudioManager;

.field public final mBigGameApps:Lcom/android/server/chimera/ICollectionCache$BigGameAppsCache;

.field public final mCameraApps:Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;

.field public final mCameraDeviceStateCallback:Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;

.field public final mChimeraProcessObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/chimera/SystemRepository$ChimeraProcessObserver;",
            ">;"
        }
    .end annotation
.end field

.field public final mChimeraUidObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/chimera/SystemRepository$ChimeraUidObserver;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field public mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final mGameApps:Lcom/android/server/chimera/ICollectionCache$GameAppsCache;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPkgIconMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final mProcessObserver:Landroid/app/IProcessObserver;

.field public volatile mSharedPreferences:Landroid/content/SharedPreferences;

.field public final mSmartSwitchEventReceiver:Lcom/android/server/chimera/SystemRepositoryDefault$SmartSwitchEventReceiver;

.field public final mUidObserver:Landroid/app/IUidObserver;

.field public final mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$Dx3rfrNLhrFobhrcUbnsEEDaLSo(Landroid/os/IDeviceIdleController;)[Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/chimera/SystemRepositoryDefault;->lambda$getFullPowerWhitelist$1(Landroid/os/IDeviceIdleController;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$j7wg5B57n-UfoNTVZo21HYPLZKY(Lcom/android/server/chimera/SystemRepositoryDefault;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/chimera/SystemRepositoryDefault;->lambda$getDeviceIdleController$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$rrUxU5ZbIffCv_BsSQGLl0lw7Ss(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/chimera/SystemRepositoryDefault;->lambda$getAccessibilityServicePackages$2(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$y38VPU_vU03HaCs3-EMFR59Aee8(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/chimera/SystemRepositoryDefault;->lambda$getAccessibilityServicePackages$3(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmChimeraProcessObservers(Lcom/android/server/chimera/SystemRepositoryDefault;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mChimeraProcessObservers:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmChimeraUidObservers(Lcom/android/server/chimera/SystemRepositoryDefault;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mChimeraUidObservers:Ljava/util/List;

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "ro.build.type"

    const-string/jumbo v1, "user"

    .line 66
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const-string/jumbo v0, "ro.boot.debug_level"

    const-string v1, "0x4f4c"

    .line 67
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const-string/jumbo v0, "ro.product_ship"

    const-string/jumbo v1, "true"

    .line 68
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x1

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    :goto_32
    sput-boolean v0, Lcom/android/server/chimera/SystemRepositoryDefault;->IS_USER_SHIP_BUILD:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .registers 4

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mPkgIconMap:Ljava/util/Map;

    .line 81
    new-instance v0, Lcom/android/server/chimera/ICollectionCache$BigGameAppsCache;

    invoke-direct {v0, p0}, Lcom/android/server/chimera/ICollectionCache$BigGameAppsCache;-><init>(Lcom/android/server/chimera/SystemRepository;)V

    iput-object v0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mBigGameApps:Lcom/android/server/chimera/ICollectionCache$BigGameAppsCache;

    .line 82
    new-instance v0, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;

    invoke-direct {v0, p0}, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;-><init>(Lcom/android/server/chimera/SystemRepository;)V

    iput-object v0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mCameraApps:Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;

    .line 83
    new-instance v0, Lcom/android/server/chimera/ICollectionCache$GameAppsCache;

    invoke-direct {v0, p0}, Lcom/android/server/chimera/ICollectionCache$GameAppsCache;-><init>(Lcom/android/server/chimera/SystemRepository;)V

    iput-object v0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mGameApps:Lcom/android/server/chimera/ICollectionCache$GameAppsCache;

    .line 415
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mChimeraUidObservers:Ljava/util/List;

    .line 417
    new-instance v0, Lcom/android/server/chimera/SystemRepositoryDefault$1;

    invoke-direct {v0, p0}, Lcom/android/server/chimera/SystemRepositoryDefault$1;-><init>(Lcom/android/server/chimera/SystemRepositoryDefault;)V

    iput-object v0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mUidObserver:Landroid/app/IUidObserver;

    .line 455
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mChimeraProcessObservers:Ljava/util/List;

    .line 457
    new-instance v0, Lcom/android/server/chimera/SystemRepositoryDefault$2;

    invoke-direct {v0, p0}, Lcom/android/server/chimera/SystemRepositoryDefault$2;-><init>(Lcom/android/server/chimera/SystemRepositoryDefault;)V

    iput-object v0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 599
    new-instance v0, Lcom/android/server/chimera/SystemRepositoryDefault$3;

    invoke-direct {v0, p0}, Lcom/android/server/chimera/SystemRepositoryDefault$3;-><init>(Lcom/android/server/chimera/SystemRepositoryDefault;)V

    iput-object v0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mCameraDeviceStateCallback:Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;

    .line 137
    iput-object p1, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    .line 138
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mActivityManager:Landroid/app/ActivityManager;

    const-string v0, "audio"

    .line 139
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mAudioManager:Landroid/media/AudioManager;

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 141
    iput-object p2, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 142
    const-class p2, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object p2, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    .line 144
    new-instance p2, Lcom/android/server/chimera/SystemRepositoryDefault$SmartSwitchEventReceiver;

    invoke-direct {p2, p1}, Lcom/android/server/chimera/SystemRepositoryDefault$SmartSwitchEventReceiver;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mSmartSwitchEventReceiver:Lcom/android/server/chimera/SystemRepositoryDefault$SmartSwitchEventReceiver;

    .line 145
    const-class p1, Landroid/app/ActivityManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManagerInternal;

    iput-object p1, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-void
.end method

.method public static convertToChimeraTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_19

    const-string v0, "Chimera"

    .line 239
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_19
    return-object p0
.end method

.method public static synthetic lambda$getAccessibilityServicePackages$2(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .registers 2

    if-eqz p0, :cond_12

    .line 659
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public static synthetic lambda$getAccessibilityServicePackages$3(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;
    .registers 1

    .line 660
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method private synthetic lambda$getDeviceIdleController$0()V
    .registers 2

    .line 327
    monitor-enter p0

    const/4 v0, 0x0

    .line 328
    :try_start_2
    iput-object v0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 329
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public static synthetic lambda$getFullPowerWhitelist$1(Landroid/os/IDeviceIdleController;)[Ljava/lang/String;
    .registers 1

    .line 349
    :try_start_0
    invoke-interface {p0}, Landroid/os/IDeviceIdleController;->getFullPowerWhitelist()[Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 351
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public currentTimeMillis()J
    .registers 3

    .line 552
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public forceGc(I)V
    .registers 2

    .line 247
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->forceGc(I)V

    return-void
.end method

.method public getAccessibilityServicePackages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 653
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p0

    const/4 v0, -0x1

    .line 654
    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_12

    .line 657
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    goto :goto_32

    .line 658
    :cond_12
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/chimera/SystemRepositoryDefault$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/chimera/SystemRepositoryDefault$$ExternalSyntheticLambda1;-><init>()V

    .line 659
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/chimera/SystemRepositoryDefault$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/chimera/SystemRepositoryDefault$$ExternalSyntheticLambda2;-><init>()V

    .line 660
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 661
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    :goto_32
    return-object p0
.end method

.method public getAppStandbyBucket(Ljava/lang/String;I)I
    .registers 5

    .line 273
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/chimera/SystemRepositoryDefault;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result p0

    return p0
.end method

.method public getAppStandbyBucket(Ljava/lang/String;IJ)I
    .registers 5

    .line 278
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/usage/UsageStatsManagerInternal;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result p0

    return p0
.end method

.method public getAppStandbyBuckets()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 366
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/usage/UsageStatsManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/usage/UsageStatsManager;

    .line 367
    invoke-virtual {p0}, Landroid/app/usage/UsageStatsManager;->getAppStandbyBuckets()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getAvailableMemory()J
    .registers 7

    .line 160
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 161
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 162
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-string p0, "Shmem"

    invoke-static {p0}, Lcom/android/server/chimera/ChimeraCommonUtil;->getMemInfoByName(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x400

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getBigGameApps()Lcom/android/server/chimera/ICollectionCache$BigGameAppsCache;
    .registers 1

    .line 638
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mBigGameApps:Lcom/android/server/chimera/ICollectionCache$BigGameAppsCache;

    return-object p0
.end method

.method public getCameraApps()Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;
    .registers 1

    .line 643
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mCameraApps:Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;

    return-object p0
.end method

.method public getCameraDeviceStateCallback()Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;
    .registers 1

    .line 633
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mCameraDeviceStateCallback:Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;

    return-object p0
.end method

.method public getCurrentHomePackageName()Ljava/lang/String;
    .registers 2

    .line 509
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/HomeFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/HomeFilter;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/server/chimera/SystemRepositoryDefault$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/server/chimera/SystemRepositoryDefault$$ExternalSyntheticLambda6;-><init>()V

    .line 510
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const-string v0, "com.sec.android.app.launcher"

    .line 511
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final declared-synchronized getDeviceIdleController()Landroid/os/IDeviceIdleController;
    .registers 4

    monitor-enter p0

    .line 320
    :try_start_1
    iget-object v0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    if-nez v0, :cond_34

    const-string v0, "deviceidle"

    .line 321
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 323
    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mDeviceIdleController:Landroid/os/IDeviceIdleController;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_38

    if-eqz v1, :cond_24

    .line 326
    :try_start_15
    new-instance v1, Lcom/android/server/chimera/SystemRepositoryDefault$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/chimera/SystemRepositoryDefault$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/chimera/SystemRepositoryDefault;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1e} :catch_1f
    .catchall {:try_start_15 .. :try_end_1e} :catchall_38

    goto :goto_34

    :catch_1f
    move-exception v0

    .line 332
    :try_start_20
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_34

    :cond_24
    const-string v0, "SystemRepositoryDefault"

    const-string/jumbo v1, "mDeviceIdleController is null!"

    .line 335
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    :cond_2d
    const-string v0, "SystemRepositoryDefault"

    const-string v1, "binder is null!"

    .line 338
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_34
    :goto_34
    iget-object v0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mDeviceIdleController:Landroid/os/IDeviceIdleController;
    :try_end_36
    .catchall {:try_start_20 .. :try_end_36} :catchall_38

    monitor-exit p0

    return-object v0

    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFullPowerWhitelist()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 346
    invoke-virtual {p0}, Lcom/android/server/chimera/SystemRepositoryDefault;->getDeviceIdleController()Landroid/os/IDeviceIdleController;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/server/chimera/SystemRepositoryDefault$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/chimera/SystemRepositoryDefault$$ExternalSyntheticLambda4;-><init>()V

    .line 347
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/server/chimera/SystemRepositoryDefault$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/server/chimera/SystemRepositoryDefault$$ExternalSyntheticLambda5;-><init>()V

    .line 355
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 356
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getGameApps()Lcom/android/server/chimera/ICollectionCache$GameAppsCache;
    .registers 1

    .line 648
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mGameApps:Lcom/android/server/chimera/ICollectionCache$GameAppsCache;

    return-object p0
.end method

.method public getLongLiveProcessesForUser(I)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 361
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->getLongLiveProcessesForUser(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPackageNameByPid(I)Ljava/lang/String;
    .registers 2

    .line 665
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0, p1}, Landroid/app/ActivityManagerInternal;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPackageNameFromUid(I)[Ljava/lang/String;
    .registers 2

    .line 503
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_9

    goto :goto_c

    :cond_9
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    :goto_c
    return-object p0
.end method

.method public getPkgsTypeForChimera(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 557
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->getPkgsTypeForChimera(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getProcessStatesAndOomScoresForPIDs([I)Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Landroid/util/Pair<",
            "[I[I>;"
        }
    .end annotation

    .line 202
    array-length v0, p1

    if-gtz v0, :cond_5

    const/4 p0, 0x0

    return-object p0

    .line 206
    :cond_5
    new-array v1, v0, [I

    .line 207
    new-array v0, v0, [I

    .line 208
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/am/ActivityManagerService;->getProcessStatesAndOomScoresForPIDs([I[I[I)V

    .line 209
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public getPss(I[J)J
    .registers 3

    const/4 p0, 0x0

    .line 167
    invoke-static {p1, p2, p0}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide p0

    return-wide p0
.end method

.method public getRss(I)[J
    .registers 2

    .line 181
    invoke-static {p1}, Landroid/os/Process;->getRss(I)[J

    move-result-object p0

    return-object p0
.end method

.method public getRunningAppProcesses()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .line 382
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 385
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 386
    new-instance v3, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    invoke-direct {v3}, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;-><init>()V

    .line 387
    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 388
    iget v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iput v4, v3, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 389
    iget v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    iput v4, v3, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    .line 390
    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    iput-object v4, v3, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 391
    iget v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    iput v4, v3, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->flags:I

    .line 392
    iget v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    iput v4, v3, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->importance:I

    .line 393
    iget v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    iput v4, v3, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    .line 394
    iget-boolean v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->isFocused:Z

    iput-boolean v4, v3, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->isFocused:Z

    .line 395
    iget-wide v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastActivityTime:J

    iput-wide v4, v3, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastActivityTime:J

    .line 396
    iget-wide v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastPss:J

    iput-wide v4, v3, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastPss:J

    .line 397
    iget-wide v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastSwapPss:J

    iput-wide v4, v3, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastSwapPss:J

    .line 398
    iget-wide v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->initialIdlePss:J

    iput-wide v4, v3, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->initialIdlePss:J

    .line 399
    iget-boolean v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->isProtectedInPicked:Z

    iput-boolean v4, v3, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->isProtectedInPicked:Z

    add-int/lit8 v4, v1, 0x1

    .line 400
    iput v1, v3, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lru:I

    .line 401
    iget-wide v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->minPss:J

    iput-wide v5, v3, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->minPss:J

    .line 402
    iget-wide v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->avgPss:J

    iput-wide v5, v3, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->avgPss:J

    .line 403
    iget-wide v1, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->maxPss:J

    iput-wide v1, v3, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->maxPss:J

    .line 404
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v4

    goto :goto_10

    :cond_6a
    return-object v0
.end method

.method public declared-synchronized getSharedPreferences()Landroid/content/SharedPreferences;
    .registers 4

    monitor-enter p0

    .line 620
    :try_start_1
    iget-object v0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mSharedPreferences:Landroid/content/SharedPreferences;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_23

    if-nez v0, :cond_1f

    .line 622
    :try_start_5
    iget-object v0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mContext:Landroid/content/Context;

    const-string v1, "SystemRepositoryDefault"

    .line 623
    invoke-static {v1}, Lcom/android/server/chimera/SystemRepositoryDefault;->convertToChimeraTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 622
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mSharedPreferences:Landroid/content/SharedPreferences;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_14} :catch_15
    .catchall {:try_start_5 .. :try_end_14} :catchall_23

    goto :goto_1f

    :catch_15
    move-exception v0

    :try_start_16
    const-string v1, "SystemRepositoryDefault"

    .line 625
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/chimera/SystemRepositoryDefault;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mSharedPreferences:Landroid/content/SharedPreferences;
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_23

    monitor-exit p0

    return-object v0

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSwapPss(I)J
    .registers 3

    const/4 p0, 0x3

    new-array p0, p0, [J

    const/4 v0, 0x0

    .line 173
    invoke-static {p1, p0, v0}, Landroid/os/Debug;->getPss(I[J[J)J

    const/4 p1, 0x1

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public getSystemPid()I
    .registers 1

    .line 377
    sget p0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    return p0
.end method

.method public getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 150
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUserId(I)I
    .registers 2

    .line 532
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    return p0
.end method

.method public getWakeLockPackageList()[Ljava/lang/String;
    .registers 2

    .line 312
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/server/chimera/SystemRepositoryDefault$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/chimera/SystemRepositoryDefault$$ExternalSyntheticLambda3;-><init>()V

    .line 313
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 314
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public hasChimeraProtectedProc(Ljava/lang/String;I)I
    .registers 3

    .line 224
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->hasChimeraProtectedProc(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public hasMessages(Landroid/os/Handler;ILjava/lang/Object;)Z
    .registers 4

    .line 537
    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hasPkgIcon(Ljava/lang/String;I)Z
    .registers 6

    .line 257
    iget-object v0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mPkgIconMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 258
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mPkgIconMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 261
    :cond_15
    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 262
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    iget-object v1, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_35

    .line 266
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_35

    const/4 v2, 0x1

    .line 267
    :cond_35
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mPkgIconMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2
.end method

.method public hasRestartService(Ljava/lang/String;I)Z
    .registers 3

    .line 234
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->hasRestartService(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isApp(I)Z
    .registers 2

    .line 307
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result p0

    return p0
.end method

.method public isAutoRunOn(Ljava/lang/String;I)Z
    .registers 3

    .line 572
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunOn(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isChinaPolicyEnabled()Z
    .registers 1

    .line 567
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p0

    return p0
.end method

.method public isHomeHubDocked()Z
    .registers 1

    .line 596
    invoke-static {}, Lcom/android/server/am/DynamicHiddenApp;->getInstance()Lcom/android/server/am/DynamicHiddenApp;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/DynamicHiddenApp;->isHomeHubState()Z

    move-result p0

    return p0
.end method

.method public isInCall()Z
    .registers 3

    .line 283
    iget-object v0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_10

    .line 284
    iget-object v0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mAudioManager:Landroid/media/AudioManager;

    .line 286
    :cond_10
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->getMode()I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public isKilledByRecentTask(ILjava/lang/String;)Z
    .registers 3

    .line 229
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->isKilledByRecentTask(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isLockTaskPackage(Ljava/lang/String;)Z
    .registers 5

    .line 670
    iget-object v0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 674
    :cond_a
    iget-object v0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_1d

    .line 675
    iget-object v0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_1d

    return v1

    .line 680
    :cond_1d
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->isLockTaskPermitted(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isMarsEnabled()Z
    .registers 1

    .line 562
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->getMARsEnabled()Z

    move-result p0

    return p0
.end method

.method public isOnScreenWindow(I)Z
    .registers 2

    .line 219
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->isOnScreenWindow(I)Z

    move-result p0

    return p0
.end method

.method public isPackageInstalled(Ljava/lang/String;)Z
    .registers 4

    .line 582
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_27

    .line 584
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 585
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_27
    return v0
.end method

.method public isScreenOff()Z
    .registers 2

    .line 411
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 412
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isSmartSwitchWorking()Z
    .registers 1

    .line 372
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mSmartSwitchEventReceiver:Lcom/android/server/chimera/SystemRepositoryDefault$SmartSwitchEventReceiver;

    invoke-virtual {p0}, Lcom/android/server/chimera/SystemRepositoryDefault$SmartSwitchEventReceiver;->isSmartSwitchWorking()Z

    move-result p0

    return p0
.end method

.method public isThreadGroupLeader(I)Z
    .registers 2

    .line 547
    invoke-static {p1}, Landroid/os/Process;->getThreadGroupLeader(I)I

    move-result p0

    if-ne p0, p1, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isUserShipBuild()Z
    .registers 1

    .line 190
    sget-boolean p0, Lcom/android/server/chimera/SystemRepositoryDefault;->IS_USER_SHIP_BUILD:Z

    return p0
.end method

.method public killProcessForChimera(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    .line 214
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService;->killProcessForChimera(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 252
    invoke-static {p1}, Lcom/android/server/chimera/SystemRepositoryDefault;->convertToChimeraTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public logDebug(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 195
    sget-boolean p0, Lcom/android/server/chimera/SystemRepositoryDefault;->IS_USER_SHIP_BUILD:Z

    if-nez p0, :cond_b

    .line 196
    invoke-static {p1}, Lcom/android/server/chimera/SystemRepositoryDefault;->convertToChimeraTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void
.end method

.method public registerProcessObserver(Lcom/android/server/chimera/SystemRepository$ChimeraProcessObserver;)V
    .registers 4

    .line 488
    iget-object v0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mChimeraProcessObservers:Ljava/util/List;

    monitor-enter v0

    .line 489
    :try_start_3
    iget-object v1, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mChimeraProcessObservers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    iget-object p1, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mChimeraProcessObservers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_21

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1f

    .line 492
    :try_start_11
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {p1, p0}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1a} :catch_1b
    .catchall {:try_start_11 .. :try_end_1a} :catchall_21

    goto :goto_1f

    :catch_1b
    move-exception p0

    .line 494
    :try_start_1c
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 497
    :cond_1f
    :goto_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_21

    throw p0
.end method

.method public registerUidObserver(Lcom/android/server/chimera/SystemRepository$ChimeraUidObserver;)V
    .registers 6

    .line 291
    iget-object v0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mChimeraUidObservers:Ljava/util/List;

    monitor-enter v0

    .line 292
    :try_start_3
    iget-object v1, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mChimeraUidObservers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object p1, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mChimeraUidObservers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_24

    const/4 v1, 0x1

    if-ne p1, v1, :cond_22

    .line 295
    :try_start_11
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mUidObserver:Landroid/app/IUidObserver;

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {p1, p0, v1, v2, v3}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1d} :catch_1e
    .catchall {:try_start_11 .. :try_end_1d} :catchall_24

    goto :goto_22

    :catch_1e
    move-exception p0

    .line 299
    :try_start_1f
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 302
    :cond_22
    :goto_22
    monitor-exit v0

    return-void

    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_24

    throw p0
.end method

.method public removeMessages(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 542
    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .registers 2

    .line 577
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public sendHqmBigData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    .line 685
    iget-object v0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mContext:Landroid/content/Context;

    const-string v1, "HqmManagerService"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/os/SemHqmManager;

    if-eqz v1, :cond_55

    const/4 v2, 0x0

    const-string v3, "Sluggish"

    const-string/jumbo v5, "ph"

    const-string v6, "1.1"

    const-string/jumbo v7, "sec"

    const-string v8, ""

    const-string v10, ""

    move-object v4, p1

    move-object v9, p2

    .line 688
    invoke-virtual/range {v1 .. v10}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 691
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sending bigdata : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemRepositoryDefault"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/chimera/SystemRepositoryDefault;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "feature : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", json : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/chimera/SystemRepositoryDefault;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_55
    return-void
.end method

.method public sendMessage(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    if-eqz p1, :cond_9

    .line 517
    invoke-static {p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 518
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_9
    return-void
.end method

.method public sendMessageDelayed(Landroid/os/Handler;ILjava/lang/Object;J)V
    .registers 6

    if-eqz p1, :cond_9

    .line 525
    invoke-static {p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 526
    invoke-virtual {p1, p0, p4, p5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_9
    return-void
.end method

.method public setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 155
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public swapProcess(I)V
    .registers 2

    const/4 p0, 0x2

    .line 186
    invoke-static {p1, p0}, Lcom/android/server/am/CachedAppOptimizer;->compactProcess(II)V

    return-void
.end method
